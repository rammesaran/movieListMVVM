import 'package:flutter/cupertino.dart';
import 'package:sharedpreferences_app/src/service/movie_request_service.dart';
import 'package:sharedpreferences_app/src/viewmodel/movie_viewmodel.dart';

class MovieListViewModel extends ChangeNotifier{

List<MovieViewModel> movies = List<MovieViewModel>();

Future<void> fetchdetails (String keyword)async{

final result = await MovieService().getmoviesdata(keyword);
this.movies = result.map((e) => MovieViewModel(movie: e)).toList();
print(this.movies);
notifyListeners();
}

}