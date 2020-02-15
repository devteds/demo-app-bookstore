<template>
  <div>
      <b-card no-block style="margin-bottom: 20px; height: 25rem; ">
        
        <div  class="card-block" style="overflow-y: " >                        
            <img v-bind:src=book.image_url class="img-fluid clearfix" />

            <p class="pl-0 mt-3">
                <router-link :to="{ name: 'Book', params: { id: book.id }}" class="btn-link text-left text-wrap pl-0" >{{book.title}}</router-link>
            </p>
            
            <p class="mt-3">
                <span class=""><strong>Price:</strong> {{book.price}}</span>                
            </p>

            <p class="mt-3">
                <button class="btn btn-sm btn-primary">Add to cart</button>
            </p>
        </div>

      </b-card>
  </div>
</template>

<script>    

    export default {
        name: 'book-item',
        props: ['book'],
        components: {            
        },
        data() {
            return {                
            }
        },
        created: function() {
        }
    }
</script>

<style scoped>
    .btn-primary {
        background-color: #c76c0ae8;
        border-color: #c76c0ae8;
    }
</style>
