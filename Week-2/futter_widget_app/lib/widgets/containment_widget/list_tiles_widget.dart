import 'package:flutter/material.dart';

class ListTilesWidget extends StatelessWidget {
  const ListTilesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ListTile(
            tileColor: Colors.cyan.shade100,
            leading: Icon(Icons.person),
            title: Text('test listTile'),
            subtitle: Text('#45'),
            dense: true,
            onLongPress: () {},
            trailing: Icon(Icons.list),
          ),
          SizedBox(height: 5),
          ListTile(
            tileColor: Colors.cyan.shade100,
            leading: Icon(Icons.person),
            title: Text('test enabled listTile'),
            subtitle: Text('#45'),
            enabled: false,
            onLongPress: () {},
            trailing: Icon(Icons.list),
          ),
        ],
      ),
    );
  }
}
