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
    <el-button @click='get'>get</el-button>
    <que></que>
  </div>
</template>

<script>
export default {
  methods: {
    get: function() {
      this.axios.get('http://localhost:5000/customers').then((response) => {
        console.log(response.data)
      })
    },
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
