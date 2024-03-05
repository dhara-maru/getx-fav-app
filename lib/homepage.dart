import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_favorite_app/fav.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  favcontroller controller = Get.put(favcontroller());

  //List<String> fruitlist = ['apple', 'orange', 'banana', 'kiwi', 'litchi'];   //simple sm
  //List<String> templist = ['apple'];    //simple sm
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("getx fav app"),
      ),
      body: ListView.builder(
        itemCount: controller.fruitlist.length,
        itemBuilder: ((context, index) {
        return Card(
          child: ListTile(
            onTap: (){

              if(controller.templist.contains(controller.fruitlist[index].toString())){
                  controller.removefromfav(controller.fruitlist[index].toString());
              }else{
                  controller.addtofav(controller.fruitlist[index].toString());
              }
              
             // setState(() {   //this is the simple method that rebuilds the full widget tree 
                //simple sm
              //});
            },
            title: Text(controller.fruitlist[index].toString()),
            trailing: Obx(() => Icon(Icons.favorite,
            color: controller.templist.contains(controller.fruitlist[index].toString()) ? Colors.red : Colors.grey[500],),
         ) 
             ),
        );
      })),
    );
  }
}