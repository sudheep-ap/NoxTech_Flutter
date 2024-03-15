import 'package:flutter/material.dart';

import 'constants.dart';

class AppMethods {
//To show snackbar
  static void showSnackBar(context, message, clr) {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: clr,
      behavior: SnackBarBehavior.floating,
      padding: const EdgeInsets.all(15),
      content: Text(message,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white)),
      duration: const Duration(seconds: 3),
    ));
  }

//To show linear loading
  void showLinearLoading(
      context, bool isTouchDimissable, bool isBackNavAllowed) {
    showModalBottomSheet(
        isDismissible: isTouchDimissable,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (ctx) => WillPopScope(
            onWillPop: () async {
              return isBackNavAllowed;
            },
            child: const LinearProgressIndicator(
              color: AppColors.kBlueColor,
            )));
  }
}

// // //To remove all routes and navigate to mainScreen(HOME)
// //   static void navigateToMainScreen(context) {
// //     Navigator.pushAndRemoveUntil(
// //         context,
// //         MaterialPageRoute(builder: (context) => const ScreenMainPage()),
// //         (Route<dynamic> route) => false);
// //   }

// // //To remove all routes and navigate to success screen
// //   static void navigateToSuccessScreen(context) {
// //     Navigator.pushAndRemoveUntil(
// //         context,
// //         MaterialPageRoute(builder: (context) => const SuccessScreen()),
// //         (Route<dynamic> route) => false);
// //   }

// //To check API is status is success or not
//   static String checkApiResponse(response) {
//     return response.toString().toLowerCase();
//   }

// //To extract color code from hexcode - Color()
//   // static int getColor(String? colorCode) {
//   //   if (colorCode == null || colorCode.toString().isEmpty) {
//   //     return int.parse('0xff000000'); // 0xff000000 // Black  color
//   //   } else {
//   //     return int.parse(colorCode.replaceAll("#", "0xFF"));
//   //   }
//   // }

// //To extract and return Color widget from hexcode
//   static Color getColorW(String? colorCode, [Color? defaultColor]) {
//     if (colorCode == null || colorCode.toString().isEmpty) {
//       return (defaultColor ??
//           AppColors.kPrimaryColor); // 0xff000000 // Black color
//     } else {
//       final color = int.parse(colorCode.replaceAll("#", "0xFF"));
//       return (Color(color));
//     }
//   }

// //Url laucher
//   static Future<void> lauchUrl(url) async {
//     if (!await launchUrl(Uri.parse(url))) {
//       throw Exception('Could not launch $url');
//     }
//   }

// //To log out user
//   static void userLogOut(context) async {
//     late LogOutUseCase logOutUseCase;
//     logOutUseCase = injector<LogOutUseCase>();

//     //Remove datas from local db
//     await UserPreferencesManager.removeAllData();
//     //call logout API
//     await logOutUseCase.execute();
//     //---------------

//     //Navigate to home screen
//     AppMethods.navigateToMainScreen(context);
//   }

//   //To get language full name using language code

//   static String getLanguageName(String languageCode) {
//     var languageMap = {
//       'en': 'English',
//       'es': 'Spanish',
//       'fr': 'French',
//       'de': 'German',
//       'it': 'Italian',
//       'pt': 'Portuguese',
//       'ru': 'Russian',
//       'ja': 'Japanese',
//       'zh': 'Chinese',
//       'hi': 'Hindi',
//       'ar': 'Arabic',
//       'ml': 'Malayalam'
//     };

//     return languageMap[languageCode.toLowerCase()] ?? 'Unknown Language';
//   }
// }
