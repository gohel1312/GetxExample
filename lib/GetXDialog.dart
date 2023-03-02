import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/GetxSnackBar.dart';

class GetxDialog extends StatefulWidget {
  const GetxDialog({Key? key}) : super(key: key);

  @override
  State<GetxDialog> createState() => _GetxDialogState();
}

class _GetxDialogState extends State<GetxDialog>
{
  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Dialog Box"),
          ),
          body: Center(
            child: ElevatedButton(
              child: Text("Show Dialog"),
              onPressed: (){
                Get.defaultDialog(
                  title: "Alert Dialog ${Get.arguments}",
                  middleText: "Are You Sure To Delete This File",
                  // cancel: Text("No"),
                  // confirm: Text("Yes"),
                  textCancel: "NO",
                  textConfirm: "yes",
                  onCancel: ()=> GetXSnackBar(),
                  onConfirm: ()=> GetXSnackBar(),
                  barrierDismissible: false
                );
              },
            ),
          ),
        )
    );
  }
}
