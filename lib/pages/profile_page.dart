import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/headers.dart';
import 'package:flutter_application_1/widgets/profile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F0F0),
      appBar: HomeHeader(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: const [
                  ProfileInfoRow(label: "닉네임", content: "infoteam"),
                  ProfileInfoRow(label: "이메일", content: "infoteam@gistory.me"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
