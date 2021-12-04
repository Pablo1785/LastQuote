import 'package:dartz/dartz.dart';
import 'failures.dart';
import 'value_objects.dart';
import 'package:kt_dart/kt.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateMinStringLength(
  String input,
  int minLength,
) {
  if (input.length >= minLength) {
    return right(input);
  } else {
    return left(
        ValueFailure.shortLength(failedValue: input, minLength: minLength));
  }
}

Either<ValueFailure<String>, String> validateUrl(String input) {
  if (Uri.tryParse(input)?.isAbsolute ?? false) {
    return right(input);
  } else {
    return left(ValueFailure.invalidUrl(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
        ValueFailure.exceedingLength(failedValue: input, maxLength: maxLength));
  }
}

Either<ValueFailure<KtList<T>>, KtList<T>> validateMaxListLength<T>(
  KtList<T> input,
  int maxLength,
) {
  if (input.size <= maxLength) {
    return right(input);
  } else {
    return left(
        ValueFailure.exceedingLength(failedValue: input, maxLength: maxLength));
  }
}

Either<ValueFailure<KtList<T>>, KtList<T>>
    validateValueObjectList<T extends ValueObject>(
  KtList<T> input,
) {
  final invalidValues = input.filterNot((element) => element.isValid());
  if (invalidValues.size == 0) {
    return right(input);
  } else {
    return left(ValueFailure.invalidListContents(failedValues: invalidValues));
  }
}
