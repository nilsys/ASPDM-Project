import 'package:aspdm_project/core/either.dart';
import 'package:aspdm_project/core/ilist.dart';
import 'package:aspdm_project/domain/failures/failures.dart';
import 'package:aspdm_project/domain/entities/task.dart';

abstract class HomeRepository {
  Future<Either<Failure, IList<Task>>> getTasks();
}
