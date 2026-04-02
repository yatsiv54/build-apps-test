import 'package:build_apps_test/features/home/data/models/post_model.dart';
import 'package:build_apps_test/features/post_details/presentation/widgets/details_container.dart';
import 'package:flutter/material.dart';

class PostDetailsPage extends StatelessWidget {
  final PostModel post;
  const PostDetailsPage({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Post details',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: DetailsContainer(post: post),
    );
  }
}
