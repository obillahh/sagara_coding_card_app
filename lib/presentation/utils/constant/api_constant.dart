class ApiConstant {
  static const String baseUrl = 'https://api.sagaracodingcard.com';
  static const String baseUrlApi = '$baseUrl/api';

  // Auth
  static const String login = '$baseUrlApi/auth/local';
  static const String register = '$baseUrlApi/auth/local/register';

  // Card
  static const String card = '$baseUrlApi/cards';
  static const String addCard = '$baseUrlApi/users';

  // Leaderboard
  static const String leaderboard = '$baseUrlApi/leaderboards';

  // Quiz
  static const String quiz = '$baseUrlApi/quizzes';
}
