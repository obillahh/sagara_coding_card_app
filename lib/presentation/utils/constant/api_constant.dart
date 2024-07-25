class ApiConstant {
  static const String baseUrl = 'https://api.sagaracodingcard.com';
  static const String baseUrlApi = '$baseUrl/api';

  // Auth
  static const String login = '$baseUrlApi/auth/local';
  static const String register = '$baseUrlApi/auth/local/register';
  static const String avatarUpdate = '$baseUrlApi/upload';
  static const String forgotPassword = '$baseUrlApi/auth/forgot-password';
  static const String resetPassword = '$baseUrlApi/auth/reset-password';
  static const String syncCollection = '$baseUrlApi/users';
  static const String emailConfirmation = '$baseUrlApi/auth/send-email-confirmation';

  // Card
  static const String card = '$baseUrlApi/cards';
  static const String addCard = '$baseUrlApi/users';
  static const String listCard = '$baseUrlApi/users';

  // Leaderboard
  static const String leaderboard = '$baseUrlApi/leaderboards';

  // Quiz
  static const String quiz = '$baseUrlApi/quizzes';
}
