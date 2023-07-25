import 'package:flutter/material.dart';
import 'package:newsapp/utils/colors.dart';
import 'package:newsapp/utils/text.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({key})
      : preferredSize = Size.fromHeight(50.0),
        super(key: key);

  @override
  final Size preferredSize;
  Widget build(BuildContext context) {
    return AppBar(
      actions: [],
      centerTitle: true,
      backgroundColor: AppColors.black,
      elevation: 0.0,
      title: Container(
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BoldText(text: 'Turbo', size: 20, color: AppColors.primary),
            CustomText(
                text: 'Reporters', size: 20, color: AppColors.lightwhite),
          ],
        ),
      ),
    );
  }
}
