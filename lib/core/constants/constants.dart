
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


// String imageToBase64(File image) {
//   List<int> bytes = image.readAsBytesSync();
//   return base64Encode(bytes);
// }

void showProgressIndicator(BuildContext context){
  AlertDialog alertDialog = const AlertDialog(
    backgroundColor: Colors.transparent,
    elevation: 0,
    content: Center(
      child: CircularProgressIndicator.adaptive(),
    ),
  );
  showDialog(context: context, builder: (context)=>WillPopScope(child: alertDialog, onWillPop: ()async{return true;}),barrierDismissible: false);
}

void showToast({required int errorType, required String message}){
  if(errorType == 0){
    Fluttertoast.showToast(msg: message,backgroundColor: Colors.green,textColor: Colors.white,gravity: ToastGravity.SNACKBAR,);
  }else{
    Fluttertoast.showToast(msg: message,backgroundColor: Colors.red,textColor: Colors.white,gravity: ToastGravity.SNACKBAR);
  }
}