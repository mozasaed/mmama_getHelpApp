import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    color: Colors.deepOrange,
                    width: 150,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Container(
                    // color: Colors.deepOrange,
                    height: 150,
                    // width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Abdulmajeed Hajji Hassan",style: TextStyle(fontWeight: FontWeight.bold),),
                        Text("abdulmajeedhajji@gmail.com"),
                        Text("+255778398441"),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],

      ),
    );
  }
}
