import 'package:build_apps_test/features/home/data/models/post_model.dart';
import 'package:build_apps_test/features/home/presentation/cubit/homepage_cubit.dart';
import 'package:build_apps_test/features/home/presentation/pages/home_page.dart';
import 'package:build_apps_test/features/post_details/presentation/pages/post_details_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => BlocProvider(
        create: (context) => GetIt.I<HomePageCubit>()..loadData(),
        child: HomePage(),
      ),
    ),
    GoRoute(
      path: '/details',
      name: 'details',
      builder: (context, state) {
        final post = state.extra as PostModel;
        return PostDetailsPage(post: post);
      },
    ),
  ],
);
