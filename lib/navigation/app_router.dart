import 'package:flutter/material.dart';
import 'package:fooderlich/models/profile_manager.dart';
import 'package:fooderlich/screens/screens.dart';
import '../models/models.dart';
import '../screens/home.dart';

class AppRouter extends RouterDelegate
with ChangeNotifier,PopNavigatorRouterDelegateMixin{
  @override
  final GlobalKey<NavigatorState> navigatorKey;
  final AppStateManager appStateManager;
  final GroceryManager groceryManager;
  final ProfileManager profileManager;

  AppRouter({
    required this.appStateManager,
    required this.groceryManager,
    required this.profileManager,
  }) :navigatorKey = GlobalKey<NavigatorState>(){
    // TODO: add Listeners
    appStateManager.addListener(notifyListeners);
    groceryManager.addListener(notifyListeners);
    profileManager.addListener(notifyListeners);
  //TODO: Dispose listeners

  @override
  void dispose(){
    appStateManager.removeListener(notifyListeners);
    groceryManager.removeListener(notifyListeners);
    profileManager.removeListener(notifyListeners);
    super.dispose();
  }
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onPopPage: _handlePopPage,
      pages: [
        // here add all of the app screens
if(!appStateManager.isInitialized) SplashScreen.page(),
      ],
    );
  }
 //TODO; Add _handlePopPage
 bool _handlePopPage(
Route<dynamic> route,result
 ){
   if(!route.didPop(result)){
     return false;
   }
   //TODO: Handle OnBoarding and splash
   //TODO: Handle state when user closes grocery item screen
   //TODO: Handle state when user closes profile screen
   //TODO: Handle state when user closes webview screen
   return true;
 }
  @override
  Future<void> setNewRoutePath(configuration) async => null;

}