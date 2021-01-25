part of 'counter_bloc.dart';

class CounterState extends Equatable {
  final int counter;
  const CounterState(this.counter);
  @override
  List<Object> get props => [];
}

class CounterInitial extends CounterState {
  CounterInitial(int counter) : super(counter);
}
