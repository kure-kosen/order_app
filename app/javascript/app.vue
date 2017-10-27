<template>
  <div id="app">
    <ul>
      <li>
        none<item></item> $ 100
      </li>
      <li>
        ketchup<item></item> $ 100
      </li>
      <li>
        mustard<item></item> $ 100
      </li>
    </ul>
    <bill></bill>
    <el-button @click='create'>create</el-button>
  </div>
</template>

<script>
export default {
  methods: {
    send: function(val) {
      this.$socket.send(data)
    },
    create: function() {
      this.orderChannel = this.$cable.subscriptions.create(
        { channel: 'OrderChannel'},
        { received (data) { console.log(data) } }
      )
    }
  },
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
