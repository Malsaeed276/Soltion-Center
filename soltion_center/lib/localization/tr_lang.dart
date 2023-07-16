import 'package:soltion_center/controllers/localization_controller.dart';
import 'package:soltion_center/localization/Localization.dart';

class TRLocalization implements Localization{
  @override
  String? appDescription = 'Solution Center uygulaması, üniversite öğrencilerini hedef alarak onlar arasında bir dayanışma ve bilgi paylaşım platformu olarak tasarlanmış bir mobil uygulamadır.  Üniversite hayatı, öğrenciler için birçok fırsat ve deneyim sunmasının yanı sıra çeşitli zorluklar ve problemler de içerir. Üniversite yaşamını kolaylaştırmak ve birbirlerine yardımcı olmak isteyen öğrenciler arasında bir bağlantı noktası sunmayı amaçlayan bu uygulama sayesinde karşılaşılan problemlere öğrenciler daha hızlı ve etkili çözümler bulabilir.';

  @override
  String? appTitle = 'Solution Center';

  @override
  String? email = 'E-posta';

  @override
  LangDirection langDirection = LangDirection.left;

  @override
  Map<String, String>? languageTitles = {
    'en': 'İngilizce',
    'tr': 'Türkçe',
  };

  @override
  String? logOut = 'Çıkış Yap';

  @override
  String? login = 'Giriş Yap';

  @override
  String? loginText = 'Hesabınız var mı?';

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
  String? alreadyHaveAnAccount = 'Zaten bir hesabınız var mı?';
  
  @override
  String? onlyLettersAndNoSpaces = 'Lütfen yalnızca harf kullanın ve boşluk bırakmayın';

  @override
  String? validSchoolEmail = 'Lütfen geçerli bir okul e-postası girin';

  @override
  String? passwordRules = 'Şifreniz en az 8 karakter, 1 rakam, 1 büyük harf ve 1 küçük harf içermeli';

  @override
  String? accept = 'Kabul et';

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
      'Şu anda internet bağlantısı algılanmadı. Bu uygulama, verilerini sürekli güncellemek için internet bağlantısına ihtiyaç duyar. Devam etmek için lütfen tekrar bağlanın';

  @override
  String? light = 'aydınlık';

  @override
  String? largeWebViewError =
      "Bu cihaz desteklenmiyor. Lütfen bu uygulama sadece mobil tarayıcıda görüntüleyin.";

  // App Messages
  @override
  String? alreadyExistMessage = 'Hesap zaten mevcut';

  @override
  String? loginMessage = 'Giriş başarılı';

  @override
  String? registerMessage = 'Kayıt başarılı';

  @override
  String? wrongPasswordMessage =
      'Yanlış bilgi girdiniz, lütfen tekrar kontrol ediniz';

  @override
  String? signOutMessage = 'Hesaptan çıkış başarılı';

  @override
  String? signOutErrorMessage = 'Oturum kapatma hatası';

  // Logout Dialog
  @override
  String? logoutDialogDescriptionText =
      'Çıkış yapmak istediğinizden emin misiniz?';

  @override
  String? logoutDialogCancelButtonText = 'İptal';

  @override
  String? logoutDialogLogoutButtonText = 'Çıkış Yap';

  @override
  String? profile = 'Profil';

  @override
  String? enterYourEmail = 'E-postanızı giriniz';

  @override
  String? enterYourNameAndSurname = 'Adınızı ve soyadınızı giriniz';

  @override
  String? enterYourPassword = 'Şifrenizi giriniz';

  @override
  String? nameSurname = 'Ad & Soyad';

  @override
  String? createNewAccount = 'Yeni bir hesap oluştur?';

  @override
  String? profileInfo = 'Profil bilgisi';

  @override
  String? categories = 'Kategoriler';

  @override
  String? category = 'Kategori';

  @override
  String? history = 'Soru Geçmişi';
  
  // Homepage
  @override
  String? homeTitle = 'Anasayfa';
  
  @override
  String? welcomeMessage = 'Hoşgeldiniz';
  
  @override
  String? writeIssue = 'Lütfen sorununuzu yazın.';
  
  @override
  String? search = 'Ara';

  @override
  String? homePageSubTitle = 'Lütfen sahip olduğunuz sorunu aramaktan çekinmeyin, bulamadıysanız yeni bir sorun oluşturabilirsiniz.';

  @override
  String? homePageTitle = 'Lütfen bize probleminizin ne olduğunu söyleyin';

  @override
  String? searchForCategory = 'Kategori ara';

  @override
  String? searchForCategoryDes = 'Lütfen kategori eklemek için önce arama yapınız.';

  @override
  String? yourCategories = 'Kategorileriniz';

  @override
  String? loading = 'Yükleniyor.....';

  @override
  String? addCategory = 'Kategori ekle';

  @override
  String? error = 'Hata!';

  @override
  String? noDataRecorded = 'Veri kaydedilmedi';

  @override
  String? addCategoryToQuestion;

  @override
  String? addDetailsToQuestion;

  @override
  String? addNewQuestion;

  @override
  String? addSolutionToQuestion;

  @override
  String? question;

  @override
  String? questionHistory;

  @override
  String? questions;
}
