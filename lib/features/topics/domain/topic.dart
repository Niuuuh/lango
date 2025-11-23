enum Topic {
  travel(
    title: 'Travel',
    description: 'Chat about trips, airports, hotels, and everything that goes into getting around.',
    emoji: '🧳',
  ),
  food(
    title: 'Food',
    description: 'Talk about cooking, restaurants, and what you like to eat or try.',
    emoji: '🍽️',
  ),
  greetings(
    title: 'Greetings & Phrases',
    description: 'Practice basic small talk, introductions, and polite phrases.',
    emoji: '👋',
  ),
  shopping(
    title: 'Shopping',
    description: 'Try conversations about buying clothes, comparing prices, and asking for help.',
    emoji: '🛍️',
  ),
  dailyLife(
    title: 'Daily Life',
    description: 'Chat about chores, routines, and everyday situations.',
    emoji: '🏠',
  ),
  school(
    title: 'School',
    description: 'Practice phrases for classes, homework, teachers, and student life.',
    emoji: '🎓',
  ),
  work(
    title: 'Work',
    description: 'Talk about tasks, meetings, coworkers, and office situations.',
    emoji: '💼',
  ),
  relationships(
    title: 'Relationship',
    description: 'Practice talking about friends, dating, feelings, and social dynamics.',
    emoji: '❤️',
  ),
  health(
    title: 'Health',
    description: 'Practice explaining symptoms, appointments, and general well-being.',
    emoji: '🏥',
  ),
  events(
    title: 'Events',
    description: 'Chat about parties, plans, invitations, and organizing meetups.',
    emoji: '🎉',
  ),
  moviesAndTv(
    title: 'Movies & TV',
    description: 'Talk about shows you watch, recommendations, and opinions.',
    emoji: '🎬',
  ),
  music(
    title: 'Music',
    description: 'Chat about artists, concerts, genres, and playlists.',
    emoji: '🎧',
  ),
  books(
    title: 'Books',
    description: 'Talk about what you read, genres you like, and new picks.',
    emoji: '📚',
  ),
  learning(
    title: 'Learning',
    description: 'Practice talking about new skills, courses, and self-improvement.',
    emoji: '🧠',
  ),
  money(
    title: 'Money',
    description: 'Chat about budgets, prices, paying, and simple financial stuff.',
    emoji: '💸',
  ),
  fitness(
    title: 'Fitness',
    description: 'Talk about workouts, sports, routines, and staying active.',
    emoji: '🏋️‍♂️',
  ),
  pets(
    title: 'Pets',
    description: 'Chat about animals, taking care of them, and cute moments.',
    emoji: '🐶',
  ),
  news(
    title: 'News',
    description: 'Practice talking about current events in a simple way.',
    emoji: '🗞️',
  ),
  weather(
    title: 'Weather',
    description: 'Easy small-talk about seasons, temperatures, and daily forecasts.',
    emoji: '🌧️',
  ),
  cafeTalk(
    title: 'Café Talk',
    description: 'Casual chats you’d have over a drink, from hobbies to daily stories.',
    emoji: '☕️',
  );

  const Topic({
    required this.title,
    this.description,
    this.emoji,
  });

  final String title;
  final String? description;
  final String? emoji;
}
