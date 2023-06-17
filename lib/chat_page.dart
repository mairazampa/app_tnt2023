import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<String> messages = [];

  @override
  Widget build(BuildContext context) {
    TextEditingController textFieldController = TextEditingController();

    return Scaffold(
        appBar: AppBar(
          title: const Text("Chat Page"),
          backgroundColor: const Color.fromRGBO(0, 0, 0, 0.5),
        ),
        body: Container(
            color: const Color.fromRGBO(254, 254, 254, 1),
            padding: const EdgeInsets.only(top: 60, left: 24, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("CHAT CHAT CHAT",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(48, 52, 55, 1))),
                TextField(
                  controller: textFieldController,
                  onSubmitted: (value) {
                    setState(() {
                      messages.add(value);
                    });
                    textFieldController.clear();
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'escribe un mensaje...',
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: messages.map((e) => Text(e)).toList(),
                  ),
                )
              ],
            )));
  }
}
