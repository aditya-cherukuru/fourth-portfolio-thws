class Movie {
  final String title;
  final String director;
  final String imageUrl;
  
  Movie({
    required this.title, 
    required this.director, 
    required this.imageUrl
  });
  
  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json['Title'], 
      director: json['Director'],
      imageUrl: json['Poster'] ?? '',
    );
  }
  
  Map<String, dynamic> toJson() => {
    'Title': title,
    'Director': director,
    'Poster': imageUrl,
  };
}