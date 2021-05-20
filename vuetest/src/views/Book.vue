<template>
    <div>
        <table style="margin: auto">
            <tr>
                <td>编号</td>
                <td>图书名称</td>
                <td>作者</td>
            </tr>
            <tr v-for="item in books">
                <td>{{item.id}}</td>
                <td>{{item.name}}</td>
                <td>{{item.author}}</td>
            </tr>
        </table>
        {{msg}}
    </div>
</template>

<script>
    export default {
        name: "Book",
        data(){
            return{
                msg:"hello Vue",
                books: []
                /*books: [
                    {
                        id: 1,
                        name: 'Java基础实战',
                        author: '小米'
                    },
                    {
                        id: 2,
                        name: 'Vue基础实战',
                        author: '苹果'
                    },
                    {
                        id: 3,
                        name: 'Java零基础实战',
                        author: '阿三'
                    }
                ]*/
            }
        },
        created() {
            const _this = this
            axios.get('http://localhost:8181/book/findAll/').then(function (resp) {
                _this.books = resp.data
            })
        }
    }
</script>

<style scoped>

</style>