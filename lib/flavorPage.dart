

import 'package:flutter/material.dart';
import 'package:my_practice_app/urlBinding.dart';
import 'package:my_practice_app/urls.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FlavorPage extends StatefulWidget{
  @override
  State<FlavorPage> createState()=>_FlavorPage();
  }

class _FlavorPage extends State<FlavorPage>{
   List<String> list = <String>["DEV","QA", 'UAT', 'PROD',"PRE_PROD"];
   String dropdownValue="";
   late SharedPreferences sp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton<String>(
          value: dropdownValue,
          icon: const Icon(Icons.arrow_downward),
          elevation: 16,
          style: const TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 2,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String? value) async{
            // This is called when the user selects an item

            setState(()  {
              dropdownValue = value!;
              print("value $value");
              sp.clear();
              chooseFlavor();
            });
          },
          items: list.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),

            );
          }).toList(),
        ),
      ),
    );
  }

 @override
  void initState()   {
    FlavorConfig(flavor: Flavors.DEV);
    sharePref();
    dropdownValue = list.first;
 }

 Future sharePref() async{
   sp= await SharedPreferences.getInstance();
 }
  Future chooseFlavor() async{
    if (dropdownValue.contains('DEV')) {

      sp.setString("getCustomerBaseUrl", FlavorConfig.getCustomerBaseUrl(Flavors.DEV));
      print("fc.getCustomerBaseUrl DEV ${FlavorConfig.getCustomerBaseUrl(Flavors.DEV)}");
      print("fc.getIdsBaseUrl DEV ${FlavorConfig.getIdsBaseUrl(Flavors.DEV)}");
      print("fc.getForYouBaseUrl DEV ${FlavorConfig.getForYouBaseUrl(Flavors.DEV)}");
      print("fc.getMagazineBaseUrl DEV ${FlavorConfig.getMagazineBaseUrl(Flavors.DEV)}");
      print("fc.getMoneysignBaseUrl DEV ${FlavorConfig.getMoneysignBaseUrl(Flavors.DEV)}");
      print("fc.getValue ${FlavorConfig.getValue(Flavors.DEV)}");

    } else if (dropdownValue.contains('QA')) {

      sp.setString("getCustomerBaseUrl", FlavorConfig.getCustomerBaseUrl(Flavors.QA));
      print("fc.getCustomerBaseUrl QA ${FlavorConfig.getCustomerBaseUrl(Flavors.QA)}");
      print("fc.getIdsBaseUrl QA ${FlavorConfig.getIdsBaseUrl(Flavors.QA)}");
      print("fc.getForYouBaseUrl QA ${FlavorConfig.getForYouBaseUrl(Flavors.QA)}");
      print("fc.getMagazineBaseUrl QA ${FlavorConfig.getMagazineBaseUrl(Flavors.QA)}");
      print("fc.getMoneysignBaseUrl QA ${FlavorConfig.getMoneysignBaseUrl(Flavors.QA)}");
      print("fc.getValue ${FlavorConfig.getValue(Flavors.QA)}");

    } else if (dropdownValue.contains('UAT')) {

      sp.setString("getCustomerBaseUrl", FlavorConfig.getCustomerBaseUrl(Flavors.UAT));
      print("fc.getCustomerBaseUrl UAT ${FlavorConfig.getCustomerBaseUrl(Flavors.UAT)}");
      print("fc.getIdsBaseUrl UAT ${FlavorConfig.getIdsBaseUrl(Flavors.UAT)}");
      print("fc.getForYouBaseUrl UAT ${FlavorConfig.getForYouBaseUrl(Flavors.UAT)}");
      print("fc.getMagazineBaseUrl UAT ${FlavorConfig.getMagazineBaseUrl(Flavors.UAT)}");
      print("fc.getMoneysignBaseUrl UAT ${FlavorConfig.getMoneysignBaseUrl(Flavors.UAT)}");
      print("fc.getValue ${FlavorConfig.getValue(Flavors.UAT)}");

    } else if (dropdownValue.contains('PROD')){

      sp.setString("getCustomerBaseUrl", FlavorConfig.getCustomerBaseUrl(Flavors.PROD));
      print("fc.getCustomerBaseUrl PROD ${FlavorConfig.getCustomerBaseUrl(Flavors.PROD)}");
      print("fc.getIdsBaseUrl PROD ${FlavorConfig.getIdsBaseUrl(Flavors.PROD)}");
      print("fc.getForYouBaseUrl PROD ${FlavorConfig.getForYouBaseUrl(Flavors.PROD)}");
      print("fc.getMagazineBaseUrl PROD ${FlavorConfig.getMagazineBaseUrl(Flavors.PROD)}");
      print("fc.getMoneysignBaseUrl PROD ${FlavorConfig.getMoneysignBaseUrl(Flavors.PROD)}");
      print("fc.getValue ${FlavorConfig.getValue(Flavors.PROD)}");

    }
    else{
      print("Pre_Prod");
    }
  }
}

String getMagazineBaseUrl(String flavor) {
  switch (flavor) {
    case "DEV":
      return Urls.magazineBaseUrlDev;
    case "QA":
      return Urls.magazineBaseUrlQA;
    case "UAT":
      return Urls.magazineBaseUrlUAT;
    case "PROD":
      print("uRL Prod");
      return Urls.magazineBaseUrlProd;
    case "PRE_PROD":
      return Urls.magazineBaseUrlProd;
    default:
      return "";
  }
}