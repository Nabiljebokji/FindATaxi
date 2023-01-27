// ignore_for_file: list_remove_unrelated_type, file_names

import 'package:taxsibul/Models/nearByAvailbleDrivers.dart';

class GeoFireAssistent {
  static List<NearByAvailableDraivers> nearbyAvailableDraiversList = [];

  static void removeDriverFromList(String key) {
    int index =
        nearbyAvailableDraiversList.indexWhere((element) => element.key == key);
    nearbyAvailableDraiversList.removeAt(index);
  }

  static void updateDriverNearByLocation(NearByAvailableDraivers driver) {
    int index = nearbyAvailableDraiversList
        .indexWhere((element) => element.key == driver.key);

    nearbyAvailableDraiversList[index].latitude = driver.latitude;
    nearbyAvailableDraiversList[index].longitude = driver.longitude;
  }
}
