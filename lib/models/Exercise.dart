final List<ExerciseItem> absExercises = [
  ExerciseItem('Double leg raise', 'images/leg-raise.jpg'),
  ExerciseItem('Bycicle to failure', 'images/bycicle.jpeg'),
  ExerciseItem('Decline crunch to failure', 'images/declined-crunch.jpg'),
];


Map<String, List<ExerciseItem>> exerciseItems = {
  'Pulling': [
    ExerciseItem('Deadlift', 'images/deadlift.webp'),
    ExerciseItem('Barbell Row', 'images/barbell-row.jpg'),
    ExerciseItem('Chin Up', 'images/chin-up.jpg'),
    ExerciseItem('Barbell Curl', 'images/barbell-curl.png'),
    ...absExercises,
  ],
  'Pushing': [
    ExerciseItem('Incline Bench Press', 'images/incline-bench-press.jpg'),
    ExerciseItem('Military Press', 'images/military-press.jpg'),
    ExerciseItem('Bench Press', 'images/bench-press.jpg'),
    ExerciseItem('Side Lateral Rise', 'images/lateral-raise.jpg'),
    ExerciseItem('Standing Calf Rise', 'images/standing-calf-raise.png'),
    ExerciseItem('Seated Calf Rise', 'images/seated-calf-raise.png'),
  ],
  'Legs': [
    ExerciseItem('Barbell Squat', 'images/barbell-squat.png'),
    ExerciseItem('Leg Press', 'images/leg-press.png'),
    ExerciseItem('Romanian Deadlift', 'images/romanian-deadlift.jpg'),
    ...absExercises,
  ]
};

class ExerciseItem {
  final String title;
  final String image;

  ExerciseItem(this.title, this.image);
}