import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/GetXDialog.dart';

class GetxRoute extends StatefulWidget {
  @override
  State<GetxRoute> createState() => _GetxRouteState();
}

class _GetxRouteState extends State<GetxRoute>
{
  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Route Navigate Home Page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: (){
                    Get.to(
                      GetxDialog(),
                      arguments: "How Are You Buddy!!",
                      fullscreenDialog: true,
                      transition: Transition.zoom,
                      curve: Curves.decelerate
                    );
                    },
                  child: Text("First Page")),
              ElevatedButton(onPressed: (){}, child: Text("Second Page")),
            ],
          ),
        ),
      ),
    );
  }
}
