import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/headers.dart';
import 'package:flutter_application_1/widgets/notice.dart';

class BoardPage extends StatelessWidget {
  const BoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F0F0),
      appBar: BoardHeader(),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          BoardCard(content: "게시판 1"),
          SizedBox(height: 20),
          BoardCard(content: "버튼 이름"),
          SizedBox(height: 20),
          BoardCard(content: "버튼 이름"),
          SizedBox(height: 20),
          BoardCard(content: "버튼 이름"),
          SizedBox(height: 20),
          BoardCard(content: "버튼 이름"),
          SizedBox(height: 20),
          BoardCard(content: "버튼 이름"),
          SizedBox(height: 20),
          BoardCard(content: "버튼 이름"),
          SizedBox(height: 20),
          BoardCard(content: "버튼 이름"),
          SizedBox(height: 13),
        ],
      )
    );
  }
}
