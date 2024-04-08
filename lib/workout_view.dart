import 'package:flutter/material.dart';
import 'package:focusgym/custom_widgets/display_workouts.dart';
import 'package:focusgym/data/workouts_data.dart';

class WorkoutView extends StatelessWidget {
  const WorkoutView(this.index, {super.key});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 15,
          ),
          Text(
            "Workout ideas for your today's ${selectWorkout[index].title} workout:  ",
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          ExpansionTile(
            title: const Text("Get best out form your workout:"),
            children: <Widget>[..._buildListTitles()],
          ),
          Expanded(child: DisplayWorkouts(workoutList: workoutLists[index]))
        ],
      ),
    );
  }
}

List<Widget> _buildListTitles() {
  const List<String> titles = [
    '1. Minimize phone usage. Don\'t stare your phone. None of mindless scrolling, chatting, etc. Only lifting.',
    '2. You can select one workout or combine two. Focus on only one workout you have selected (this view) at the time and then continue to next one.',
    '3. Choose freely exercises you like. Do always as many reps as you can. <15 reps, increase weights. >4-8, decrease weights.',
    '4. Do 3-5 sets and as many different exercises as suggested.',
    '5. Always drink water during short (1-4m) breaks between sets.',
    '6. If you start to feel nausea and want to vomit you have worked hard enough. :D',
    '7. Have extremely positive attitude towards every single workout, understand the tremendous benefits and remember that each rep makes you stronger. Mentally and physically.',
  ];

  return titles
      .map(
        (title) => ListTile(
            dense: true,
            contentPadding: const EdgeInsets.symmetric(horizontal: 15),
            title: Text(title)),
      )
      .toList();
}
