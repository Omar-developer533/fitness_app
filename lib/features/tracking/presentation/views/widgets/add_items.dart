import 'package:fitness_app/core/utls/styles.dart';
import 'package:flutter/material.dart';

class AddItems extends StatelessWidget {
  const AddItems({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Color(0xffFFA05C)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text, style: Styles.semiBoldTextStyle16),
            SizedBox(
              height: 26,
              width: 127,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xff3F3F46),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add, size: 28, color: Color(0xffFFA05C)),
            ),
          ],
        ),
      ),
    );
  }
}
