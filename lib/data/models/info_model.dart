import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_app/domain/entities/info_entity.dart';

part 'info_model.freezed.dart';
part 'info_model.g.dart';

@freezed
class Info extends InfoEntity with _$Info {
  const factory Info(
      {required int count,
      required int pages,
      String? next,
      String? prev}) = _Info;

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
}
