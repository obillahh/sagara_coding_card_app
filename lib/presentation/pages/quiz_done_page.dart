import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";

class QuizDonePage extends StatelessWidget {
  const QuizDonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Center(
                child: Text(
                  "You’ve Complete\nyour quiz!",
                  style: TextStyle(
                      color: Color(0xffC5233A),
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Center(
                  child: SvgPicture.asset(
                "assets/icons/quiz_done.svg",
                height: 300,
              )),
              SizedBox(
                height: 48,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/card_collection_icon.svg",
                      height: 40,
                      color: Color(0xffC5233A),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Back End Engineer",
                      style: TextStyle(
                          color: Color(0xffC5233A),
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 120,
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          border: Border.all(color: Color(0xffC5233A))),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Container(
                                width: double.infinity,
                                height: 20,
                                decoration: BoxDecoration(
                                    color: Color(0xff1A1A1A),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10))),
                                child: Text(
                                  "Points",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/icons/point.svg",
                                height: 20,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text("+9000",
                                  style: TextStyle(
                                      color: Color(0xff333333),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                          Spacer(),
                          Spacer(),
                        ],
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          border: Border.all(color: Color(0xffC5233A))),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Container(
                                width: double.infinity,
                                height: 20,
                                decoration: BoxDecoration(
                                    color: Color(0xff1A1A1A),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10))),
                                child: Text(
                                  "Time",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/icons/time.svg",
                                height: 20,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text("01:49",
                                  style: TextStyle(
                                      color: Color(0xff333333),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                          Spacer(),
                          Spacer(),
                        ],
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          border: Border.all(color: Color(0xffC5233A))),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Container(
                                width: double.infinity,
                                height: 20,
                                decoration: BoxDecoration(
                                    color: Color(0xff1A1A1A),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10))),
                                child: Text(
                                  "Score",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/icons/score.svg",
                                height: 20,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text("80%",
                                  style: TextStyle(
                                      color: Color(0xff333333),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                          Spacer(),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  onPressed: () => {},
                  child: Text(
                    "Continue",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0)),
                    minimumSize: Size(double.infinity, 40),
                    backgroundColor: Color(0xffC5233A),
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontStyle: FontStyle.normal),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
