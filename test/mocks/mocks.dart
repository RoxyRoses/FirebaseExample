import 'package:flutter_queue/src/queue/domain/entities/queue_entity.dart';
import 'package:flutter_queue/src/queue/domain/repositories/queue_repository.dart';
import 'package:flutter_queue/src/queue/infra/datasources/queue_datasource.dart';
import 'package:mocktail/mocktail.dart';

class QueuesRepositoryMock extends Mock implements IQueueRepository{}
class QueueEntityMock extends Mock implements QueueEntity{}
class IDataSourceMock extends Mock implements IQueueDatasource{}
