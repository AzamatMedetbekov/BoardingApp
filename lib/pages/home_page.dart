import 'package:flutter/material.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_application_1/widgets/headers.dart';
import 'package:flutter_application_1/widgets/notice.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F0F0),
      appBar: HomeHeader(),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          NoticeCard(title: "게시글 제목", content: Text("공지 내용")),
          SizedBox(height: 20),
          NoticeCard(title: "게시글 제목", content: Text("공지 내용")),
          SizedBox(height: 20),
          NoticeCard(
            title: "게시글 제목",
            content: Assets.images.illuminatePost.image(),
          ),
          SizedBox(height: 20),
          NoticeCard(title: "게시글 제목", content: Text("공지 내용")),
          SizedBox(height: 20),
          NoticeCard(title: "게시글 제목", content: Text("공지 내용")),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
