import 'package:flutter/material.dart';
import 'package:flutter_application_7/authentification/se_connecter_medecin.dart';
import 'package:flutter_application_7/authentification/se_connecter_patient.dart';

class Choix extends StatelessWidget {
  var c = const Color(0xFF011638);
  var d = Color.fromARGB(255, 252, 116, 25);

  Choix({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 210,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://recomedicales.fr/images/photos/diabete-type-2.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 30, 10, 6),
                    width: 300,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 252, 116, 25),
                          shape: const StadiumBorder(),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Seconnectermed()),
                            //test
                          );
                        },
                        child: const Text(
                          'Medecin',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Color(0xFF011638)),
                        )),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 30, 10, 6),
                    width: 300,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 252, 116, 25),
                          shape: const StadiumBorder(),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SeconnecterPatient()),
                            //test
                          );
                        },
                        child: const Text(
                          'Patient',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Color(0xFF011638)),
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
    //);
  }
}
