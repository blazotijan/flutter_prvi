import 'package:flutter/material.dart';
import '../models/activity.dart';
import 'activity_detail_screen.dart';

class ActivitylistScreen extends StatefulWidget {
  const ActivitylistScreen({super.key});

  @override
  State<ActivitylistScreen> createState() => _ActivitylistScreenState();
}

class _ActivitylistScreenState extends State<ActivitylistScreen> {
  final Set<String> joined = {};

  Future<void> openDetailScreen(Activity activity) async {
    final result = await Navigator.push<bool>(
      context,
      MaterialPageRoute(
        builder: (context) => ActivityDetailScreen(activity: activity, isJoined: joined.contains(activity.name)),
      ),
    );

    if (result != null) {
      setState(() {
        joined.add(activity.name);
      });
    }
  } 

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Activity extends StatelessWidget {
  final Activity activity;
  final bool isJoined;
  final VoidCallback onOpen;
  
  const Activity({
    super.key
    required this.activity,
    required this.isJoined,
    required this.onOpen,});

  @override
  Widget build(BuildContext context) {
    return Constaliner(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(activity.name, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Text(activity.description),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: onOpen,
            child: Text(isJoined ? 'Joined' : 'Join'),
          ),
        ],
      ),
    );
  }
}