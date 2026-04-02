import 'package:build_apps_test/features/home/data/models/post_model.dart';
import 'package:flutter/material.dart';

class IdsRowWidget extends StatelessWidget {
  final PostModel post;
  const IdsRowWidget({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('User ID: ', style: Theme.of(context).textTheme.displaySmall),
        _IdContainer(id: post.userId.toString()),
        SizedBox(width: 15),
        Text('Post ID: ', style: Theme.of(context).textTheme.displaySmall),
        _IdContainer(id: post.id.toString()),
      ],
    );
  }
}

class _IdContainer extends StatelessWidget {
  final String id;
  const _IdContainer({required this.id});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF76ABAE),
        shape: BoxShape.circle,

        border: BoxBorder.all(color: Color.fromARGB(255, 148, 250, 255)),
      ),
      padding: EdgeInsets.all(16),
      child: Text(id, style: Theme.of(context).textTheme.displayLarge),
    );
  }
}
