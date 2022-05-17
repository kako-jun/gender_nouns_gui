<template>
  <div class="all-tables">
    <p class="m-b-md">There are 4,541 nowns.</p>
    <div class="is-hidden-tablet">
      <div class="tabs is-centered is-boxed">
        <ul>
          <li :class="{ 'is-active': is_curret_language('ar') }">
            <router-link :to="{ name: 'all-tables', query: { language: 'ar'}}">
              <span>Arabic</span>
            </router-link>
          </li>
          <li :class="{ 'is-active': is_curret_language('fr') }">
            <router-link :to="{ name: 'all-tables', query: { language: 'fr'}}">
              <span>French</span>
            </router-link>
          </li>
          <li :class="{ 'is-active': is_curret_language('de') }">
            <router-link :to="{ name: 'all-tables', query: { language: 'de'}}">
              <span>German</span>
            </router-link>
          </li>
          <li :class="{ 'is-active': is_curret_language('hi') }">
            <router-link :to="{ name: 'all-tables', query: { language: 'hi'}}">
              <span>Hindi</span>
            </router-link>
          </li>
        </ul>
      </div>
      <div class="tabs is-centered is-boxed">
        <ul>
          <li :class="{ 'is-active': is_curret_language('it') }">
            <router-link :to="{ name: 'all-tables', query: { language: 'it'}}">
              <span>Italian</span>
            </router-link>
          </li>
          <li :class="{ 'is-active': is_curret_language('pt') }">
            <router-link :to="{ name: 'all-tables', query: { language: 'pt'}}">
              <span>Portuguese</span>
            </router-link>
          </li>
          <li :class="{ 'is-active': is_curret_language('ru') }">
            <router-link :to="{ name: 'all-tables', query: { language: 'ru'}}">
              <span>Russian</span>
            </router-link>
          </li>
          <li :class="{ 'is-active': is_curret_language('es') }">
            <router-link :to="{ name: 'all-tables', query: { language: 'es'}}">
              <span>Spanish</span>
            </router-link>
          </li>
        </ul>
      </div>
      <div v-if="this.$route.query.language !== undefined">
        <div class="tabs is-centered is-boxed">
          <ul>
            <li :class="{ 'is-active': is_curret_alphabet('a') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'a'}}"
              >
                <span>A</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('b') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'b'}}"
              >
                <span>B</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('c') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'c'}}"
              >
                <span>C</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('d') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'd'}}"
              >
                <span>D</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('e') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'e'}}"
              >
                <span>E</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('f') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'f'}}"
              >
                <span>F</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('g') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'g'}}"
              >
                <span>G</span>
              </router-link>
            </li>
          </ul>
        </div>
        <div class="tabs is-centered is-boxed">
          <ul>
            <li :class="{ 'is-active': is_curret_alphabet('h') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'h'}}"
              >
                <span>H</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('i') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'i'}}"
              >
                <span>I</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('j') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'j'}}"
              >
                <span>J</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('k') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'k'}}"
              >
                <span>K</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('l') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'l'}}"
              >
                <span>L</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('m') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'm'}}"
              >
                <span>M</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('n') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'n'}}"
              >
                <span>N</span>
              </router-link>
            </li>
          </ul>
        </div>
        <div class="tabs is-centered is-boxed">
          <ul>
            <li :class="{ 'is-active': is_curret_alphabet('o') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'o'}}"
              >
                <span>O</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('p') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'p'}}"
              >
                <span>P</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('q') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'q'}}"
              >
                <span>Q</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('r') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'r'}}"
              >
                <span>R</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('s') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 's'}}"
              >
                <span>S</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('t') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 't'}}"
              >
                <span>T</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('u') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'u'}}"
              >
                <span>U</span>
              </router-link>
            </li>
          </ul>
        </div>
        <div class="tabs is-centered is-boxed">
          <ul>
            <li :class="{ 'is-active': is_curret_alphabet('v') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'v'}}"
              >
                <span>V</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('w') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'w'}}"
              >
                <span>W</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('x') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'x'}}"
              >
                <span>X</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('y') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'y'}}"
              >
                <span>Y</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('z') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'z'}}"
              >
                <span>Z</span>
              </router-link>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="is-hidden-mobile">
      <div class="tabs is-centered is-boxed">
        <ul>
          <li :class="{ 'is-active': is_curret_language('ar') }">
            <router-link :to="{ name: 'all-tables', query: { language: 'ar'}}">
              <span>Arabic</span>
            </router-link>
          </li>
          <li :class="{ 'is-active': is_curret_language('fr') }">
            <router-link :to="{ name: 'all-tables', query: { language: 'fr'}}">
              <span>French</span>
            </router-link>
          </li>
          <li :class="{ 'is-active': is_curret_language('de') }">
            <router-link :to="{ name: 'all-tables', query: { language: 'de'}}">
              <span>German</span>
            </router-link>
          </li>
          <li :class="{ 'is-active': is_curret_language('hi') }">
            <router-link :to="{ name: 'all-tables', query: { language: 'hi'}}">
              <span>Hindi</span>
            </router-link>
          </li>
          <li :class="{ 'is-active': is_curret_language('it') }">
            <router-link :to="{ name: 'all-tables', query: { language: 'it'}}">
              <span>Italian</span>
            </router-link>
          </li>
          <li :class="{ 'is-active': is_curret_language('pt') }">
            <router-link :to="{ name: 'all-tables', query: { language: 'pt'}}">
              <span>Portuguese</span>
            </router-link>
          </li>
          <li :class="{ 'is-active': is_curret_language('ru') }">
            <router-link :to="{ name: 'all-tables', query: { language: 'ru'}}">
              <span>Russian</span>
            </router-link>
          </li>
          <li :class="{ 'is-active': is_curret_language('es') }">
            <router-link :to="{ name: 'all-tables', query: { language: 'es'}}">
              <span>Spanish</span>
            </router-link>
          </li>
        </ul>
      </div>
      <div v-if="this.$route.query.language !== undefined">
        <div class="tabs is-centered is-boxed">
          <ul>
            <li :class="{ 'is-active': is_curret_alphabet('a') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'a'}}"
              >
                <span>A</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('b') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'b'}}"
              >
                <span>B</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('c') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'c'}}"
              >
                <span>C</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('d') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'd'}}"
              >
                <span>D</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('e') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'e'}}"
              >
                <span>E</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('f') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'f'}}"
              >
                <span>F</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('g') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'g'}}"
              >
                <span>G</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('h') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'h'}}"
              >
                <span>H</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('i') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'i'}}"
              >
                <span>I</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('j') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'j'}}"
              >
                <span>J</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('k') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'k'}}"
              >
                <span>K</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('l') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'l'}}"
              >
                <span>L</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('m') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'm'}}"
              >
                <span>M</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('n') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'n'}}"
              >
                <span>N</span>
              </router-link>
            </li>
          </ul>
        </div>
        <div class="tabs is-centered is-boxed">
          <ul>
            <li :class="{ 'is-active': is_curret_alphabet('o') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'o'}}"
              >
                <span>O</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('p') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'p'}}"
              >
                <span>P</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('q') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'q'}}"
              >
                <span>Q</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('r') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'r'}}"
              >
                <span>R</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('s') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 's'}}"
              >
                <span>S</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('t') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 't'}}"
              >
                <span>T</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('u') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'u'}}"
              >
                <span>U</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('v') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'v'}}"
              >
                <span>V</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('w') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'w'}}"
              >
                <span>W</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('x') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'x'}}"
              >
                <span>X</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('y') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'y'}}"
              >
                <span>Y</span>
              </router-link>
            </li>
            <li :class="{ 'is-active': is_curret_alphabet('z') }">
              <router-link
                :to="{ name: 'all-tables', query: { language: this.$route.query.language, alphabet: 'z'}}"
              >
                <span>Z</span>
              </router-link>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div v-if="this.$route.query.alphabet !== undefined">
      <WordTable :language="this.$route.query.language" :alphabet="this.$route.query.alphabet" />
    </div>
  </div>
</template>

<script>
// @ is an alias to /src
import WordTable from "@/components/WordTable.vue";

export default {
  components: {
    WordTable
  },
  props: [],
  data() {
    return {};
  },
  created() {},
  computed: {},
  methods: {
    is_curret_language(language) {
      if (language === this.$route.query.language) {
        return true;
      }

      return false;
    },
    is_curret_alphabet(alphabet) {
      if (alphabet === this.$route.query.alphabet) {
        return true;
      }

      return false;
    }
  }
};
</script>

<style scoped lang="scss" scoped>
</style>
