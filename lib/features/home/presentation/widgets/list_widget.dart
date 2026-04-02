import 'package:build_apps_test/features/home/data/models/post_model.dart';
import 'package:build_apps_test/features/home/presentation/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';

class ListWidget extends StatefulWidget {
  final List<PostModel> posts;
  const ListWidget({super.key, required this.posts});

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ListView.separated(
        itemBuilder: (context, index) =>
            CustomListTile(post: widget.posts[index]),
        itemCount: widget.posts.length,
        separatorBuilder: (context, index) => SizedBox(height: 15),
      ),
    );
  }
}
