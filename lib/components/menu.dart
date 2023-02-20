import 'package:flutter/material.dart';

import 'data.dart';

class MenuComponents extends StatelessWidget {
  const MenuComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: GridView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: menu.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Image.asset(
                  '${menu[index]['img']}',
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 5),
                Text('${menu[index]['name']}'),
              ],
            );
          }),
    );
  }
}
