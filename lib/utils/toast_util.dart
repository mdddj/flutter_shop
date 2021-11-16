import 'package:flutter_shop/constant/app_colors.dart';
import 'package:flutter_shop/constant/app_dimens.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ToastUtil {
  static showToast(String message) {
    if (message.isEmpty) {
      return;
    }
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        backgroundColor: AppColors.COLOR_FF5722,
        textColor: Colors.white,
        fontSize: ScreenUtil().setSp(AppDimens.DIMENS_42));
  }
}