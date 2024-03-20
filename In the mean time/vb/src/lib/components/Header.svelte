<script lang="ts">
  import { goto } from "$app/navigation";
  import content from "../../content/content.json";

  function getIDFromName(name: string) {
    return `#${name.toLowerCase().replaceAll(" ", "")}`;
  }

  const getInitials = () => {
    if (content.initials && content.initials.length > 0)
      return content.initials.substring(0, 3);
    else {
      let nameSplit = content.name.split(" ");
      let firstInitial = nameSplit[0].split("")[0];
      let lastInitial = nameSplit[1] ? nameSplit[1].split("")[0] : "";
      return `${firstInitial}${lastInitial}`;
    }
  };

  const handleRouting = () => {
    goto(`/`);
  };

  const handleKeyDown = (e: any) => {
    if ((e.code = "ENTER")) {
      handleRouting();
    }
  };

  const getStyledName = () => {
    let styledName = "";
    content.name.split(" ").map((partname, index) => {
      styledName = `${styledName} <span class="font-bold ${index % 2 == 0 ? "text-[#000]" : "text-[#face55]"}">${partname.toUpperCase()}</span>`;
    });
    return styledName;
  };
</script>

<header
  class="px-[4em] py-[1em] mb-[32px] flex justify-between items-center w-[100%] fixed top-0 left-0 bg-white shadow-md z-50"
>
  <div
    class="p-[8px] mx-auto md:mx-0"
    on:click={handleRouting}
    on:keypress={handleKeyDown}
    role="button"
    tabindex="0"
  >
    {#if content.showInitialsInHeader}
      <span class="font-semibold text-3xl text-[#face55]">{"{"}</span>
      <span class="font-semibold text-2xl">{getInitials()}</span>
      <span class="font-semibold text-3xl text-[#face55]">{"}"}</span>
    {/if}
    {#if !content.showInitialsInHeader}
      {@html getStyledName()}
    {/if}
  </div>
  <ul class="justify-between hidden md:flex">
    {#each content.headerLinks as item}
      <li>
        <a
          class="px-[16px] cursor-pointer hover:text-[#face55]"
          href={`/${getIDFromName(item)}`}
          tabindex="0">{item}</a
        >
      </li>
    {/each}
  </ul>
</header>
