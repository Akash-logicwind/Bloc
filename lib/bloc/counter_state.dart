part of 'counter_bloc.dart';

class CounterState extends Equatable {
  final int counter;
  const CounterState({@required this.counter});
  @override
  List<Object> get props => [counter];
}

class CounterInitial extends CounterState {
  CounterInitial(int counter) : super(counter: counter);
}
