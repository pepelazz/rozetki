<template>
  <div>
    скидка {{item.discount_value}}
  </div>
</template>

<script>
import {ref} from 'vue'
import $utils from 'src/app/plugins/utils'

export default {
  props: ['item'],
  setup() {
    return {
    }
  }
}
</script>
