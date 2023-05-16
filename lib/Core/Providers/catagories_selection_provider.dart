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

  showShoes(int sindex) {
    index = sindex;
    notifyListeners();
  }

  showElectronics(int eindex) {
    index = eindex;
    notifyListeners();
  }

  showJewellery(int jindex) {
    index = jindex;
    notifyListeners();
  }
}
