<script lang="ts">
  import { onMount } from "svelte";
  import { goto } from "$app/navigation";
  import work from "$lib/images/work.png";

  export let item: any;
  export let index: number;
  let path =
    item.workImage && item.workImage !== ""
      ? `../../content/${item.workImage}`
      : work;
  let image = "";

  const handleImageLoadError = (ev: any) => (ev.target.src = work);

  const handleRouting = () => {
    goto(`/work/${index}`);
  };

  const handleKeyDown = (e: any) => {
    if ((e.code = "ENTER")) {
      handleRouting();
    }
  };

  onMount(async () => {
    image = (await import(path)).default;
  });
</script>

<div
  class="relative shadow-lg rounded-lg cursor-pointer h-[100%]"
  on:click={handleRouting}
  on:keypress={handleKeyDown}
  role="button"
  tabindex={0}
>
  <img
    src={image}
    alt={item.name}
    on:error={handleImageLoadError}
    class="rounded-lg w-[100%] h-[100%] object-cover"
  />
  <!-- <div class="p-[1em]">
    <h5>{item.name}</h5>
    <div class="">
      {item.description}
    </div>
  </div> -->
</div>
