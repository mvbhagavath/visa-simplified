import characterDetails from "@/constants/characterDetails";
import { Metadata } from "next";
import Image from "next/image";

type Props = {
  params: {
    id: string;
  };
};

const CharacterDetails = async ({ params }: Props) => {
  const characterID = parseInt(params.id) - 1;
  return (
    <div className="grid md:grid-cols-2">
      <div className="relative min-h-[500px] h-[60vh]">
        <Image
          src={characterDetails[characterID].image}
          alt={characterDetails[characterID].name}
          fill
          className="mx-auto"
          objectFit="contain"
        />
      </div>
      <section className="px-[24px]">
        <h3>{characterDetails[characterID].name}</h3>
        <div className="grid grid-cols-2 mb-[24px] gap-8">
          <div className="p-[16px] shadow-md rounded-lg">
            <p className="text-md underline mb-[5px]">Race</p>
            {characterDetails[characterID].race}
          </div>
          <div className="p-[16px] shadow-md rounded-lg">
            <p className="text-md underline mb-[5px]">Gender</p>
            {characterDetails[characterID].gender}
          </div>
          <div className="p-[16px] shadow-md rounded-lg">
            <p className="text-md underline mb-[5px]">Ki</p>
            {characterDetails[characterID].ki}
          </div>
          <div className="p-[16px] shadow-md rounded-lg">
            <p className="text-md underline mb-[5px]">Max Ki</p>
            {characterDetails[characterID].maxKi}
          </div>
          <div className="p-[16px] shadow-md rounded-lg">
            <p className="text-md underline mb-[5px]">Affiliation</p>
            {characterDetails[characterID].affiliation}
          </div>
        </div>
        <p>{characterDetails[characterID].description}</p>
      </section>
    </div>
  );
};

export default CharacterDetails;
