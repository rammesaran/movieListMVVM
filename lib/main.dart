
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/app.dart';
import 'src/viewmodel/movie_list_model.dart';


void main()
{
  runApp(MyApp());
}


class  MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Movie List',
      home: ChangeNotifierProvider(
          create: (context) => MovieListViewModel(),
        child: MovieView(),
        ),
      debugShowCheckedModeBanner: false,
    );
  }
}

