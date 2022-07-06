class UserDash {
  final int id;
  final String name;
  final String imageUrl;
  final bool isOnline;

  UserDash({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.isOnline,
  });
}

//current user
final UserDash currentUser = UserDash(
  id: 0,
  name: "Dora",
  imageUrl: "assets/dora.png",
  isOnline: true,
);
final UserDash modiji = UserDash(
  id: 1,
  name: "Modi ji",
  imageUrl: "assets/modiji.png",
  isOnline: false,
);
final UserDash homelander = UserDash(
  id: 2,
  name: "Homelander",
  imageUrl: "assets/homelander.jpg",
  isOnline: true,
);
final UserDash xavier = UserDash(
  id: 3,
  name: "Xavier",
  imageUrl: "assets/xavier.jpg",
  isOnline: false,
);
final UserDash william = UserDash(
  id: 4,
  name: "William Butcher",
  imageUrl: "assets/william.jpg",
  isOnline: false,
);
final UserDash spiderman = UserDash(
  id: 5,
  name: "Spider bois",
  imageUrl: "assets/spiderman.jpeg",
  isOnline: true,
);
final UserDash sadboi = UserDash(
  id: 6,
  name: "Sad Boi",
  imageUrl: "assets/sadboi.png",
  isOnline: true,
);
