enum Topic {
  science(title: 'Science', description: 'Explore the wonders of science.'),
  history(title: 'History', description: 'Dive into historical events and figures.'),
  art(title: 'Art', description: 'Discover famous artworks and artists.'),
  technology(title: 'Technology', description: 'Stay updated with the latest tech trends.'),
  travel(title: 'Travel', description: 'Share travel experiences and tips.');

  const Topic({
    required this.title,
    this.description,
  });

  final String title;
  final String? description;
}
