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
        future: _apiClient.getPostList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('An error occurred: ${snapshot.error}'));
          }

          if (snapshot.hasData) {
            final PostListModel posts = snapshot.data!;

            if (posts.count == 0) {
              return const Center(child: Text('No posts found'));
            }

            return ListView.builder(
              padding: EdgeInsets.all(16),
              itemCount: posts.count,
              itemBuilder: (context, index) {
                final post = posts.list[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: PostCard(post: post),
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
