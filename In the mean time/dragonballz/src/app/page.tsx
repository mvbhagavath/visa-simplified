import characterDetails from "@/constants/characterDetails";
import Image from "next/image";
import Link from "next/link";

export default function Home() {
  return (
    <main className="min-h-screen px-24 py-[30px]">
      <div className="grid grid-cols-3 gap-12">
        {characterDetails.map((details, index) => (
          <Link href={`/characters/${details.id}`} key={details.name}>
            <div className="relative p-[32px] shadow-md rounded-lg">
              <div className="relative w-[100%] h-[400px] mb-[10px]">
                <Image
                  src={details.image}
                  alt={details.name}
                  fill
                  priority={index < 3}
                  objectFit="contain"
                />
              </div>
              <h3 className="text-center font-medium text-lg">
                {details.name}
              </h3>
            </div>
          </Link>
        ))}
      </div>
    </main>
  );
}
