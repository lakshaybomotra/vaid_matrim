var this_year = DateTime.now().year.toString();

class AppConfig {
  static String copyright_text =
      "@ VaidikMatrimonial " + this_year; //it will show in your splash screen
  static String app_name =
      "VAIDIK MATRIMONIAL"; //it will show in your splash screen

  // enter string purchase_code here
  static String purshase_code = '5815802b-6128-495d-8662-96694f140515';

  // configure this
  static const bool HTTPS = true; //if you are using localhost set it to false

  static const DOMAIN_PATH = "vaidikmatrimony.com";
  // do not configure these below
  static const String API_ENDPATH = "api";
  static const String PROTOCOL = HTTPS ? "https://" : "http://";
  static const String RAW_BASE_URL = "${PROTOCOL}${DOMAIN_PATH}";
  static const String BASE_URL = "${RAW_BASE_URL}/${API_ENDPATH}";
}
