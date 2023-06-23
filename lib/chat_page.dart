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
        title: Row(
          children: [
            Container(
              width: 44,
              height: 44,
              margin: const EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(242, 248, 255, 1),
                  borderRadius: BorderRadius.circular(50)),
              child: const Icon(Icons.android,
                  size: 24, color: Color.fromRGBO(0, 112, 240, 1)),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Canal de texto",
                    style: TextStyle(
                        color: Color.fromRGBO(32, 35, 37, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w700)),
                Row(
                  children: [
                    Container(
                        width: 10,
                        height: 10,
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(125, 222, 134, 1),
                            borderRadius: BorderRadius.circular(50))),
                    const Text(
                      "Siempre activo",
                      style: TextStyle(
                          color: Color.fromRGBO(114, 119, 122, 1),
                          fontSize: 14),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          color: const Color.fromRGBO(254, 254, 254, 1),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView(
                  children: messages.map((message) => Text(message)).toList(),
                ),
              ),
              Row(children: [
                Expanded(
                  child: TextField(
                    controller: textFieldController,
                    onSubmitted: (value) {
                      setState(() {
                        messages.add(value);
                      });
                      textFieldController.clear();
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      labelText: 'escribe un mensaje...',
                    ),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.only(left: 8),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(48, 52, 55, 1),
                        borderRadius: BorderRadius.circular(50)),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          messages.add(textFieldController.text);
                        });
                        textFieldController.clear();
                      },
                      icon: const Icon(Icons.send),
                      color: Colors.white,
                    ))
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
