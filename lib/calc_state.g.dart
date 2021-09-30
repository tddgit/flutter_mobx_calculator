// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calc_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CalcState on _CalcStateBase, Store {
  final _$userInputAtom = Atom(name: '_CalcStateBase.userInput');

  @override
  String get userInput {
    _$userInputAtom.reportRead();
    return super.userInput;
  }

  @override
  set userInput(String value) {
    _$userInputAtom.reportWrite(value, super.userInput, () {
      super.userInput = value;
    });
  }

  final _$resultAtom = Atom(name: '_CalcStateBase.result');

  @override
  String get result {
    _$resultAtom.reportRead();
    return super.result;
  }

  @override
  set result(String value) {
    _$resultAtom.reportWrite(value, super.result, () {
      super.result = value;
    });
  }

  final _$_CalcStateBaseActionController =
      ActionController(name: '_CalcStateBase');

  @override
  void clean() {
    final _$actionInfo = _$_CalcStateBaseActionController.startAction(
        name: '_CalcStateBase.clean');
    try {
      return super.clean();
    } finally {
      _$_CalcStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void delete() {
    final _$actionInfo = _$_CalcStateBaseActionController.startAction(
        name: '_CalcStateBase.delete');
    try {
      return super.delete();
    } finally {
      _$_CalcStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addUserInput(String inputChar) {
    final _$actionInfo = _$_CalcStateBaseActionController.startAction(
        name: '_CalcStateBase.addUserInput');
    try {
      return super.addUserInput(inputChar);
    } finally {
      _$_CalcStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
userInput: ${userInput},
result: ${result}
    ''';
  }
}
