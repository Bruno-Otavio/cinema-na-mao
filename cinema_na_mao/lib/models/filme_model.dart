class Filme {
  final String title;
  final String poster;

  const Filme({
    required this.title,
    required this.poster,
  });

  factory Filme.fromJson(Map<String, dynamic> json) {
    return switch(json) {
      {
        'Title': String title,
        'Poster': String poster,
      } => 
        Filme(
          title: title,
          poster: poster,
        ),
      _ => throw const FormatException('Failed to load movies'),
    };
  }
}
