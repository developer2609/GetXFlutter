import 'dart:convert';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:getxflutter/data/model/api_model.dart';
import 'package:getxflutter/service/api_service.dart';

class JokesController  extends GetxController{

  JokesController(){
    getJokes();
  }

  var isLoading =false.obs;
  var jokes=[].obs;



  getJokes() async{

    changeLoading();
    jokes.value=await ApiService().getJoke();
    changeLoading();
  }

   changeLoading() {
   isLoading.value=!isLoading.value;
   }





}