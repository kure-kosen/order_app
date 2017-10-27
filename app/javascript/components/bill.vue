<template>
  <div>
    <div>total: 99</div>
    <div>
      <el-radio-group v-model="charge">
        <el-radio-button label="just"></el-radio-button>
        <el-radio-button label="500"></el-radio-button>
        <el-radio-button label="1,000"></el-radio-button>
        <el-radio-button label="input"></el-radio-button>
      </el-radio-group>

      <el-input placeholder="Please input" v-model="charge"></el-input>
      <div>deposit: {{ charge }}</div>
    </div>
    <div>change: 99</div>
  </div>
</template>

<script>
export default {
  data: function () {
    return {
      charge: 0,
    }
  }
}
</script>
