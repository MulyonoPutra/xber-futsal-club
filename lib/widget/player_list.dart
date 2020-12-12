import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xber_futsal_club_app/mocks/models.dart';

class PlayerList extends StatelessWidget {
  final Player player;

  const PlayerList({Key key, @required this.player}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        child: Card(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                      image: NetworkImage(player.profilPicture),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 158.0),
                  child: Center(
                      child: Container(
                        width: 100,
                        height: 25,
                        color: Colors.black,
                          child: Center(
                            child: Text(
                    player.name,
                    style: GoogleFonts.firaCode(
                        fontWeight: FontWeight.w700,
                        color: Colors.yellowAccent),
                  ),
                          ))),
                ),
              )
            ],
          ),
        ));
  }
}