import 'package:build_apps_test/features/home/presentation/cubit/homepage_cubit.dart';
import 'package:build_apps_test/features/home/presentation/widgets/custom_appbar.dart';
import 'package:build_apps_test/features/home/presentation/widgets/error_widget.dart';
import 'package:build_apps_test/features/home/presentation/widgets/list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageCubit, HomePageState>(
      builder: (context, state) => Scaffold(
        appBar: CustomAppbar(),
        body: state.when(
          initial: SizedBox.shrink,
          loading: () => Center(child: CircularProgressIndicator()),
          loaded: (posts) => ListWidget(posts: posts),
          error: (e) => CustomErrorWidget(error: e.toString()),
        ),
      ),
    );
  }
}
