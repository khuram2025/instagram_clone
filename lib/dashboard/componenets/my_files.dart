import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';
import '../models/MyFiles.dart';
import '../responsive.dart';


class MyFiles extends StatelessWidget {
  const MyFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("My Files", style: Theme.of(context).textTheme.subtitle1,),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: defaultPadding*1.5,
                    vertical: defaultPadding/(Responsive.isMobile(context)?2:1),
                  )
              ),
              onPressed: (){},
              icon: Icon(Icons.add),
              label:Text("Add New"), )
          ],
        ),
        SizedBox(height: defaultPadding,),
        GridView.builder(
          shrinkWrap: true,
            itemCount: demoMyFiles.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 1.5,
              crossAxisSpacing: defaultPadding
            ),
            itemBuilder: (context, index)=> FileInfoCard(info: demoMyFiles[index],))
      ],
    );
  }
}

class FileInfoCard extends StatelessWidget {
  const FileInfoCard({
    Key? key, required this.info,
  }) : super(key: key);
  final CloudStorageInfo info;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: info.color?.withOpacity(0.1),
                    borderRadius: BorderRadius.all(Radius.circular(10))

                ),
                child: SvgPicture.asset(info.svgSrc!,
                color: info.color,),
              ),

              Icon(Icons.more_vert, color: Colors.white54,)
            ],
          ),
          Text(
            info.title!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          ProgressLine(
            color: info.color,
          percentage: info.percentage,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('${info.numOfFiles} Files', style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(color: Colors.white70),),
              Text(info.totalStorage!,style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }
}

class ProgressLine extends StatelessWidget {
  const ProgressLine({Key? key,
    this.color = primaryColor,
    required this.percentage
  }) : super(key: key);
  final Color? color;
  final int? percentage;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 5,
          decoration: BoxDecoration(
            color: color!.withOpacity(0.1),
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
        ),
        LayoutBuilder(
        builder: (context, constraints) => Container(
    width: constraints.maxWidth * (percentage! / 100),
    height: 5,
    decoration: BoxDecoration(
    color: color,
      borderRadius: BorderRadius.all(Radius.circular(10))

    )))
      ],
    );
  }
}
