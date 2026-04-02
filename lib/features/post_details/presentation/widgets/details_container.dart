import 'package:build_apps_test/features/home/data/models/post_model.dart';
import 'package:build_apps_test/features/post_details/presentation/widgets/ids_row_widget.dart';
import 'package:flutter/material.dart';

class DetailsContainer extends StatelessWidget {
  final PostModel post;
  const DetailsContainer({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          IdsRowWidget(post: post),
          SizedBox(height: 25),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: BoxBorder.all(color: Color(0xFF76ABAE)),
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              spacing: 12,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  post.title,
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                Text(
                  post.body,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
