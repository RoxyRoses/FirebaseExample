class Order {
  final int position;
  final DateTime timestamp;

  Order({required this.position, required this.timestamp});
}

enum EOrderStatus { waiting, attending, notAnswered }
