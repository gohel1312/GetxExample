import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXSnackBar extends StatefulWidget {

  @override
  State<GetXSnackBar> createState() => _GetXSnackBarState();
}

class _GetXSnackBarState extends State<GetXSnackBar>
{
  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("SnackBar"),
          ),
          body: Center(
            child: ElevatedButton(
              child: Text("Show Snackbar"),
              onPressed: (){
                Get.snackbar(
                  "Show SnackBar","This is SnackBar Message To show",
                  isDismissible: true,
                  overlayBlur: 10,
                  //overlayColor: Colors.greenAccent
                );
              },
            ),
          ),
        )
    );
  }
}
