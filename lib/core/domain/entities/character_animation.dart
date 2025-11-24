import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_animation.g.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.snake)
enum CharacterAnimation {
  angryBatPunch,
  angryOnFire,
  annoyedEyeRolling,
  approval,
  baby,
  bathingInLove,
  blushing,
  cantBelieveEyes,
  cheering,
  crying,
  cuteRollingBackAndForth,
  drooling,
  epilepticSeizure,
  excited,
  extremeNodding,
  fallsAsleep,
  fat,
  fullBelly,
  gettingShaken,
  happyPunchingOnTable,
  hug,
  idle,
  knightWithSword,
  lickingTheScreen,
  mad,
  peekingBehindWallWhileBurning,
  pretendingToDie,
  questionMark,
  rollingTowardsAndGreetingYou,
  spreadKissesAndLove,
  trowingEarsOffAndShakingHeadHorizontally,
  waving,
  working,
  writingLoveLetter,
  writingOnPaper;

  String toJson() => _$CharacterAnimationEnumMap[this]!;

  @override
  String toString() => toJson();
}
