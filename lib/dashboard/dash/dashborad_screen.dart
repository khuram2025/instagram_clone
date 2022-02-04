import 'dart:html';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_flutter/dashboard/componenets/chart.dart';
import 'package:instagram_flutter/dashboard/constants.dart';
import 'package:instagram_flutter/dashboard/responsive.dart';

import '../componenets/header.dart';
import '../componenets/my_files.dart';
import '../componenets/recent_files.dart';
import '../componenets/storage_info_card.dart';


class SubDashBoardScreen extends StatelessWidget {
  const SubDashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 5,
                  child: Column(
                    children: [
                      MyFiles(),
                      SizedBox(height: defaultPadding),
                      RecentFiles(),

                    ],
                  ),
                    ),
                SizedBox(width: defaultPadding,),
                Expanded(
                    flex: 2,
                    child: StorageInfo()),

              ],
            )

          ],
        ),
      ),
    );
  }
}







