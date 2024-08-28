import '../models/my_model.dart';
import '../actions/my_action.dart';

MyState reducer(MyState state, dynamic action) {
  if (action is UpdateDataAction) {
    return MyState(action.newData);
  }
  return state;
}