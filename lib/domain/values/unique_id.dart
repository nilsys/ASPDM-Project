import 'package:aspdm_project/core/either.dart';
import 'package:aspdm_project/core/value_object.dart';

/// Class representing an unique identifier used
/// by the entities in the app.
class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const UniqueId._(this.value);

  /// Creates a [UniqueId] from a [String] id.
  /// If the id is `null` or empty an [AssertionError] will be thrown.
  factory UniqueId(String id) {
    if (id != null && id.isNotEmpty) return UniqueId._(Either.right(id));
    return UniqueId._(Either.left(ValueFailure.invalidId(id)));
  }

  /// Creates an empty [UniqueId].
  /// NOTE: The new [UniqueId] will have a value that is the left side
  /// of the Either (it's invalid).
  factory UniqueId.empty() =>
      UniqueId._(Either.left(ValueFailure.invalidId("EMPTY_ID")));

  @override
  String toString() =>
      "UniqueId(${value.fold((left) => left, (right) => right)})";
}
