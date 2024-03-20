<script lang="ts">
  import content from "../../../content/content.json";
  import githubIcon from "../../../lib/images/github.svg";
  import appleStoreIcon from "../../../lib/images/apple-store.svg";
  import playStoreIcon from "../../../lib/images/play-store.svg";
  import screenIcon from "../../../lib/images/screen.svg";
  export let data;
  let index: number = data.slug;

  import { onMount } from "svelte";
  import work from "$lib/images/work.png";
  let path = `../../../content/${content.myWorkSection.workList[index].workImage}`;
  let image = "";

  const handleImageLoadError = (ev: any) => (ev.target.src = work);
  const getSocialWidget = (name: string, link: string, icon?: string) => {
    return `<a href=${link} target="_blank" class="w-[50px] h-[50px] p-[0.5em]">
      <img src=${icon} alt=${name}/>
      </a>`;
  };

  onMount(async () => {
    image = (await import(path)).default;
  });
</script>

<section
  class="min-h-95vh py-[6em] px-[3em] md:px-[10em] max-w-[1344px] mx-auto"
>
  <div class="my-[48px] text-center">
    <h1 class="text-5xl font-semibold mb-[24px]">
      {content.myWorkSection.workList[index].name}
    </h1>
    <div class="flex items-center justify-center">
      {#if content.myWorkSection.workList[index].linkToProject !== ""}
        {@html getSocialWidget(
          "Visit Website",
          content.myWorkSection.workList[index].linkToProject,
          screenIcon
        )}
      {/if}
      {#if content.myWorkSection.workList[index].github !== ""}
        {@html getSocialWidget(
          "Github",
          content.myWorkSection.workList[index].github,
          githubIcon
        )}
      {/if}
      {#if content.myWorkSection.workList[index].playstore !== ""}
        {@html getSocialWidget(
          "Play store",
          content.myWorkSection.workList[index].playstore,
          playStoreIcon
        )}
      {/if}
      {#if content.myWorkSection.workList[index].appleStore !== ""}
        {@html getSocialWidget(
          "Apple store",
          content.myWorkSection.workList[index].appleStore,
          appleStoreIcon
        )}
      {/if}
    </div>
  </div>
  {#if content.myWorkSection.workList[index].workImage != ""}
    <div>
      <img
        src={image}
        alt={content.myWorkSection.workList[index].name}
        on:error={handleImageLoadError}
        class="rounded-lg w-[100%] h-[100%] object-cover shadow-lg"
      />
    </div>
  {/if}
  <div class="py-[3em] lg:p-[5em]">
    <h2 class="text-3xl font-semibold">About this project</h2>
    <article class="text-lg my-[2em]">
      {@html content.myWorkSection.workList[index].description}
    </article>
    <section class="">
      <h3 class="text-2xl font-semibold mb-[1em]">Skills & Tools</h3>
      <div class="flex flex-wrap">
        {#each content.myWorkSection.workList[index].skillsAndTools as workItem, i}
          <!-- <div class="p-[1em] mr-[0.5em] shadow-md rounded-lg">
            <span>{workItem}</span>
          </div> -->
          <div class="flex flex-col items-center justify-center gap-3 p-6">
            <div class="h-8 sm:h-10">
              <img
                alt="Go"
                loading="lazy"
                width="40"
                height="40"
                decoding="async"
                data-nimg="1"
                class="h-full w-auto rounded-lg"
                src={`/src/content/${workItem.icon}`}
                style="color: transparent;"
              />
            </div>
            <p class="text-black text-sm sm:text-lg">{workItem.name}</p>
          </div>
        {/each}
      </div>
    </section>
  </div>
</section>
