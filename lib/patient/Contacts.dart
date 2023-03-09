import 'dart:typed_data';
import 'package:flutter/material.dart';
// import 'package:flutter_contacts/flutter_contacts.dart';


class Contacts extends StatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {

  // List<Contact>? contacts;
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   getContact();
  // }

  // void getContact() async {
  //   if (await FlutterContacts.requestPermission()) {
  //     contacts = await FlutterContacts.getContacts(
  //         withProperties: true, withPhoto: true);
  //     print(contacts);
  //     setState(() {});
  //   }
  // }

  List<int> selectedIndexes = [1];

  void toggleIndex(int i) {
    if (selectedIndexes.contains(i)) {
      setState(() => selectedIndexes.remove(i));
    } else {
      setState(() => selectedIndexes.add(i));
    }
  }
  @override
  Widget build(BuildContext context) {
     return Scaffold(
    //     appBar: AppBar(
    //       title: const Text(
    //         "Contacts",
    //         style: TextStyle(color: Colors.white),
    //       ),
    //       centerTitle: true,
    //       backgroundColor: Colors.blueAccent,
    //       elevation: 0,
    //     ),
    //     body:
    //
    //     (contacts) == null
    //         ? const Center(child: CircularProgressIndicator())
    //         : ListView.builder(
    //       itemCount: contacts!.length,
    //       itemBuilder: (BuildContext context, int index) {
    //         Uint8List? image = contacts![index].photo;
    //         String num = (contacts![index].phones.isNotEmpty) ? (contacts![index].phones.first.number) : "--";
    //         return ListTile(
    //             leading: (contacts![index].photo == null)
    //                 ? const CircleAvatar(child: Icon(Icons.person))
    //                 : CircleAvatar(backgroundImage: MemoryImage(image!)),
    //             title: Text(
    //                 "${contacts![index].name.first} ${contacts![index].name.last}"),
    //             subtitle: Text(num),
    //             onTap: () => toggleIndex(index));
    //       },
    //     ));
     );
  }
}

