import 'dart:math';

import 'package:flutter/widgets.dart';

import 'movie_model.dart';

final List<Movie> initialRandomData = List.generate(
  25,
  (index) => Movie(
      title: "Movie $index", duration: "${Random().nextInt(100) + 60} minutes"),
);

class MovieProvider with ChangeNotifier {
  final List<Movie> _allMovies = initialRandomData;
  List<Movie> get movies => _allMovies;

  final List<Movie> _likedMovies = [];
  List<Movie> get likedMovies => _likedMovies;

  void addTolist(Movie movie) {
    _likedMovies.add(movie);
    notifyListeners();
  }

  void removeTolist(Movie movie) {
    _likedMovies.remove(movie);
    notifyListeners();
  }
}
