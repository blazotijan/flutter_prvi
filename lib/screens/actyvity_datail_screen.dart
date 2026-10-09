import 'package:flutter/material.dart';
import '../moodels/actyvity.dart';

class ActivityDetailScreen extends StatelessWidget {
  final Activity activity;
  final bool isJoined;

  const ActivityDetailScreen({super.key, required this.activity});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(activity.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                activity.icon,
                size: 100,
                color: Colors.grey[700],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.share),
                    onPressed: () {
                      // Implement share functionality here
                    },
                  ),
                ],
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}