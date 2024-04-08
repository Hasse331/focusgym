import 'package:flutter/material.dart';
import 'package:focusgym/custom_widgets/display_workouts.dart';
import 'package:focusgym/data/workouts_data.dart';

class WorkoutView extends StatelessWidget {
  const WorkoutView(this.index, {super.key});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
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
  return const [
    ListTile(
      title: Text(
          '1. Minimize phone usage. Don\'t stare your phone. None of mindless scrolling, chatting, etc. Only lifting. '),
    ),
    ListTile(
      title: Text(
          '2. You can select one workout or combine two. Focus on only one workout you have selected (this view) at the time and then continue to next one.'),
    ),
    ListTile(
      title: Text(
          '3. Choose freely exercises you like. Do always as many reps as you can. <15 reps, incerease weights. >4-8, decrease weights.'),
    ),
    ListTile(
      title:
          Text('4. Do 3-5 sets and as many different exercieses as suggested.'),
    ),
    ListTile(
      title: Text(
          '5. Always drink water during short (1-4m) breaks between sets.'),
    ),
    ListTile(
      title: Text(
          '6. If you start to feel nausea and want to vomit you have worked hard enough. :D'),
    ),
    ListTile(
      title: Text(
          '7. Have extremely positive attitude towards every single workout, understand the tremendous benefits and remember that each rep makes you stronger.'),
    ),
  ];
}
