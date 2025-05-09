
import 'package:hive/hive.dart';

class HiveRepository {
  
static HiveRepository openBox() {
  Hive.init('D:/Juliawork/Cardiovascular-activity-client/cardiovascular_activity_client/cardiovascular_client/lib/Hive');
   Hive.openBox('Settings');
  return HiveRepository();
}


bool isBoxNotEmpty() {
  var box = Hive.box('Settings');
  return box.values.isNotEmpty;
}

void saveValueToBox(String key, String value) async{
  var box = Hive.box('Settings');
  box.put(key, value);
}

String getValueFromBox(String key) {
  var box = Hive.box('Settings');
  return box.get(key);
}

}