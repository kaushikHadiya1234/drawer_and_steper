
import 'package:flutter/cupertino.dart';

class SteperProvider extends ChangeNotifier
{
  int i=0;

  void Nextstep()
  {
    if(i<4)
      {
        i++;
      }
    notifyListeners();
  }
  void prestep()
  {
    if(i>0)
    {
      i--;
    }
    notifyListeners();
  }
}