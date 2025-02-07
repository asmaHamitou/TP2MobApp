import 'package:flutter/material.dart';
import 'package:tp2_ui_graphics_widgets/components/week_days_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  // créer un controller pour un widget scrollable
  // un controlleur est utilisé lorsqu'on veut exécuter une action lorsque le
  // scroller est dans une position donnée (exp, si on est à la fin alors il faut
  // ajouter d'autres item à la liste, ceci peut etre fait dans initstate ou on
  // ajoute un listener au controlleur) )
  // final ScrollController _control= ScrollController();

  final List<String> week_days_list = [
    "Saturday",
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
              child: Text(
            "Home page",
            style: TextStyle(
                fontSize: 30,),
          )),
          actions: [
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {},
            ),
          ]),
      body: ListView.builder(
        //   controller: _control,
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: week_days_list.length,
        itemBuilder: (context, index) {
          return WeekDaysCard(
            day: week_days_list[index],
          );
        },
      ),
    );
  }
}
