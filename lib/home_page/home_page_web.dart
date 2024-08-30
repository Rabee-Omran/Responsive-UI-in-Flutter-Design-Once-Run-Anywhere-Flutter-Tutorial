import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageWeb extends StatelessWidget {
  const HomePageWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 1.sw,
            height: 60,
            color: Colors.cyan[900],
            child: Center(
                child: Text(
              "Navbar",
              style: TextStyle(color: Colors.white, fontSize: 8.sp),
            )),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(end: 8, top: 8),
                    child: Container(
                      color: Colors.cyan[900],
                      child: Center(
                          child: Text(
                        "Sidebar",
                        style: TextStyle(color: Colors.white, fontSize: 8.sp),
                      )),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(end: 8, top: 8),
                    child: Container(
                      color: Colors.cyan[900],
                      child: Center(
                          child: Text(
                        "Body",
                        style: TextStyle(color: Colors.white, fontSize: 8.sp),
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
              color: Colors.cyan[900],
              child: Center(
                  child: Text(
                "Footer",
                style: TextStyle(color: Colors.white, fontSize: 8.sp),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
