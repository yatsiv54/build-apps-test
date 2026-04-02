import 'package:build_apps_test/features/home/data/models/post_model.dart';
import 'package:build_apps_test/features/home/data/repositories/post_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'homepage_state.dart';
part 'homepage_cubit.freezed.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageState.initial());

  void loadData() async {
    emit(HomePageState.loading());
    try {
      final posts = await PostRepository().getPosts();
      emit(HomePageState.loaded(posts: posts));
    } catch (e) {
      emit(HomePageState.error(error: e.toString()));
    }
  }
}
