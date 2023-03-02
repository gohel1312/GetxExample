import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxBottonSheet extends StatefulWidget {
  @override
  State<GetxBottonSheet> createState() => _GetxBottonSheetState();
}

class _GetxBottonSheetState extends State<GetxBottonSheet>
{
  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Bottom sheet"),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text("Show Bottom Sheet"),
            onPressed: (){
              Get.bottomSheet(
                Container(
                  child: Wrap(
                    children: [
                      ListTile(
                        leading: Icon(Icons.wb_sunny_outlined),
                        title: Text("Light Theme"),
                        onTap: ()=>{Get.changeTheme(ThemeData.light())},
                      ),
                      ListTile(
                        leading: Icon(Icons.wb_sunny),
                        title: Text("Dark Theme"),
                        onTap: ()=>{Get.changeTheme(ThemeData.dark())},
                      ),
                    ],
                  ),
                ),
                barrierColor: Colors.greenAccent,
                isDismissible: false,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(
                    color: Colors.black,
                  )
                ),
                enableDrag: false
              );
            },
          ),
        ),
      ),
    );
  }
}
