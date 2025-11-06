import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/bloc/home_page_bloc.dart';
import 'package:flutter_application_1/widgets/headers.dart';
import 'package:flutter_application_1/widgets/notice.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageBloc()..add(const HomePageEvent.load()),
      child: Scaffold(
        backgroundColor: const Color(0xFFF0F0F0),
        appBar: HomeHeader(),
        body: BlocBuilder<HomePageBloc, HomePageState>(
          builder: (context, state) {
            return state.when(
              init: () => const Center(child: Text('Initialization...')),

              loading: () => const Center(child: CircularProgressIndicator()),

              done: (postData) => RefreshIndicator(
                onRefresh: () async {
                  context.read<HomePageBloc>().add(const HomePageEvent.load());
                },
                child: ListView.builder(
                  padding: EdgeInsets.all(16),
                  itemCount: postData.count,
                  itemBuilder: (context, index) {
                    final post = postData.list[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12.0),
                      child: PostCard(post: post),
                    );
                  },
                ),
              ),

              error: (message) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(message),
                    ElevatedButton(
                      onPressed: () {
                        context.read<HomePageBloc>().add(
                          const HomePageEvent.load(),
                        );
                      },
                      child: const Text('Try again'),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}