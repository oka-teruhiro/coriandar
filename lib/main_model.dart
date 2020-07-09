
import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier {
  String KboyText = 'KBOY';

  void changeKboyText(){
    KboyText = 'KBOYさんかっこいい';
    notifyListeners();
  }
}