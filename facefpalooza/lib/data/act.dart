/* Classe que representa as informações as informações das bandas
   que irão tocar no Facefpalooza
*/
class Act {
  final String name;
  final int day;
  final int relevance;
  final List<String> tags;
  // Construtor
  const Act(this.name, this.day, this.relevance, this.tags);
}



// Lineup
const lineup = [
  Act("Scorpions", 27, 0, ["Hard Rock", "Classic Rock"]),
  Act("Alok", 27, 1, ["Electronic", "DJ"]),
  Act("Ivete Sangalo", 27, 1, ["Axé", "MPB"]),
  Act("Mitski", 27, 2, ["Alt", "Indie"]),
  Act("Guns N'Roses", 28, 0, ["Heavy Metal", "80's", "90's"]),
  Act("Coldplay", 28, 1, ["Pop/Rock"]),
  Act("Kings of Leon", 28, 1, ["Pop/Rock", "Alt Rock"]),
  Act("Ludmilla", 28, 2, ["Música brasileira", "Pop", "Funk"]),
  Act("Iron Maiden", 29, 0, ["Heavy Metal", "Hard Rock", "Classic Rock"]),
  Act("Maneskin", 29, 1, ["Hard Rock", "Glam Rock", "Eurovision"]),
  Act("Zeca Pagodinho", 29, 2, ["Samba", "Pagode"]),
  Act("Marcelo Jeneci", 29, 2, ["MPB", "Indie"])
];