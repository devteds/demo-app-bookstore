<template>
  <div>
      <div class="row">
        <div class="col-12">
            <h1 class="text-left page-title">Books</h1>
            <hr />
        </div>
      </div>      

      <div class="row">        
        <div v-for="book in books" class="col-md-3 col-lg-3 col-sm-6">
            <book-item v-bind:book='book'></book-item>
        </div>
      </div>
  </div>
</template>

<script>
    import BookItem from './BookItem'
    export default {
        name: 'books',
        components: {
            BookItem
        },
        data() {
            return {
                books: [ ]
            }
        },
        methods: {
        },
        created: function() {
            this.$http.get('/api/books')
            .then(function(response) {
                this.books = response.data;
            })
        }
    }
</script>

<style scoped>

</style>
