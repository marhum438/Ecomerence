import 'dart:convert';
import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';

class homeclass {
  static saveitem(item) async {
    var pref = await SharedPreferences.getInstance();
    var data = await getitem();

    if (data != null) {
      data.add(item);
    } else {
      data = [item];
    }
    pref.setString("key", jsonEncode(data));
    print("saved data");
    print(item);
  }

  static getitem() async {
    var pref = await SharedPreferences.getInstance();
    var data = pref.getString("key");
    if (data != null) {
      return jsonDecode(data);
    }
  }

  static removeitem1(itemName) async {
    var pref = await SharedPreferences.getInstance();
    var data = await getitem();
    if (data != null) {
      // Find the index of the item with the given name
      int indexToRemove = 0;
      for (int i = 0; i < data.length; i++) {
        if (data[i]["name"] == itemName) {
          indexToRemove = i;
          break;
        }
      }

      if (indexToRemove != null) {
        data.removeAt(indexToRemove); // Remove the item from the list
        pref.setString("key", jsonEncode(data)); // Save the updated list
        print("Removed item: $itemName");
      }
    }
  }
}
  // static removeitem1(itemName) async {
  // var pref = await SharedPreferences.getInstance();
  // var data = await getitem();
  // if (data != null) {
  //   // Find the index of the item with the given name
  //   int indexToRemove=0;
  //   for (int i = 0; i < data.length; i++) {
  //     if (data[i]["name"] == itemName) {
  //       indexToRemove = i;
  //       break;
  //     }}}}
    
  
  