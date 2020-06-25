
import 'package:flutter/material.dart';
import 'package:sharedpreferences_app/src/viewmodel/movie_viewmodel.dart';

class MovieList extends StatelessWidget {
  final List<MovieViewModel> movies;

  const MovieList({Key key, this.movies}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(

      itemCount: this.movies.length,
      itemBuilder: (context, index){
        final movies = this.movies[index];
      return ListTile(
        contentPadding: EdgeInsets.all(10),
        leading: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(movies.poster),
                fit: BoxFit.cover,
              ),
                borderRadius: BorderRadius.circular(6),
            ),
            width: 50,
            height: 100,
        ),
        title: Text(movies.title),
      );
    });
  }
}