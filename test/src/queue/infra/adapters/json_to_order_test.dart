import 'package:flutter_queue/src/queue/domain/entities/values_objects/order.dart';
import 'package:flutter_queue/src/queue/infra/adapters/json_to_order.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  
  test('Should convert map to object type order', (){
    final order = JsonToOrder.fromMap({
      'id': 'asdwef',
      'position': 1,
      'status': 'attending',
      'timestamp': '2022-03-31 18:37:30'
    });
    expect(order, isA<Order>());
    expect(order.status, EOrderStatus.attending);
  });
}