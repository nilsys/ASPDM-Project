import 'package:aspdm_project/domain/failures/task_failure.dart';
import 'package:aspdm_project/domain/values/unique_id.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("TaskFailure tests", () {
    test("ServerFailure equalities", () {
      expect(TaskFailure.invalidId(), equals(TaskFailure.invalidId()));
      expect(TaskFailure.newCommentFailure(),
          equals(TaskFailure.newCommentFailure()));
      expect(TaskFailure.deleteCommentFailure(UniqueId("error_string")),
          equals(TaskFailure.deleteCommentFailure(UniqueId("error_string"))));
      expect(TaskFailure.editCommentFailure(UniqueId("error_string")),
          equals(TaskFailure.editCommentFailure(UniqueId("error_string"))));
      expect(TaskFailure.likeFailure(UniqueId("error_string")),
          equals(TaskFailure.likeFailure(UniqueId("error_string"))));
      expect(TaskFailure.dislikeFailure(UniqueId("error_string")),
          equals(TaskFailure.dislikeFailure(UniqueId("error_string"))));
      expect(TaskFailure.archiveFailure(UniqueId("error_string")),
          equals(TaskFailure.archiveFailure(UniqueId("error_string"))));
      expect(TaskFailure.unarchiveFailure(UniqueId("error_string")),
          equals(TaskFailure.unarchiveFailure(UniqueId("error_string"))));
      expect(TaskFailure.itemCompleteFailure(UniqueId("error_string")),
          equals(TaskFailure.itemCompleteFailure(UniqueId("error_string"))));

      expect(TaskFailure.invalidId(),
          isNot(equals(TaskFailure.newCommentFailure())));
      expect(
          TaskFailure.invalidId(),
          isNot(equals(
              TaskFailure.deleteCommentFailure(UniqueId("error_string")))));
      expect(
          TaskFailure.invalidId(),
          isNot(equals(
              TaskFailure.editCommentFailure(UniqueId("error_string")))));
      expect(TaskFailure.invalidId(),
          isNot(equals(TaskFailure.likeFailure(UniqueId("error_string")))));
      expect(TaskFailure.invalidId(),
          isNot(equals(TaskFailure.dislikeFailure(UniqueId("error_string")))));
      expect(TaskFailure.invalidId(),
          isNot(equals(TaskFailure.archiveFailure(UniqueId("error_string")))));
      expect(
          TaskFailure.invalidId(),
          isNot(
              equals(TaskFailure.unarchiveFailure(UniqueId("error_string")))));
      expect(
          TaskFailure.invalidId(),
          isNot(equals(
              TaskFailure.itemCompleteFailure(UniqueId("error_string")))));

      expect(TaskFailure.newCommentFailure(),
          isNot(equals(TaskFailure.invalidId())));
      expect(
          TaskFailure.newCommentFailure(),
          isNot(equals(
              TaskFailure.deleteCommentFailure(UniqueId("error_string")))));
      expect(
          TaskFailure.newCommentFailure(),
          isNot(equals(
              TaskFailure.editCommentFailure(UniqueId("error_string")))));
      expect(TaskFailure.newCommentFailure(),
          isNot(equals(TaskFailure.likeFailure(UniqueId("error_string")))));
      expect(TaskFailure.newCommentFailure(),
          isNot(equals(TaskFailure.dislikeFailure(UniqueId("error_string")))));
      expect(TaskFailure.newCommentFailure(),
          isNot(equals(TaskFailure.archiveFailure(UniqueId("error_string")))));
      expect(
          TaskFailure.newCommentFailure(),
          isNot(
              equals(TaskFailure.unarchiveFailure(UniqueId("error_string")))));
      expect(
          TaskFailure.newCommentFailure(),
          isNot(equals(
              TaskFailure.itemCompleteFailure(UniqueId("error_string")))));

      expect(TaskFailure.deleteCommentFailure(UniqueId("error_string")),
          isNot(equals(TaskFailure.invalidId())));
      expect(TaskFailure.deleteCommentFailure(UniqueId("error_string")),
          isNot(equals(TaskFailure.newCommentFailure())));
      expect(
          TaskFailure.deleteCommentFailure(UniqueId("error_string")),
          isNot(equals(
              TaskFailure.editCommentFailure(UniqueId("error_string")))));
      expect(TaskFailure.deleteCommentFailure(UniqueId("error_string")),
          isNot(equals(TaskFailure.likeFailure(UniqueId("error_string")))));
      expect(TaskFailure.deleteCommentFailure(UniqueId("error_string")),
          isNot(equals(TaskFailure.dislikeFailure(UniqueId("error_string")))));
      expect(TaskFailure.deleteCommentFailure(UniqueId("error_string")),
          isNot(equals(TaskFailure.archiveFailure(UniqueId("error_string")))));
      expect(
          TaskFailure.deleteCommentFailure(UniqueId("error_string")),
          isNot(
              equals(TaskFailure.unarchiveFailure(UniqueId("error_string")))));
      expect(
          TaskFailure.deleteCommentFailure(UniqueId("error_string")),
          isNot(equals(
              TaskFailure.itemCompleteFailure(UniqueId("error_string")))));

      expect(TaskFailure.editCommentFailure(UniqueId("error_string")),
          isNot(equals(TaskFailure.invalidId())));
      expect(TaskFailure.editCommentFailure(UniqueId("error_string")),
          isNot(equals(TaskFailure.newCommentFailure())));
      expect(
          TaskFailure.editCommentFailure(UniqueId("error_string")),
          isNot(equals(
              TaskFailure.deleteCommentFailure(UniqueId("error_string")))));
      expect(TaskFailure.editCommentFailure(UniqueId("error_string")),
          isNot(equals(TaskFailure.likeFailure(UniqueId("error_string")))));
      expect(TaskFailure.editCommentFailure(UniqueId("error_string")),
          isNot(equals(TaskFailure.dislikeFailure(UniqueId("error_string")))));
      expect(TaskFailure.editCommentFailure(UniqueId("error_string")),
          isNot(equals(TaskFailure.archiveFailure(UniqueId("error_string")))));
      expect(
          TaskFailure.editCommentFailure(UniqueId("error_string")),
          isNot(
              equals(TaskFailure.unarchiveFailure(UniqueId("error_string")))));
      expect(
          TaskFailure.editCommentFailure(UniqueId("error_string")),
          isNot(equals(
              TaskFailure.itemCompleteFailure(UniqueId("error_string")))));

      expect(TaskFailure.likeFailure(UniqueId("error_string")),
          isNot(equals(TaskFailure.invalidId())));
      expect(TaskFailure.likeFailure(UniqueId("error_string")),
          isNot(equals(TaskFailure.newCommentFailure())));
      expect(
          TaskFailure.likeFailure(UniqueId("error_string")),
          isNot(equals(
              TaskFailure.deleteCommentFailure(UniqueId("error_string")))));
      expect(
          TaskFailure.likeFailure(UniqueId("error_string")),
          isNot(equals(
              TaskFailure.editCommentFailure(UniqueId("error_string")))));
      expect(TaskFailure.likeFailure(UniqueId("error_string")),
          isNot(equals(TaskFailure.dislikeFailure(UniqueId("error_string")))));
      expect(TaskFailure.likeFailure(UniqueId("error_string")),
          isNot(equals(TaskFailure.archiveFailure(UniqueId("error_string")))));
      expect(
          TaskFailure.likeFailure(UniqueId("error_string")),
          isNot(
              equals(TaskFailure.unarchiveFailure(UniqueId("error_string")))));
      expect(
          TaskFailure.likeFailure(UniqueId("error_string")),
          isNot(equals(
              TaskFailure.itemCompleteFailure(UniqueId("error_string")))));

      expect(TaskFailure.dislikeFailure(UniqueId("error_string")),
          isNot(equals(TaskFailure.invalidId())));
      expect(TaskFailure.dislikeFailure(UniqueId("error_string")),
          isNot(equals(TaskFailure.newCommentFailure())));
      expect(
          TaskFailure.dislikeFailure(UniqueId("error_string")),
          isNot(equals(
              TaskFailure.deleteCommentFailure(UniqueId("error_string")))));
      expect(
          TaskFailure.dislikeFailure(UniqueId("error_string")),
          isNot(equals(
              TaskFailure.editCommentFailure(UniqueId("error_string")))));
      expect(TaskFailure.dislikeFailure(UniqueId("error_string")),
          isNot(equals(TaskFailure.likeFailure(UniqueId("error_string")))));
      expect(TaskFailure.dislikeFailure(UniqueId("error_string")),
          isNot(equals(TaskFailure.archiveFailure(UniqueId("error_string")))));
      expect(
          TaskFailure.dislikeFailure(UniqueId("error_string")),
          isNot(
              equals(TaskFailure.unarchiveFailure(UniqueId("error_string")))));
      expect(
          TaskFailure.dislikeFailure(UniqueId("error_string")),
          isNot(equals(
              TaskFailure.itemCompleteFailure(UniqueId("error_string")))));

      expect(TaskFailure.archiveFailure(UniqueId("error_string")),
          isNot(equals(TaskFailure.invalidId())));
      expect(TaskFailure.archiveFailure(UniqueId("error_string")),
          isNot(equals(TaskFailure.newCommentFailure())));
      expect(
          TaskFailure.archiveFailure(UniqueId("error_string")),
          isNot(equals(
              TaskFailure.deleteCommentFailure(UniqueId("error_string")))));
      expect(
          TaskFailure.archiveFailure(UniqueId("error_string")),
          isNot(equals(
              TaskFailure.editCommentFailure(UniqueId("error_string")))));
      expect(TaskFailure.archiveFailure(UniqueId("error_string")),
          isNot(equals(TaskFailure.likeFailure(UniqueId("error_string")))));
      expect(TaskFailure.archiveFailure(UniqueId("error_string")),
          isNot(equals(TaskFailure.dislikeFailure(UniqueId("error_string")))));
      expect(
          TaskFailure.archiveFailure(UniqueId("error_string")),
          isNot(
              equals(TaskFailure.unarchiveFailure(UniqueId("error_string")))));
      expect(
          TaskFailure.archiveFailure(UniqueId("error_string")),
          isNot(equals(
              TaskFailure.itemCompleteFailure(UniqueId("error_string")))));

      expect(TaskFailure.unarchiveFailure(UniqueId("error_string")),
          isNot(equals(TaskFailure.invalidId())));
      expect(TaskFailure.unarchiveFailure(UniqueId("error_string")),
          isNot(equals(TaskFailure.newCommentFailure())));
      expect(
          TaskFailure.unarchiveFailure(UniqueId("error_string")),
          isNot(equals(
              TaskFailure.deleteCommentFailure(UniqueId("error_string")))));
      expect(
          TaskFailure.unarchiveFailure(UniqueId("error_string")),
          isNot(equals(
              TaskFailure.editCommentFailure(UniqueId("error_string")))));
      expect(TaskFailure.unarchiveFailure(UniqueId("error_string")),
          isNot(equals(TaskFailure.likeFailure(UniqueId("error_string")))));
      expect(TaskFailure.unarchiveFailure(UniqueId("error_string")),
          isNot(equals(TaskFailure.dislikeFailure(UniqueId("error_string")))));
      expect(TaskFailure.unarchiveFailure(UniqueId("error_string")),
          isNot(equals(TaskFailure.archiveFailure(UniqueId("error_string")))));
      expect(
          TaskFailure.unarchiveFailure(UniqueId("error_string")),
          isNot(equals(
              TaskFailure.itemCompleteFailure(UniqueId("error_string")))));

      expect(TaskFailure.itemCompleteFailure(UniqueId("error_string")),
          isNot(equals(TaskFailure.invalidId())));
      expect(TaskFailure.itemCompleteFailure(UniqueId("error_string")),
          isNot(equals(TaskFailure.newCommentFailure())));
      expect(
          TaskFailure.itemCompleteFailure(UniqueId("error_string")),
          isNot(equals(
              TaskFailure.deleteCommentFailure(UniqueId("error_string")))));
      expect(
          TaskFailure.itemCompleteFailure(UniqueId("error_string")),
          isNot(equals(
              TaskFailure.editCommentFailure(UniqueId("error_string")))));
      expect(TaskFailure.itemCompleteFailure(UniqueId("error_string")),
          isNot(equals(TaskFailure.likeFailure(UniqueId("error_string")))));
      expect(TaskFailure.itemCompleteFailure(UniqueId("error_string")),
          isNot(equals(TaskFailure.dislikeFailure(UniqueId("error_string")))));
      expect(TaskFailure.itemCompleteFailure(UniqueId("error_string")),
          isNot(equals(TaskFailure.archiveFailure(UniqueId("error_string")))));
      expect(
          TaskFailure.itemCompleteFailure(UniqueId("error_string")),
          isNot(
              equals(TaskFailure.unarchiveFailure(UniqueId("error_string")))));
    });

    test("when returns the result of the correct case", () {
      final r1 = TaskFailure.invalidId().when(
        () => true,
        () => false,
        (commentId) => false,
        (commentId) => false,
        (commentId) => false,
        (commentId) => false,
        (taskId) => false,
        (taskId) => false,
        (itemId) => false,
      );
      final r2 = TaskFailure.newCommentFailure().when(
        () => false,
        () => true,
        (commentId) => false,
        (commentId) => false,
        (commentId) => false,
        (commentId) => false,
        (taskId) => false,
        (taskId) => false,
        (itemId) => false,
      );
      final r3 = TaskFailure.editCommentFailure(UniqueId("commentId")).when(
        () => false,
        () => false,
        (commentId) => true,
        (commentId) => false,
        (commentId) => false,
        (commentId) => false,
        (taskId) => false,
        (taskId) => false,
        (itemId) => false,
      );
      final r4 = TaskFailure.deleteCommentFailure(UniqueId("commentId")).when(
        () => false,
        () => false,
        (commentId) => false,
        (commentId) => true,
        (commentId) => false,
        (commentId) => false,
        (taskId) => false,
        (taskId) => false,
        (itemId) => false,
      );
      final r5 = TaskFailure.likeFailure(UniqueId("commentId")).when(
        () => false,
        () => false,
        (commentId) => false,
        (commentId) => false,
        (commentId) => true,
        (commentId) => false,
        (taskId) => false,
        (taskId) => false,
        (itemId) => false,
      );
      final r6 = TaskFailure.dislikeFailure(UniqueId("commentId")).when(
        () => false,
        () => false,
        (commentId) => false,
        (commentId) => false,
        (commentId) => false,
        (commentId) => true,
        (taskId) => false,
        (taskId) => false,
        (itemId) => false,
      );
      final r7 = TaskFailure.archiveFailure(UniqueId("taskId")).when(
        () => false,
        () => false,
        (commentId) => false,
        (commentId) => false,
        (commentId) => false,
        (commentId) => false,
        (taskId) => true,
        (taskId) => false,
        (itemId) => false,
      );
      final r8 = TaskFailure.unarchiveFailure(UniqueId("taskId")).when(
        () => false,
        () => false,
        (commentId) => false,
        (commentId) => false,
        (commentId) => false,
        (commentId) => false,
        (taskId) => false,
        (taskId) => true,
        (itemId) => false,
      );
      final r9 = TaskFailure.itemCompleteFailure(UniqueId("itemId")).when(
        () => false,
        () => false,
        (commentId) => false,
        (commentId) => false,
        (commentId) => false,
        (commentId) => false,
        (taskId) => false,
        (taskId) => false,
        (itemId) => true,
      );

      expect(r1, isTrue);
      expect(r2, isTrue);
      expect(r3, isTrue);
      expect(r4, isTrue);
      expect(r5, isTrue);
      expect(r6, isTrue);
      expect(r7, isTrue);
      expect(r8, isTrue);
      expect(r9, isTrue);
    });

    test("to string returns the correct representation", () {
      expect(TaskFailure.invalidId().toString(),
          equals("TaskFailure: invalid id"));
      expect(TaskFailure.newCommentFailure().toString(),
          equals("TaskFailure: new comment failure"));
      expect(TaskFailure.editCommentFailure(UniqueId("commentId")).toString(),
          equals("TaskFailure: edit comment UniqueId(commentId) failure"));
      expect(TaskFailure.deleteCommentFailure(UniqueId("commentId")).toString(),
          equals("TaskFailure: delete comment UniqueId(commentId) failure"));
      expect(TaskFailure.likeFailure(UniqueId("commentId")).toString(),
          equals("TaskFailure: like comment UniqueId(commentId) failure"));
      expect(TaskFailure.dislikeFailure(UniqueId("commentId")).toString(),
          equals("TaskFailure: dislike comment UniqueId(commentId) failure"));
      expect(TaskFailure.archiveFailure(UniqueId("taskId")).toString(),
          equals("TaskFailure: archive task UniqueId(taskId) failure"));
      expect(TaskFailure.unarchiveFailure(UniqueId("taskId")).toString(),
          equals("TaskFailure: unarchive task UniqueId(taskId) failure"));
      expect(TaskFailure.itemCompleteFailure(UniqueId("itemId")).toString(),
          equals("TaskFailure: complete item UniqueId(itemId) failure"));
    });
  });
}
