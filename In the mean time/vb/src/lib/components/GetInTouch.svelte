<script lang="ts">
  import content from "../../content/content.json";
  import instagram from "../images/instagram.svg";
  import github from "../images/github.svg";
  import linkedin from "../images/linkedin.svg";
  import facebook from "../images/facebook.svg";
  import x from "../images/x.svg";

  const getIDFromName = (name: string) => {
    return `${name.toLowerCase().replaceAll(" ", "")}`;
  };

  const getSocialWidget = (name: string, link: string, icon?: string) => {
    return `<a href=${link} target="_blank" class="w-[50px] h-[50px]">
      <img src=${icon} alt=${name}/>
      </a>`;
  };
</script>

<section
  id={getIDFromName(content.headerLinks[2])}
  class="md:min-h-[50vh] py-[4em] px-[3em] md:p-[7em] bg-[#face55]"
>
  <div class="max-w-[1344px] mx-auto">
    <h2 class="text-3xl font-semibold leading-2 mb-[16px] col-span-12">
      {content.getInTouchSection.title}
    </h2>
    <article>
      {content.getInTouchSection.description}
    </article>
    <ul class="mb-[32px]">
      {#if content.getInTouchSection.email !== ""}
        <span>Drop a mail @ </span><a
          class="hover:underline"
          href={`mailto:${content.getInTouchSection.email}`}
          >{content.getInTouchSection.email}</a
        >
      {/if}
      {#if content.getInTouchSection.phone !== ""}
        <span>Phone:</span><a href={`tel:${content.getInTouchSection.phone}`}
          >{content.getInTouchSection.phone}</a
        >
      {/if}
    </ul>
    <ul class="flex justify-center md:justify-start">
      <li class="mr-[8px]">
        {@html getSocialWidget(
          "instagram",
          content.getInTouchSection.socials.instagram,
          instagram
        )}
      </li>
      <li class="mr-[8px] w-[40px]">
        {@html getSocialWidget(
          "github",
          content.getInTouchSection.socials.gitHub,
          github
        )}
      </li>
      <li class="mr-[8px]">
        {@html getSocialWidget(
          "linkedIn",
          content.getInTouchSection.socials.linkedIn,
          linkedin
        )}
      </li>
      <li class="mr-[8px]">
        {@html getSocialWidget(
          "facebook",
          content.getInTouchSection.socials.facebook,
          facebook
        )}
      </li>
      <li class="mr-[8px]">
        {@html getSocialWidget("x", content.getInTouchSection.socials.x, x)}
      </li>
    </ul>
  </div>
</section>
