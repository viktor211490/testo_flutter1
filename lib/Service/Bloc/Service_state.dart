import 'package:equatable/equatable.dart';

class ServiceState extends Equatable {
  const ServiceState();

  @override
  List<Object> get props => [];
}

class ServiceLoading extends ServiceState {}

class ServicesLoadSuccess extends ServiceState {
  final List<Service> services;
  ServicesLoadSuccess([this.services = const []]);

  @override
  List<Object> get props => [services];
}

class ServiceOperationFailure extends ServiceState {}
