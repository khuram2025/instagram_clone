import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_flutter/dashboard/constants.dart';



class AnimalListView extends StatelessWidget {
  const AnimalListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding/2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(width: 2, color: primaryColor.withOpacity(0.5))
      ),
      child: Row(
        children: [
          SizedBox(
            height: 200,
            width: 200,
            child: Image.asset("assets/images/img.png",),
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.notifications),
                    Text("This is genric notification for the Animal")
                  ],
                ),
                Text("Animal Tag"),
                Row(
                  children: [
                    Row(
                      children: [
                        Text("Age:")
                      ],
                    ),
                    Row(
                      children: [
                        Text("0 Year 5 Months")
                      ],
                    ),
                  ],
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset("assets/images/img.png",),
                      ),
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset("assets/images/img.png",),
                      ),
                      SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset("assets/images/img.png",),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          
          // Expanded(
          //     child: Padding(
          //       padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          //       child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Text("CS 101",maxLines: 1, overflow: TextOverflow.ellipsis,),
          //           Text(
          //             "First Lactions Files",
          //             style: Theme.of(context).textTheme.caption!.copyWith(color: Colors.white70),
          //           )
          //         ],),
          //     )),
          Expanded(child: Column(
            children: [
              Image.asset("assets/images/img.png", height: 100, width: 100,),
              Image.asset("assets/images/img.png", height: 100, width: 100,),
            ],
          ),),

        ],
      ),
    );
  }
}
