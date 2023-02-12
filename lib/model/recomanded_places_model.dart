class RecommendedPlaceModel {
  final String image;
  final double rating;
  final String location;
  RecommendedPlaceModel({
    required this.image,
    required this.rating,
    required this.location,
  });
}

List<RecommendedPlaceModel> recommendedPlaces = [
  RecommendedPlaceModel(
    image: "assets/images/tajmahal.jpg",
    rating: 4.4,
    location: "St. Regis Bora Bora",
  ),
  RecommendedPlaceModel(
    image: "assets/images/goa.jpg",
    rating: 4.4,
    location: "St. Regis Bora Bora",
  ),
  RecommendedPlaceModel(
    image: "assets/images/manali.jpg",
    rating: 4.4,
    location: "St. Regis Bora Bora",
  ),
  RecommendedPlaceModel(
    image: "assets/images/statueofunity.jpg",
    rating: 4.4,
    location: "St. Regis Bora Bora",
  ),
  RecommendedPlaceModel(
    image: "assets/images/rajasthan.jpg",
    rating: 4.4,
    location: "St. Regis Bora Bora",
  ),
];