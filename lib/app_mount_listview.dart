import 'package:flutter/material.dart';
import 'package:mounts_of_the_world/models/mount_model.dart';

class AppMountListView extends StatelessWidget {
  const AppMountListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: mountItems.length,
        itemBuilder: (context, index) {
          final currentMount = mountItems[index];
          return Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(20),
            width: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(currentMount.path),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  currentMount.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  currentMount.location,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
