import 'package:flutter/foundation.dart';

class CatagorySelectionProvider extends ChangeNotifier {
  int index = 0;
  showNewArrival(int nindex) {
    index = nindex;
    notifyListeners();
  }

  showCloths(int cindex) {
    index = cindex;
    notifyListeners();
  }

  showBags(int bindex) {
    index = bindex;
    notifyListeners();
  }

  bool shoes = false;
  showShoes() {
    shoes = !shoes;
    notifyListeners();
  }

  bool electronics = false;
  showElectronics() {
    electronics = !electronics;
    notifyListeners();
  }

  bool jewellry = false;
  showJewellery() {
    jewellry = !jewellry;
    notifyListeners();
  }
}
