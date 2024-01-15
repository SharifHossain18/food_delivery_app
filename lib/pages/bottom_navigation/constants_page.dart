import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

final box=GetStorage();

class AddToCart extends GetxController{
  List lst=[];

  add(String name){
    lst.add(name);
  }

}

