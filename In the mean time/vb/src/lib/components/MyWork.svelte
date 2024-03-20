<script lang="ts">
  import Card from "$lib/common/Card.svelte";
  import content from "../../content/content.json";

  function getIDFromName(name: string) {
    return `${name.toLowerCase().replaceAll(" ", "")}`;
  }

  function getGridColCass() {
    switch (content.myWorkSection.cardsPerRow) {
      case 2:
        return "lg:grid-cols-2";
      case 4:
        return "lg:grid-cols-4";
      default:
        return "lg:grid-cols-3";
    }
  }
</script>

<section
  id={getIDFromName(content.headerLinks[1])}
  class="min-h-[100vh] py-[6em] px-[3em] md:p-[7em]"
>
  <div class="max-w-[1344px] mx-auto">
    <h2 class="text-3xl font-semibold leading-2 mb-[32px]">
      {content.myWorkSection.title}
    </h2>
    <div class="text-xl leading-2 mb-[32px]">
      {@html content.myWorkSection.description}
    </div>
    <div class={`md:grid md:gap-12 md:grid-cols-2 ${getGridColCass()} `}>
      {#each content.myWorkSection.workList as workItem, i}
        <div
          class={`mb-[24px] md:mb-0 lg:col-span-${12 / content.myWorkSection.cardsPerRow} h-[250px]`}
        >
          <Card item={workItem} index={i} />
        </div>
      {/each}
    </div>
  </div>
</section>
