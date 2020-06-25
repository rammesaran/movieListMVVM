import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sharedpreferences_app/src/model/movie_model.dart';

const url = "http://www.omdbapi.com/";
const apikey = '4a39fdc2';
class MovieService{

Future<List<Movie>> getmoviesdata(String word)async
{
final dataurl = '$url?s=$word&apikey=$apikey';
  final response = await http.get(dataurl);
  if(response.statusCode ==200)
  {
    final output = json.decode(response.body);
    final Iterable data = output["Search"];
    return data.map((e) => Movie.fromJson(e)).toList();
    
  }
  else{
    throw Exception('request failed');
  }

}
}