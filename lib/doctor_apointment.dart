import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:two_screens/list_doctor_appointment.dart';



class DoctorAppointment extends StatelessWidget {

  const DoctorAppointment({super.key, required this.patients});
  final List<DoctorAppointmentList> patients;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
      // Top Container that contains the title and stacked over one another
      Stack(
      children: <Widget>[
        // The first container that contains the blue background
        Container(
        height: 150,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xFF0E0255),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(100),
          ),
        ),
      ),

      // The second container that contains the white background
      Positioned(
        top: 0,
        left: 0,
        right: 40,
        bottom: 30,
        child: Container(
          height: 100,

          // create the width of the container to be the same as the parent
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(100),
            ),
          ),
        ),
      ),

      // The third container that contains the title
      Positioned(
        top: 50,
        left: 20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Book Appointment',
              style: TextStyle(
                color: Color(0xFF0E0255),
                fontSize: 24,
                fontFamily: 'Lato',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      ],
    ),
          ListView.builder(
              itemCount: patients.length,
              itemBuilder: (context, index){
                return ListTile(
                  title: Text(patients[index].name),
                  subtitle: Text(patients[index].checkupType),
                  trailing: Row(
                    children: [
                      Icon(Icons.done),
                      Icon(Icons.close),
                    ],

                  ),

                );
              }
          )

        ]

      ),

    );

  }
}




