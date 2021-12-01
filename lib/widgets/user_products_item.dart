import 'package:flutter/material.dart';

class UserProductsItem extends StatelessWidget {
  final String title, imageUrl;

  UserProductsItem({required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      trailing: Container(
        width: 100 ,
        child: Row(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.delete),
              color: Theme.of(context).primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
