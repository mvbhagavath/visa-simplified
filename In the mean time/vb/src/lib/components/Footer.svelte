<script lang="ts">
  import content from "../../content/content.json";
  function getIDFromName(name: string) {
    return `#${name.toLowerCase().replaceAll(" ", "")}`;
  }
</script>

<footer class="p-[12px] text-center bg-black">
  <div class="mb-[60px] md:mb-0 text-white">
    <spn class="mr-[5px]">© Copyright 2024 </spn>
    <span
      >Made by
      <a
        class="font-semibold"
        href="https://github.com/mvbhagavath"
        target="_blank">mvbhagavath</a
      ></span
    >
  </div>
  <ul
    class="fixed bottom-0 left-0 justify-between flex md:hidden bg-white w-[100%] py-[1em] px-[2em] shadow-lg rounded-t-md border-t-2"
  >
    {#each content.headerLinks as item}
      <li class="px-[16px] cursor-pointer">
        <a href={`/${getIDFromName(item)}`}>{item}</a>
      </li>
    {/each}
  </ul>
</footer>
