<template>
  <div class="word-table">
    <section class="section">
      <h2 class="title is-spaced maruji">{{ alphabet.toUpperCase() }}</h2>
      <div class="m-t-lg m-b-xl">
        e.g.&nbsp;
        <span class="tag is-danger">♀ feminine noun</span>
        &nbsp;
        <span class="tag is-success">⚥ neuter noun</span>
        &nbsp;
        <span class="tag is-info">♂ masculine noun</span>
      </div>
      <table class="table is-fullwidth is-striped">
        <thead>
          <tr>
            <th>English</th>
            <th>Translated</th>
            <th></th>
            <th></th>
          </tr>
        </thead>
        <tbody>
          <tr v-for="row in rows" :key="row.en">
            <td>{{ row.en }}</td>
            <td>
              <span
                v-if="row[language].length >= 1"
                class="tag is-large"
                :class="{
                  'is-danger': row[language][0].gender === 'f',
                  'is-success': row[language][0].gender === 'n',
                  'is-info': row[language][0].gender === 'm',
                }"
              >
                {{ row[language][0].translated }}
                <button
                  class="button is-outlined is-inverted is-rounded is-small m-l-sm"
                  :class="{
                    'is-danger': row[language][0].gender === 'f',
                    'is-success': row[language][0].gender === 'n',
                    'is-info': row[language][0].gender === 'm',
                  }"
                  v-on:click="copy_to_clipboard(row[language][0].translated)"
                >
                  <i class="fas fa-clipboard" aria-hidden="true"></i>
                </button>
              </span>
            </td>
            <td>
              <span
                v-if="row[language].length >= 2"
                class="tag is-medium"
                :class="{
                  'is-danger': row[language][1].gender === 'f',
                  'is-success': row[language][1].gender === 'n',
                  'is-info': row[language][1].gender === 'm',
                }"
              >
                {{ row[language][1].translated }}
                <button
                  class="button is-outlined is-inverted is-rounded is-small m-l-sm"
                  :class="{
                    'is-danger': row[language][1].gender === 'f',
                    'is-success': row[language][1].gender === 'n',
                    'is-info': row[language][1].gender === 'm',
                  }"
                  v-on:click="copy_to_clipboard(row[language][1].translated)"
                >
                  <i class="fas fa-clipboard" aria-hidden="true"></i>
                </button>
              </span>
            </td>
            <td>
              <span
                v-if="row[language].length >= 3"
                class="tag is-medium"
                :class="{
                  'is-danger': row[language][2].gender === 'f',
                  'is-success': row[language][2].gender === 'n',
                  'is-info': row[language][2].gender === 'm',
                }"
              >
                {{ row[language][2].translated }}
                <button
                  class="button is-outlined is-inverted is-rounded is-small m-l-sm"
                  :class="{
                    'is-danger': row[language][2].gender === 'f',
                    'is-success': row[language][2].gender === 'n',
                    'is-info': row[language][2].gender === 'm',
                  }"
                  v-on:click="copy_to_clipboard(row[language][2].translated)"
                >
                  <i class="fas fa-clipboard" aria-hidden="true"></i>
                </button>
              </span>
            </td>
          </tr>
        </tbody>
      </table>
      <a v-if="loading === true" class="button is-large is-white is-loading"></a>
      <div class="back-to-top">
        <a v-on:click="back_to_top" class="button is-large is-primary is-rounded maruji">↑</a>
      </div>
    </section>
  </div>
</template>

<script>
export default {
  props: ["language", "alphabet"],
  data() {
    return {
      rows: [],
      loading: false,
    };
  },
  created() {
    this.renderRows();
  },
  computed: {},
  watch: {
    $route: function (to, from) {
      this.renderRows();
    },
  },
  methods: {
    renderRows() {
      const axios = require("axios");

      if (this.language && this.alphabet) {
        this.rows.splice(0, this.rows.length);
        this.loading = true;
        // $emit("loading", true);

        axios
          .get(
            "https://gender-nouns-api.llll-ll.com/api/translate?en-starts-with=" + this.alphabet + "&" + this.language
          )
          .then((response) => {
            const data = response.data;
            // this.rows = response.data;
            this.rows.splice(0, 0, ...data);
          })
          .catch((error) => {
            console.error(error);
            // this.rows = error;
          })
          .then(() => {
            // always executed
            this.loading = false;
            // $emit("loading", false);
          });
      }
    },
    copy_to_clipboard(text) {
      const copyFrom = document.createElement("textarea");
      copyFrom.textContent = text;
      const bodyElm = document.getElementsByTagName("body")[0];
      bodyElm.appendChild(copyFrom);

      copyFrom.select();
      var retVal = document.execCommand("copy");
      bodyElm.removeChild(copyFrom);
      return retVal;
    },
    back_to_top() {
      const nowY = window.pageYOffset;
      window.scrollTo(0, Math.floor(nowY * 0.8));
      if (nowY > 0) {
        window.setTimeout(this.back_to_top, 10);
      }
    },
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss" scoped>
.back-to-top {
  position: fixed;
  right: 10px;
  bottom: 20px;
}
</style>
