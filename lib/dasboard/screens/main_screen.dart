import 'package:flutter/material.dart';
import 'package:instagram_flutter/dasboard/responsive.dart';
import 'package:instagram_flutter/dasboard/screens/dashboard.dart';
import 'package:instagram_flutter/dasboard/screens/side_menu.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            if(Responsive.isDesktop(context))
              Expanded(child: SideMenu()),
            Expanded(
              flex: 5,
                child: DashBoardScreen())
          ],
        ),
      ),
    );
  }
}
