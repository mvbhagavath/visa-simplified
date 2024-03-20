<script lang="ts">
  import content from "../../content/content.json";
  import developer from "../../content/developer.svg";

  function getIDFromName(name: string) {
    return `${name.toLowerCase().replaceAll(" ", "")}`;
  }
</script>

<section
  id={getIDFromName(content.headerLinks[0])}
  class="py-[6em] px-[3em] md:p-[7em] bg-[#face55] min-h-[100vh]"
>
  <div class="max-w-[1344px] mx-auto lg:grid grid-cols-12">
    <h2 class="text-3xl font-semibold leading-2 mb-[16px] col-span-12">
      {content.knowMeSection.title}
    </h2>
    <aside class="text-lg lg:col-span-6">
      {@html content.knowMeSection.content}
    </aside>
    <aside class="p-[3em] lg:col-span-6">
      <img src={developer} alt={"developer"} class="w-[100%]" />
    </aside>
  </div>
</section>
