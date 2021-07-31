import 'package:flutter/material.dart';

class SectionScroller extends StatelessWidget {
  final List<String> sections;

  const SectionScroller({
    required this.sections,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8, top: 16, bottom: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            sections.length,
            (index) => Container(
              margin: EdgeInsets.only(right: 24),
              child: InkWell(
                borderRadius: BorderRadius.circular(16),
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    sections[index],
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: index == 0 ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
