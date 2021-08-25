import 'package:flutter/material.dart';
import 'package:flutter_architecture_with_provider/domain/viewmodel/view_state.dart';

class BaseModel extends ChangeNotifier {
  ViewState _state = ViewState.idle;

  ViewState get state => this._state;

  void setState(ViewState newState) {
    _state = newState;
    notifyListeners();
  }
}
