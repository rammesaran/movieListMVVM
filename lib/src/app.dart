import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sharedpreferences_app/src/viewmodel/movie_list_model.dart';
import 'package:sharedpreferences_app/src/widget/movie_list.dart';

class MovieView extends StatefulWidget {
  @override
  _MovieViewState createState() => _MovieViewState();
}

class _MovieViewState extends State<MovieView> {
  final TextEditingController input = TextEditingController();

  @override
  void initState() { 
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    final value =  Provider.of<MovieListViewModel>(context);
    return  
      Scaffold(
          appBar: AppBar(

          ),
          body: Container(
            padding: EdgeInsets.all(10.0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: <Widget>[

                  Container(
                    padding: EdgeInsets.only(
                      left: 10.0,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),

                    ),
                    child: TextField(
                        controller: input,
                        onSubmitted: (inputvalue){
                          if(inputvalue.isNotEmpty){
                            value.fetchdetails(inputvalue);

                            input.clear();
                          }
                        },
                        style: TextStyle(
                          color: Colors.white),
                          decoration: InputDecoration(
                              hintText: 'Enter Movie name',
                              hintStyle: TextStyle(
                                color: Colors.white,
                              ),
                              border: InputBorder.none,
                          ),
                        ),
                    ),
                   Expanded(
                     child:MovieList(movies: value.movies), 

                   ),
                  
              ],
            ),
          ),
         
      );
  
  }
}