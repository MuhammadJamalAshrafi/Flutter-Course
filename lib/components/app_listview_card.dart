import 'package:first_project/screens/EditJobScreen.dart';
import 'package:flutter/material.dart';

class AppListViewCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
        color: const Color(0xFF201E27),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child:
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20, left: 25),
          child: ListTile(
            title: const Text("Flutter Developer Required",
                style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600)),
            subtitle: const Text("Karachi, Pakistan",
                style: TextStyle(color: Color(0xFF8F8F9E), fontSize: 12, fontWeight: FontWeight.w400)),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => EditJobScreen())
                  );
                }, icon: const Icon(Icons.edit, color: Colors.white,size: 25)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.delete_forever_outlined, color: Color(0xFFFF5959), size: 25)),
              ],
            ),
          ),
        )
    );
  }
}
