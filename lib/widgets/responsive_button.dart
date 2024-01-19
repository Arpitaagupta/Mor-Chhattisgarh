import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mor_chhattisgarh/misc/colors.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width; //optional
  ResponsiveButton({Key? key, this.width, this.isResponsive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColor.cyan700),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.keyboard_double_arrow_right_rounded,
              color: Colors.white,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
