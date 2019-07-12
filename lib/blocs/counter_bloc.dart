
import 'package:bloc/bloc.dart';
enum CounterEvent {increment, decrement}

/*
This is a Bloc class for Counter that will be taking CounterEvent as input
and outputting integers
 */
class CounterBloc extends Bloc<CounterEvent, int>{
  @override
  int get initialState => 0;  //Since our counter is integer and we want to make sure start with zero

  @override
  /*
  Every Bloc must implement this function. The function takes in event as an
  argument and must return a Stream of new states.
   */
  Stream<int> mapEventToState(CounterEvent event) async*{
    switch(event){
      case CounterEvent.decrement:
        yield currentState - 1;
        break;
      case CounterEvent.increment:
        yield currentState + 1;
        break;
    }
  }

}