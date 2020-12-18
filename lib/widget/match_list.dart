import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xber_futsal_club_app/mocks/models.dart';

class MatchListItem extends StatelessWidget {
  final Score score;

  const MatchListItem({Key key, @required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 20.0),
        height: 200,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Container(
            decoration: BoxDecoration(
          color: Colors.black,
          gradient: LinearGradient(
              colors: [Colors.black87, Colors.amberAccent],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(0.5, 0.0),
              tileMode: TileMode.mirror),
        ),
            child: Stack(
              children: [
                Column(
                  children: [
                    Center(
                      child: Text("Violet Cup",
                          style: GoogleFonts.lobsterTwo(
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                              fontSize: 14)),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: Column(
                            children: [
                              Image.asset(
                                score.ourLogo,
                                height: 50,
                                width: 40,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Text(
                                  score.clubName,
                                  style: GoogleFonts.yellowtail(
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black,
                                      fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              bottom: 25.0, left: 70.0, right: 20.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    score.ourScore.toString(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24.0,
                                    ),
                                  ),
                                  Text(
                                    " : ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  Text(
                                    score.opponentScore.toString(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24.0,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "29 November 2020",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 60),
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://source.unsplash.com/random"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Text(
                                  score.opponentName,
                                  style: GoogleFonts.yellowtail(
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black,
                                      fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 135.0),
                    child: Center(
                        child: Container(
                            color: Colors.black.withOpacity(0.5),
                            padding: const EdgeInsets.only(top: 0.0),
                            width: MediaQuery.of(context).size.width,
                            height: 40,
                            child: Center(
                              child: Text(
                                "Latest Match",
                                style: GoogleFonts.lobsterTwo(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.yellow[600]),
                              ),
                            ))),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
