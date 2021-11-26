import 'package:botteld_clone_flutter/Models/chat_message.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors, must_be_immutable
class ChatDetailPage extends StatefulWidget {
  String name;

  String imageUrl;
  // ignore: use_key_in_widget_constructors
  ChatDetailPage({
    required this.name,
    required this.imageUrl,
  });
  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hello, Will", messageType: "receiver"),
    ChatMessage(messageContent: "How have you been?", messageType: "receiver"),
    ChatMessage(
        messageContent: "Hey Kriss, I am doing fine dude. wbu?",
        messageType: "sender"),
    ChatMessage(messageContent: "ehhhh, doing OK.", messageType: "receiver"),
    ChatMessage(
        messageContent: "Is there any thing wrong?", messageType: "sender"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          flexibleSpace: SafeArea(
            child: Container(
              padding: const EdgeInsets.only(right: 16),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "<https://randomuser.me/api/portraits/men/5.jpg>"),
                    maxRadius: 20,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        const Text(
                          "Kriss Benwat",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Online",
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  const Icon(
                    Icons.settings,
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Stack(
          children: [
            ListView.builder(
              itemCount: messages.length,
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 10, bottom: 10),
                  child: Align(
                    alignment: (messages[index].messageType == "receiver"
                        ? Alignment.topLeft
                        : Alignment.topRight),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: (messages[index].messageType == "receiver"
                            ? Colors.grey.shade200
                            : Colors.blue[200]),
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        messages[index].messageContent,
                        style: const TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                );
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                child: Row(
                  children: <Widget>[
                    Material(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 1.0),
                        child: IconButton(
                          icon: const Icon(Icons.face),
                          // color: Palette.primaryColor,
                          onPressed: () {},
                        ),
                      ),
                      color: Colors.white,
                    ),

                    // Text input
                    // ignore: prefer_const_constructors
                    Flexible(
                      child: const TextField(
                        style: TextStyle(fontSize: 15.0),
                        // controller: textEditingController,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Type a message',
                          // hintStyle: TextStyle(color: Palette.greyColor),
                        ),
                      ),
                    ),

                    // Send Message Button
                    Material(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: IconButton(
                          icon: const Icon(Icons.send),
                          onPressed: () => {},
                          // color: Palette.primaryColor,
                        ),
                      ),
                      color: Colors.white,
                    ),
                  ],
                ),
                width: double.infinity,
                height: 50.0,
              ),
            )
          ],
        ));
  }
}
