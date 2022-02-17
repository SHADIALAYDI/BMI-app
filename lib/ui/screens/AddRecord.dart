import 'package:bmi_project/routes/Routes.dart';
import 'package:bmi_project/ui/ContentOfScreen/AddRecordContent.dart';
import 'package:bmi_project/ui/general-widgets/CustomAppBar.dart';
import 'package:bmi_project/ui/screens/Home.dart';
import 'package:flutter/material.dart';

class AddRecord extends StatefulWidget {


  @override
  _AddRecordState createState() => _AddRecordState();
}

class _AddRecordState extends State<AddRecord> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        return RouteHelper.routeHelper.goToPageWithReplacement(Home());

      },
      child: Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            child:CustomAppBar((){
              return RouteHelper.routeHelper.goToPageWithReplacement(Home());
            }),
          ),
          body:AddRecordContent()

      ),
    );
  }
}
