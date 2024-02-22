import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:getxflutter/controller/model_controller.dart';
import 'package:getxflutter/data/model/api_model.dart';
import 'package:getxflutter/service/api_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    JokesController controller=Get.put(JokesController());
    return Scaffold(
      appBar: AppBar(title: Text("Getx Appp  bar"),),
      body:Obx(
          (){
            if(controller.isLoading.value){
              return const  Column(

                children:[
                  CircularProgressIndicator(),
                //   title: "Getx",
                //    message: "Message",
                //     snackPosition: SnackPosition.BOTTOM,
                //     backgroundColor: Colors.black,
                //   borderColor: Colors.lightBlue,
                // ),

                ]
              );
            }else{
              return ListView.builder(
                  itemCount:controller.jokes!.length,
                  itemBuilder: (context,index)=>ListTile(title: Text(controller.jokes![index].setup),)
              );
            }
          }
      )
    );
  }
}
