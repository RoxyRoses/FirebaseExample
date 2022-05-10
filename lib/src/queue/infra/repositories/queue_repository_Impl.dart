import 'package:flutter_queue/src/queue/domain/entities/queue_entity.dart';
import 'package:flutter_queue/src/queue/domain/repositories/queue_repository.dart';
import 'package:flutter_queue/src/queue/infra/adapters/json_to_queue.dart';
import 'package:flutter_queue/src/queue/infra/datasources/queue_datasource.dart';

class QueueRepositoryImpl implements IQueueRepository{

  final IQueueDatasource datasource;

  QueueRepositoryImpl(this.datasource);

  @override
  Stream<List<QueueEntity>> getAllQueues() {
    final stream = datasource.getAllQueues();

    return stream.map(_convert);
  }

  List<QueueEntity> _convert(List<Map<dynamic, dynamic>> list){
    return list.map(JsonToQueue.fromMap).toList();
  }

}