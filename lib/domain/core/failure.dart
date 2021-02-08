import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {}

class CacheFailure extends Failure {
  @override
  List<Object> get props => [];
}

class FormatFailure extends Failure {
  @override
  List<Object> get props => [];
}
