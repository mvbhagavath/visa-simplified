<script>
  import GetInTouch from "../lib/components/GetInTouch.svelte";
  import Hero from "../lib/components/Hero.svelte";
  import KnowMe from "../lib/components/KnowMe.svelte";
  import MyWork from "../lib/components/MyWork.svelte";
</script>

<svelte:head>
  <title>Home</title>
  <meta name="description" content="Vignesh Bhagavath" />
</svelte:head>

<div class="scroll-smooth overflow-y-scroll">
  <Hero />
  <KnowMe />
  <MyWork />
  <GetInTouch />
</div>
