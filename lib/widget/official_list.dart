import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xber_futsal_club_app/mocks/models.dart';

class OfficialList extends StatelessWidget {
  final Official official;

  const OfficialList({Key key, @required this.official}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        child: Card(
          child: Stack(
            children: [
              Center(
                  child: CircularProgressIndicator(
                      backgroundColor: Colors.yellowAccent,
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(Colors.black))),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                      image: NetworkImage(official.profilPicture),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 168.0),
                  child: Center(
                      child: Container(
                        color: Colors.black.withOpacity(0.5),
                    padding: const EdgeInsets.only(top: 0.0),
                          width: 200,
                          height: 25,
                          child: Center(
                            child: Text(
                              official.name,
                              style: GoogleFonts.lobsterTwo(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.yellow[600]),
                            ),
                          ))),
                ),
              )
            ],
          ),
        ));
  }
}
