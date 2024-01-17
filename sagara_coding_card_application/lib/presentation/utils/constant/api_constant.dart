class ApiConstant {
  static const String baseUrl = 'https://sagara-card.onrender.com';
  static const String baseUrlApi = 'https://sagara-card.onrender.com/api';

  // Auth
  static const String login = '$baseUrlApi/auth/local';
  static const String register = '$baseUrlApi/auth/local/register';

  // Card
  static const String card = '$baseUrlApi/cards';

  // Leaderboard
  static const String leaderboard = '$baseUrlApi/leaderboards';

  // Quiz
  static const String quiz = '$baseUrlApi/quizzes';
}
