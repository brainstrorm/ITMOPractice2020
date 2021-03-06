import 'dart:convert';

import 'package:flutterapp/Statistics/presenter/StatisticsPresenter.dart';


class VariantModel {

  int id;
  List <String> text_of_tasks = new List<String>(12);
  List <String> image_links = new List<String>(12);

  int visited;
  int right_answers;
  VariantModel(
      this.id, this.text_of_tasks, this.image_links, this.visited,this.right_answers);


  VariantModel clientFromJson(String str) {
    final jsonData = json.decode(str);
    return VariantModel.fromJson(jsonData);
  }

  String clientToJson(VariantModel data) {
    final dyn = data.toJson();
    return json.encode(dyn);
  }


  factory VariantModel.fromJson(Map<String, dynamic> json){
    List<String> tasks = new List<String>();
    for(var i = 1; i <= 12; i++){
      tasks.add(json["text$i"]);
    }

    List<String> links = new List<String>();
    for(var i = 1; i <= 12; i++){
      links.add(json["image_link$i"]);
    }
    return new VariantModel(
        json["id"],
        tasks,
        links,
        json["visited"],
        json["right_answers"]
    );
  }


  Map<String, dynamic> toJson() {

  return{
  'id': id,
  'text1': text_of_tasks[0],
  'text2': text_of_tasks[1],
  'text3': text_of_tasks[2],
  'text4': text_of_tasks[3],
  'text5': text_of_tasks[4],
  'text6': text_of_tasks[5],
  'text7': text_of_tasks[6],
  'text8': text_of_tasks[7],
  'text9': text_of_tasks[8],
  'text10': text_of_tasks[9],
  'text11': text_of_tasks[10],
  'text12': text_of_tasks[11],

  'image_link1': image_links[0],
  'image_link2': image_links[1],
  'image_link3': image_links[2],
  'image_link4': image_links[3],
  'image_link5': image_links[4],
  'image_link6': image_links[5],
  'image_link7': image_links[6],
  'image_link8': image_links[7],
  'image_link9': image_links[8],
  'image_link10': image_links[9],
  'image_link11': image_links[10],
  'image_link12': image_links[11],

  'visited': visited,
  'right_answers': right_answers
  };
  }
}