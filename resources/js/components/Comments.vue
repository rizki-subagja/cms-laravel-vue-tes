<template>
    <div class="card my-4">
    <h5 class="card-header"> Tinggalkan Komentar :</h5>
    <div class="card-body">
        <form>
        <div class="form-group">
            <textarea ref="body" class="form-control" rows="3"></textarea>
        </div>
        <button type="submit" @click.prevent="addComment" class="btn btn-primary">
            Submit
        </button>
        </form>
    </div>
    <p class="border p-3" v-for="comment in comments">
        <strong>{{ comment.user.name }}</strong>: 
        <span>{{ comment.konten }}</span>
    </p>
    </div>
</template>

<script>
    export default {
      props: {
        userName: {
          type: String,
          required: true
        },
        postId: {
          type: Number,
          required: true
        }
      },
      data() {
        return {
          comments: []
        };
      },

      created() {
        this.fetchComments();

        Echo.private("comment").listen("CommentSent", e => {
            this.comments.push({
              user: {name: e.user.name},
              konten: e.comment.konten,
            });
        });
      },

      methods: {
        fetchComments() {
          axios.get("/" + this.postId + "/comments").then(response => {
            this.comments = response.data;
          });
        },

        addComment() {
          let konten = this.$refs.konten.value;
          axios.post("/" + this.postId + "/comments", { konten }).then(response => {
            this.comments.push({
              user: {name: this.userName},
              konten: this.$refs.konten.value
            });
            this.$refs.konten.value = "";
          });
        }
      }
    };
</script>