<template>
  <div class="about">
    <section class="section">
      <h2 class="title is-spaced maruji">API Reference</h2>
      <h3 class="subtitle is-spaced maruji">URL</h3>
      <p>
        <code>https://gender-nouns-api.llll-ll.com/api/translate</code>
      </p>
      <h3 class="subtitle is-spaced maruji m-t-lg">Query</h3>
      <div class="columns is-centered">
        <table class="table is-striped m-b-xs">
          <thead>
            <tr>
              <th>parameter</th>
              <th>description</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>
                <code>q</code>
              </td>
              <td>search word</td>
            </tr>
            <tr>
              <td>
                <code>exact</code>
              </td>
              <td>exact match</td>
            </tr>
            <tr>
              <td>
                <code>en-starts-with</code>
              </td>
              <td>a character in English</td>
            </tr>
            <tr>
              <td>
                <code>ar</code>, <code>fr</code>, <code>de</code>, <code>hi</code>, <code>it</code>, <code>pt</code>,
                <code>ru</code>,
                <code>es</code>
              </td>
              <td>target languages</td>
            </tr>
          </tbody>
        </table>
      </div>
      <h3 class="subtitle is-spaced maruji m-t-lg">Examples</h3>
      <div class="columns is-centered m-t-md">
        <ul class="has-text-left">
          <li>
            <code>https://gender-nouns-api.llll-ll.com/api/translate?q=cat</code>
          </li>
          <li>
            <code>https://gender-nouns-api.llll-ll.com/api/translate?q=cat&exact</code>
          </li>
          <li>
            <code>https://gender-nouns-api.llll-ll.com/api/translate?q=cat&exact&fr</code>
          </li>
          <li>
            <code>https://gender-nouns-api.llll-ll.com/api/translate?q=cat&exact=true&fr=true</code>
          </li>
          <li>&nbsp;</li>
          <li>
            <code>https://gender-nouns-api.llll-ll.com/api/translate?q=cat&ar&fr&de&hi&it&pt&ru&es</code>
          </li>
          <li>&nbsp;</li>
          <li>
            <code>https://gender-nouns-api.llll-ll.com/api/translate?en-starts-with=a</code>
          </li>
          <li>
            <code>https://gender-nouns-api.llll-ll.com/api/translate?en-starts-with=a&fr</code>
          </li>
        </ul>
      </div>
    </section>
    <section class="section">
      <h2 class="title is-spaced maruji">See also</h2>
      <h3 class="subtitle is-spaced maruji">Offline version</h3>
      <p>
        <a href="https://github.com/kako-jun/gender_nouns_gui">kako-jun/gender_nouns_gui</a>
      </p>
      <p>for who has no constant Internet access.</p>
    </section>
    <section class="section">
      <h2 class="title is-spaced maruji">License</h2>
      <p>This project is licensed under the MIT License.</p>
      <p>
        See the
        <a href="https://github.com/kako-jun/gender_nouns_gui/blob/master/LICENSE">LICENSE</a> file for details.
      </p>
    </section>
    <section class="section">
      <h2 class="title is-spaced maruji">Author</h2>
      <p>
        <a href="https://github.com/kako-jun">kako-jun</a>
      </p>
      <p>learning another language.</p>
      <h3 class="subtitle is-spaced maruji m-t-lg">Support</h3>
      <p><a href="https://twitter.com/kako_jun_42">Twitter</a></p>
      <p><a href="https://github.com/kako-jun/gender_nouns_gui/issues">GitHub Issues</a></p>
    </section>
  </div>
</template>

<script>
export default {
  props: [],
  data() {
    return {};
  },
  created() {},
  computed: {},
  methods: {},
};
</script>

<style scoped lang="scss" scoped></style>
