import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/data_sources/remote/api_client.dart';
import 'package:flutter_application_1/data/models/post_list_model.dart';
import 'package:flutter_application_1/widgets/headers.dart';
import 'package:flutter_application_1/widgets/notice.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ApiClient _apiClient = ApiClient(Dio());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F0F0),
      appBar: HomeHeader(),
      body: FutureBuilder(
        future: _apiClient.getNoticeList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('An error occurred: ${snapshot.error}'));
          }

          if (snapshot.hasData) {
            final NoticeListModel notices = snapshot.data!;

            if (notices.total == 0) {
              return const Center(child: Text('No notices found'));
            }

            return ListView.builder(
              padding: EdgeInsets.all(16),
              itemCount: notices.total,
              itemBuilder: (context, index) {
                final notice = notices.list[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: NoticeCard(notice: notice),
                );
              },
            );
          }
          return const Center(child: Text('Something went wrong'));
        },
      ),
    );
  }
}
