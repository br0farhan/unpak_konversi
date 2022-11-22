import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:unpak_konversi/ui/constants/R/r.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrediksiPages extends StatelessWidget {
  const PrediksiPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE8F3F3),
      body: Column(
        children: [
          Container(
            height: 85.w,
            padding: const EdgeInsets.only(top: 30),
            color: R.colors.primaryColor,
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: R.colors.whiteColor,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 80),
                  child: Text(
                    "PREDIKSI",
                    style:
                        TextStyle(fontSize: 37.sp, color: R.colors.whiteColor),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100.h,
          ),
          Container(
            height: 380.w,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.only(left: 13, right: 13, top: 13),
            decoration: BoxDecoration(
                color: R.colors.whiteColor,
                borderRadius: BorderRadius.circular(10.r)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: const EdgeInsets.only(left: 100),
                    child: Row(
                      children: [
                        Text(
                          "USD",
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        const Text("-"),
                        SizedBox(
                          width: 3.w,
                        ),
                        Text(
                          "United Stated Dolar",
                          style: TextStyle(
                              fontSize: 15.sp, color: R.colors.blueColor),
                        ),
                        const Icon(Icons.arrow_drop_down)
                      ],
                    )),
                SizedBox(
                  height: 15.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Harga sekarang",
                      style: TextStyle(
                        fontSize: 12.sp,
                      ),
                    ),
                    Text(
                      "0.0",
                      style: TextStyle(fontSize: 28.sp),
                    ),
                    Container(
                      color: R.colors.blackColor,
                      height: 3.w,
                      width: 93.w,
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Stack(children: [
                  Container(
                    height: 50.w,
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        color: Colors.amber[600],
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 30, top: 10),
                      child: Text(
                        "September\n2022",
                        style: TextStyle(
                            color: R.colors.whiteColor, fontSize: 12.sp),
                      )),
                ]),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 73.w,
                      width: 65.w,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(4)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "16",
                            style: TextStyle(
                                color: R.colors.whiteColor, fontSize: 35.sp),
                          ),
                          Container(
                            color: R.colors.whiteColor,
                            width: 43.w,
                            height: 2.w,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 73.w,
                      width: 65.w,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(4)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "17",
                            style: TextStyle(
                                color: R.colors.whiteColor, fontSize: 35.sp),
                          ),
                          Container(
                            color: R.colors.whiteColor,
                            width: 43.w,
                            height: 2.w,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 73.w,
                      width: 65.w,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(4)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "18",
                            style: TextStyle(
                                color: R.colors.whiteColor, fontSize: 35.sp),
                          ),
                          Container(
                            color: R.colors.whiteColor,
                            width: 43.w,
                            height: 2.w,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 73.w,
                      width: 65.w,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(4)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "19",
                            style: TextStyle(
                                color: R.colors.whiteColor, fontSize: 35.sp),
                          ),
                          Container(
                            color: R.colors.whiteColor,
                            width: 43.w,
                            height: 2.w,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Harga Prediksi",
                      style: TextStyle(fontSize: 12.sp),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 40.w,
                      width: 100.w,
                      decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "0.0",
                        style: TextStyle(
                            fontSize: 32.sp, color: R.colors.whiteColor),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          Stack(
            children: [
              Container(
                height: 56.w,
                margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                decoration: BoxDecoration(
                    color: R.colors.primaryColor,
                    borderRadius: BorderRadius.circular(10)),
              ),
              Container(
                margin: const EdgeInsets.only(left: 6),
                child: Row(
                  children: [
                    Image.asset(
                      R.assets.unpak,
                      width: 87.w,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 50),
                      child: Text(
                        "Aplikasi Konversi & Prediksi\nUniversitas Pakuan Bogor",
                        style: TextStyle(
                            color: R.colors.whiteColor, fontSize: 13.sp),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
