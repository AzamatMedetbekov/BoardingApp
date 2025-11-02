import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/data_sources/remote/tag_api.dart';
import 'package:flutter_application_1/data/models/board_list_model.dart';
import 'package:flutter_application_1/widgets/headers.dart';
import 'package:flutter_application_1/widgets/notice.dart';

class TagPage extends StatefulWidget {
  const TagPage({super.key});

  @override
  State<TagPage> createState() => _TagPageState();
}

class _TagPageState extends State<TagPage> {
  final TagApi _tagApi = TagApi();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F0F0),
      appBar: TagHeader(),
      body: FutureBuilder(
        future: _tagApi.getTags(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('An error occurred: ${snapshot.error}'));
          }

          if (snapshot.hasData) {
            final TagListModel tags = snapshot.data!;

            if (tags.count == 0) {
              return const Center(child: Text('No Tags found.'));
            }

            return ListView.builder(
              padding: const EdgeInsets.all(16.0),
              itemCount: tags.count,
              itemBuilder: (context, index) {
                final tag = tags.list[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: TagCard(content: tag.name),
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
