part of 'menu_bloc.dart';

sealed class MenuState {}

final class MenuInitial extends MenuState {
  final List<MenuModel> menuItems;
  MenuInitial({required this.menuItems});
}

final class MenuItemsState extends MenuState with EquatableMixin {
  final int index;
  final List<MenuModel> menuItems;

  MenuItemsState({required this.index, required this.menuItems});

  @override
  List<Object?> get props => [index, menuItems];
}
