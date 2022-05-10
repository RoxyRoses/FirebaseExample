class Order {
  final String id;
  final int position;
  final DateTime timestamp;
  final Enum status;

  Order({required this.id, required this.position, required this.timestamp, required this.status});
}

enum EOrderStatus { waiting, attending, notAnswered }
