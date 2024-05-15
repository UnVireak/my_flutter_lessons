List<CacheLanguage> cacheLageuageList = [
  CacheLanguage(),
  CacheKhmer(),
  CacheChinese(),
  CacheThai(),
  CacheJapan(),
  CacheFrench()
  
];

class CacheLanguage {
  String get appName => "Caching App";
  String get chaneToLightMode => "Change To Light Mode";
  String get changeToDarkMode => "Change To Dark Mode";
  String get changeToSystemMode => "Change To System Mode";
}

class CacheKhmer implements CacheLanguage {
  String get appName => "កម្មវិធីរក្សាទុកទិន្ន័យ";
  String get chaneToLightMode => "ប្តូរពន្លឺទៅភ្លឺ";
  String get changeToDarkMode => "ប្តូរពន្លឺទៅងងឹត";
  String get changeToSystemMode => "ប្តូរពន្លឺតាមប្រព័ន្ធទូរស័ព្ទ";
}

class CacheChinese implements CacheLanguage {
  String get appName => "缓存应用程序";
  String get chaneToLightMode => "光转换模式";
  String get changeToDarkMode => "更改为深色模式";
  String get changeToSystemMode => "更改为系统模式";
}

class CacheThai implements CacheLanguage {
  String get appName => "แอพแคช";
  String get chaneToLightMode => "เปลี่ยนเป็นโหมดแสง";
  String get changeToDarkMode => "เปลี่ยนเป็นโหมดมืด";
  String get changeToSystemMode => "เปลี่ยนเป็นโหมดระบบ";
}

class CacheJapan implements CacheLanguage {
  String get appName => "キャッシュアプ​​リ";
  String get chaneToLightMode => "ライトモードに変更";
  String get changeToDarkMode => "ダークモードに変更";
  String get changeToSystemMode => "システムモードに変更";
}

class CacheFrench implements CacheLanguage {
  String get appName => "Application de mise en cache";
  String get chaneToLightMode => "Passer en mode lumière";
  String get changeToDarkMode => "Passer en mode sombre";
  String get changeToSystemMode => "Passer en mode système";
}
