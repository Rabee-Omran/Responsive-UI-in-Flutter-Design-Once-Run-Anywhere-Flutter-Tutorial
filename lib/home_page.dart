import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_tutorial/responive.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          if (Responsive.isWeb(context))
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 60,
              color: Colors.cyan[900],
              child: Center(
                  child: Text(
                "Navbar",
                style: TextStyle(color: Colors.white, fontSize: 13.sp),
              )),
            ),
          Expanded(
            child: Row(
              children: [
                if (Responsive.isWeb(context))
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(end: 8, top: 8),
                      child: Container(
                        color: Colors.cyan[900],
                        child: Center(
                            child: Text(
                          "Sidebar",
                          style:
                              TextStyle(color: Colors.white, fontSize: 13.sp),
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
                        style: TextStyle(color: Colors.white, fontSize: 13.sp),
                      )),
                    ),
                  ),
                )
              ],
            ),
          ),
          if (Responsive.isWeb(context))
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: 60,
                color: Colors.cyan[900],
                child: Center(
                    child: Text(
                  "Footer",
                  style: TextStyle(color: Colors.white, fontSize: 13.sp),
                )),
              ),
            ),
          if (Responsive.isMobile(context))
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
