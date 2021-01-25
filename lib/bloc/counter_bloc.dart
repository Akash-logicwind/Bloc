import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial(0));

  @override
  Stream<CounterState> mapEventToState(
    CounterEvent event,
  ) async* {
    // TODO: implement mapEventToState
    if (event is IncrementEvent) {
      yield CounterState(state.counter + 1);
    } else if (event is DecrementEvent) {
      yield CounterState(state.counter - 1);
    }
  }
}
