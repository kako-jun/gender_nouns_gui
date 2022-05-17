<template>
  <div class="result">
    <section class="section">
      <h2 class="title is-spaced maruji">Results</h2>
      <div class="m-t-lg m-b-xl">
        e.g.&nbsp;
        <span class="tag is-danger">♀ feminine noun</span>
        &nbsp;
        <span class="tag is-success">⚥ neuter noun</span>
        &nbsp;
        <span class="tag is-info">♂ masculine noun</span>
      </div>

      <div v-if="loading === false && rows.length === 0">no results found.</div>

      <div v-for="row in rows" :key="row.en">
        <h3 class="title is-4 is-spaced">
          {{ row.en }}
          <button class="button is-outlined is-rounded is-small m-l-xs" v-on:click="copy_to_clipboard(row.en)">
            <i class="fas fa-clipboard" aria-hidden="true"></i>
          </button>
        </h3>

        <table class="table is-fullwidth is-striped m-b-xl">
          <thead>
            <tr>
              <th>Language</th>
              <th>Translated</th>
              <th></th>
              <th></th>
            </tr>
          </thead>
          <tbody>
            <LanguageRow v-if="ar" language_full="Arabic" :ts="row.ar" />
            <LanguageRow v-if="fr" language_full="French" :ts="row.fr" />
            <LanguageRow v-if="de" language_full="German" :ts="row.de" />
            <LanguageRow v-if="hi" language_full="Hindi" :ts="row.hi" />
            <LanguageRow v-if="it" language_full="Italian" :ts="row.it" />
            <LanguageRow v-if="pt" language_full="Portuguese" :ts="row.pt" />
            <LanguageRow v-if="ru" language_full="Russian" :ts="row.ru" />
            <LanguageRow v-if="es" language_full="Spanish" :ts="row.es" />
          </tbody>
        </table>
      </div>
      <a v-if="loading === true" class="button is-large is-white is-loading"></a>
      <div class="back-to-top">
        <a v-on:click="back_to_top" class="button is-large is-primary is-rounded maruji">↑</a>
      </div>
    </section>
  </div>
</template>

<script>
import LanguageRow from "@/components/LanguageRow.vue";

export default {
  components: {
    LanguageRow,
  },
  props: ["q", "match", "ar", "fr", "de", "hi", "it", "pt", "ru", "es"],
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

      if (this.q) {
        let exact_query = "";
        if (this.match === "exact") {
          exact_query += "&exact";
        }

        let language_query = "";
        if (this.ar) {
          language_query += "&ar";
        }

        if (this.fr) {
          language_query += "&fr";
        }

        if (this.de) {
          language_query += "&de";
        }

        if (this.hi) {
          language_query += "&hi";
        }

        if (this.it) {
          language_query += "&it";
        }

        if (this.pt) {
          language_query += "&pt";
        }

        if (this.ru) {
          language_query += "&ru";
        }

        if (this.es) {
          language_query += "&es";
        }

        this.rows.splice(0, this.rows.length);
        this.loading = true;
        // $emit("loading", true);

        axios
          .get("https://gender-nouns-api.llll-ll.com/api/translate?q=" + this.q + exact_query + language_query)
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
