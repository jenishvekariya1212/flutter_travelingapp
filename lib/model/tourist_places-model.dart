class TouristPlacesModel {
  final String name;
  final String image;
  TouristPlacesModel({
    required this.name,
    required this.image,
  });
}

List<TouristPlacesModel> touristPlaces = [
  TouristPlacesModel(name: "Mountain", image: "assets/images/mountain.png"),
  TouristPlacesModel(name: "Beach", image: "assets/images/beaches.png"),
  TouristPlacesModel(name: "Forest", image: "assets/images/forest.png"),
  TouristPlacesModel(name: "City", image: "assets/images/city.jpeg"),
  TouristPlacesModel(name: "Desert", image: "assets/images/deserts.png"),
];