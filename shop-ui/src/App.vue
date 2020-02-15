<template>
  <div id="app">
    <!--<img src="./assets/logo.png">-->
    <pageHeader></pageHeader>
    <header class="py-5"></header>
    
    <div class="container">
      <router-view></router-view>
    </div>

    <pageFooter></pageFooter>

    <div class="copyright py-4 text-center text-white">
      <div class="container">
        <small>Copyright &copy; Simple Bookstore 2019</small>
      </div>
    </div>
  </div>
</template>

<script>
  import PageHeader from './components/PageHeader'
  import PageFooter from './components/PageFooter'
  
  export default {
    name: 'app',
    components: {
      PageHeader, PageFooter
    }
  }
</script>

<style>
#app {
}
</style>
