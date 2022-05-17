<template>
  <tr class="language-row">
    <th>{{language_full}}</th>
    <td>
      <span
        v-if="ts.length >= 1"
        class="tag is-large"
        :class="{'is-danger': ts[0].gender === 'f',
                'is-success': ts[0].gender === 'n',
                'is-info': ts[0].gender === 'm'}"
      >
        {{ts[0].translated}}
        <button
          class="button is-outlined is-inverted is-rounded is-small m-l-sm"
          :class="{'is-danger': ts[0].gender === 'f',
                  'is-success': ts[0].gender === 'n',
                  'is-info': ts[0].gender === 'm'}"
          v-on:click="copy_to_clipboard(ts[0].translated)"
        >
          <i class="fas fa-clipboard" aria-hidden="true"></i>
        </button>
      </span>
    </td>
    <td>
      <span
        v-if="ts.length >= 2"
        class="tag is-medium"
        :class="{'is-danger': ts[1].gender === 'f',
                'is-success': ts[1].gender === 'n',
                'is-info': ts[1].gender === 'm'}"
      >
        {{ts[1].translated}}
        <button
          class="button is-outlined is-inverted is-rounded is-small m-l-sm"
          :class="{'is-danger': ts[1].gender === 'f',
                  'is-success': ts[1].gender === 'n',
                  'is-info': ts[1].gender === 'm'}"
          v-on:click="copy_to_clipboard(ts[1].translated)"
        >
          <i class="fas fa-clipboard" aria-hidden="true"></i>
        </button>
      </span>
    </td>
    <td>
      <span
        v-if="ts.length >= 3"
        class="tag is-medium"
        :class="{'is-danger': ts[2].gender === 'f',
                'is-success': ts[2].gender === 'n',
                'is-info': ts[2].gender === 'm'}"
      >
        {{ts[2].translated}}
        <button
          class="button is-outlined is-inverted is-rounded is-small m-l-sm"
          :class="{'is-danger': ts[2].gender === 'f',
                  'is-success': ts[2].gender === 'n',
                  'is-info': ts[2].gender === 'm'}"
          v-on:click="copy_to_clipboard(ts[2].translated)"
        >
          <i class="fas fa-clipboard" aria-hidden="true"></i>
        </button>
      </span>
    </td>
  </tr>
</template>

<script>
export default {
  props: ["language_full", "ts"],
  data() {
    return {};
  },
  created() {},
  computed: {},
  watch: {},
  methods: {
    copy_to_clipboard(text) {
      const copyFrom = document.createElement("textarea");
      copyFrom.textContent = text;
      const bodyElm = document.getElementsByTagName("body")[0];
      bodyElm.appendChild(copyFrom);

      copyFrom.select();
      var retVal = document.execCommand("copy");
      bodyElm.removeChild(copyFrom);
      return retVal;
    }
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss" scoped>
</style>
