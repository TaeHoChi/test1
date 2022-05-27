class User {
  final int id;
  final String name;
  final String imageUrl;
  final bool isOnline;

  User({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.isOnline,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: '익명',
  imageUrl: 'images/girl_dog.jpg',
  isOnline: true,
);

// USERS
final User ironMan = User(
  id: 1,
  name: '익명',
  imageUrl: 'images/girl_dog.jpg',
  isOnline: true,
);
final User captainAmerica = User(
  id: 2,
  name: '익명',
  imageUrl: 'images/girl_dog.jpg',
  isOnline: true,
);
final User hulk = User(
  id: 3,
  name: '익명',
  imageUrl: 'images/girl_dog.jpg',
  isOnline: false,
);
final User scarletWitch = User(
  id: 4,
  name: '익명',
  imageUrl: 'images/girl_dog.jpg',
  isOnline: false,
);
final User spiderMan = User(
  id: 5,
  name: '익명',
  imageUrl: 'images/girl_dog.jpg',
  isOnline: true,
);
final User blackWindow = User(
  id: 6,
  name: '익명',
  imageUrl: 'images/girl_dog.jpg',
  isOnline: false,
);
final User thor = User(
  id: 7,
  name: '익명',
  imageUrl: 'images/girl_dog.jpg',
  isOnline: false,
);
final User captainMarvel = User(
  id: 8,
  name: '익명',
  imageUrl: 'images/girl_dog.jpg',
  isOnline: false,
);
