import 'dart:collection';
import 'userdatatype.dart';

void StoreData(
    Map<String, List<UserDetails>> mp, String seatNo, UserDetails lt) {
  if (lt != null) {
    print(lt.name);
    print(lt.mobileNo);
    print(lt.date);
  }
  if (mp.containsKey(seatNo)) {
    print("Seat Already Booked");
  } else if (lt == null) {
    print("userdata is false");
  } else
    mp[seatNo]?.add(lt);
}
