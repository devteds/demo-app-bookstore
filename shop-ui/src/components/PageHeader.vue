<template>
  <nav class="navbar-toggleable-md py-1 fixed-top bg-inverse" id="mainNav">
      <div class="container d-flex flex-column flex-md-row justify-content-between">
        <a class="navbar-brand js-scroll-trigger py-2" href="/"><strong>Simple Bookstore</strong></a>
        <button class="navbar-toggler navbar-toggler-right text-uppercase bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <i class="fas fa-bars"></i>
        </button>

        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto ">
            <li class="nav-item mx-0 mx-lg-1 ">
              <a class="nav-link py-3 px-0 px-lg-3 active rounded js-scroll-trigger" href="/shop">Shop</a>
            </li>
            <li class="nav-item mx-0 mx-lg-1">
              <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="/cart">Cart</a>
            </li>
            <li class="nav-item mx-0 mx-lg-1">
              <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="/account">Account</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
</template>

<script>
export default {  
  name: 'pageHeader',
  components: {
  }
}
</script>

<style scoped>
</style>
