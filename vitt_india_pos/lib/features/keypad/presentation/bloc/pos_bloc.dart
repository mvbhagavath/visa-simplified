import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'pos_event.dart';
part 'pos_state.dart';

class POSBloc extends Bloc<POSEvent, POSState> {
  POSBloc() : super(POSInitial());

  @override
  Stream<POSState> mapEventToState(POSEvent event) {
    // TODO: implement mapEventToState
    throw UnimplementedError();
  }
}
