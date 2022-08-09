class MarvelData {
  String name, imageAsset, description, categories, aliasName;
  MarvelData(
      {required this.name,
      required this.imageAsset,
      required this.description,
      required this.categories,
      required this.aliasName});
}

var marvelDataList = [
  MarvelData(
      name: "Black Widow",
      aliasName: "Natasha Romanova",
      imageAsset:
          "https://i.pinimg.com/564x/a2/f8/47/a2f847fb083e16bf0664e8da34ec2546.jpg",
      description:
          "She was trained by the Red Room as part of the Black Widow Ops Program to be the ultimate Super-Spy. She defected to the United States of America from the Soviet Union to join S.H.I.E.L.D. Later Black Widow would then become a member of the Avengers and has been on the team on multiple occasions. She is a woman with a mysterious past which few know about.",
      categories: "Savage Avengers (Earth-616)"),
  MarvelData(
      name: "Dr Strange",
      aliasName: "Dr. Stephen Vincent Strange",
      imageAsset:
          "https://i.pinimg.com/564x/2c/ca/48/2cca487d463543a7fa6c605c345e2872.jpg",
      description:
          "He was involved a car crash that so injured his hands that it stripped him of his fine motor skills, and when that happened, he became desperate to regain them and searched the globe for a cure, squandering a fortune to that end. And one was offered to him--not to cure his hands, but instead to cure his soul.",
      categories: "Savage Avengers (Earth-616)"),
  MarvelData(
      name: "Spiderman",
      aliasName: "Peter Benjamin Parker",
      imageAsset:
          "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c56d75ad-cb4b-40c1-b67e-3fd8f3f0cc61/d9ln09l-7c2ace27-49aa-4de2-863c-d31c3f25976f.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2M1NmQ3NWFkLWNiNGItNDBjMS1iNjdlLTNmZDhmM2YwY2M2MVwvZDlsbjA5bC03YzJhY2UyNy00OWFhLTRkZTItODYzYy1kMzFjM2YyNTk3NmYucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.wS5boIAlx1lmD7dCWs49KhF7vUH64bmjScrF9t2OMIQ",
      description:
          "Sometimes student, sometimes scientist and sometimes photographer, Peter Parker is a full-time super hero better known as the web-slinging and wall-crawling Spider-Man. As an orphaned child, Peter was raised by his Uncle Ben and Aunt May. At a science expo, Peter was bitten by an errant radioactive spider which granted him an array of arachnid powers. He initially became Spider-Man to use his powers as an entertainer, growing so conceited he didn't bother stopping a passerby burglar. ",
      categories: 'Threats and Menaces (Earth-616)'),
  MarvelData(
      name: "Captain America",
      imageAsset:
          "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c56d75ad-cb4b-40c1-b67e-3fd8f3f0cc61/da1uqpt-31510761-45eb-48e7-bdb8-af233d4c9a1c.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2M1NmQ3NWFkLWNiNGItNDBjMS1iNjdlLTNmZDhmM2YwY2M2MVwvZGExdXFwdC0zMTUxMDc2MS00NWViLTQ4ZTctYmRiOC1hZjIzM2Q0YzlhMWMucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.yKUfk-n_AJZ5t8UstbEcNkSglCiT_ML8NZ3O7d3m5q8",
      description:
          "Cpt. Steven Steve Rogers a.k.a. Captain America, the First Avenger, was rejected by the U.S. Army during World War II due to numerous health problems. He ultimately volunteered for Project Rebirth where he received the Super-Soldier Serum developed by Dr. Abraham Erskine. The serum greatly enhanced his frail body to the peak of human physicality. As the Sentinel of Liberty, alongside his best friend Bucky Barnes and the Invaders, Rogers and others helped the allies win the war",
      categories: "Avengers (Earth-616)",
      aliasName: "Cpt. Steven Steve Rogers"),
  MarvelData(
      name: "Thor",
      imageAsset:
          "https://i.pinimg.com/564x/4a/aa/77/4aaa7759aaaf34a7a17e688719002721.jpg",
      description:
          "Thor is the God of Thunder, a member of the race known as the Asgardians, a group of humanoid beings from the pocket dimension of Asgard, the Realm Eternal. Thor is the son of Odin, the All-Father and king of Asgard. He was worshiped by the humans known as Vikings and became part of Norse Mythology.[ Armed with his enchanted Uru hammer Mjolnir, which helps him to channel his godly energies, he became the mightiest warrior in the Ten Realms. When his irresponsible and impetuous behavior became too much, Odin sent him to Midgard ",
      categories: "Heralds of Galactus (Earth-616)",
      aliasName: "Thor Odinson"),
  MarvelData(
      name: "Loki",
      imageAsset:
          "https://i.pinimg.com/564x/da/ff/46/daff467b4d9b9d978d191bccce6884dd.jpg",
      description:
          "Loki Laufeyson[1] is the Trickster God,[1] God of Mischief,[4] Evil,[5] and Lies[7] a member of the monstrous Frost Giants of Jotunheim but was adopted and raised among the Asgardians a group of humanoid beings from the pocket dimension of Asgard, the Realm Eternal.[18] Born smaller than the rest of his race and rejected by his father Laufey, he was adopted by the All-Father; Odin following the war. He was taken back to Asgard to be raised alongside his adopted brother Thor.[19] He was worshiped by the humans known as Vikings and became part of Norse Mythology.",
      categories: "Cabal (Dark Illuminati) (Earth-616)",
      aliasName: "Loki Laufeyson"),
  MarvelData(
      name: "Iron Man",
      imageAsset:
          "https://i.pinimg.com/564x/4a/42/e8/4a42e8ae030a7c4ae59e241052c5cf6b.jpg",
      description:
          "Tony Stark is a genius inventor and billionaire industrialist, who suits up in his armor of cutting-edge technology to become the super hero Iron Man. The adopted son of weapons manufacturer Howard Stark,[39] Tony inherited his family's company at a young age following his parents' death.[40] While overseeing a manufacturing plant in a foreign country, Stark was kidnapped by local terrorists. Instead of giving in to his captors' demands to build weapons for them, Stark created a powerful suit of armor for himself to escape.[41] Returning to America, Stark further upgraded the armor and put his vast resources and intellect to use for the betterment of the world as Iron Man.[42][43]",
      categories: "Avengers (Earth-616)",
      aliasName: "Anthony Edward / Tony Stark"),
  MarvelData(
      name: "Hulk",
      imageAsset:
          "https://i.pinimg.com/564x/38/f3/1e/38f31e43f9c0502485927a3b86553dd7.jpg",
      description:
          "Dr. Bruce Banner, Ph.D.[4] a.k.a. the Hulk is an American theoretical physicist, famed for his work into the studies of nuclear physics and gamma radiation.[55] He was recruited by General Thaddeus Thunderbolt Ross and the US Army to develop the first Gamma Bomb.",
      categories: "Cosmic Avengers (Earth-616)",
      aliasName: "Dr. Robert Bruce Banner"),
  MarvelData(
      name: "Groot",
      imageAsset:
          "https://i.pinimg.com/564x/30/7d/d2/307dd2e912df8f4aea0ad35f2dfe2fc7.jpg",
      description:
          "Groot was a Flora colossi from Planet X, the capital of the branch worlds. He did not get along with his fellow saplings, instead preferring the company of the Maintenance Mammals who the other saplings treated with prejudice. After Groot killed another sapling to defend a maintenance mammal it was brutalising, as well as releasing a human subject that was kidnapped for scientific purposes, he was exiled from the planet by the Arbor Masters.[7][8] With no place to go, Groot set to explore other galaxies.[8]",
      categories: "Guardians of the Galaxy (Earth-616)",
      aliasName: "Groot"),
  MarvelData(
      name: "Rocket Raccoon",
      imageAsset:
          "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/c56d75ad-cb4b-40c1-b67e-3fd8f3f0cc61/d9ggvtw-4c43bcbc-6f0e-4382-bcb9-6a1971aef3ca.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2M1NmQ3NWFkLWNiNGItNDBjMS1iNjdlLTNmZDhmM2YwY2M2MVwvZDlnZ3Z0dy00YzQzYmNiYy02ZjBlLTQzODItYmNiOS02YTE5NzFhZWYzY2EucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.20lrifxlVCNcbAaInscJ-x9e7-zXw6OFUtxBijMTCLs",
      description:
          "Rocket Raccoon is a genetically and cybernetically enhanced raccoon[8][2][9] turned freelance mercenary turned member of the Guardians of the Galaxy.[5] He is considered to have one of the best tactical minds in the galaxy.[5] He hails from Halfworld in the Keystone Quadrant where scientists were able to turn animals into sentient beings.[10] Alongside his friend and partner Groot, he travels the galaxy picking up bounties.[11]",
      categories: "Guardians of the Galaxy (Earth-616)",
      aliasName: "Rocket Raccoon"),
  MarvelData(
      name: "Thanos",
      imageAsset:
          "https://i.pinimg.com/564x/5b/ff/96/5bff96fbe4d9c963fd3cf533c503734f.jpg",
      description:
          "Thanos was one of the last sons of A'Lars, progenitor of the second colony of Eternals on Titan, and Sui-San, the last survivor of the original settlement of Eternals in this moon. He was born with purple, hide-like skin and a massive body due to his Deviant Syndrome. The very first time his mother laid her eyes on the baby, she was driven mad and tried to kill him.[19]",
      categories: "Masters of Evil (Multiverse)",
      aliasName: "Thanos"),
  MarvelData(
      name: "Black Panther",
      imageAsset: "https://i.pinimg.com/564x/8c/4a/17/8c4a17fc8e53a5239f8bb4cd10af234f.jpg",
      description: "T'Challa a.k.a. the Black Panther[24] is the head of state for the African nation of Wakanda, the most technologically advanced country on Earth. In this role, he was the King/Chieftain, religious leader, and commander-in-chief all rolled into one.[25] He was also considered among the top intellects in the world.[26] Using Wakanda's advanced Vibranium technology and his own abilities and fortune, he pledged his life to the service of all humankind.[27] He would go on to become a prominent member of the Avengers,[28] and eventually become leader of the team.[29]",
      categories: "Taifa Ngao (Earth-616)",
      aliasName: "T'Challa")
];
