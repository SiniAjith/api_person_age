import 'package:api_person_age/apiIntegration/GetMethod/controller/DataController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../widgets/DataCustomWidget.dart';

void main(){
  runApp(MaterialApp(home: HttpHome(),));
}

class HttpHome extends StatelessWidget{
  
  final DataController controller=Get.put(DataController());
///List dtList=DataController.dataList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data"),
      ),
body: Column(
  children: [
    Padding(padding: EdgeInsets.all(15),
    ),

    Expanded(child: Obx(
        (){
          if(controller.isLoading.value){
            return Center(child: CircularProgressIndicator(),);
          }else{
            return ListView.builder(itemCount:controller.dataList.length,itemBuilder: (context,index){


              DataCustom(controller.dataList[index]);

            });}

    })

    )
  ],
),
      // ),
    );
  }
}






