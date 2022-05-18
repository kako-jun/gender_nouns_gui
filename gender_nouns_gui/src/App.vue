<template>
  <div id="app">
    <div v-if="loading === true" class="cover"></div>
    <section class="section">
      <div class="container">
        <h1 class="title is-spaced maruji">
          <router-link :to="{ name: 'search' }">
            <i class="fas fa-book" aria-hidden="true"></i> Gender Nouns
          </router-link>
        </h1>
        <p class="subtitle is-6">for everyone learning another language.</p>
        <p><img src="@/assets/gender07_transgender2.png" class="logo" /></p>
        <div class="tabs is-centered is-boxed m-t-md">
          <ul>
            <li :class="{ 'is-active': is_curret_tab('search') }">
              <router-link :to="{ name: 'search' }">
                <span class="icon is-small">
                  <i class="fas fa-search" aria-hidden="true"></i>
                </span>
                <span>Search</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_tab('all-tables') }">
              <router-link :to="{ name: 'all-tables' }">
                <span class="icon is-small">
                  <i class="fas fa-table" aria-hidden="true"></i>
                </span>
                <span>All tables</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_tab('about') }">
              <router-link :to="{ name: 'about' }">
                <span class="icon is-small">
                  <i class="fas fa-info-circle" aria-hidden="true"></i>
                </span>
                <span>About</span>
              </router-link>
            </li>
          </ul>
        </div>
        <!-- <transition> -->
        <router-view />
        <!-- </transition> -->
      </div>
    </section>
    <footer class="footer fix-footer has-background-primary">
      <div class="content has-text-centered">
        <p class="has-text-white">
          © 2019 kako-jun
          <a href="https://github.com/kako-jun/gender_nouns_gui">
            <i class="fab fa-github fa-fw" aria-hidden="true"></i>
          </a>
          <a href="https://llll-ll.com">
            <i class="fas fa-home fa-fw" aria-hidden="true"></i>
          </a>
          <a href="https://twitter.com/kako_jun_42">
            <i class="fab fa-twitter fa-fw" aria-hidden="true"></i>
          </a>
        </p>
      </div>
    </footer>
  </div>
</template>

<script>
export default {
  props: [],
  data() {
    return {
      loading: false,
    };
  },
  created() {},
  computed: {},
  methods: {
    is_curret_tab(tab) {
      return this.$route.name.startsWith(tab);
    },
  },
};
</script>

<style lang="scss" scoped>
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

.logo {
  width: 100px;
}

.v-enter-active,
.v-leave-active {
  transition: opacity 0.42s;
}
.v-enter,
.v-leave-to {
  opacity: 0;
}

.footer {
  padding: 1rem 1rem;
}
// .fix-footer {
// position: absolute;
// width: 100%;
// bottom: 0;
// overflow: hidden;
// }

.cover {
  position: absolute;
  top: 0px;
  left: 0px;
  width: 100%;
  height: 100%;
  background: black;
  opacity: 0.5;
  z-index: 9999;
}
</style>
