

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
   // FlavorConfig flavorConfig = FlavorConfig(flavor: Flavors.DEV);

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
            await chooseFlavor();
            setState(()  {
              dropdownValue = value!;
              print("value $value");
              sp.clear();

              //String url= await chooseFlavor();
             // print("url $url");
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
    //FlavorConfig fc;
    if (dropdownValue.contains('DEV')) {
      // FlavorConfig fc = new FlavorConfig(flavor: Flavors.DEV);
      FlavorConfig(flavor: Flavors.DEV);
      sp.setString("customerBaseUrl", FlavorConfig.getCustomerBaseUrl(Flavors.DEV));
      print("fc.customerBaseUrl ${FlavorConfig.getCustomerBaseUrl(Flavors.DEV)}");
    } else if (dropdownValue.contains('QA')) {
      // FlavorConfig fc=new FlavorConfig(flavor: Flavors.QA);
      FlavorConfig(flavor: Flavors.QA);
      // sp.reload();
      sp.setString("customerBaseUrl", FlavorConfig.getCustomerBaseUrl(Flavors.QA));
      print("fc.customerBaseUrl ${FlavorConfig.getCustomerBaseUrl(Flavors.QA)}");
    } else if (dropdownValue.contains('UAT')) {
       FlavorConfig(flavor: Flavors.UAT);
      sp.setString("customerBaseUrl", FlavorConfig.getCustomerBaseUrl(Flavors.UAT));
      print("fc.customerBaseUrl ${FlavorConfig.getCustomerBaseUrl(Flavors.UAT)}");
    } else if (dropdownValue.contains('PROD')){
      FlavorConfig(flavor: Flavors.PROD);
      // sp.reload();
     // sp.setString("customerBaseUrl", FlavorConfig.instance.customerBaseUrl);
      //print("fc.customerBaseUrl ${FlavorConfig.instance.customerBaseUrl}");
      //isProdForAppsFlyer = true;
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