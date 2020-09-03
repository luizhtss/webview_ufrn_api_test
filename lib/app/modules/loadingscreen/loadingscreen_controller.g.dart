// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loadingscreen_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $LoadingscreenController = BindInject(
  (i) => LoadingscreenController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoadingscreenController on _LoadingscreenControllerBase, Store {
  final _$valueAtom = Atom(name: '_LoadingscreenControllerBase.value');

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

  final _$_LoadingscreenControllerBaseActionController =
      ActionController(name: '_LoadingscreenControllerBase');

  @override
  void increment() {
    final _$actionInfo = _$_LoadingscreenControllerBaseActionController
        .startAction(name: '_LoadingscreenControllerBase.increment');
    try {
      return super.increment();
    } finally {
      _$_LoadingscreenControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
