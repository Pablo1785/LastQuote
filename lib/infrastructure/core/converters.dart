import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class ServerTimestampConverter implements JsonConverter<FieldValue?, Object?> {
  const ServerTimestampConverter(); // in order to use this class as an annotation it needs a const constructor

  @override
  FieldValue? fromJson(Object? json) {
    return FieldValue?.serverTimestamp();
  }

  @override
  Object? toJson(FieldValue? fieldValue) => fieldValue;
}

class ReferenceConverter implements JsonConverter<String, Object> {
  const ReferenceConverter();

  @override
  String fromJson(Object json) {
    if (json is String) {
      return json;
    }
    return (json as DocumentReference).id;
  }

  @override
  Object toJson(String object) {
    return object;
  }
}
