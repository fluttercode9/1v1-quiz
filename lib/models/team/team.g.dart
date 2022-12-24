// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Team _$$_TeamFromJson(Map<String, dynamic> json) => _$_Team(
      name: json['name'] as String,
      points: json['points'] as int? ?? 0,
      victories: json['victories'] as int,
    );

Map<String, dynamic> _$$_TeamToJson(_$_Team instance) => <String, dynamic>{
      'name': instance.name,
      'points': instance.points,
      'victories': instance.victories,
    };
