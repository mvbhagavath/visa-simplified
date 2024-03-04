type CharacterDetails = {
  id: number;
  name: string;
  description: string;
  image: string;
  ki: string;
  maxKi: string;
  race: string;
  gender: string;
  affiliation: string;
};
const characterDetails: CharacterDetails[] = [
  {
    id: 1,
    name: "Goku",
    ki: "60.000.000",
    maxKi: "90 Septillion",
    race: "Saiyan",
    gender: "Male",
    description:
      "El protagonista de la serie, conocido por su gran poder y personalidad amigable. Originalmente enviado a la Tierra como un infante volador con la misión de conquistarla. Sin embargo, el caer por un barranco le proporcionó un brutal golpe que si bien casi lo mata, este alteró su memoria y anuló todos los instintos violentos de su especie, lo que lo hizo crecer con un corazón puro y bondadoso, pero conservando todos los poderes de su raza. No obstante, en la nueva continuidad de Dragon Ball se establece que él fue enviado por sus padres a la Tierra con el objetivo de sobrevivir a toda costa a la destrucción de su planeta por parte de Freeza. Más tarde, Kakarot, ahora conocido como Son Goku, se convertiría en el príncipe consorte del monte Fry-pan y líder de los Guerreros Z, así como el mayor defensor de la Tierra y del Universo 7, logrando mantenerlos a salvo de la destrucción en innumerables ocasiones, a pesar de no considerarse a sí mismo como un héroe o salvador.",
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699044374/hlpy6q013uw3itl5jzic.webp",
    affiliation: "Z Fighter",
  },
  {
    id: 2,
    name: "Vegeta",
    ki: "54.000.000",
    maxKi: "19.84 Septillion",
    race: "Saiyan",
    gender: "Male",
    description:
      "Príncipe de los Saiyans, inicialmente un villano, pero luego se une a los Z Fighters. A pesar de que a inicios de Dragon Ball Z, Vegeta cumple un papel antagónico, poco después decide rebelarse ante el Imperio de Freeza, volviéndose un aliado clave para los Guerreros Z. Con el paso del tiempo llegaría a cambiar su manera de ser, optando por permanecer y vivir en la Tierra para luchar a su lado contra las inminentes adversidades que superar. Junto con Piccolo, él es de los antiguos enemigos de Goku que ha evolucionando al pasar de ser un villano y antihéroe, a finalmente un héroe a lo largo del transcurso de la historia, convirtiéndose así en el deuteragonista de la serie.",
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699044422/i9hpfjplth6gjudvhsx3.webp",
    affiliation: "Z Fighter",
  },
  {
    id: 3,
    name: "Piccolo",
    ki: "2.000.000",
    maxKi: "500.000.000",
    race: "Namekian",
    gender: "Male",
    description:
      'Es un namekiano que surgió tras ser creado en los últimos momentos de vida de su padre, siendo su actual reencarnación. Aunque en un principio fue el archienemigo de Son Goku, con el paso del tiempo fue haciéndose menos malvado hasta finalmente convertirse en un ser bondadoso y miembro de los Guerreros Z. A través del tiempo, también comenzó a tomarle cariño a su discípulo Son Gohan, a quien veía como una especie de "vástago" y formando un lazo de amistad con este.',
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699044481/u9fhpc9smihu2kud3cuc.webp",
    affiliation: "Z Fighter",
  },
  {
    id: 4,
    name: "Bulma",
    ki: "0",
    maxKi: "0",
    race: "Human",
    gender: "Female",
    description:
      "Bulma es la protagonista femenina de la serie manga Dragon Ball y sus adaptaciones al anime Dragon Ball, Dragon Ball Z, Dragon Ball Super y Dragon Ball GT. Es hija del Dr. Brief y su esposa Panchy, hermana menor de Tights y una gran amiga de Son Goku con quien inicia la búsqueda de las Esferas del Dragón. En Dragon Ball Z tuvo a Trunks, primogénito de quien sería su esposo Vegeta, a su hija Bra[3] y su hijo adulto del tiempo alterno Trunks del Futuro Alternativo.",
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699044496/bifhe9qarbrgvm0tsiru.webp",
    affiliation: "Z Fighter",
  },
  {
    id: 5,
    name: "Freezer",
    ki: "530.000",
    maxKi: "52.71 Septillion",
    race: "Frieza Race",
    gender: "Male",
    description:
      "Freezer es el tirano espacial y el principal antagonista de la saga de Freezer.",
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699044513/ux3n5u0tjdvysjao4w8s.webp",
    affiliation: "Army of Frieza",
  },
  {
    id: 6,
    name: "Zarbon",
    ki: "20.000",
    maxKi: "30.000",
    race: "Frieza Race",
    gender: "Male",
    description:
      "Zarbon es uno de los secuaces de Freezer y un luchador poderoso.",
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699044531/jcdgte2shoaj2jh0ruob.webp",
    affiliation: "Army of Frieza",
  },
  {
    id: 7,
    name: "Dodoria",
    ki: "18.000",
    maxKi: "20.000",
    race: "Frieza Race",
    gender: "Male",
    description:
      "Dodoria es otro secuaz de Freezer conocido por su brutalidad.",
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699044548/m2mixyphepp8qwcigb3g.webp",
    affiliation: "Army of Frieza",
  },
  {
    id: 8,
    name: "Ginyu",
    ki: "9.000",
    maxKi: "25.000",
    race: "Frieza Race",
    gender: "Male",
    description:
      "Ginyu es el líder del la élite de mercenarios de mayor prestigio del Ejército de Freeza, la cual lleva el nombre de Fuerzas Especiales Ginew en su honor[9].",
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699129673/dxsl3rjhrfmajo2gealz.webp",
    affiliation: "Army of Frieza",
  },
  {
    id: 9,
    name: "Celula",
    ki: "250.000.000",
    maxKi: "5 Billion",
    race: "Android",
    gender: "Male",
    description:
      "Cell conocido como Célula en España, es un bioandroide creado por la computadora del Dr. Gero, quien vino del futuro de la línea 3 con la intención de vengarse de Goku por haber acabado con el Ejército del Listón Rojo, y con ello el sueño de todo villano: dominar el mundo. Es el antagonista principal del Arco de los Androides y Cell.",
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699044573/mz09ghskyzf0skprredi.webp",
    affiliation: "Freelancer",
  },
  {
    id: 10,
    name: "Gohan",
    ki: "45.000.000",
    maxKi: "40 septillion",
    race: "Saiyan",
    gender: "Male",
    description:
      "Son Gohanda en su tiempo en España, o simplemente Gohan en Hispanoamérica, es uno de los personajes principales de los arcos argumentales de Dragon Ball Z, Dragon Ball Super y Dragon Ball GT. Es un mestizo entre saiyano y humano terrícola. Es el primer hijo de Son Goku y Chi-Chi, hermano mayor de Son Goten, esposo de Videl y padre de Pan.",
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699044627/kigekwjt2m8nwopgvabv.webp",
    affiliation: "Z Fighter",
  },
  {
    id: 11,
    name: "Krillin",
    ki: "1.000.000",
    maxKi: "1 Billion",
    race: "Human",
    gender: "Male",
    description:
      "Amigo cercano de Goku y guerrero valiente, es un personaje del manga y anime de Dragon Ball. Es uno de los principales discípulos de Kame-Sen'nin, Guerrero Z, y el mejor amigo de Son Goku. Es junto a Bulma uno de los personajes de apoyo principales de Dragon Ball, Dragon Ball Z y Dragon Ball Super. Aparece en Dragon Ball GT como personaje secundario. En el Arco de Majin Boo, se retira de las artes marciales, optando por formar una familia, como el esposo de la Androide Número 18 y el padre de Marron.",
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699046768/ay2b4ps6xc5i4uhcxoio.webp",
    affiliation: "Z Fighter",
  },
  {
    id: 12,
    name: "Tenshinhan",
    ki: "2.400.000",
    maxKi: "80.000.000",
    race: "Human",
    gender: "Male",
    description:
      "Maestro de las artes marciales y miembro de los Z Fighters.  Es un personaje que aparece en el manga y en el anime de Dragon Ball, Dragon Ball Z, Dragon Ball GT y posteriormente en Dragon Ball Super.",
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699046784/umcprk7ugb5q8cb9uhrh.webp",
    affiliation: "Z Fighter",
  },
  {
    id: 13,
    name: "Yamcha",
    ki: "1.980.000",
    maxKi: "4.000.000",
    race: "Human",
    gender: "Male",
    description: "Luchador que solía ser un bandido del desierto.",
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699047468/euprvykftdyup1uw6z4p.webp",
    affiliation: "Z Fighter",
  },
  {
    id: 14,
    name: "Chi-Chi",
    ki: "0",
    maxKi: "0",
    race: "Human",
    gender: "Female",
    description:
      "Esposa de Goku y madre de Gohan. Es la princesa del Monte Fry-pan siendo la hija de la fallecida reina de esta montaña y el Rey Gyuma, ella terminaría conociendo a Son Goku cuando era tan solo una niña para años más tarde durante su adolescencia ser su esposa y convertirse en la estricta pero amorosa madre de Gohan y Goten.",
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699046815/rizrttygnvfwv4gntrkw.webp",
    affiliation: "Z Fighter",
  },
  {
    id: 15,
    name: "Gotenks",
    ki: "65.600.000",
    maxKi: "34.8 Billion",
    race: "Saiyan",
    gender: "Male",
    description:
      " Gotenks también conocido inicialmente como Gotrunk en el doblaje al español de España, es el resultado de la Danza de la Fusión llevada a cabo correctamente por Goten y Trunks.",
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699046837/sfc007ookoxjac1j0mkl.webp",
    affiliation: "Z Fighter",
  },
  {
    id: 16,
    name: "Trunks",
    ki: "50.000.000",
    maxKi: "37.4 septllion",
    race: "Saiyan",
    gender: "Male",
    description:
      "Hijo de Vegeta y Bulma. Es un mestizo entre humano terrícola y Saiyano nacido en la Tierra, e hijo de Bulma y Vegeta, el cual es introducido en el Arco de los Androides y Cell. Más tarde en su vida como joven, se termina convirtiendo en un luchador de artes marciales, el mejor amigo de Son Goten y en el hermano mayor de su hermana Bra.",
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699046959/qmzg7t9u7nhmsqlpt83o.webp",
    affiliation: "Z Fighter",
  },
  {
    id: 17,
    name: "Master Roshi",
    ki: "500.000",
    maxKi: "350.000.000",
    race: "Human",
    gender: "Male",
    description:
      'Maestro de artes marciales y mentor de Goku. Conocido bajo el nombre de Muten Rosh, fue en su momento el terrícola más fuerte de la Tierra, y mucha gente lo recuerda como el "Dios de las Artes Marciales", pero antes de poder ostentar dicho título tuvo que trabajar y estudiar las artes marciales con su maestro Mutaito y su eterno rival Tsuru-Sen\'nin.',
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699046999/smcckhzeoa806ovrciti.webp",
    affiliation: "Z Fighter",
  },
  {
    id: 18,
    name: "Bardock",
    ki: "450.000",
    maxKi: "180.000.000",
    race: "Saiyan",
    gender: "Male",
    description:
      "Es un saiyano de clase baja proveniente del Planeta Vegeta del Universo 7. Pertenece al Ejército Saiyano, que está bajo el liderazgo del Rey Vegeta, y es jefe de su escuadrón durante la anexión del planeta por parte de las fuerzas coloniales del Imperio de Freeza. Él es el esposo de Gine y padre biológico de Kakarotto y Raditz.",
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699047021/yspsolmpraytim3uph9j.webp",
    affiliation: "Z Fighter",
  },
  {
    id: 19,
    name: "Launch",
    ki: "0",
    maxKi: "0",
    race: "Human",
    gender: "Female",
    description:
      "Personaje que sufre cambios de personalidad al estornudar. Es uno de los personajes principales del manga Dragon Ball y su anime homónimo; Lunch es una chica que sufre de un trastorno de personalidad doble que a raíz de sus reacciones alérgicas provoca que ella cambie entre dos personalidades diferentes, ninguna de las personalidades recuerda lo que la otra hizo o dijo.",
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699047046/jof8lbpjtggkbwiztiu0.webp",
    affiliation: "Z Fighter",
  },
  {
    id: 20,
    name: "Mr. Satan",
    ki: "450",
    maxKi: "5.000",
    race: "Human",
    gender: "Male",
    description:
      "Luchador humano famoso por llevarse el mérito de las victorias de los Guerreros Z.",
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699047062/hp8536vd6pjafynvopoz.webp",
    affiliation: "Other",
  },
  {
    id: 21,
    name: "Dende",
    ki: "3.200",
    maxKi: "3.200",
    race: "Namekian",
    gender: "Male",
    description:
      "Sucesor de Piccolo como el nuevo Namekian protector de la Tierra. Es un pequeño namekiano, que vivía en el poblado de Moori, junto a su hermano Scargo y otros tantos de su especie. Es el hijo 108 del Gran Patriarca y posteriormente Dios de la Tierra, sustituyendo a Dios.",
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699047073/phdwjknztjgnq4qzeqzx.webp",
    affiliation: "Z Fighter",
  },
  {
    id: 22,
    name: "Android 17",
    ki: "320.000.000",
    maxKi: "40 Quintillion",
    race: "Android",
    gender: "Male",
    description:
      "Antes de ser secuestrado, es el hermano mellizo de la Androide Número 18, quien al igual que ella antes de ser Androide era un humano normal hasta que fueron secuestrados por el Dr. Gero, y es por eso que lo odian. Tras su cambio de humano a Androide, le insertaron un chip con el objetivo de destruir a Son Goku, quien en su juventud extermino al Ejército del Listón Rojo. Al considerarse defectuoso porque no quería ser 'esclavo de nadie', el Dr. Gero les había colocado a ambos hermanos, un dispositivo de apagado para detenerlos en cualquier momento de desobediencia, pero cuando el científico los despierta, el rencor y rebeldía de 17 eran tal que se encargó de destruir el control que lo volvería a encerrar y acto seguido mató sin piedad a su propio creador. Su situación se le iría en contra, ya que Cell tenía como misión absorber a 17 y 18 para completar su desarrollo y convertirse en Cell Perfecto.",
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699047086/vlinvxruepvmcovinyta.webp",
    affiliation: "Villain",
  },
  {
    id: 23,
    name: "Android 16",
    ki: "440.000.000",
    maxKi: "440.000.000",
    race: "Android",
    gender: "Male",
    description:
      "Android 16 es un androide gigante conocido por su amor a la naturaleza y la vida.",
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699047111/swhio6vbgpe6lwzrklr8.webp",
    affiliation: "Villain",
  },
  {
    id: 24,
    name: "Android 19",
    ki: "122.000.000",
    maxKi: "160,000,000",
    race: "Android",
    gender: "Male",
    description: "Android 19 es uno de los androides creados por el Dr. Gero.",
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699047395/yllazoe5ewir8murqusz.webp",
    affiliation: "Villain",
  },
  {
    id: 25,
    name: "Android 20 (Dr. Gero)",
    ki: "128.000.000",
    maxKi: "158.100.000",
    race: "Android",
    gender: "Male",
    description:
      "Dr. Gero es el científico loco que creó a los androides 17, 18 y 19.",
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699047433/qk0k8x3hyrhtvsica4gc.webp",
    affiliation: "Villain",
  },
  {
    id: 26,
    name: "Android 13",
    ki: "195.000.000",
    maxKi: "562.500.000",
    race: "Android",
    gender: "Male",
    description:
      'Android 13 es un androide peligroso que aparece en la película "El Regreso de Cooler".',
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699047480/tzkzeszlx2akrxkemmbi.webp",
    affiliation: "Villain",
  },
  {
    id: 27,
    name: "Android 14",
    ki: "192.500.000",
    maxKi: "192.500.000",
    race: "Android",
    gender: "Male",
    description:
      "Android 14 es otro androide que aparece en la misma película que Android 13.",
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699047499/kjid2pwoh77rumwybtbj.webp",
    affiliation: "Villain",
  },
  {
    id: 28,
    name: "Android 15",
    ki: "175.000.000",
    maxKi: "175.000.000",
    race: "Android",
    gender: "Male",
    description:
      "Android 15 es otro androide que aparece en la misma película que Android 13.",
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699047513/ebkm7jrdrqcynnvyymlx.webp",
    affiliation: "Villain",
  },
  {
    id: 29,
    name: "Nail",
    ki: "42.000 ",
    maxKi: "42.000",
    race: "Namekian",
    gender: "Male",
    description:
      'Es un Namekiano (habitante del planeta Namek), que se caracteriza por formar parte de los escasos miembros de la "estirpe guerrera", y ser el más poderoso entre ellos junto a Piccolo.',
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699047533/cdj6qbbm1lj9u6c2jj3z.webp",
    affiliation: "Z Fighter",
  },
  {
    id: 30,
    name: "Raditz",
    ki: "1.500 ",
    maxKi: "1.500 ",
    race: "Saiyan",
    gender: "Male",
    description:
      "Es el hijo de Bardock y Gine, y hermano mayor de Son Goku. Él es uno de los pocos saiyanos que sobrevivieron a la destrucción del Planeta Vegeta, y formaba parte del equipo de Vegeta. Es el primer antagonista de Dragon Ball Z.",
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699047547/sf7exd6mqkygybrxhycu.webp",
    affiliation: "Army of Frieza",
  },
  {
    id: 31,
    name: "Babidi",
    ki: "0",
    maxKi: "0",
    race: "Majin",
    gender: "Male",
    description:
      'Conocido también como Bóbidi o Bábidi, es un poderoso hechicero madoshi, "hijo" del gran mago Bibbidi, fundador de la familia Majin. La "M" que llevan ambos en el cinturón de sus atuendos al igual que la frente de aquellos que han sido poseídos para formar parte de la familia Majin.',
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699047579/vcrjfu9l893egxfmjvbe.webp",
    affiliation: "Villain",
  },
  {
    id: 32,
    name: "Majin Buu",
    ki: "8 Billion",
    maxKi: "100 Trillion",
    race: "Majin",
    gender: "Male",
    description:
      "También conocido como Boo original, es la forma original y pura de Majin-Boo, y la última forma de Boo que aparece en Dragon Ball Z.",
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699047587/k7etji7ygsfujctowfwl.webp",
    affiliation: "Villain",
  },
  {
    id: 33,
    name: "Bills",
    ki: "102 Billion",
    maxKi: "100 septillion",
    race: "God",
    gender: "Male",
    description:
      "Dios de la Destrucción Beerus, conocido también como Beers, o Bills en Hispanoamérica e inicialmente en España[1], es un personaje que fue introducido en la película Dragon Ball Z: La batalla de los dioses, donde es el antagonista principal de la película, y que aparece en el manga y anime de Dragon Ball Super como un personaje principal. Ocupa el puesto de Dios de la Destrucción de todo el Universo 7 siendo el lugar donde se desarrolla la historia de Dragon Ball.",
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699047606/pddxkrnjag1vkoaudmf6.webp",
    affiliation: "Other",
  },
  {
    id: 34,
    name: "Whis",
    ki: "15 septillion",
    maxKi: "110 septillion",
    race: "Angel",
    gender: "Male",
    description:
      "Whis es uno de los hijos del Gran Sacerdote, hermano menor de Vados, Korn y Kus. Es el ángel guía encargado de asistir y servir como maestro al Dios de la Destrucción del Universo 7, Beerus.",
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699047619/gffvgpfxwwqklot41xlh.webp",
    affiliation: "Assistant of Beerus",
  },
  {
    id: 35,
    name: "Zeno",
    ki: "500 Septillion",
    maxKi: "500 Septillion",
    race: "Unknown",
    gender: "Male",
    description:
      "Zeno es el ser supremo del multiverso y tiene un poder abrumador .El Rey de Todo, también conocido como Zen Oo (Zeno Sama en España y Zen Oo Sama en Hispanoamerica) y apodado por Son Goku como Todito (全ぜんちゃん, Zen-chan), es el gobernante y dios absoluto de todos los universos y el máximo soberano de todo lo existente en Dragon Ball.",
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699047629/bmikekmvwebqlebcr1e2.webp",
    affiliation: "Other",
  },
  {
    id: 37,
    name: "Kibito-Shin",
    ki: "3.2 Billion",
    maxKi: "3.2 Billion",
    race: "God",
    gender: "Male",
    description:
      "es la fusión entre Shin y Kibito. Ellos fueron unidos permanentemente mediante el uso de los míticos pendientes Pothala. Está actualmente separado gracias a un deseo concedido por las Esferas del Dragón namekianas.",
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699047987/lj6goh5wc1hgchhk1h0x.webp",
    affiliation: "Other",
  },
  {
    id: 38,
    name: "Jiren",
    ki: "121 Quintillion",
    maxKi: "12.1 Septillion",
    race: "Jiren Race",
    gender: "Male",
    description:
      "Jiren es un poderoso luchador del Universo 11 y uno de los oponentes más formidables en el torneo.",
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699048004/uvqld9szltsfkxht9sma.webp",
    affiliation: "Pride Troopers",
  },
  {
    id: 39,
    name: "Toppo",
    ki: "99 Quadrillion",
    maxKi: "7.5 Sextillion",
    race: "God",
    gender: "Male",
    description:
      "Toppo es el líder de las Tropas del Orgullo, guerreros de la justicia del Universo 11 que actúan como protectores de la paz y superhéroes del bien. Él ha sido entrenado por el ángel guía Marcarita, convirtiéndose así en un candidato como futuro Dios de la Destrucción en su universo.",
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699048019/pnflznxqbx9ix2aei4pn.webp",
    affiliation: "Pride Troopers",
  },
  {
    id: 40,
    name: "Dyspo",
    ki: "50 Trillion",
    maxKi: "150 Quintillion",
    race: "God",
    gender: "Male",
    description:
      "Dyspo es uno de los miembros del Equipo Universo 11 como uno de los soldados más poderosos de las Tropas del Orgullo junto con Jiren y su líder Toppo.",
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699048034/kquxnkdxfkmnzkw0kiku.webp",
    affiliation: "Pride Troopers",
  },
  {
    id: 42,
    name: "Marcarita ",
    ki: "10 septillion",
    maxKi: "99.5 septillion",
    race: "Angel",
    gender: "Female",
    description:
      "Marcarita es el ángel guía del Universo 11, sirviente y maestra de artes marciales del Dios de la Destrucción Vermoud. Es un personaje de la Arco de la Supervivencia Universal de Dragon Ball Super.",
    image:
      "https://res.cloudinary.com/dgtgbyo76/image/upload/v1699048057/x2mldjzrnvwymvpavmud.webp",
    affiliation: "Assistant of Vermoud",
  },
];

export default characterDetails;
