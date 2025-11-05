import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_page_bloc.freezed.dart';

@freezed
abstract class HomePageEvent with _$HomePageEvent {
  const factory HomePageEvent.load() = LoadEvent;
}

@freezed
abstract class HomePageState with _$HomePageState {
  const factory HomePageState.init() = StateInit;
  const factory HomePageState.loading() = StateLoading;
  const factory HomePageState.done({required List<String> items}) = StateDone;
  const factory HomePageState.error({required String message}) = StateError;
}

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(const HomePageState.init()) {
    on<LoadEvent>(_onLoad);
  }

  Future<void> _onLoad(LoadEvent event, Emitter<HomePageState> emit) async {
    try {
      emit(const HomePageState.loading());

      await Future.delayed(const Duration(seconds: 2));
      final items = List.generate(20, (index) => 'Item ${index + 1}');

      emit(HomePageState.done(items: items));
    } catch (e) {
      emit(HomePageState.error(message: 'Failed to load data: $e'));
    }
  }
}
