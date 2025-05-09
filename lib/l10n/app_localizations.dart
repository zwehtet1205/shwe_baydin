import 'package:flutter/material.dart';

class AppLocalizations {
  AppLocalizations(this.locale);

  final Locale locale;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const _localizedValues = {
    'en': {
      'welcomeMessage': 'Hi Welcome!',
      'submitMobileNumber': 'Submit your Mobile number',
      'logInOrSignUp': 'Log in or Sign up',
      'enterMobileNumber': 'Enter Mobile number',
      'sendOtp': 'SEND OTP',
      'or': 'Or',
      'continueWithEmail': 'CONTINUE WITH EMAIL',
      'termsAndPrivacy': 'BY SIGNING UP, YOU AGREE TO OUR TERMS OF USE AND PRIVACY POLICY',
      'selectLanguage': 'Select Language',
      'english': 'English',
      'burmese': 'Burmese',
      "submitEmail": "Submit your Email",
      "enterEmail": "Enter Eamil",
      "continueWithMobileNumber": "Continue with Mobile Number",
      "alreadyHaveAccount": "Already have an account?",
      "otpVerification": "OTP Verification",
      "otpSentToEmail": "An 4 digit code has been sent to your Email ID",
      "verifyOtp": "Verify OTP",
      "didNotReceiveCode": "if you didn't receive a code! ",
      "resendOtp": "Resend",
      "changeEmail": "Change Email",
      "otpSentToNumber": "An 4 digt code has been set to your number",
      "changeMobileNumber": "Change Mobile Number",
      "mobileSuccessMessage": "Mobile verification has successfully done",
      "emailSuccessMessage": "Email verification has successfully done",
      "continue": "Continue",
      "registerTitle": "Create Your Account",
      "registerSubtitle": "Join us to explore your personalized astrological journey",
      "username": "Username",
      "password": "Password",
      "birthdate": "Birthdate",
      "register": "Register",
      "loginTitle": "Welcome Back",
      "loginSubtitle": "Please enter your credentials to continue",
      "phoneOrEmail": "Phone or Email",
      "forgetPassword": "Forget Password?",
      "login": "Login",
      "doNotHaveAccount": "Don't have an account?",
      "forgetPasswordTitle": "Reset Password",
      "forgetPasswordSubtitle": "Enter your phone number to receive an OTP",
      "changePasswordTitle": "Change Password",
      "changePasswordSubtitle": "Set a new password for your account",
      "newPassword": "New Password",
      "confirmPassword": "Confirm Password",
      "submit": "Submit",
      "rememberMe": "Remember Me",
      "hello": "Hello",
      "welcomeToAstro": "Welcome to\nShwe Bay Din",
      "welcomeSubtitle": "Choose the questions\nyou want to ask",
      "zodiacLeo": "Leo",
      "zodiacCancer": "Cancer",
      "zodiacLibra": "Libra",
      "zodiacScorpio": "Scorpio",
      "astroServices": "astro Services",
      "call": "Call",
      "chat": "Chat",
      "video": "Video",
      "feedback": "Feedback",
      "seeAll": "See all",
      "astrologers": "Astrologers",
      "acharyaVenkat": "Acharya Venkat",
      "acharyaAru": "Acharya Aru",
      "acharyaVikram": "Acharya Vikram",
      "venusTransit": "Venus Transit",
      "venusTransitDescription": "Venus Transit today signifies love, beauty, relationships, pleasure, and material life. View more...",
      "home": "Home",
      "astrologersTab": "Astrologers",
      "services": "Services",
      "notifications": "Notifications",
      "profile": "Profile",
      "userDetails": "User Details",
      "email": "Email",
      "phone": "Phone",
      "joined": "Joined",
      "updatePreferences": "Update Preferences",
      "languagePreference": "Language Preference",
      "notificationSettings": "Notification Settings",
      "save": "Save",
      "logout": "Logout",
      "logoutConfirmation": "Are you sure you want to logout?",
      "yes": "Yes",
      "no": "No",
      "success": "Success",
      "preferencesUpdated": "Preferences updated successfully",
      "name" : "Name",
      "address" : "Address",
      "dob" : "Date of Birth",
      "settings": "Settings",
      "profilePreferences": "Profile Preferences",
      "notificationPreferences": "Notification Preferences",
      "securityPreferences": "Security Preferences",
      "languagePreferences": "Language Preferences",
      "appearancePreferences": "Appearance Preferences",
      "privacyAndPolicies": "Privacy & Policies",
      "aboutUs": "About Us",
      "contactUs": "Contact Us",
      "others": "Others",
      "comingSoon": "Coming Soon",
      "contact" : "Contact",
      "acharyaPriya": "Acharya Priya",
      "aboutMe": "About Me",
      "ratingOverview": "Rating Overview",
      "reviews": "Reviews",
      "seeAllReviews": "See all reviews",
      "reports": "Reports",
      "similarConsultants": "Similar Consultants"
    },
    'my': {
      'welcomeMessage': 'မင်္ဂလာပါ!',
      'submitMobileNumber': 'သင့်ဖုန်းနံပါတ်ကို တင်ပြပါ',
      'logInOrSignUp': 'ဝင်ရောက်ပါ သို့မဟုတ် စာရင်းသွင်းပါ',
      'enterMobileNumber': 'ဖုန်းနံပါတ်ထည့်ပါ',
      'sendOtp': 'OTP ပို့ပါ',
      'or': 'သို့မဟုတ်',
      'continueWithEmail': 'အီးမေးလ်ဖြင့် ဆက်လက်ပါ',
      'termsAndPrivacy': 'အကောင့်ဖွင့်ခြင်းဖြင့်၊ ကျွန်ုပ်တို့၏ အသုံးပြုမှုစည်းမျဉ်းများနှင့် ကိုယ်ရေးကိုယ်တာမူဝါဒကို သင်သဘောတူပါသည်',
      'selectLanguage': 'ဘာသာစကားရွေးချယ်ပါ',
      'english': 'အင်္ဂလိပ်',
      'burmese': 'မြန်မာ',
      "submitEmail": "သင့်အီးမေးလ်ကို တင်ပြပြပါ",
      "enterEmail": "အီးမေးလ်ထည့်ပါ",
      "continueWithMobileNumber": "ဖုန်းနံပါတ်ဖြင့် ဆက်လက်လက်ပါ",
      "alreadyHaveAccount": "သင့်မှာ အကောင့်ရှိပါပြီလား?",
      "otpVerification": "OTP အတည်ပြုခြင်း",
      "otpSentToEmail": "သင့်အီးမေးလ်အိုင်ဒီသို့ ၄ လုံးပါသော ကုဒ်တစ်ခုကို ပို့ပေးခဲ့ပါသည်",
      "verifyOtp": "OTP အတည်ပြုမည်",
      "didNotReceiveCode": "အကယ်၍ သင်ကုဒ်တစ်ခုမရရှိခဲ့ပါက! ",
      "resendOtp": "ပြန်လည်ပို့ပါ",
      "changeEmail": "အီးမေးလ်ပြောင်းရန်",
      "otpSentToNumber": "သင့်နံပါတ်သို့ ၄ လုံးပါသော ကုဒ်တစ်ခုကို ပို့ပေးခဲ့ပါသည်",
      "changeMobileNumber": "ဖုန်းနံပါတ်ပြောင်းရန်",
      "mobileSuccessMessage": "ဖုန်းနံပါတ်တ်အတည်ပြုချက် အောင်မြင်စွာ ပြီးမြောက်ပါသည်",
      "emailSuccessMessage": "အီးမေးလ်အတည်ပြုချက် အောင်မြင်စွာ ပြီးမြောက်ပါသည်",
      "continue": "ဆက်သွားမည်",
      "registerTitle": "သင့်အကောင့်ကို ဖန်တီးပါ",
      "registerSubtitle": "ကျွန်ုပ်တို့နှင့်ပူးပေါင်းပြီး သင့်ကံကြမ္မာကို လေ့လာကြည့်ပါ",
      "username": "သုံးသူအမည်",
      "password": "စကားဝှက်",
      "birthdate": "မွေးနေ့",
      "register": "အကောင့်ဖွင့်မည်",
      "loginTitle": "ပြန်လည်ကြိုဆိုပါတယ်",
      "loginSubtitle": "ဆက်လုပ်ဖို့အတွက် လော့ဂ်အင်အချက်အလက်တွေထည့်ပါ။",
      "phoneOrEmail": "ဖုန်းနံပါတ် သို့မဟုတ် အီးမေးလ်",
      "forgetPassword": "စကားဝှက်မေ့သွားပါသည်?",
      "login": "ဝင်မည်",
      "doNotHaveAccount": "အကောင့်မရှိသေးပါဘူးလား?",
      "forgetPasswordTitle": "စကားဝှက်ပြန်လည်သတ်မှတ်ရန်",
      "forgetPasswordSubtitle": "OTP လက်ခံရရှိရန် သင့်ဖုန်းနံပါတ်ထည့်ပါ",
      "changePasswordTitle": "စကားဝှက်ပြောင်းရန်",
      "changePasswordSubtitle": "သင့်အကောင့်အတွက် စကားဝှက်အသစ်သတ်မှတ်ပါ",
      "newPassword": "စကားဝှက်အသစ်",
      "confirmPassword": "စကားဝှက်အသစ်ကို အတည်ပြုပါ",
      "submit": "တင်သွင်းမည်",
      "rememberMe": "ငါ့ကိုမှတ်ထားပါ",
      "hello": "မင်္ဂလာပါ",
      "welcomeToAstro" : "ရွှေဗေဒင် မှ\nကြိုဆိုပါတယ်",
      "welcomeSubtitle": "လူကြီးမင်တို့ မေးလိုသည့်မေးခွန်းများကို\nမေးရန်အတွက် ရွေးချယ် ပါ ",
      "zodiacLeo": "လီယို",
      "zodiacCancer": "ကပ်စစာ",
      "zodiacLibra": "လိုက်ဘရာ",
      "zodiacScorpio": "စကောပ်ပီယို",
      "services": "ဝန်ဆောင်မှုများ",
      "call": "ခေါ်ဆိုမှု",
      "chat": "ချက်",
      "video": "ဗီဒီယို",
      "feedback": "အမြင်အမျှော်",
      "seeAll": "အားလုံးကို ကြည့်ပါ",
      "astrologers": "ဗေဒင်ဆရာများ",
      "acharyaVenkat": "အာချရာဗင်ကက်",
      "acharyaAru": "အာချရာအရူ",
      "acharyaVikram": "အာချရာဗိကရာမ်",
      "venusTransit": "ဗင်နပ်စ်ခရီး",
      "venusTransitDescription": "ဗင်နပ်စ်ခရီးသည် ချစ်ခြင်း၊ အလှ၊ ဆက်ဆံရေး၊ ပျော်ရွှင်မှု၊ ပစ္စည်းဘဝကို နေ့စဉ်အထောက်အကူပြုသည်။ ပိုမိုကြည့်ရှုရန်...",
      "home": "ပင်မစာမျက်နှာ",
      "astrologersTab": "ဗေဒင်ဆရာများ",
      "astroServices" : "Astro ဝန်ဆောင်မှုများ",
      "notifications": "အသိပေးချက်များ",
      "profile": "ပရိုဖိုင်",
      "userDetails": "အသုံးပြုသူ အချက်အလက်များ",
      "email": "အီးမေးလ်",
      "phone": "ဖုန်း",
      "joined": "ပါဝင်ခဲ့သည်",
      "updatePreferences": "ဦးစားပေးမှုများ အပ်ဒိတ်လုပ်ပါ",
      "languagePreference": "ဘာသာစကား ဦးစားပေးမှု",
      "notificationSettings": "အသိပေးချက် ဆက်တင်များ",
      "save": "သိမ်းဆည်းပါ",
      "logout": "ထွက်မည်",
      "logoutConfirmation": "ထွက်မည်မှာ သေချာပါသလား။",
      "yes": "ဟုတ်ကဲ့",
      "no": "မဟုတ်ပါ",
      "success": "အောင်မြင်ပါပြီ",
      "preferencesUpdated": "ဦးစားပေးမှုများ အောင်မြင်စွာ အပ်ဒိတ်လုပ်ပြီးပါပြီ",
      "name" : "အမည်",
      "address" : "လိပ်စာ",
      "dob" : "မွေးနေ့",
      "settings": "ဆက်တင်များ",
      "profilePreferences": "ပရိုဖိုင် ဦးစားပေးမှု",
      "notificationPreferences": "အသိပေးချက် ဦးစားပေးမှု",
      "securityPreferences": "လုံခြုံရေး ဦးစားပေးမှု",
      "languagePreferences": "ဘာသာစကား ဦးစားပေးမှု",
      "appearancePreferences": "ပုံရိပ် ဦးစားပေးမှု",
      "privacyAndPolicies": "ကိုယ်ပိုင်ရေးနှင့် မူဝါဒများ",
      "aboutUs": "ကျွန်တော်တို့အကြောင်း",
      "contactUs": "ကျွန်တော်တို့ကို ဆက်သွယ်ပါ",
      "others": "အခြားများ",
      "comingSoon": "မကြာမီ ပွင့်လှစ်မည်",
      "contact" : "ဆက်သွယ်ရန်",
      "aboutMe": "ကျွန်တော်အကြောင်း",
      "ratingOverview": "အဆင့်သတ်မှတ်မှု အကျဉ်းချုပ်",
      "reviews": "သုံးသပ်ချက်များ",
      "seeAllReviews": "သုံးသပ်ချက်များ အားလုံး ကြည့်ရန်",
      "reports": "အစီရင်ခံစာများ",
      "similarConsultants": "တူညီသော အကြံပေးသူများ",
      "acharyaPriya": "အချာရာ ပရီယာ",
    },
    
  };

  String get welcomeMessage => _localizedValues[locale.languageCode]!['welcomeMessage']!;
  String get submitMobileNumber => _localizedValues[locale.languageCode]!['submitMobileNumber']!;
  String get logInOrSignUp => _localizedValues[locale.languageCode]!['logInOrSignUp']!;
  String get enterMobileNumber => _localizedValues[locale.languageCode]!['enterMobileNumber']!;
  String get sendOtp => _localizedValues[locale.languageCode]!['sendOtp']!;
  String get or => _localizedValues[locale.languageCode]!['or']!;
  String get continueWithEmail => _localizedValues[locale.languageCode]!['continueWithEmail']!;
  String get termsAndPrivacy => _localizedValues[locale.languageCode]!['termsAndPrivacy']!;
  String get selectLanguage => _localizedValues[locale.languageCode]!['selectLanguage']!;
  String get english => _localizedValues[locale.languageCode]!['english']!;
  String get burmese => _localizedValues[locale.languageCode]!['burmese']!;
  String get submitEmail => _localizedValues[locale.languageCode]!['submitEmail']!;
  String get enterEmail => _localizedValues[locale.languageCode]!['enterEmail']!;
  String get continueWithMobileNumber => _localizedValues[locale.languageCode]!['continueWithMobileNumber']!;
  String get alreadyHaveAccount => _localizedValues[locale.languageCode]!['alreadyHaveAccount']!;
  String get otpVerification => _localizedValues[locale.languageCode]!['otpVerification']!;
  String get otpSentToEmail => _localizedValues[locale.languageCode]!['otpSentToEmail']!;
  String get verifyOtp => _localizedValues[locale.languageCode]!['verifyOtp']!;
  String get didNotReceiveCode => _localizedValues[locale.languageCode]!['didNotReceiveCode']!;
  String get resendOtp => _localizedValues[locale.languageCode]!['resendOtp']!;
  String get changeEmail => _localizedValues[locale.languageCode]!['changeEmail']!;
  String get otpSentToNumber => _localizedValues[locale.languageCode]!['otpSentToNumber']!;
  String get changeMobileNumber => _localizedValues[locale.languageCode]!['changeMobileNumber']!;
  String get mobileSuccessMessage => _localizedValues[locale.languageCode]!['mobileSuccessMessage']!;
  String get emailSuccessMessage => _localizedValues[locale.languageCode]!['emailSuccessMessage']!;
  String get continueNext => _localizedValues[locale.languageCode]!['continue']!;
  String get registerTitle => _localizedValues[locale.languageCode]!['registerTitle']!;
  String get registerSubtitle => _localizedValues[locale.languageCode]!['registerSubtitle']!;
  String get username => _localizedValues[locale.languageCode]!['username']!;
  String get password => _localizedValues[locale.languageCode]!['password']!;
  String get birthdate => _localizedValues[locale.languageCode]!['birthdate']!;
  String get register => _localizedValues[locale.languageCode]!['register']!;
  String get loginTitle => _localizedValues[locale.languageCode]!['loginTitle']!;
  String get loginSubtitle => _localizedValues[locale.languageCode]!['loginSubtitle']!;
  String get phoneOrEmail => _localizedValues[locale.languageCode]!['phoneOrEmail']!;
  String get forgetPassword => _localizedValues[locale.languageCode]!['forgetPassword']!; 
  String get login => _localizedValues[locale.languageCode]!['login']!;
  String get forgetPasswordTitle => _localizedValues[locale.languageCode]!['forgetPasswordTitle']!;
  String get forgetPasswordSubtitle => _localizedValues[locale.languageCode]!['forgetPasswordSubtitle']!;
  String get changePasswordTitle => _localizedValues[locale.languageCode]!['changePasswordTitle']!;
  String get changePasswordSubtitle => _localizedValues[locale.languageCode]!['changePasswordSubtitle']!;
  String get newPassword => _localizedValues[locale.languageCode]!['newPassword']!;
  String get confirmPassword => _localizedValues[locale.languageCode]!['confirmPassword']!;
  String get submit => _localizedValues[locale.languageCode]!['submit']!;
  String get doNotHaveAccount => _localizedValues[locale.languageCode]!['doNotHaveAccount']!;
  String get rememberMe => _localizedValues[locale.languageCode]!['rememberMe']!;
  String get zodiacLeo => _localizedValues[locale.languageCode]!['zodiacLeo']!;
  String get zodiacCancer => _localizedValues[locale.languageCode]!['zodiacCancer']!;
  String get zodiacLibra => _localizedValues[locale.languageCode]!['zodiacLibra']!;
  String get zodiacScorpio => _localizedValues[locale.languageCode]!['zodiacScorpio']!;
  String get call => _localizedValues[locale.languageCode]!['call']!;
  String get chat => _localizedValues[locale.languageCode]!['chat']!;
  String get video => _localizedValues[locale.languageCode]!['video']!;
  String get feedback => _localizedValues[locale.languageCode]!['feedback']!;
  String get seeAll => _localizedValues[locale.languageCode]!['seeAll']!;
  String get astrologers => _localizedValues[locale.languageCode]!['astrologers']!;
  String get acharyaVenkat => _localizedValues[locale.languageCode]!['acharyaVenkat']!;
  String get acharyaAru => _localizedValues[locale.languageCode]!['acharyaAru']!;
  String get acharyaVikram => _localizedValues[locale.languageCode]!['acharyaVikram']!;
  String get venusTransit => _localizedValues[locale.languageCode]!['venusTransit']!;
  String get venusTransitDescription => _localizedValues[locale.languageCode]!['venusTransitDescription']!;
  String get home => _localizedValues[locale.languageCode]!['home']!;
  String get astrologersTab => _localizedValues[locale.languageCode]!['astrologersTab']!;
  String get services => _localizedValues[locale.languageCode]!['services']!;
  String get notifications => _localizedValues[locale.languageCode]!['notifications']!;
  String get profile => _localizedValues[locale.languageCode]!['profile']!;
  String get hello => _localizedValues[locale.languageCode]!['hello']!;
  String get welcomeToAstro => _localizedValues[locale.languageCode]!['welcomeToAstro']!;
  String get welcomeSubtitle => _localizedValues[locale.languageCode]!['welcomeSubtitle']!;
  String get astroServices => _localizedValues[locale.languageCode]!['astroServices']!;
  String get userDetails => _localizedValues[locale.languageCode]!['userDetails']!;
  String get email => _localizedValues[locale.languageCode]!['email']!;
  String get phone => _localizedValues[locale.languageCode]!['phone']!;
  String get joined => _localizedValues[locale.languageCode]!['joined']!;
  String get updatePreferences => _localizedValues[locale.languageCode]!['updatePreferences']!;
  String get languagePreference => _localizedValues[locale.languageCode]!['languagePreference']!;
  String get notificationSettings => _localizedValues[locale.languageCode]!['notificationSettings']!;
  String get save => _localizedValues[locale.languageCode]!['save']!;
  String get logout => _localizedValues[locale.languageCode]!['logout']!;
  String get logoutConfirmation => _localizedValues[locale.languageCode]!['logoutConfirmation']!;
  String get yes => _localizedValues[locale.languageCode]!['yes']!;
  String get no => _localizedValues[locale.languageCode]!['no']!;
  String get success => _localizedValues[locale.languageCode]!['success']!;
  String get preferencesUpdated => _localizedValues[locale.languageCode]!['preferencesUpdated']!;
  String get name => _localizedValues[locale.languageCode]!['name']!;
  String get address => _localizedValues[locale.languageCode]!['address']!;
  String get dob => _localizedValues[locale.languageCode]!['dob']!;
  String get settings => _localizedValues[locale.languageCode]!['settings']!;
  String get profilePreferences => _localizedValues[locale.languageCode]!['profilePreferences']!;
  String get notificationPreferences => _localizedValues[locale.languageCode]!['notificationPreferences']!;
  String get securityPreferences => _localizedValues[locale.languageCode]!['securityPreferences']!;
  String get languagePreferences => _localizedValues[locale.languageCode]!['languagePreferences']!;
  String get appearancePreferences => _localizedValues[locale.languageCode]!['appearancePreferences']!;
  String get privacyAndPolicies => _localizedValues[locale.languageCode]!['privacyAndPolicies']!;
  String get aboutUs => _localizedValues[locale.languageCode]!['aboutUs']!;
  String get contactUs => _localizedValues[locale.languageCode]!['contactUs']!;
  String get others => _localizedValues[locale.languageCode]!['others']!;
  String get comingSoon => _localizedValues[locale.languageCode]!['comingSoon']!;
  String get contact => _localizedValues[locale.languageCode]!['contact']!;
  String get aboutMe => _localizedValues[locale.languageCode]!['aboutMe']!;
  String get ratingOverview => _localizedValues[locale.languageCode]!['ratingOverview']!;
  String get reviews => _localizedValues[locale.languageCode]!['reviews']!;
  String get seeAllReviews => _localizedValues[locale.languageCode]!['seeAllReviews']!;
  String get reports => _localizedValues[locale.languageCode]!['reports']!;
  String get similarConsultants => _localizedValues[locale.languageCode]!['similarConsultants']!;
  String get acharyaPriya => _localizedValues[locale.languageCode]!['acharyaPriya']!;
  
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'my'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) async => AppLocalizations(locale);

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}