
enum Difficulty {
  easy(1),
  normal(2),
  hard(3),
  none(0);

  final int id;
  const Difficulty(this.id);

  //idからSubjectDifficultyを取得するメソッド
  static Difficulty fromId(int id){
    return Difficulty.values.firstWhere(
      (difficulty) => difficulty.id == id,
      orElse: () => Difficulty.none,
    );
  }
}