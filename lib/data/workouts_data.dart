class Workout {
  String title;
  String image;
  String description;
  List<String>? links;
  Workout(this.title, this.image, this.description, {this.links});
}

List<Workout> workouts = [
  Workout("Soulders", "image_url", "description", links: ["link1", "link2"]),
  Workout("Chest", "image_url", "description"),
  Workout("Back", "image_url", "description"),
  Workout("Legs", "image_url", "description"),
  Workout("Core", "image_url", "description"),
  Workout("Cardio", "image_url", "description"),
];
