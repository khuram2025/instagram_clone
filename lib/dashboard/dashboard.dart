import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_flutter/dashboard/dash/dashborad_screen.dart';
import 'componenets/side_menu.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child:SideMenu()),
            Expanded(
              flex: 5,
                child: SubDashBoardScreen()),
          ],
        ),
      ),
    );
  }
}
