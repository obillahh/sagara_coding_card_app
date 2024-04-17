import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:go_router/go_router.dart";

class QuizDonePage extends StatelessWidget {
  const QuizDonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You’ve Complete\nyour quiz!",
              style: TextStyle(
                color: const Color(0xffC5233A),
                fontSize: 28.sp,
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 24.h,
            ),
            SvgPicture.asset(
              "assets/icons/quiz_done.svg",
              height: 240.h,
            ),
            SizedBox(
              height: 32.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/card_collection_icon.svg",
                    height: 32.h,
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Text(
                    "Back End Engineer",
                    style: TextStyle(
                      color: const Color(0xffC5233A),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100.w,
                    height: 75.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.r),
                      ),
                      border: Border.all(
                        color: const Color(0xffC5233A),
                      ),
                    ),
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 20.h,
                              decoration: BoxDecoration(
                                color: const Color(0xff1A1A1A),
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(12.r),
                                ),
                              ),
                              child: const Text(
                                "Points",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/icons/point.svg",
                                height: 20.h,
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              Text(
                                "+9000",
                                style: TextStyle(
                                  color: const Color(0xff333333),
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 100.w,
                    height: 75.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12.r)),
                        border: Border.all(color: const Color(0xffC5233A))),
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 20.h,
                              decoration: BoxDecoration(
                                color: const Color(0xff1A1A1A),
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(12.r),
                                ),
                              ),
                              child: const Text(
                                "Time",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/icons/time.svg",
                                height: 20.h,
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              Text(
                                "01:49",
                                style: TextStyle(
                                    color: const Color(0xff333333),
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 100.w,
                    height: 75.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12.r)),
                      border: Border.all(color: const Color(0xffC5233A)),
                    ),
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 20.h,
                              decoration: BoxDecoration(
                                color: const Color(0xff1A1A1A),
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(12.r),
                                ),
                              ),
                              child: const Text(
                                "Score",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/icons/score.svg",
                                height: 20.h,
                              ),
                              SizedBox(
                                width: 4.w,
                              ),
                              Text(
                                "80%",
                                style: TextStyle(
                                    color: const Color(0xff333333),
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: ElevatedButton(
                onPressed: () => {
                  context.go('/home'),
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0.r),
                  ),
                  minimumSize: Size(double.infinity.w, 40.h),
                  backgroundColor: const Color(0xffC5233A),
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 12.sp,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                child: Text(
                  "Continue",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
