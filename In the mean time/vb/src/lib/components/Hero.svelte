<script lang="ts">
  import { onMount } from "svelte";
  import content from "../../content/content.json";
  let path = `../../content/${content.profileImage}`;
  let profile = "";
  onMount(async () => {
    profile = (await import(path)).default;
    typing();
  });

  let phrase = "Hello! I am"; // text to be typed
  let typedChar = ""; // SECTION displaying typed text
  let index = 0;
  // $: console.log(index);
  let typewriter: number; // for setInterval/clearInterval

  // If Input is empty, clear out SECTION displaying typed text
  $: if (!phrase) {
    typedChar = "";
    index = typedChar.length;
  }

  // Disable START button; prevent clicking twice
  let isTyping = false;

  // // AUDIO SFX
  // const typingSFX = [
  //   "https://assets.codepen.io/504854/type_1.mp3",
  //   "https://assets.codepen.io/504854/type_2.mp3",
  //   "https://assets.codepen.io/504854/type_3.mp3",
  // ];

  // const playSFX = () => {
  //   let random = Math.floor(Math.random() * typingSFX.length);
  //   let url = typingSFX[random];
  //   let keySFX = new Audio(url);

  //   keySFX.play();
  //   keySFX.volume = Math.random();
  // };

  const typeChar = () => {
    if (index < phrase.length) {
      isTyping = true;
      typedChar += phrase[index];
      // playSFX();
      index += 1;
    } else {
      stopTyping();
      return;
    }
  };

  const typing = () => (typewriter = setInterval(typeChar, 250));

  const stopTyping = () => {
    clearInterval(typewriter);
    isTyping = false;
  };
</script>

<section
  class="text-center md:p-[7em] min-h-[100vh] flex flex-col justify-center"
>
  <div class="max-w-[1344px] mx-auto">
    <div
      class={`w-[275px] h-[275px] mx-auto mb-[48px] rounded-[50%] bg-[url('src/content/profile.jpg')] bg-cover`}
    >
      <!-- <img src={profile} alt={content.name} class="object-cover" /> -->
    </div>
    <div class="text-5xl">
      <p class="pr-[8px] md:inline">{typedChar}</p>
      <h1 class="font-semibold text-5xl leading-2 md:inline text-[#face55]">
        {content.name}
      </h1>
    </div>
    <article
      class="my-[24px] text-2xl max-w-[70%] md:max-w-[60%] text-center mx-auto"
    >
      {content.description}
    </article>
  </div>
</section>
