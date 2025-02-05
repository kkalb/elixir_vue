<template>
    <div class="card">
      <h2>{{ title }}</h2>
      <p>{{ description }}</p>
      <button @click="toggleInfo">{{ showMore ? 'Show Less' : 'Show More' }}</button>
      <div v-if="showMore">
        <p>Here's some extra content for you to enjoy!</p>
      </div>
    </div>
  </template>
  
  <script>
  import { ref } from 'vue'
  
  export default {
    name: 'FancyComponent',
    data() {
      return {
        title: 'Fancy Vue 3 Component',
        description: 'This is a test component to check Vue 3 functionality.',
        showMore: false
      }
    },
    methods: {
      toggleInfo() {
        this.showMore = !this.showMore
      }
    }
  }
  </script>
  
  <style scoped>
  .card {
    background-color: #f8f9fa;
    border: 1px solid #dee2e6;
    padding: 20px;
    border-radius: 10px;
    text-align: center;
    width: 300px;
    margin: 20px auto;
  }
  
  h2 {
    color: #007bff;
  }
  
  button {
    margin-top: 10px;
    padding: 10px;
    background-color: #28a745;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }
  
  button:hover {
    background-color: #218838;
  }
  </style>