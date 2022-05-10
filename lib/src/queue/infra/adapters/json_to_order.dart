import 'package:flutter_queue/src/queue/domain/entities/values_objects/order.dart';

class JsonToOrder {
  static Order fromMap(dynamic json) {
    return Order(
      id: json['id'],
      position: json['position'],
      timestamp: DateTime.parse(json['timestamp']),
      status: EOrderStatus.values.firstWhere((element) {return element.name == json['status'];}),
    );
  }
}
