<template>
  <div>
    <div>total: {{ total }}</div>
    <div>
      <el-radio-group v-model="charge">
        <el-radio-button :label="total"></el-radio-button>
        <el-radio-button label="500"></el-radio-button>
        <el-radio-button label="1000"></el-radio-button>
      </el-radio-group>
      or
      <div>
        <el-input placeholder="Please input" v-model="charge">
          <template slot="prepend">input</template>
        </el-input>
      </div>

      <div>deposit: {{ charge }}</div>
    </div>
    <div>change: {{ charge - total }}</div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      charge: 0,
    }
  },
  props: ['total']
}
</script>
