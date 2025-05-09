// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../l10n/app_localizations.dart';

// class HoroscopeController extends GetxController {
//   var selectedSign = ''.obs;
//   var horoscopeText = ''.obs;

//   Map<String, Map<String, String>> get mockHoroscopes {
//     final locale = Get.locale?.languageCode ?? 'en';
//     if (locale == 'my') {
//       return {
//         'Aries': 'ယနေ့ Aries၊ စိန်ခေါ်မှုအသစ်များကို ယုံကြည်မှုဖြင့် လက်ခံပါ။ သင့်စွမ်းအင်သည် အောင်မြင်မှုကို ဦးဆောင်လိမ့်မည်။',
//         'Taurus': 'Taurus၊ တည်ငြိမ်မှုကို အာရုံစိုက်ပါ။ ယနေ့ ဘဏ္ဍာရေးဆုံးဖြတ်ချက်များသည် အကျိုးဖြစ်ထွန်းလိမ့်မည်။',
//         'Gemini': 'Gemini၊ ဆက်သွယ်ရေးသည် သင့်အားသာချက်ဖြစ်သည်။ လှုံ့ဆော်မှုအတွက် အခြားသူများနှင့် ချိတ်ဆက်ပါ။',
//         'Cancer': 'Cancer၊ သင့်အလိုလိုသိမှုကို ယုံကြည်ပါ။ စိတ်ခံစားမှုရှင်းလင်းမှုသည် သင့်လမ်းကြောင်းကို လမ်းညွှန်ပေးလိမ့်မည်။',
//         'Leo': 'Leo၊ တောက်ပစွာထွန်းလင်းပါ။ သင့်တီထွင်ဖန်တီးမှုသည် အပြုသဘောဆောင်သော အခွင့်အလမ်းများကို ဆွဲဆောင်လိမ့်မည်။',
//         'Virgo': 'Virgo၊ အသေးစိတ်ကို ဂရုစိုက်ခြင်းသည် ဆုလာဘ်များ ယူဆောင်လာလိမ့်မည်။ စနစ်တကျရှိနေပါ။',
//         'Libra': 'Libra၊ ဟန်ချက်ညီမှုသည် အဓိကဖြစ်သည်။ ဆက်ဆံရေးတွင် သဟဇာတဖြစ်မှုသည် ငြိမ်းချမ်းမှုကို ယူဆောင်လာလိမ့်မည်။',
//         'Scorpio': 'Scorpio၊ နက်ရှိုင်းစွာ စူးစမ်းပါ။ သင့်စိတ်အားထက်သန်မှုသည် ဖုံးကွယ်ထားသော အမှန်တရားများကို ဖော်ထုတ်လိမ့်မည်။',
//         'Sagittarius': 'Sagittarius၊ စွန့်စားခန်းက စောင့်ကြိုနေသည်။ အကောင်းမြင်စိတ်ဖြင့် အသစ်သော အလှည့်အပြောင်းများကို စူးစမ်းပါ။',
//         'Capricorn': 'Capricorn၊ ကြိုးစားအားထုတ်မှုသည် အကျိုးဖြစ်ထွန်းသည်။ ရေရှည်အကျိုးအတွက် စည်းကမ်းရှိနေပါ။',
//         'Aquarius': 'Aquarius၊ ဆန်းသစ်တီထွင်မှုသည် သင့်အားသာချက်ဖြစ်သည်။ သင့်ထူးခြားသော အကြံဉာဏ်များကို မျှဝေပါ။',
//         'Pisces': 'Pisces၊ သင့်စိတ်ကူးဉာဏ်ကို လွှတ်ထားပါ။ တီထွင်ဖန်တီးမှုပရောဂျက်များသည် ထွန်းကားလိမ့်မည်။',
//       };
//     }
//     return {
//       'Aries': 'Today, Aries, embrace new challenges with confidence. Your energy will lead to success.',
//       'Taurus': 'Taurus, focus on stability. Financial decisions made today will pay off.',
//       'Gemini': 'Gemini, communication is your strength. Connect with others for inspiration.',
//       'Cancer': 'Cancer, trust your intuition. Emotional clarity will guide your path.',
//       'Leo': 'Leo, shine bright. Your creativity will attract positive opportunities.',
//       'Virgo': 'Virgo, attention to detail will bring rewards. Stay organized.',
//       'Libra': 'Libra, balance is key. Harmony in relationships will bring peace.',
//       'Scorpio': 'Scorpio, dive deep. Your passion will uncover hidden truths.',
//       'Sagittarius': 'Sagittarius, adventure awaits. Explore new horizons with optimism.',
//       'Capricorn': 'Capricorn, hard work pays off. Stay disciplined for long-term gains.',
//       'Aquarius': 'Aquarius, innovation is your strength. Share your unique ideas.',
//       'Pisces': 'Pisces, let your imagination soar. Creative projects will flourish.',
//     };
//   }

//   void selectSign(String sign) {
//     selectedSign.value = sign;
//     horoscopeText.value = mockHoroscopes[sign] ?? 'Select a sign to see your horoscope.';
//   }
// }