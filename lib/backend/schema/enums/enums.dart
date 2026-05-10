import 'package:collection/collection.dart';

enum JobTypes {
  Urgente,
  Agendado,
  Stands,
}

enum Conditions {
  Scheduled,
  Accepted,
  Cancelled,
  Finished,
  InProcess,
  Openned,
  Closed,
}

enum MessageSendType {
  Contractor,
  Prestador,
}

enum TypeMessage {
  text,
  image,
  audio,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (JobTypes):
      return JobTypes.values.deserialize(value) as T?;
    case (Conditions):
      return Conditions.values.deserialize(value) as T?;
    case (MessageSendType):
      return MessageSendType.values.deserialize(value) as T?;
    case (TypeMessage):
      return TypeMessage.values.deserialize(value) as T?;
    default:
      return null;
  }
}
