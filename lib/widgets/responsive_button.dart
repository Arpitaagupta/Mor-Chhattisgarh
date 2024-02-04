import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mor_chhattisgarh/misc/colors.dart';
import 'package:mor_chhattisgarh/widgets/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;

  double? width; //optional
  ResponsiveButton({Key? key, this.width = 120, this.isResponsive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isResponsive == true ? double.maxFinite : width,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppColor.cyan700),
      child: Row(
        mainAxisAlignment: isResponsive == true
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.center,
        children: [
          isResponsive == true
              ? Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: AppText(
                    text: "Book Trip Now",
                    color: Colors.white,
                  ),
                )
              : Container(),
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
