<template>
  <el-input-number v-model="num1" @change="handleChange" :min="0"></el-input-number>
</template>

<script>
export default {
  data() {
    return {
      num1: 0
    };
  },
  methods: {
    handleChange(value) {
      console.log(value)
    }
  }
};
</script>
