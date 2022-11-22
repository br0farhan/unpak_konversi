import 'package:flutter/material.dart';
import 'package:unpak_konversi/ui/constants/R/r.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class KonversiPages extends StatelessWidget {
  const KonversiPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE8F3F3),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 30),
            height: 85.w,
            color: R.colors.primaryColor,
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: R.colors.whiteColor,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 71),
                  child: Text(
                    "KONVERSI",
                    style:
                        TextStyle(fontSize: 37.sp, color: R.colors.whiteColor),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 150,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.only(left: 13, right: 13, top: 13),
            height: 183.w,
            decoration: BoxDecoration(
                color: R.colors.whiteColor,
                borderRadius: BorderRadius.circular(10.r)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                        child: Row(
                      children: [
                        Text(
                          "USD",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        const Text("-"),
                        Text(
                          "United Stated Dolar",
                          style: TextStyle(
                              fontSize: 10.sp, color: R.colors.blueColor),
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        const Icon(Icons.arrow_drop_down)
                      ],
                    )),
                    Icon(
                      Icons.swap_horiz_rounded,
                      size: 30.w,
                    ),
                    SizedBox(
                        child: Row(
                      children: [
                        const Icon(Icons.arrow_drop_down),
                        Text(
                          "USD",
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        const Text("-"),
                        Text(
                          "United Stated Dolar",
                          style: TextStyle(
                              fontSize: 10.sp, color: R.colors.blueColor),
                        ),
                      ],
                    )),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Masukan Angka",
                          style: TextStyle(fontSize: 15.sp),
                        ),
                        Container(
                          width: 125.w,
                          height: 35.w,
                          decoration: BoxDecoration(
                              border: Border.all(color: R.colors.blackColor),
                              borderRadius: BorderRadius.circular(4.r)),
                          child: const TextField(
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
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
                height: 56,
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
                      width: 87,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 50),
                      child: Text(
                        "Aplikasi Konversi & Prediksi\nUniversitas Pakuan Bogor",
                        style: TextStyle(color: R.colors.whiteColor),
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
