// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webview_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $WebviewController = BindInject(
  (i) => WebviewController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$WebviewController on _WebviewControllerBase, Store {
  final _$valueAtom = Atom(name: '_WebviewControllerBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_WebviewControllerBaseActionController =
      ActionController(name: '_WebviewControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_WebviewControllerBaseActionController.startAction(
        name: '_WebviewControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_WebviewControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
