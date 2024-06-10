// ignore: camel_case_types
import 'package:flutter/material.dart';

// ignore: camel_case_types
class pointsCounter extends StatefulWidget {
  const pointsCounter({super.key});

  @override
  State<pointsCounter> createState() => _pointsCounterState();
}

// ignore: camel_case_types
class _pointsCounterState extends State<pointsCounter> {
  int teamAScore = 0;
  int teamBScore = 0;
  void addPoint(int point, int team) {
    if (team == 0) {
      teamAScore += point;
    } else {
      teamBScore += point;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.sports_basketball_sharp,
            color: Colors.black,
            size: 50,
          ),
        ),
        title: const Text(
          "BasketBall Points Counter",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange,
        toolbarHeight: 100,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // column for team a
                Column(
                  children: [
                    const Text(
                      "Team A",
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      teamAScore.toString(),
                      style: const TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            addPoint(1, 0);
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        child: const Text(
                          "Add 1 Point",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            addPoint(2, 0);
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        child: const Text(
                          "Add 2 Point",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            addPoint(3, 0);
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        child: const Text(
                          "Add 3 Point",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                  ],
                ),
                const VerticalDivider(
                  color: Colors.grey,
                ),
                // column for team b
                Column(
                  children: [
                    const Text(
                      "Team B",
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      teamBScore.toString(),
                      style: const TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            addPoint(1, 1);
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        child: const Text(
                          "Add 1 Point",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            addPoint(2, 1);
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        child: const Text(
                          "Add 2 Point",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            addPoint(3, 1);
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        child: const Text(
                          "Add 3 Point",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                  ],
                ),
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  teamAScore = teamBScore = 0;
                });
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              child: const Text(
                "Reset Scores",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ))
        ],
      ),
    );
  }
}
