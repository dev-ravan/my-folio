part of 'menu_bloc.dart';

sealed class MenuEvent {}

class MenuIndexChangeEvent extends MenuEvent {
  final int selectedIndex;

  MenuIndexChangeEvent(this.selectedIndex);
}
