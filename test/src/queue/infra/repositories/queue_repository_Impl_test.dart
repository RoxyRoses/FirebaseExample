import 'package:flutter_queue/src/queue/domain/entities/queue_entity.dart';
import 'package:flutter_queue/src/queue/infra/repositories/queue_repository_Impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../mocks/mocks.dart';

void main() {
  test(
    'Should return a stream of QueueEntity ',
    () {
      final datasource = IDataSourceMock();

      when(() => datasource.getAllQueues()).thenAnswer(
        (_) => Stream.value(
          [
            {
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
            }
          ],
        ),
      );

      final repository = QueueRepositoryImpl(datasource);

      final result = repository.getAllQueues();

      expect(result, emits(isA<List<QueueEntity>>()));
    },
  );
}
