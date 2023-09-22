import 'dart:developer';

import 'package:api_person_age/apiIntegration/GetMethod/service/http_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DataController extends GetxController{
  var isLoading= true.obs;
  var dataList=[].obs;


  @override
  void onInit() {
    loadData();
    super.onInit();
  }

  void loadData() async{

    try{
      isLoading(true);
      var data=await HttpService.fetchData();
      if(data!=null){
        dataList.value=data;
        ///log(dataList as String);
        print(dataList);
       /// Text(dataList as String);
      }
    }finally{
      isLoading(false);
    }
  }
}