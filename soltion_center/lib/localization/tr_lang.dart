import 'package:soltion_center/controllers/localization_controller.dart';
import 'package:soltion_center/localization/Localization.dart';

class TRLocalization implements Localization{
  @override
  String? appDescription = 'Solution Center uygulaması, üniversite öğrencilerini hedef alarak onlar arasında bir dayanışma ve bilgi paylaşım platformu olarak tasarlanmış bir mobil uygulamadır.  Üniversite hayatı, öğrenciler için birçok fırsat ve deneyim sunmasının yanı sıra çeşitli zorluklar ve problemler de içerir. Üniversite yaşamını kolaylaştırmak ve birbirlerine yardımcı olmak isteyen öğrenciler arasında bir bağlantı noktası sunmayı amaçlayan bu uygulama sayesinde karşılaşılan problemlere öğrenciler daha hızlı ve etkili çözümler bulabilir.';

  @override
  String? appTitle = 'Çözüm Merkezi';

  @override
  String? email;

  @override
  LangDirection langDirection = LangDirection.left;

  @override
  Map<String, String>? languageTitles = {
    'en': 'İngilizce',
    'tr': 'Türkçe',
  };

  @override
  String? logOut = 'Oturumu kapat';

  @override
  String? login = 'Giriş';

  @override
  String? loginText = 'Zaten hesabınız var mı?';

  @override
  String? password = 'Şifre';

  @override
  String? register = 'Kaydol';

  @override
  String? registerText = 'Henüz bir hesabınız yok mu?';

  @override
  String? userName = 'Kullanıcı Adı';

  @override
  String? userNotFound = 'Kullanıcı Bulunamadı';

  @override
  String? accept = 'Kabul';

  @override
  String? dark = 'karanlık';

  @override
  String? done = 'Tamamlandı';

  @override
  String? language = 'Dil';


  @override
  String? theme = 'Tema';

  @override
  String? system = 'Sistem';

  @override
  String? languageCode = 'Turkçe';

  @override
  String? languageDialogDescription =  'Uygulamanın dilini değiştirmek için istediğiniz dil düğmesine basın';

  @override
  String? languageDialogDoneButtonText = 'Bitti';

  @override
  String? noInternetWarningDialogText =
      'Şu anda internet bağlantısı algılanmadı. Bu oyun, oyun verilerini sürekli güncellemek için internet bağlantısına ihtiyaç duyar. Devam etmek için lütfen tekrar bağlanın';

  @override
  String? light = 'Aydınlık';

  @override
  String? largeWebViewError =
      "Bu cihaz desteklenmiyor. Lütfen bu oyunu sadece mobil tarayıcıda oynayın.";

}