import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageMobile extends StatelessWidget {
  const HomePageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(end: 8, top: 8),
                    child: Container(
                      color: Colors.cyan[900],
                      child: Center(
                          child: Text(
                        "Body",
                        style: TextStyle(color: Colors.white, fontSize: 14.sp),
                      )),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              height: 60,
              color: Colors.cyan[600],
              child: Center(
                  child: Text(
                "Bottom Nav Bar",
                style: TextStyle(color: Colors.white, fontSize: 13.sp),
              )),
            ),
          )
        ],
      ),
    );
  }
}
