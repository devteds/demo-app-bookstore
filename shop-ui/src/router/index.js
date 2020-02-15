import Vue from 'vue'
import Router from 'vue-router'
import Books from '@/components/Books'
import Book from '@/components/Book'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Books',
      component: Books
    }, 
    {
      path: '/books/:id',
      name: "Book",
      component: Book
    }
  ]
})
