<template>
  <div id="app">
    <ul>
      <li>
        none<el-input-number v-model="none" :min="0"></el-input-number> $ 100
      </li>
      <li>
        ketchup<el-input-number v-model="ketchup" :min="0"></el-input-number> $ 100
      </li>
      <li>
        mustard<el-input-number v-model="mustard" :min="0"></el-input-number> $ 100
      </li>
      <li>
        both<el-input-number v-model="both" :min="0"></el-input-number> $ 100
      </li>
    </ul>
    <bill></bill>
    <el-button @click="submit">submit</el-button>
    <el-button @click="create">create</el-button>
    <el-button @click="get">get</el-button>
    <que></que>
  </div>
</template>

<script>
export default {
  data() {
    return {
      none: 0,
      ketchup: 0,
      mustard: 0,
      both: 0
    }
  },
  methods: {
    submit: function() {
      var frankfurts = []
      var step = 0
      for (step = 0; step < this.none; step++) {
        frankfurts.push({ketchup: false, mustard: false})
      }
      for (step = 0; step < this.none; step++) {
        frankfurts.push({ketchup: true, mustard: false})
      }
      for (step = 0; step < this.none; step++) {
        frankfurts.push({ketchup: false, mustard: true})
      }
      for (step = 0; step < this.none; step++) {
        frankfurts.push({ketchup: true, mustard: true})
      }

      this.axios.post('http://localhost:5000/customers', {
        customer:
        {frankfurts_attributes: frankfurts}
      }).then((response) => {
        console.log(response.data)
      })
    },
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
