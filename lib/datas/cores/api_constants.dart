
abstract final class ApiConstants {
  static const apiVersion = "@1";
  static const apiBaseUrl = "https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api$apiVersion";
  static const apiConnectionTimeout = Duration(seconds: 5);
  static const apiReceiveTimeout = Duration(seconds: 3);

  static String endpointEdition() => "/editions.min.json";
  static String endpointDetailEdition(String edition) => "/editions/$edition.min.json";
  static String endpointHadith(String edition, String hadith) => "/editions/$edition/$hadith.min.json";
  static String endpointSection(String edition, String section) => "/editions/$edition/sections/$section.min.json";
  static String endpointInfo() => "/info.min.json";
}