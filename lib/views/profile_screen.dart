import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cv/widgets/profile_info_row.dart';
import 'package:cv/constants/app_constants.dart';
import 'package:cv/constants/color_palette.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10.sp),
          ),
        ),
        centerTitle: true,
        title: Text(
          AppConstants().profileName,
          style: TextStyle(
            color: white,
            fontSize: 30.sp,
            fontFamily: AppConstants().timesFontFamily,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            Container(
              height: 250.h,
              width: 250.w,
              decoration: BoxDecoration(
                color: blue,
                borderRadius: BorderRadius.circular(10.sp),
              ),
              child: FutureBuilder<void>(
                future: Future.delayed(const Duration(seconds: 1)),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(10.sp),
                      child: Image.asset(
                        AppConstants().myImage,
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.cover,
                      ),
                    );
                  } else {
                    return Center(
                      child: CircularProgressIndicator(
                        color: white,
                      ),
                    );
                  }
                },
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              AppConstants().myName,
              style: TextStyle(
                color: blue,
                fontSize: 30.sp,
                fontFamily: AppConstants().timesFontFamily,
              ),
            ),
            Divider(
              height: 50.h,
              color: blue,
              thickness: 1.sp,
              indent: 10.w,
              endIndent: 10.w,
            ),
            buildInfoRow(
              icon: Icons.phone_outlined,
              label: AppConstants().phoneNumber,
              text: AppConstants().myPhoneNumber,
            ),
            SizedBox(
              height: 25.h,
            ),
            buildInfoRow(
              icon: Icons.email_outlined,
              label: AppConstants().emailAddress,
              text: AppConstants().myEmailAddress,
            ),
            SizedBox(
              height: 25.h,
            ),
            buildInfoRow(
              icon: Icons.location_on_outlined,
              label: AppConstants().address,
              text: AppConstants().myAddress,
            ),
          ],
        ),
      ),
    );
  }
}
