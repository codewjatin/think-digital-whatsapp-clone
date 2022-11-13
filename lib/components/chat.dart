import 'package:flutter/material.dart';

Widget chatView({
  required String name,
  required Map<String, dynamic> messageData,
  required String imageUrl,
  required int unreadCount,
}) {
  return ListTile(
    onTap: () {},
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
    leading: ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(100)),
      child: Image.network(imageUrl),
    ),
    title: Text(
      name,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
    ),
    subtitle: Text(
      messageData["content"],
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    ),
    trailing: SizedBox(
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            messageData["timeStamp"].toString().toUpperCase(),
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: unreadCount > 0 ? Colors.green : Colors.grey.shade600,
            ),
          ),
          const SizedBox(height: 2),
          SizedBox(
            height: 22,
            child: unreadCount > 0
                ? CircleAvatar(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    child: Text(
                      "$unreadCount",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  )
                : const Text(""),
          ),
        ],
      ),
    ),
  );
}
