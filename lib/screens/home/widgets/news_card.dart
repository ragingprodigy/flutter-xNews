import 'dart:ui';

import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(48),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 16,
            offset: Offset(-2, 4),
            spreadRadius: 1,
          ),
        ],
      ),
      margin: EdgeInsets.only(left: 16, right: 48, top: 32, bottom: 32),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(48),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1627736990081-602486bcb4d3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2784&q=80",
                    ),
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.purpleAccent.withOpacity(0.1),
                        Colors.purpleAccent.withOpacity(0.1),
                        Colors.purpleAccent.withOpacity(0.6),
                        Colors.purpleAccent.withOpacity(0.8),
                        Colors.purpleAccent.withOpacity(1),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Chip(
                        label: Text(
                          "Fashion",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        backgroundColor: Colors.pink.shade400,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      Text(
                        "Heidi Lum has a strange take on America's Got Talent 2021",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundImage: NetworkImage(
                      "https://s3.amazonaws.com/assets.materialup.com/users/pictures/001/375/276/preview/open-uri20210620-4-t8zfd3?1624253481",
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "James McEachran",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Text(
                              "Jan 23",
                              style: TextStyle(color: Colors.black26),
                            ),
                            Spacer(),
                            Text(
                              "2 minute read",
                              style: TextStyle(color: Colors.black26),
                            ),
                            Spacer(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
