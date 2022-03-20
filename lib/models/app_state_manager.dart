import 'dart:async';
import 'package:flutter/material.dart';

//This is index of each tab 
class FooderlichTab{
  static  const int explore =0;
  static const int recipes =1;
  static const int tobuy =2;

}
//this declare initial states of the app
class AppStateManager extends ChangeNotifier{
  bool _initialized = false;
  bool _loggedIn = false;
  bool _onboardingComplete = false;
  int _selectedTab = FooderlichTab.explore;

//this are getter methods
  bool get isInitialized => _initialized;
  bool get isLoggedIn => _loggedIn;
  bool get isOnboardingComplete => _onboardingComplete;
  int  get gtSelectedTab => _selectedTab;

  //TODO: Add initilizeApp 
  void initializeApp(){
    Timer(const Duration(milliseconds: 2000), (){
      _initialized =true;
      notifyListeners();
    });
  }
    //TODO: Add Login
    void login(String username,String password){
      _loggedIn = true;
      notifyListeners();
    }
     //TODO: Add completeOnboarding
     void completeOnboarding(){
       _onboardingComplete =true;
       notifyListeners();
     }
       //TODO: Add goToTab
       void goToTab(index){
         _selectedTab =index;
         notifyListeners();
       }
         //TODO: Add goToRecipes
         void goToRecipes(){
           _selectedTab = FooderlichTab.recipes;
           notifyListeners();
         }
           //TODO: Add logout
           void logout(){
             _loggedIn =false;
             _onboardingComplete = false;
             _selectedTab = 0;
           }




 


}