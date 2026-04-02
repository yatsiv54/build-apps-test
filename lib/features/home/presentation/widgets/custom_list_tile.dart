import 'package:build_apps_test/features/home/data/models/post_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomListTile extends StatelessWidget {
  final PostModel post;
  const CustomListTile({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () {
        context.pushNamed('details', extra: post);
      },
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Color(0xFF76ABAE),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          spacing: 15,
          children: [
            Text(
              post.id.toString(),
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Expanded(
              child: Text(
                post.title,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
