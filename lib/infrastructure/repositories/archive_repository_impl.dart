import 'package:aspdm_project/core/either.dart';
import 'package:aspdm_project/core/ilist.dart';
import 'package:aspdm_project/domain/failures/failures.dart';
import 'package:aspdm_project/core/monad_task.dart';
import 'package:aspdm_project/domain/entities/task.dart';
import 'package:aspdm_project/domain/failures/server_failure.dart';
import 'package:aspdm_project/domain/repositories/archive_repository.dart';
import 'package:aspdm_project/infrastructure/datasources/remote_data_source.dart';

class ArchiveRepositoryImpl extends ArchiveRepository {
  final RemoteDataSource _dataSource;

  ArchiveRepositoryImpl(this._dataSource);

  @override
  Future<Either<Failure, IList<Task>>> getArchivedTasks() {
    return MonadTask(() => _dataSource.getArchivedTasks())
        .map((value) => value.map((e) => e.toTask()).toIList())
        .attempt((e) => ServerFailure.unexpectedError(e))
        .run();
  }
}
