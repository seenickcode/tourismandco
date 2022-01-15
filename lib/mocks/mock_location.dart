import '../models/location.dart';
import '../models/location_fact.dart';

mixin MockLocation implements Location {
  static final List<Location> items = [
    Location(
        id: 1,
        name: 'Arashiyama Bamboo Grove',
        url:
            'https://cdn-images-1.medium.com/max/2000/1*vdJuSUKWl_SA9Lp-32ebnA.jpeg',
        facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text:
                  'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm'),
          LocationFact(
              title: 'How to Get There',
              text:
                  'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.')
        ],
        tourPackageName: '',
        userItinerarySummary: ''),
    Location(
        id: 2,
        name: 'Mount Fuji',
        url:
            'https://pdd5k477ulx482prl3bm3by1-wpengine.netdna-ssl.com/wp-content/uploads/2019/04/Mt-Fuji-Golf-Fairway.jpg',
        facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text:
                  'Japan’s Mt. Fuji is an active volcano about 100 kilometers southwest of Tokyo. Commonly called “Fuji-san,” it’s the country’s tallest peak, at 3,776 meters. A pilgrimage site for centuries, it’s considered one of Japan’s 3 sacred mountains, and summit hikes remain a popular activity. Its iconic profile is the subject of numerous works of art, notably Edo Period prints by Hokusai and Hiroshige.'),
          LocationFact(
              title: 'Did You Know',
              text:
                  'There are three cities that surround Mount Fuji: Gotemba, Fujiyoshida and Fujinomiya.')
        ],
        tourPackageName: '',
        userItinerarySummary: ''),
    Location(
        id: 3,
        name: 'Kiyomizu-dera',
        url:
            'https://upload.wikimedia.org/wikipedia/commons/3/3c/Kiyomizu.jpg',
        facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text:
                  'Kiyomizu-dera, officially Otowa-san Kiyomizu-dera, is an independent Buddhist temple in eastern Kyoto. The temple is part of the Historic Monuments of Ancient Kyoto UNESCO World Heritage site.'),
          LocationFact(
              title: 'Architectural Style',
              text: 'Japanese Buddhist architecture')
        ],
        tourPackageName: '',
        userItinerarySummary: ''),
    Location(
        id: 4,
        name: 'Kinkaku-ji',
        url:
            'https://cdn-images-1.medium.com/max/1600/1*sncLZ1eNLYk3s-v76nJn8w.jpeg',
        facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text:
                  'Kinkaku-ji, officially named Rokuon-ji, is a Zen Buddhist temple in Kyoto, Japan. It is one of the most popular buildings in Japan, attracting a large number of visitors annually.'),
          LocationFact(
              title: 'Did You Know',
              text:
                  'The Golden Pavilion is set in a magnificent Japanese strolling garden.')
        ],
        tourPackageName: '',
        userItinerarySummary: ''),
    Location(
        id: 5,
        name: 'Odaiba',
        url:
            'https://jp.openrice.com/userphoto/Article/0/1/0000CM2AF2F38CD85AB341j.jpg',
        facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text:
                  'Accessed via the Rainbow Bridge or the futuristic Yurikamome train, Odaiba is a high-tech entertainment hub on an artificial island in Tokyo Bay. Visitors head to the beach at Seaside Park, enjoy Mt. Fuji views from the Daikanransha Ferris wheel, and interact with robots at the Miraikan science museum. Malls include Aqua City and the Venice-themed VenusFort, and there are sushi bars with views along the waterfront.'),
          LocationFact(
              title: 'Did You Know',
              text:
                  'The pedestrian path begins a short walk from Shibaura-futo Station along the Yurikamome on the "Tokyo side" of the bridge, while Odaiba Kaihinkoen Station is the nearest station on the "Odaiba side."')
        ],
        tourPackageName: '',
        userItinerarySummary: ''),
  ];

  static Location fetchAny() {
    return MockLocation.items[0];
  }

  static List<Location> fetchAll() {
    return MockLocation.items;
  }

  static Location fetch(int index) {
    return MockLocation.items[index];
  }
}
