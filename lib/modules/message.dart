import 'userDash.dart';

class Message {
  final UserDash sender;
  final String time;
  final String text;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.unread,
  });
}

//chat which is shown on the home screen
List<Message> chats = [
  Message(
    sender: modiji,
    time: "4.29 PM",
    text: "Hey dude Modi in the house ",
    unread: true,
  ),
  Message(
    sender: homelander,
    time: "4.00PM",
    text: "Hey dude Home lander this side , wanna have some parryyyyyyy!!!!!! ",
    unread: false,
  ),
  Message(
    sender: xavier,
    time: "5.02 PM",
    text: "Are you comedy me ,I am so naturaly funny becuse my life is joke",
    unread: true,
  ),
  Message(
      sender: william,
      time: "5.29 PM",
      text: "William This side oiiiiii, you want more compund v  ",
      unread: false),
  Message(
    sender: spiderman,
    time: "1.29 PM",
    text: "hey dude , spider guy here , let's talk  ",
    unread: true,
  ),
  Message(
    sender: sadboi,
    time: "5.09 PM",
    text: "well done your team got the victory",
    unread: false,
  )
];
// Every one's personal chat
List<Message> messages = [
  Message(
    sender: modiji,
    time: "4.29 PM",
    text: "Hey dude Modi in the house ",
    unread: true,
  ),
  Message(
    sender: homelander,
    time: "4.00PM",
    text: "Hey dude Home lander this side , wanna have some parryyyyyyy!!!!!! ",
    unread: false,
  ),
  Message(
    sender: xavier,
    time: "5.02 PM",
    text: "Are you comedy me ,I am so naturaly funny becuse my life is joke",
    unread: true,
  ),
  Message(
      sender: william,
      time: "5.29 PM",
      text: "William This side oiiiiii, you want more compund v  ",
      unread: false),
  Message(
    sender: spiderman,
    time: "1.29 PM",
    text: "hey dude , spider guy here , let's talk  ",
    unread: true,
  ),
  Message(
    sender: sadboi,
    time: "5.09 PM",
    text: "well done your team got the victory",
    unread: false,
  ),
];
