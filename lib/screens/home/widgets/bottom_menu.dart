import 'package:flutter/material.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 12,
      ),
      child: Row(
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.home_outlined),
                  SizedBox(width: 8),
                  Text(
                    "Home",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            onTap: () {},
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_outlined),
          ),
          // SizedBox(width: 16),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.bookmark),
          ),
          SizedBox(width: 16),
          CircleAvatar(
            radius: 16,
            backgroundImage: NetworkImage(
              "https://s3.amazonaws.com/assets.materialup.com/users/pictures/001/375/276/preview/open-uri20210620-4-t8zfd3?1624253481",
            ),
          ),
        ],
      ),
    );
  }
}
