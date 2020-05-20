import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/bloc/timer_event.dart';
import 'package:state_management/bloc/timer_state.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  @override
  TimerState get initialState => throw UnimplementedError();

  @override
  Stream<TimerState> mapEventToState(TimerEvent event) {
    throw UnimplementedError();
  }
}
