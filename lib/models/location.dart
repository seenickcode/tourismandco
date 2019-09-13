import './location_fact.dart';

/// Represents a tourism location a user can visit.
class Location {
  final int id;
  final String name;
  final String imagePath;
  final String userItinerarySummary;
  final String tourPackageName;
  final List<LocationFact> facts;

  Location({
    this.id,
    this.name,
    this.imagePath,
    this.userItinerarySummary,
    this.tourPackageName,
    this.facts,
  });

  static List<Location> fetchAll() {
    return [
      Location(
          id: 1,
          name: 'Kiyomizu-dera',
          imagePath: 'assets/images/kiyomizu-dera.jpg',
          userItinerarySummary: 'Day 1: 4PM - 5:00PM',
          tourPackageName: 'Standard Package',
          facts: [
            LocationFact('Summary',
                'Kiyomizu-dera, officially Otowa-san Kiyomizu-dera, is an independent Buddhist temple in eastern Kyoto. The temple is part of the Historic Monuments of Ancient Kyoto UNESCO World Heritage site.'),
            LocationFact(
                'Architectural Style', 'Japanese Buddhist architecture.'),
          ]),
      Location(
          id: 2,
          name: 'Mount Fuji',
          imagePath: 'assets/images/fuji.jpg',
          userItinerarySummary: 'Day 1: 9AM - 1:30PM',
          tourPackageName: 'Standard Package',
          facts: [
            LocationFact('Summary',
                'Japan’s Mt. Fuji is an active volcano about 100 kilometers southwest of Tokyo. Commonly called “Fuji-san,” it’s the country’s tallest peak, at 3,776 meters. A pilgrimage site for centuries, it’s considered one of Japan’s 3 sacred mountains, and summit hikes remain a popular activity. Its iconic profile is the subject of numerous works of art, notably Edo Period prints by Hokusai and Hiroshige.'),
            LocationFact('Did You Know',
                'There are three cities that surround Mount Fuji: Gotemba, Fujiyoshida and Fujinomiya.'),
          ]),
      Location(
          id: 3,
          name: 'Arashiyama Bamboo Grove',
          imagePath: 'assets/images/arashiyama.jpg',
          userItinerarySummary: 'Day 1: 2PM - 3:30PM',
          tourPackageName: 'Standard Package',
          facts: [
            LocationFact('Summary',
                'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.'),
            LocationFact('How to Get There',
                'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
          ]),
    ];
  }

  static Location fetchByID(int locationID) {
    // NOTE: this will replaced by a proper API call
    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationID) {
        return locations[i];
      }
    }
    return null;
  }
}
