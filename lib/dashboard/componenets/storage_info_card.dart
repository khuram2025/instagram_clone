import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_flutter/dashboard/componenets/chart.dart';
import 'package:instagram_flutter/dashboard/constants.dart';

class StorageInfo extends StatelessWidget {
  const StorageInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Column(

        children: [
          Text("Storage Detail",style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18
          ),),
          SizedBox(height: defaultPadding,),
          chart(),
          StorageInfoCard(
            svgSrc: "assets/icons/Documents.svg",
            title: "Documents Files",
            amountOfFiles: "1.3GB",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/media.svg",
            title: "Media Files",
            amountOfFiles: "15.3GB",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/folder.svg",
            title: "Other Files",
            amountOfFiles: "1.3GB",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/unknown.svg",
            title: "Unknown",
            amountOfFiles: "1.3GB",
            numOfFiles: 140,
          ),
        ],
      ),
    );
  }
}

class StorageInfoCard extends StatelessWidget {
  const StorageInfoCard({
    Key? key,
    required this.svgSrc,
    required this.title,
    required this.amountOfFiles,
    required this.numOfFiles,
  }) : super(key: key);
  final String svgSrc, title, amountOfFiles;
  final int numOfFiles;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding),
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(width: 2, color: primaryColor.withOpacity(0.5))
      ),
      child: Row(
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: SvgPicture.asset(svgSrc),
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,maxLines: 1, overflow: TextOverflow.ellipsis,),
                    Text(
                      "$numOfFiles Files",
                      style: Theme.of(context).textTheme.caption!.copyWith(color: Colors.white70),
                    )
                  ],),
              )),
          Text(amountOfFiles)
        ],
      ),

    );
  }
}