import 'package:math_expressions/math_expressions.dart';
import 'package:mobx/mobx.dart';

part 'calc_state.g.dart';

class CalcState = _CalcStateBase with _$CalcState;

abstract class _CalcStateBase with Store {
  Parser parser = Parser();
  ContextModel cm = ContextModel();
  @observable
  String userInput = '';

  @observable
  String result = '';

  @action
  void clean() {
    userInput = '';
  }

  @action
  void delete() {
    userInput = userInput.substring(0, userInput.length - 1);
  }

  @action
  // ignore: no-empty-block
  void addUserInput(String inputChar) {
    // TODO1: Add validation of input special characters
    // const unrepeatedInput = <String>['^', '%', '✖️', '+', '-', '➗', ','];
    // final previousInput = userInput.isNotEmpty && userInput.endsWith(other)
    //     ? userInput.substring(userInput.length - 1, userInput.length )
    //     : '';
    // if (!(unrepeatedInput.contains(previousInput) &&
    //     unrepeatedInput.contains(inputChar))) {
    userInput += inputChar;
  }

  @action
  void calculate() {
    final Expression exp = parser.parse(userInput);
    result = exp.evaluate(EvaluationType.REAL, cm).toString();
  }
}
