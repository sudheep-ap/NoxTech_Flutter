import 'package:flutter/material.dart';

// App Constants

class AppConstants {
  static const String apiBaseUrl = 'https://send2-dev-api.panasa.online/v1/';

  static const String apiSuccessResponse = 'success';
  static const String apiFailureResponse = 'failed';

  static const customerIdKey = 'customerIdKey';
  static const refreshTokenKey = 'refreshTokenKey';
  static const accessTokenKey = 'accessTokenKey';
  static const profileUrlKey = 'profileUrlKey';
  static const displayNameKey = 'displayNameKey';
  static const firstNameKey = 'firstNameKey';
  static const userLanguageKey = 'userLanguageKey';
}

//Failure messages in case of API failure
class AppFailureMessage {
  static const String unknownError =
      'Oops !\n Something went wrong \n Please try again';
  static String serverFailure = "Oops ! \n Something went wrong.\n\n";
  static String apiFailure = "Request Failed.\n Please try again";
}

//App Colors
class AppColors {
  static const kPrimaryColor = Color(0xff132D39);
  static const kOutlinedButtonColor = Color(0xff2B424D);
  static const kBorderColor = Color(0xffA6B0BB);
  static const kBlueColor = Color(0xff5A37FD);
  static const kOrangeColor = Color(0xffF5AB4E);
  static const kOrangeWithOpacity = Color.fromRGBO(245, 171, 78, 0.1);
  static const kWhiteColor = Color(0xffFFFFFF);
  static const kBlackColor = Color(0xff000000);
  static const kBlackColorWith = Color.fromRGBO(0, 0, 0, 0.5);
  static const kEnteredTextColor = Color(0xff132D39);
  static const kGreyColor = Color(0xffE5ECF4);
  static const kLightYellow = Color(0xffFEF7ED);
  static const kWebTitleColor = Color(0xff010715);
  static const kGradientL = Color(0xffFEF7ED);
  static const kCurrencyCodeColor = Color(0xff3E535E);
  static const kBorderBlue = Color(0xffCCF2FE);
  static const kTextGrey = Color(0xff3E3E3E);
  static const kWebTextfieldTitleColor = Color(0xff373737);
  static const kGreenColor = Color(0xff6BC48D);
  static const kLightGreen = Color(0xffF6FBF8);
  static const kOrangeGredient = Color(0xffFFD3AF);
  static const kLightOrange = Color(0xffFFFDFB);
  static const kChineseRed = Color(0xffD04E1F);
  static const kGhostWhite = Color(0xffF9FAFD);
  static const kVistaWhite = Color(0xffe1d6dc);
  static const kTriadic = Color(0xff29414D);
  static const kRed = Color(0xffC12822);
  static const kLightGreyColor = Color(0xffD3D3D3);
  static const kGray75 = Color(0xffBFBFBF);
  static const kLightBlueColor = Color(0xffD3FCFF);
  static const kGreen = Color(0xff007E86);
  static const kWebSubtitle = Color(0xffFAF9FF);
  static const kWebTextfieldBorder = Color(0xffC8C4C4);
  static const kGrayNew = Color(0xffC4C4C4);
  static const kRadioText = Color(0xff3E3E3E);
  static const kOtpColor = Color(0XFF767676);
  static const kCheckBoxLightBlueCheckColor = Color(0XFF0166FA);
  static const kDividergreyColor = Color(0XFFCFDCE3);
  static var kHintTextColor = const Color(0xffC4C4C4).withOpacity(0.5);
  //----------------------------------------------
  //follow proper naming
  static const kTextGreyColor = Color(0XFF767676);
  static const kTextWhiteColor = Colors.white;

  static const kbgWhiteColor = Colors.white;
  static const kbgLightGreyColor = Color(0XFFF9F9FB);
  static const kCheckBoxBlueCheckColor = Color(0xff5A37FD);
  static const kButtonBlueColor = Color(0xff5A37FD);
  static const kDottedDividerColor = Color(0xffA6B0BB);
  static const kBoxWhiteColor = Colors.white;
  static const kSnackBarSucessColor = Color(0xff007E86);
  static const kSnackBarFailureColor = Color(0xffD04E1F);
  static const kSnackBarErrorColor = Color(0xffD04E1F);
  static const kBecomePartnerBelowBackgroundColor = Color(0xffF6EDE7);
  static const kBoxVioletColor = Color(0xff5A37FD);
  static const kgreyBorderColor = Color(0xffe1d6dc);
  static const kTextRedColor = Color(0xFFFF3B30);
  static const kIconRedColor = Color(0xFFFF3B30);
  static const kTextIndigoColor = Color(0xFF453E8F);
  static const kIconBlackColor = Color(0xff132D39);
  static const kTextBlackColor = Color(0xff000000);
}
