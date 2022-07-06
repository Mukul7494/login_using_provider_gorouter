import 'package:flutter/material.dart';

import '../modules/userDash.dart';
// import '../modules/message.dart';

class ChatScreen extends StatefulWidget {
  final UserDash user;
  ChatScreen(this.user);
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(226, 240, 236, 236),
      appBar: AppBar(
        centerTitle: true,
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(children: [
            TextSpan(
              text: widget.user.name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const TextSpan(text: "\n"),
            const TextSpan(text: "Online"),
          ]),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.80,
                        ),
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                            )
                          ],
                        ),
                        child: const Text("parryyy to banti haa!!!!!!!!!!"),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topRight,
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width * 0.80,
                        ),
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          // color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                            )
                          ],
                        ),
                        child: const Text(
                          "hello frnd lets do some fun",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
                // Container(
                //   child: Text("a"),
                // ),
                // Container(
                //   child: Text("d"),
                // ),
                // Container(
                //   child: Text("d"),
                // ),
              ],
            ),
          ),
          Container(
            child: const Text("Send message text area "),
          )
        ],
      ),
    );
  }
}
