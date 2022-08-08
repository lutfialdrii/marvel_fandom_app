class MarvelData {
  String name, imageAsset, description, categories;
  MarvelData(
      {required this.name,
      required this.imageAsset,
      required this.description,
      required this.categories});
}

var marvelDataList = [
  MarvelData(
      name: "Black Widow",
      imageAsset: "assets/images/blackwidow.png",
      description:
          "She was trained by the Red Room as part of the Black Widow Ops Program to be the ultimate Super-Spy. She defected to the United States of America from the Soviet Union to join S.H.I.E.L.D. Later Black Widow would then become a member of the Avengers and has been on the team on multiple occasions. She is a woman with a mysterious past which few know about.",
      categories: "Savage Avengers (Earth-616)"),
  MarvelData(
      name: "Dr Strange",
      imageAsset: "assets/images/intro.jpeg",
      description:
          "He was involved a car crash that so injured his hands that it stripped him of his fine motor skills, and when that happened, he became desperate to regain them and searched the globe for a cure, squandering a fortune to that end. And one was offered to him--not to cure his hands, but instead to cure his soul.",
      categories: "Savage Avengers (Earth-616)"),
  MarvelData(
      name: "Spiderman",
      imageAsset: "assets/images/spiderman.png",
      description:
          "Sometimes student, sometimes scientist and sometimes photographer, Peter Parker is a full-time super hero better known as the web-slinging and wall-crawling Spider-Man. As an orphaned child, Peter was raised by his Uncle Ben and Aunt May. At a science expo, Peter was bitten by an errant radioactive spider which granted him an array of arachnid powers. He initially became Spider-Man to use his powers as an entertainer, growing so conceited he didn't bother stopping a passerby burglar. ",
      categories: 'Threats and Menaces (Earth-616)'),
];
