class AppConfig {
  /// 🔹 App Information
  static const String appName = "YourAppName";
  static const String appTagline = "Simplify Your Life";
  static const String version = "1.0.0";
  static const String buildNumber = "1";
  static const String author = "Your Team or Name";
  static const String contactEmail = "support@yourapp.com";
  static const String companyWebsite = "https://yourapp.com";

  /// 🔹 Environment
  static const String environment = "production"; // dev / staging / production
  static const bool isProduction = environment == "production";

  /// 🔹 Base URLs
  static const String baseUrl = "https://api.yourapp.com";
  static const String imageBaseUrl = "https://images.yourapp.com";
  static const String privacyPolicyUrl = "https://yourapp.com/privacy";
  static const String termsUrl = "https://yourapp.com/terms";

  /// 🔹 API Config
  static const Duration apiTimeout = Duration(seconds: 30);
  static const int defaultPageSize = 20;

  /// 🔹 Localizations
  static const List<String> supportedLocales = ['en', 'hi', 'gu'];
  static const String defaultLocale = 'en';

  /// 🔹 Storage Keys
  static const String userTokenKey = "USER_TOKEN";
  static const String userDataKey = "USER_DATA";
  static const String appThemeKey = "APP_THEME";
  static const String languageKey = "APP_LANGUAGE";

  /// 🔹 Firebase / Supabase Keys
  static const String firebaseProjectId = "your-firebase-project-id";
  static const String supabaseUrl = "https://xyz.supabase.co";
  static const String supabaseAnonKey = "your-supabase-anon-key";

  /// 🔹 App Theme
  static const bool isDarkModeDefault = false;

  /// 🔹 Logging & Debug
  static const bool enableLogging = true;
  static const bool showApiLogs = true;
  static const bool showDebugBanner = false;

  /// 🔹 Responsive Design Breakpoints (optional, for UI decisions)
  static const double mobileWidth = 600;
  static const double tabletWidth = 900;

  /// 🔹 Notification & Firebase Settings
  static const String fcmTopicAll = "all_users";
  static const String fcmTokenKey = "FCM_TOKEN";

  /// 🔹 Ads (Optional if using AdMob or Facebook Ads)
  static const String adMobAppId = "your-admob-app-id";
  static const String bannerAdId = "your-banner-ad-id";
  static const String interstitialAdId = "your-interstitial-ad-id";
}
