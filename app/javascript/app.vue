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
    <!-- <bill :total="total"></bill> -->
    <div>
      total: {{ total }}
    </div>
    <el-button @click="submit" :disabled="submitDisabled">submit</el-button>
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
      both: 0,
      price: {
        none: 100,
        ketchup: 100,
        mustard: 100,
        both: 100
      },
    }
  },
  computed: {
    submitDisabled: function() {
      return !(this.none || this.ketchup || this.mustard || this.both)
    },
    total: function() {
      return this.none * this.price.none + this.ketchup * this.price.ketchup + this.mustard * this.price.mustard + this.both * this.price.both
    },
  },
  methods: {
    submit: function() {
      var frankfurts = []
      var step = 0
      for (step = 0; step < this.none; step++) {
        frankfurts.push({ketchup: false, mustard: false})
      }
      for (step = 0; step < this.ketchup; step++) {
        frankfurts.push({ketchup: true, mustard: false})
      }
      for (step = 0; step < this.mustard; step++) {
        frankfurts.push({ketchup: false, mustard: true})
      }
      for (step = 0; step < this.both; step++) {
        frankfurts.push({ketchup: true, mustard: true})
      }

      this.axios.post('http://localhost:5000/customers', {
        customer:
        {frankfurts_attributes: frankfurts}
      }).then((response) => {
        console.log(response.data)
      })
    },
  },
}

</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
