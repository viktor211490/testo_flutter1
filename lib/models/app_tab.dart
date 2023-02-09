import 'package:flutter/material.dart';
import 'package:testo/generated/l10n.dart';
import 'package:testo/models/keys.dart';
import 'package:testo/screens/cart/cart_screen.dart';
import 'package:testo/screens/menu/menu_app_bar.dart';
import 'package:testo/screens/menu/menu_screen.dart';
import 'package:testo/screens/orders/orders_screen.dart';
import 'package:testo/screens/profile/profile_screen.dart';
import 'package:testo/screens/promo/promo_screen.dart';

enum AppTab {
  profile,
  promos,
  menu,
  orders,
  cart,
}

AppBar getAppBarByAppTab(AppTab appTab) {
  if (appTab == AppTab.profile) {
    return AppBar(
      title: Text(S.current.profile_app_bar_title),
    );
  } else if (appTab == AppTab.promos) {
    return AppBar(
      title: Text(S.current.promo_app_bar_title),
    );
  } else if (appTab == AppTab.menu) {
    return MenuAppBar();
  } else if (appTab == AppTab.orders) {
    return AppBar(
      title: Text(S.current.orders_app_bar_title),
    );
  } else if (appTab == AppTab.cart) {
    return AppBar(
      title: Text(S.current.cart_app_bar_title),
    );
  }
  return AppBar(
    title: Text(S.current.profile_app_bar_title),
  );
}

String getAppTitleByAppTab(AppTab appTab) {
  if (appTab == AppTab.profile) {
    return S.current.profile_app_bar_title;
  } else if (appTab == AppTab.promos) {
    return S.current.promo_app_bar_title;
  } else if (appTab == AppTab.menu) {
    return S.current.menu_app_bar_title;
  } else if (appTab == AppTab.orders) {
    return S.current.orders_app_bar_title;
  } else if (appTab == AppTab.cart) {
    return S.current.cart_app_bar_title;
  }
  return "";
}

Widget getAppWidgetByAppTab(AppTab appTab) {
  if (appTab == AppTab.profile) {
    return const ProfileScreen();
  } else if (appTab == AppTab.promos) {
    return const PromoScreen();
  } else if (appTab == AppTab.menu) {
    return const MenuScreen();
  } else if (appTab == AppTab.orders) {
    return const OrdersScreen();
  } else if (appTab == AppTab.cart) {
    return const CartScreen();
  }
  return const Scaffold();
}

Widget getIconByAppTab(AppTab appTab) {
  if (appTab == AppTab.profile) {
    return const Icon(
      Icons.person,
      key: ArchSampleKeys.profileTab,
    );
  } else if (appTab == AppTab.promos) {
    return const Icon(
      Icons.local_fire_department_outlined,
      key: ArchSampleKeys.promosTab,
    );
  } else if (appTab == AppTab.menu) {
    return const Icon(
      Icons.food_bank_outlined,
      key: ArchSampleKeys.menuTab,
    );
  } else if (appTab == AppTab.orders) {
    return const Icon(
      Icons.speaker_notes_outlined,
      key: ArchSampleKeys.ordersTab,
    );
  } else if (appTab == AppTab.cart) {
    return const Icon(
      Icons.shopping_cart,
      key: ArchSampleKeys.cartTab,
    );
  }
  return const Icon(
    Icons.error_outline,
    key: ArchSampleKeys.profileTab,
  );
}
