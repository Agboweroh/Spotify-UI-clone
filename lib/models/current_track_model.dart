import 'package:flutter/cupertino.dart';
import 'package:musizapp/data/data.dart';

class CurrentTrackModel extends ChangeNotifier {
  Song? selected;
  void selectTrack(Song track) {
    selected = track;
    notifyListeners();
  }
}
