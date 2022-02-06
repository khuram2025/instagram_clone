import 'package:flutter/material.dart';
import 'package:instagram_flutter/dasboard/constants.dart';
import 'package:instagram_flutter/dasboard/responsive.dart';
import 'package:instagram_flutter/dasboard/screens/header.dart';
import 'package:instagram_flutter/dasboard/screens/storage_details.dart';


class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: SingleChildScrollView(
      child: Column(
        children: [
          Header(),
          Row(
            children: [
              Expanded(
                flex: 5,
                  child: Column(

                  )),
              if(!Responsive.isMobile(context))
                SizedBox(width: defaultPadding,),
              if(!Responsive.isMobile(context))
                Expanded(flex: 2,
                    child: StorageDetails()),
            ],

          )
        ],
      ),
    ));
  }
}
