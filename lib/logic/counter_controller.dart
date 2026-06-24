import 'package:get/get.dart';
import 'package:getproject/state/counter_state.dart';


class CounterController {
    CounterState _counterState = CounterState();
    RxInt get count => _counterState.count;

    void increment ()=> count.value++;
    void decrement ()=> count.value--;

}