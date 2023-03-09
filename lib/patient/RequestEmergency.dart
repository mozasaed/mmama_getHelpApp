import 'package:flutter/material.dart';

class ReqEmergency extends StatefulWidget {
  const ReqEmergency({Key? key}) : super(key: key);

  @override
  State<ReqEmergency> createState() => _ReqEmergencyState();
}

class _ReqEmergencyState extends State<ReqEmergency> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(' Street Emergency'),
          backgroundColor: Colors.blueAccent
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        height: 990,
        width: 940,
        child: Center(
          child: FloatingActionButton(
            onPressed: () {},
            elevation: 1.0,
            shape: CircleBorder(side: BorderSide(
                color: Colors.blueGrey.withOpacity(0.25), width: 10.0)),
            child: const Icon(Icons.notification_important_sharp),

          ),
        ),
      ),

    );
  }
}
