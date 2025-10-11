import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/data_sources/remote/board_api.dart';
import 'package:flutter_application_1/data/models/board_model.dart';
import 'package:flutter_application_1/widgets/headers.dart';
import 'package:flutter_application_1/widgets/notice.dart';

class BoardPage extends StatefulWidget {
  const BoardPage({super.key});

  @override
  State<BoardPage> createState() => _BoardPageState();
}

class _BoardPageState extends State<BoardPage> {
  final BoardApi _boardApi = BoardApi();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F0F0),
      appBar: BoardHeader(),
      body: FutureBuilder(
        future: _boardApi.getBoards(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('An error occurred: ${snapshot.error}'));
          }

          if (snapshot.hasData) {
            final List<BoardModel> tags = snapshot.data!;

            if (tags.isEmpty) {
              return const Center(child: Text('No boards found.'));
            }

            return ListView.builder(
              padding: const EdgeInsets.all(16.0),
              itemCount: tags.length,
              itemBuilder: (context, index) {
                final tag = tags[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: BoardCard(content: tag.name),
                );
              },
            );
          }
          return const Center(child: Text('Something went wrong.'));
        },
      ),
    );
  }
}
