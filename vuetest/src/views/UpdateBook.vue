<template>
  <el-form :model="ruleForm" :rules="rules" ref="ruleForm" label-width="100px" class="demo-ruleForm">
	<el-form-item label="图书编号" prop="id">
	  <el-input v-model="ruleForm.id" readonly></el-input>
	</el-form-item>
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
      <el-button type="primary" @click="submitForm('ruleForm')">更新</el-button>
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
        id: '',
        name: '',
        author: '',
		publish: '',
		price: ''
      },
      rules: {
        name: [
          {required: true, message: '请输入图书名称', trigger: 'blur'},
          {min: 2, max: 10, message: '长度在 2 到 10 个字符', trigger: 'blur'}
        ],
		author: [
		  {required: true, message: '请输入作者', trigger: 'blur'},
		  {min: 2, max: 10, message: '长度在 2 到 10 个字符', trigger: 'blur'}
		]
      }
    }
  },
  methods: {
    submitForm(formName) {
      const _this = this
      this.$refs[formName].validate((valid) => {
        if (valid) {
          axios.put('http://localhost:8181/book/update',this.ruleForm).then(function (resp) {
            if (resp.data == 'success') {
              _this.$alert('《' + _this.ruleForm.name + '》更新成功', 'Now', {
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
  },
  created(){
	const _this = this
	axios.get('http://localhost:8181/book/findById/'+this.$route.query.id).then(function (reps){
	  console.log(reps)
	  _this.ruleForm = reps.data
	})
  }
}
</script>

<style scoped>

</style>