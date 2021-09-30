import 'package:flutter/material.dart';
import 'package:state_management_example/button.dart';

import 'main.dart';

class GridGenerator {
  static List<Widget> buttons = [
    Button.orange(
      label: 'AC',
      onTap: calculator.clean,
    ),
    Button.red(
      label: 'DEL',
      onTap: () {},
    ),
    Button.blue(
      label: '%',
      onTap: () {},
    ),
    Button.blue(
      label: '➗',
      onTap: () {},
    ),
    Button.grey(
      label: '7',
      onTap: () {},
    ),
    Button.grey(
      label: '8',
      onTap: () {},
    ),
    Button.grey(
      label: '9',
      onTap: () {},
    ),
    Button.blue(
      label: '✖️',
      onTap: () {},
    ),
    Button.grey(
      label: '4',
      onTap: () {},
    ),
    Button.grey(
      label: '5',
      onTap: () {},
    ),
    Button.grey(
      label: '6',
      onTap: () {},
    ),
    Button.blue(
      label: '-',
      onTap: () {},
    ),
    Button.grey(
      label: '1',
      onTap: () {},
    ),
    Button.grey(
      label: '2',
      onTap: () {},
    ),
    Button.grey(
      label: '3',
      onTap: () {},
    ),
    Button.blue(
      label: '+',
      onTap: () {},
    ),
    Button.blue(
      label: '+-',
      onTap: () {},
    ),
    Button.grey(
      label: '0',
      onTap: () {},
    ),
    Button.blue(
      label: ',',
      onTap: () {},
    ),
    Button.blue(
      label: '=',
      onTap: () {},
    ),
  ];
}
