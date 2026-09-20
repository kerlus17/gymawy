import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ShowToast {
  const ShowToast._();

  static void showToastErrorTop({
    required BuildContext context,
    required String message,
    int? seconds,
  }) {
    _showCustomToast(
      context: context,
      message: message,
      backgroundColor: Colors.red,
      icon: Icons.error_outline,
      seconds: seconds ?? 3,
    );
  }

  static void showToastSuccessTop({
    required BuildContext context,
    required String message,
    int? seconds,
  }) {
    _showCustomToast(
      context: context,
      message: message,
      backgroundColor: Colors.green,
      icon: Icons.check_circle_outline,
      seconds: seconds ?? 1,
    );
  }

  static void _showCustomToast({
    required BuildContext context,
    required String message,
    required Color backgroundColor,
    required IconData icon,
    required int seconds,
  }) {
    final fToast = FToast();
    fToast.init(context);

    fToast.removeCustomToast();

    Widget toast = Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: backgroundColor,
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.white, size: 20.sp),
          SizedBox(width: 8.w),
          Flexible(
            child: Text(
              message,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );

    fToast.showToast(
      child: toast,
      gravity: ToastGravity.TOP,
      toastDuration: Duration(seconds: seconds),
    );
  }
}