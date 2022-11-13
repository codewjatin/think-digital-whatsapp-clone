import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/chat.dart';
import 'package:whatsapp_clone/utils/data.dart';
import '../components/fab.dart';

final data = getData();

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: appBar(),
        floatingActionButton: floatingActionButton(Icons.message),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            final user = data[index];
            return chatView(
              name: user["name"],
              messageData: user["messageData"],
              imageUrl: user["imageUrl"],
              unreadCount: user["unreadCount"],
            );
          },
        ),
      ),
    );
  }
}

PreferredSizeWidget appBar() {
  return AppBar(
    title: const Text(
      "WhatsApp",
      style: TextStyle(
        fontWeight: FontWeight.w600,
      ),
    ),
    centerTitle: false,
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.search),
      ),
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.more_vert_rounded),
      )
    ],
    bottom: const TabBar(
      tabs: [
        Tab(text: "CHAT"),
        Tab(text: "CALLS"),
        Tab(text: "STATUS"),
      ],
      indicatorWeight: 4,
      indicatorColor: Colors.white,
    ),
  );
}
