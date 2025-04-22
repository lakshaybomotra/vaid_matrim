import 'package:active_matrimonial_flutter_app/const/my_theme.dart';
import 'package:active_matrimonial_flutter_app/helpers/auth_helper.dart';
import 'package:active_matrimonial_flutter_app/helpers/navigator_push.dart';
import 'package:active_matrimonial_flutter_app/redux/app/app_state.dart';
import 'package:active_matrimonial_flutter_app/repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

import '../../../screens/app_navigation.dart';
import '../helpers/show_message_state.dart';
import 'auth_reducer.dart';

ThunkAction<AppState> accountDeletionMiddleware() {
  return (Store<AppState> store) async {
    try {
      var data = await AuthRepository().accountDelete();

      if (data.result!) {
        store.dispatch(
            ShowMessageAction(msg: data.message, color: MyTheme.success));
        store.dispatch(ClearAuthData());

        clearUserData();

        NavigatorPush.push_remove_untill(page: const AppNavigation());
      } else {
        store.dispatch(
            ShowMessageAction(msg: data.message, color: MyTheme.failure));
      }
    } catch (e) {
      debugPrint(e.toString());
      return;
    }
  };
}
