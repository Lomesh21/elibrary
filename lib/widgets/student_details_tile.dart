import 'package:elibrary/constant/colors.dart';
import 'package:elibrary/constant/theme.dart';
import 'package:flutter/material.dart';

// This file contains the student details tile widget
// StudentDetailsTile is used to display the student details in the student_screen.dart
// The widget is being used as follow:

// Widget Caller
// StudentDetailsTile(
// studentId: "1",
// studentName: "Yash Waghmare",
// contactNumber: "1234567890",
// emailId: "yash.waghmare20@pccoepune.org",
// ),

class StudentDetailsTile extends StatelessWidget {
  const StudentDetailsTile(
      {super.key,
      required this.studentId,
      required this.studentName,
      required this.contactNumber,
      required this.emailId,
      required this.onTap});

  final dynamic studentId, studentName, contactNumber, emailId;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width * 0.625,
        height: MediaQuery.of(context).size.width * 0.038,
        decoration: BoxDecoration(
            color: AppColors.colors.tileBackground,
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Text(
                studentId,
                textAlign: TextAlign.center,
                style: appTheme()
                    .textTheme
                    .headlineSmall
                    ?.copyWith(color: AppColors.colors.white),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                studentName,
                textAlign: TextAlign.center,
                style: appTheme()
                    .textTheme
                    .headlineSmall
                    ?.copyWith(color: AppColors.colors.white),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                contactNumber,
                textAlign: TextAlign.center,
                style: appTheme()
                    .textTheme
                    .headlineSmall
                    ?.copyWith(color: AppColors.colors.white),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              flex: 4,
              child: Text(
                emailId,
                textAlign: TextAlign.center,
                style: appTheme()
                    .textTheme
                    .headlineSmall
                    ?.copyWith(color: AppColors.colors.white),
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
