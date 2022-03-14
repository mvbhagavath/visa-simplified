part of 'pos_bloc.dart';

abstract class POSState extends Equatable {
  const POSState();

  @override
  List<Object> get props => [];
}

class POSInitial extends POSState {}
