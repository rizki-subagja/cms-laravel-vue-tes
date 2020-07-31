<template>
  <div>
    <nav>
      <section>
        <a style="color: white" href="/"> Preview </a> ||
        <a style="color: white" href="/admin/dashboard"> Dashboard </a>
        <hr>
        <ul>
            <li>
              <router-link :to="{ name: 'create', params: { userId } }">
                <div class="postbr">
                  POST BARU
                </div>
              </router-link>
            </li>
        </ul>
      </section>
    </nav>
    <article>
      <header>
        <header class="sambutan">Halo Mamang {{ userName }}</header>
        <p @click="logout" class="float-right mr-3" style="cursor: pointer">Logout</p>
      </header>
      <div> 
        <router-view></router-view> 
      </div>
    </article>
  </div>
</template>

<style scoped>
    * {
        -moz-box-sizing: border-box;
        -webkit-box-sizing: border-box;
        box-sizing: border-box;
    }

    header {
        color: #d3d3d3;
    }

    nav {
        position: absolute;
        top: 0;
        bottom: 0;
        right: 82%;
        left: 0;
        padding: 22px;
        border-right: 2px solid #161e23;
        text-align: center;
        font-size: 20px;
    }

    nav > header {
        font-weight: 700;
        font-size: 0.8rem;
        text-transform: uppercase;
    }

    nav section a {
      text-align: center;
    }

    nav section header {
        padding-top: 30px;
    }

    nav section ul {
        list-style: none;
        padding: 0px;
    }

    nav section ul a {
        color: white;
        text-decoration: none;
        font-weight: bold;
    }

    article {
        position: absolute;
        top: 0;
        bottom: 0;
        right: 0;
        left: 18%;
        overflow: auto;
        border-left: 2px solid #2a3843;
        padding: 20px;
    }

    article > header {
        height: 60px;
        border-bottom: 1px solid #2a3843;
    }

    .postbr {
      border : 1px solid #1eff00;
      background-color: #266b1d;
      padding: 5px;
      color : white;
      font-family: monospace;
      font-size: 20px;
      border-radius: 10px;
      text-align: center;
      cursor: pointer;
    }

    .postbr:hover {
      background-color: #1eff00;
      color: black;
    }

    .sambutan {
      display: inline-block;
      font-size: 20px;
      color: white;
    }
</style>

<script>
    export default {
      props: {
        userId: {
          type: Number,
          required: true
        },
        userName: {
          type: String,
          required: true
        }
      },
      data() {
        return {};
      },
      methods: {
        logout() {
          axios.post("/logout").then(() => {
            window.location = "/";
          });
        }
      }
    };
</script>