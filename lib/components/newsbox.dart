import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/utils/colors.dart';
import 'package:newsapp/utils/text.dart';

class NewsBox extends StatelessWidget {
  final String imageurl, title, time, description, url;

  const NewsBox({
    super.key,
    required this.imageurl,
    required this.title,
    required this.time,
    required this.description,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Row(children: [
            CachedNetworkImage(
              imageUrl: imageurl,
              imageBuilder: (context, imageProvider) => Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.yellow,
                ),
              ),
              placeholder: (context, url) => CircularProgressIndicator(
                color: AppColors.primary,
              ),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            SizedBox(width: 8.0),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(text: title, size: 16, color: AppColors.white),
                CustomText(text: time, size: 16, color: AppColors.lightwhite),
              ],
            ))
          ]),
        ),
        // DividerWidget(),
      ],
    );
  }
}
