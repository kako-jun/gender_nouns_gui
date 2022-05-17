<template>
  <div class="query">
    <section class="section">
      <div class="columns is-centered">
        <div class="column is-full">
          <div class="field has-addons">
            <div class="control has-icons-left">
              <input
                v-model="keyword"
                v-on:keydown.enter="search"
                class="input is-rounded is-medium"
                type="text"
                placeholder="Keyword"
              >
              <span class="icon is-medium is-left">
                <i class="fas fa-search"></i>
              </span>
            </div>
            <div class="control">
              <router-link
                :to="{ name: 'search', query: { q: keyword, match: bind_match, ar: bind_ar, fr: bind_fr, de: bind_de, hi: bind_hi, it: bind_it, pt: bind_pt, ru: bind_ru, es: bind_es}}"
              >
                <button
                  id="search-button"
                  :disabled="keyword === '' || (!bind_ar && !bind_fr && !bind_de && !bind_hi && !bind_it && !bind_pt && !bind_ru && !bind_es)"
                  class="button is-primary is-rounded is-medium"
                >Search</button>
              </router-link>
            </div>
          </div>
        </div>
      </div>
      <p class="has-text-grey has-text-weight-bold m-t-lg m-b-xs maruji">targets</p>
      <div>
        <label class="checkbox" disabled>
          <input v-model="bind_en" type="checkbox" name="targets" disabled>
          English
        </label>
        &nbsp;
        <label class="checkbox">
          <input v-model="bind_ar" type="checkbox" name="targets">
          Arabic
        </label>
        &nbsp;
        <label class="checkbox">
          <input v-model="bind_fr" type="checkbox" name="targets">
          French
        </label>
        &nbsp;
        <label class="checkbox">
          <input v-model="bind_de" type="checkbox" name="targets">
          German
        </label>
        &nbsp;
        <label class="checkbox">
          <input v-model="bind_hi" type="checkbox" name="targets">
          Hindi
        </label>
        &nbsp;
        <label class="checkbox">
          <input v-model="bind_it" type="checkbox" name="targets">
          Italian
        </label>
        &nbsp;
        <label class="checkbox">
          <input v-model="bind_pt" type="checkbox" name="targets">
          Portuguese
        </label>
        &nbsp;
        <label class="checkbox">
          <input v-model="bind_ru" type="checkbox" name="targets">
          Russian
        </label>
        &nbsp;
        <label class="checkbox">
          <input v-model="bind_es" type="checkbox" name="targets">
          Spanish
        </label>
      </div>
      <p class="has-text-grey has-text-weight-bold m-t-md m-b-xs maruji">pattern match</p>
      <div>
        <label class="radio">
          <input v-model="bind_match" type="radio" name="match" value="exact">
          Exact
        </label>
        &nbsp;
        <label class="radio">
          <input v-model="bind_match" type="radio" name="match" value="partial">
          Partial
        </label>
      </div>
    </section>
  </div>
</template>

<script>
export default {
  props: ["q", "match", "ar", "fr", "de", "hi", "it", "pt", "ru", "es"],
  data() {
    return {
      keyword: "",
      bind_match: "exact",
      bind_en: true,
      bind_ar: true,
      bind_fr: true,
      bind_de: true,
      bind_hi: true,
      bind_it: true,
      bind_pt: true,
      bind_ru: true,
      bind_es: true
    };
  },
  created() {},
  mounted() {
    this.renderQuery();
  },
  computed: {},
  watch: {
    $route: function(to, from) {
      this.renderQuery();
    }
  },
  methods: {
    toBoolean(booleanStr) {
      return booleanStr.toLowerCase() === "true";
    },
    renderQuery() {
      if (this.q !== undefined) {
        this.keyword = this.q;
      }

      if (this.match !== undefined) {
        this.bind_match = this.match;
      }

      if (this.ar !== undefined) {
        this.bind_ar = this.toBoolean(this.ar);
      }

      if (this.fr !== undefined) {
        this.bind_fr = this.toBoolean(this.fr);
      }

      if (this.de !== undefined) {
        this.bind_de = this.toBoolean(this.de);
      }

      if (this.hi !== undefined) {
        this.bind_hi = this.toBoolean(this.hi);
      }

      if (this.it !== undefined) {
        this.bind_it = this.toBoolean(this.it);
      }

      if (this.pt !== undefined) {
        this.bind_pt = this.toBoolean(this.pt);
      }

      if (this.ru !== undefined) {
        this.bind_ru = this.toBoolean(this.ru);
      }

      if (this.es !== undefined) {
        this.bind_es = this.toBoolean(this.es);
      }
    },
    search() {
      document.getElementById("search-button").click();
    }
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss" scoped>
.field.has-addons {
  justify-content: center;
}
</style>
