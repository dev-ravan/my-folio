import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_folio/Features/Nav%20Bar/Data/Models/menu_model.dart';
import 'package:my_folio/Features/Nav%20Bar/Data/menu_details.dart';

part 'menu_event.dart';
part 'menu_state.dart';

class MenuBloc extends Bloc<MenuEvent, MenuState> {
  MenuBloc() : super(MenuInitial(menuItems: MenuDetails.menuItems)) {
    on<MenuIndexChangeEvent>(menuIndexChangeEvent);
  }

  FutureOr<void> menuIndexChangeEvent(
      MenuIndexChangeEvent event, Emitter<MenuState> emit) {
    final currentMenuItems = state is MenuItemsState
        ? (state as MenuItemsState).menuItems
        : (state as MenuInitial).menuItems;

    emit(MenuItemsState(
        index: event.selectedIndex, menuItems: currentMenuItems));
  }
}
