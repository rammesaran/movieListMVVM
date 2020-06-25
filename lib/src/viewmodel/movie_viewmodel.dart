import 'package:sharedpreferences_app/src/model/movie_model.dart';

class MovieViewModel {

  final Movie movie; 

  MovieViewModel({this.movie});

  String get title {
    return this.movie.title; 
  }

  String get poster {
    return this.movie.poster; 
  }

}