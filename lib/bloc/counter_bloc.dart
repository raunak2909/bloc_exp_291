import 'package:bloc_exp_291/bloc/counter_event.dart';
import 'package:bloc_exp_291/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState>{
  CounterBloc():super(CounterState(count: 0)){ //initial state

    on<IncrementCounterEvent>((event, emit){
      emit(CounterState(count: state.count+1));
    });

    on<DecrementCounterEvent>((event, emit) {
      if(state.count>0){
        emit(CounterState(count: state.count-1));
      }
    });
  }
}