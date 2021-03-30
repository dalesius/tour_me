import 'package:freezed_annotation/freezed_annotation.dart';

part 'database_failure.freezed.dart';

@freezed
abstract class DBFailure with _$DBFailure {
  const factory DBFailure.generalDBFailure(String? errorMessage) =
      GeneralDBFailure;
}
