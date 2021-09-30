import 'package:mobx/mobx.dart';

part 'calc_state.g.dart';

class CalcState = _CalcStateBase with _$CalcState;

abstract class _CalcStateBase with Store {
  @observable
  late String userInput;

  @observable
  late String result;

  @action
  void clean() {
    userInput = '';
  }

  @action
  void delete() {
    userInput.substring(0, userInput.length - 1);
  }

  void addUserInput(String inputChar) {
    userInput += userInput;
  }
}
