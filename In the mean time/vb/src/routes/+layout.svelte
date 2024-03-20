<script lang="ts">
  import "./styles.css";
  import Footer from "$lib/components/Footer.svelte";
  import Header from "../lib/components/Header.svelte";
</script>

<div class="app w-[100vw] mx-auto">
  <main>
    <slot />
  </main>
  <Header />
  <Footer />
</div>
