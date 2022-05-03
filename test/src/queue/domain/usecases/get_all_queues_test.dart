import 'package:flutter_queue/src/queue/domain/entities/queue_entity.dart';
import 'package:flutter_queue/src/queue/domain/repositories/queue_repository.dart';
import 'package:flutter_queue/src/queue/domain/usecases/get_all_queues.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class QueuesRepositoryMock extends Mock implements IQueueRepository{}
class QueueEntityMock extends Mock implements QueueEntity{}

void main() {
  test('Should return a list of queueEntity', (() {

    final repository = QueuesRepositoryMock();
    final entity = QueueEntityMock();
    when(() => repository.getAllQueues()).thenAnswer((invocation) => Stream.value([entity]));
    
    final usecase = GetAllQueues(repository: repository);

    final result = usecase.call();

    expect(result, matcher);


  }));
}