import 'package:flutter_queue/src/queue/domain/entities/queue_entity.dart';

import '../repositories/queue_repository.dart';

abstract class IGetAllQueues {
  Stream<List<QueueEntity>>
      call(); // stream que retorna uma lista de queues, deve ser stream pois future recebe apenas uma vez, stream
  //atualiza toda vez que tiver uma alteração.
}

class GetAllQueues implements IGetAllQueues {
  final IQueueRepository repository;

  GetAllQueues({
    required this.repository,
  });

  @override
  Stream<List<QueueEntity>> call() {
        return repository.getAllQueues();
  }
}
