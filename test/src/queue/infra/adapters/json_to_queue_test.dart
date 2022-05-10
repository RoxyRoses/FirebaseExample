import 'package:flutter_queue/src/queue/domain/entities/queue_entity.dart';
import 'package:flutter_queue/src/queue/domain/entities/values_objects/order.dart';
import 'package:flutter_queue/src/queue/infra/adapters/json_to_queue.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  test('Should convert map to object type queueEntity', () {
    final queue = JsonToQueue.fromMap({
      'id': 'asdwef',
      'title': 'title',
      'priority': 1,
      'abbr': 'sd',
      'orders': [
        {
          'id': 'asdwef',
          'position': 1,
          'status': 'attending',
          'timestamp': '2022-03-31 18:37:30'
        }
      ],
    });
    expect(queue, isA<QueueEntity>());
    expect(queue.title, 'title');
    expect(queue.priority, 1);
    expect(queue.orders.first.status, EOrderStatus.attending);
  });
}
