<template>
    <div class="container">
        <form>
          <div :class="['form-group m-1 p-3', successful ? 'alert-success' : '']">
            <span v-if="successful" class="label label-sucess">Updated!</span>
          </div>

          <div :class="['form-group m-1 p-3', error ? 'alert-danger' : '']">
            <span v-if="errors.judul" class="label label-danger">
              {{ errors.judul[0] }}
            </span>
            <span v-if="errors.konten" class="label label-danger">
              {{ errors.konten[0] }}
            </span>
          </div>

          <div class="form-group">
            <input type="judul" ref="judul" class="form-control" id="judul" placeholder="Masukan Judul" required>
          </div>

          <div class="form-group">
            <textarea class="form-control" ref="konten" id="konten" placeholder="Konten" rows="8" required></textarea>
          </div>

          <button type="submit" @click.prevent="update" class="btn btn-primary block">
            Submit
          </button>
        </form>
    </div>
</template>

<script>
    export default {
      mounted() {
        this.getPost();
      },
      props: {
        postId: {
          type: Number,
          required: true
        }
      },
      data() {
        return {
          error: false,
          successful: false,
          errors: []
        };
      },
      methods: {
        update() {
          let judul = this.$refs.judul.value;
          let konten = this.$refs.konten.value;

          axios
            .put("/api/posts/" + this.postId, { judul, konten })
            .then(response => {
              this.successful = true;
              this.error = false;
              this.errors = [];
            })
            .catch(error => {
              if (!_.isEmpty(error.response)) {
                if ((error.response.status = 422)) {
                  this.errors = error.response.data.errors;
                  this.successful = false;
                  this.error = true;
                }
              }
            });
        },
        getPost() {
          axios.get("/api/posts/" + this.postId).then(response => {
            this.$refs.judul.value = response.data.data.judul;
            this.$refs.konten.value = response.data.data.konten;
          });
        }
      }
    };
</script>