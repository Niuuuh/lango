import '../../../summary/domain/entities/session_summary.dart';

abstract class MockSessionSummaries {
  static const example = SessionSummary(
    name: "Lost Map Vibes",
    vibe: "Nice work!",
    cefr: "B1",
    reason: "You handled storytelling well but had basic grammar slips.",
    strengths: ["Good flow", "Clear storytelling"],
    weaknesses: ["Simple vocabulary", "Some tense issues"],
    tip: "Try longer sentences with connectors."
  );
}
