class Urls {
  /// IDS Urls
  static const idsDevBaseUrl = "https://newdev.account.onefin.app/";
  static const idsQaBaseUrl = "https://qa.account.onefin.app/";
  static const idsUatBaseUrl = "https://uat.account.onefin.app/";
  static const idsProdBaseUrl = "https://account.onefin.app/";

  static const getAccessToken = 'connect/token';
  static const getAccessRefreshToken = 'api/customer/get-access-token';

  ///-------------------------------------------------------------------------------

  /// Customer URLs
  static const devCustomerBaseUrl = "https://newdev.customer.onefin.app/";
  static const uatCustomerBaseUrl = "https://uat.customer.onefin.app/";
  static const qaCustomerBaseUrl = "https://qa.customer.onefin.app/";
  static const prodCustomerBaseUrl = "https://customer.onefin.app/";

  static const requestOtpAPI = 'api/onboarding/request-for-otp';
  static const validateOtpAPI = 'api/onboarding/validate-otp';
  static const onboardingCustomerAPI = 'api/onboarding/onboard-customer';
  static const customerProfile = 'api/customer/customer-profile';
  static const customerEmail = 'api/customer/update-customer-email';
  static const logoutApi = 'api/customer/logout';
  static const deleteApi = 'api/customer/delete-customer-data';
  static const assessmentActivityDone = 'api/customer/assessment-activity-done';
  static const getLatestVersionAPI = 'api/customer/latest-version';
  static const collectUserDetailsApi = 'api/customer/auto-login';
  static const joinOurPriorityList = 'api/customer/join-our-priority-list';
  static const setCouponCode = '/api/customer/moneysign-coupon-code';

  ///-------------------------------------------------------------------------------

  /// MoneySign URLs
  static const devMsBaseUrl = 'https://newdev.ms.onefin.app/';
  static const qaMsBaseUrl = 'https://qa.ms.onefin.app/';
  static const uatMsBaseUrl = 'https://uat.ms.onefin.app/';
  static const prodMsBaseUrl = 'https://ms.onefin.app/';

  static const userMoneySign = 'api/user/money-sign';
  static const getQuestionAPI = 'api/user/money-sign-quiz';
  static const saveUserAnswerAPI = 'api/user/money-sign/add-response';
  static const generateMsAPI = 'api/user/money-sign/generate';
  static const getMsAPI = 'api/user/money-sign/moneysigndetails';
  static const userFeedback = 'api/user/money-sign/feedback';
  static const logAssessmentStart = 'api/user/assessment-log';

  ///-------------------------------------------------------------------------------

  ///For you Urls
  static const forYouBaseUrlDev = "https://dev.websiteapi.onefin.app/api/";
  static const forYouBaseUrlQA = "https://qa.websiteapi.onefin.app/api/";
  static const forYouBaseUrlUAT = "https://uat.websiteapi.onefin.app/api/";
  static const forYouBaseUrlProd = "https://websiteapi.onefin.app/api/";

  static const forYouAuthDev = "0e12VECKLP";
  static const forYouAuthProd = "F9B3C732768CDA5E1E9A89349C4E6";

  static const getForYou = "v1/post/getForYou";
  static const getMagazine = "v1/post/getPostById";
  static const getStatusTracker = "api/customer/get-state-tracker-data";
  static const getStatusTrackerV2 = "api/customer/get-state-tracker-data-v2";

  ///Assisted Flow Urls
  static const requestEarlyAccess = 'api/customer/request-early-access';
  static const saveAppointment = 'api/customer/save-appointment';
  static const saveAppointment2 = 'api/customer/save-appointment-v2';
  static const membershipProfile = 'api/customer/membership-profile';
  static const recommendedActionPlan = 'api/customer/action-plan';
  static const toggleActionPlanStatus = 'api/customer/action-plan-status';
  static const cancelAppointment = 'api/customer/cancel-meeting';
  static const customerAppointmentStatus =
      'api/customer/customer-appointment-status';
  static const whatsNewViewed = 'api/customer/new-feature-card-v2';
  static const getCalendlyUrl = 'api/customer/send-file';
  static const getReportSynopsis = "api/customer/report-synopsis";

  ///-------------------------------------------------------------------------------

  /// Magazine Urls
  static const magazineBaseUrlDev = "https://dev.websiteapi.onefin.app/api/";
  static const magazineBaseUrlQA = "https://qa.websiteapi.onefin.app/api/";
  static const magazineBaseUrlUAT = "https://uat.websiteapi.onefin.app/api/";
  static const magazineBaseUrlProd = "https://websiteapi.onefin.app/api/";

  static const magazineAuthValue = "F9B3C732768CDA5E1E9A89349C4E6";
  static const magazineQaDevAuthValue = "0e12VECKLP";

  static const magazineCategories = "v2/post/getForYouByMagazineCategory?";
  static const magazineDetails = "v1/post/getPostById?";
  static const magazineRecommended =
      "v2/post/getRecommendedStoriesForUser?"; // old
  static const magazineNewRecommended =
      "v2/post/getRecommendedStoriesForUserV2?";
}