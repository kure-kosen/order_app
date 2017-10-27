<template>
<el-table
    :data="tableData"
    border
    style="width: 100%">
    <el-table-column
      label="Order"
      width="180">
      <template slot-scope="scope">
        <el-tag
	  type="warning"
	>hoge</el-tag>
      </template>
    </el-table-column>
    <el-table-column
      label="Time"
      width="180">
      <template slot-scope="scope">
        <el-icon name="time"></el-icon>
        <span style="margin-left: 10px">55:11</span>
      </template>      
    </el-table-column>
    <el-table-column
      label="Operation">
      <template slot-scope="scope">
        <el-button
          size="small"
	  type="success"
          @click="handleEdit(scope.$index, scope.row)">Done</el-button>
      </template>
    </el-table-column>
  </el-table>
</template>

<script>
export default {
    data() {
      return {
        tableData: [{
          date: '2016-05-03',
          name: 'Tom',
          address: 'No. 189, Grove St, Los Angeles'
        }, {
          date: '2016-05-02',
          name: 'Tom',
          address: 'No. 189, Grove St, Los Angeles'
        }, {
          date: '2016-05-04',
          name: 'Tom',
          address: 'No. 189, Grove St, Los Angeles'
        }, {
          date: '2016-05-01',
          name: 'Tom',
          address: 'No. 189, Grove St, Los Angeles'
        }]
      }
    },
    methods: {
      handleEdit(index, row) {
        console.log(index, row);
      },
      handleDelete(index, row) {
        console.log(index, row);
      }
    }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
