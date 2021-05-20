<template>
  <el-form :model="ruleForm" :rules="rules" ref="ruleForm" label-width="100px" class="demo-ruleForm">
    <el-form-item label="图书名称" prop="name">
      <el-input v-model="ruleForm.name"></el-input>
    </el-form-item>
    <el-form-item label="作者" prop="author">
      <el-input v-model="ruleForm.author"></el-input>
    </el-form-item>
	<el-form-item label="出版社" prop="publish">
	  <el-input v-model="ruleForm.publish"></el-input>
	</el-form-item>
	<el-form-item label="价格" prop="price">
	  <el-input v-model="ruleForm.price"></el-input>
	</el-form-item>
    <el-form-item>
      <el-button type="primary" @click="submitForm('ruleForm')">立即创建</el-button>
      <el-button @click="resetForm('ruleForm')">重置</el-button>
    </el-form-item>
  </el-form>
</template>

<script>
export default {
  name: 'AddBook',
  data() {
    return {
      ruleForm: {
        name: '',
        author: '',
		publish: '',
		price: ''
      },
      rules: {
        name: [
          { required: true, message: '请输入书名', trigger: 'blur' },
          { min: 2, max: 15, message: '长度在 2 到 15 个字符', trigger: 'blur' }
        ],
		author: [
		  { required: true, message: '请输入作者', trigger: 'blur' },
		],
		publish: [
		  { required: true, message: '请输入出版方', trigger: 'blur' },
		],
		price: [
		  { required: true, message: '请填写价格', trigger: 'blur' },
		]
      }
    };
  },
  methods: {
    submitForm(formName) {
      const _this = this
      this.$refs[formName].validate((valid) => {
        if (valid) {
          axios.post('http://localhost:8181/book/save',this.ruleForm).then(function (resp) {
            if (resp.data == 'success') {
              _this.$alert('《'+_this.ruleForm.name+'》添加成功', 'Now', {
                confirmButtonText: '确定',
                callback: action => {
                  _this.$router.push('/ShowBook')
                }
              });
              //_this.$message("添加成功")
            }
          })
          //console.log(_this.ruleForm)
        } else {
          console.log('error submit!!');
          return false;
        }
      });
    },
    resetForm(formName) {
      this.$refs[formName].resetFields();
    }
  }
}
</script>

<style scoped>

</style>