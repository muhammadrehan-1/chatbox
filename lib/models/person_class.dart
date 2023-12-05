
class Person {
  const Person(
      {required this.firstName,
      required this.imageUrl,
      required this.lastMessage,
        required this.lastName,
      required this.lastMessageTime});

  final String imageUrl;
  final String firstName;
  final String lastName;
  final String lastMessage;
  final String lastMessageTime;
}
