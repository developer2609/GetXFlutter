

import 'dart:math';

import 'package:dio/dio.dart';
import 'package:getxflutter/data/model/api_model.dart';

class ApiService{
   Future getJoke() async{
     Dio dio=Dio();

     Response response=await dio.get("https://official-joke-api.appspot.com/jokes/ten");
     if(response.statusCode==200){
       List product=response.data.map((e)=>Joke.fromJson(e)).toList();
       return product;
     }
   }
}