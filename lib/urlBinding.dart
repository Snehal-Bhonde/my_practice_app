// ignore_for_file: constant_identifier_names, non_constant_identifier_names

// 🌎 Project imports:

import 'package:my_practice_app/urls.dart';

enum Flavors { DEV, QA, UAT, PROD, PRE_PROD }

class FlavorConfig {
  factory FlavorConfig({required Flavors? flavor}) {
    _instance ??= FlavorConfig._internal(
      flavor!,
      getValue(flavor),
      getCustomerBaseUrl(flavor),
      getMoneysignBaseUrl(flavor),
      getIdsBaseUrl(flavor),
      getForYouBaseUrl(flavor),
      getMagazineBaseUrl(flavor),
    );
    return _instance!;
  }

  FlavorConfig._internal(
    this.flavor,
    this.name,
    this.customerBaseUrl,
    this.moneysignBaseUrl,
    this.idsBaseUrl,
    this.forYouBaseUrl,
    this.magazineBaseUrl,
  );
  final Flavors flavor;
  final String name;
  final String customerBaseUrl;
  final String moneysignBaseUrl;
  final String forYouBaseUrl;
  final String idsBaseUrl;
  final String magazineBaseUrl;
  static FlavorConfig? _instance;

  static FlavorConfig get instance {
    return _instance!;
  }

  static bool isDEV() => _instance!.flavor == Flavors.DEV;

  static bool isQA() => _instance!.flavor == Flavors.QA;

  static bool isUAT() => _instance!.flavor == Flavors.UAT;

  static bool isPROD() => _instance!.flavor == Flavors.PROD;

  static bool isPrePROD() => _instance!.flavor == Flavors.PRE_PROD;

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