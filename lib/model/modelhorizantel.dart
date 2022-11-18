import 'package:flutter/material.dart';

class ModelHorizantel{

  String titel,images;

  ModelHorizantel(this.titel, this.images);



 static List<ModelHorizantel> list(){
    return [
      ModelHorizantel("Sweets -42 item", "images/a.png"),
      ModelHorizantel("Sweets -42 item", "images/b.png"),
      ModelHorizantel("Sweets -42 item", "images/a.png"),
      ModelHorizantel("Sweets -42 item", "images/a.png"),
    ];
  }

}