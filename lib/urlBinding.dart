// ignore_for_file: constant_identifier_names, non_constant_identifier_names

// 🌎 Project imports:

import 'package:my_practice_app/urls.dart';

enum Flavors { DEV, QA, UAT, PROD, PRE_PROD }

class FlavorConfig {
   FlavorConfig({required Flavors? flavor}) {

  }
   Flavors? flavor;
   String? name;
   String? customerBaseUrl;
   String? moneysignBaseUrl;
   String? forYouBaseUrl;
   String? idsBaseUrl;
   String? magazineBaseUrl;
   FlavorConfig? _instance;

  static String getValue(Flavors flavor) {
    switch (flavor) {
      case Flavors.DEV:
        return "DEV";
      case Flavors.QA:
        return "QA";
      case Flavors.UAT:
        return "UAT";
      case Flavors.PROD:
        return "PROD";
      case Flavors.PRE_PROD:
        return "PRE_PROD";
      default:
        return "";
    }
  }

  static String getCustomerBaseUrl(Flavors flavor) {
    switch (flavor) {
      case Flavors.DEV:
        return Urls.devCustomerBaseUrl;
      case Flavors.QA:
        return Urls.qaCustomerBaseUrl;
      case Flavors.UAT:
        return Urls.uatCustomerBaseUrl;
      case Flavors.PROD:
        return Urls.prodCustomerBaseUrl;
      case Flavors.PRE_PROD:
        return Urls.prodCustomerBaseUrl;
      default:
        return "";
    }
  }

  static String getForYouBaseUrl(Flavors flavor) {
    switch (flavor) {
      case Flavors.DEV:
        return Urls.forYouBaseUrlDev;
      case Flavors.QA:
        return Urls.forYouBaseUrlQA;
      case Flavors.UAT:
        return Urls.forYouBaseUrlUAT;
      case Flavors.PROD:
        return Urls.forYouBaseUrlProd;
      case Flavors.PRE_PROD:
        return Urls.forYouBaseUrlProd;
      default:
        return "";
    }
  }

  static String getMoneysignBaseUrl(Flavors flavor) {
    switch (flavor) {
      case Flavors.DEV:
        return Urls.devMsBaseUrl;
      case Flavors.QA:
        return Urls.qaMsBaseUrl;
      case Flavors.UAT:
        return Urls.uatMsBaseUrl;
      case Flavors.PROD:
        return Urls.prodMsBaseUrl;
      case Flavors.PRE_PROD:
        return Urls.prodMsBaseUrl;
      default:
        return "";
    }
  }

  static String getIdsBaseUrl(Flavors flavor) {
    switch (flavor) {
      case Flavors.DEV:
        return Urls.idsDevBaseUrl;
      case Flavors.QA:
        return Urls.idsQaBaseUrl;
      case Flavors.UAT:
        return Urls.idsUatBaseUrl;
      case Flavors.PROD:
        return Urls.idsProdBaseUrl;
      case Flavors.PRE_PROD:
        return Urls.idsProdBaseUrl;
      default:
        return "";
    }
  }

  static String getMagazineBaseUrl(Flavors flavor) {
    switch (flavor) {
      case Flavors.DEV:
        return Urls.magazineBaseUrlDev;
      case Flavors.QA:
        return Urls.magazineBaseUrlQA;
      case Flavors.UAT:
        return Urls.magazineBaseUrlUAT;
      case Flavors.PROD:
        return Urls.magazineBaseUrlProd;
      case Flavors.PRE_PROD:
        return Urls.magazineBaseUrlProd;
      default:
        return "";
    }
  }
}