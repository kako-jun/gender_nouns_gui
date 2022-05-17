<template>
  <div class="search">
    <Query
      :q="this.$route.query.q"
      :match="this.$route.query.match"
      :ar="this.$route.query.ar"
      :fr="this.$route.query.fr"
      :de="this.$route.query.de"
      :hi="this.$route.query.hi"
      :it="this.$route.query.it"
      :pt="this.$route.query.pt"
      :ru="this.$route.query.ru"
      :es="this.$route.query.es"
    />
    <Result
      :q="this.$route.query.q"
      :match="this.$route.query.match"
      :ar="this.$route.query.ar"
      :fr="this.$route.query.fr"
      :de="this.$route.query.de"
      :hi="this.$route.query.hi"
      :it="this.$route.query.it"
      :pt="this.$route.query.pt"
      :ru="this.$route.query.ru"
      :es="this.$route.query.es"
    />
  </div>
</template>

<script>
// @ is an alias to /src
import Query from "@/components/Query.vue";
import Result from "@/components/Result.vue";

export default {
  components: {
    Query,
    Result
  }
};
</script>

<style scoped lang="scss" scoped>
</style>
