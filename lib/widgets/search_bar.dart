import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  final Function onTapFunction;

  const SearchBarWidget(this.onTapFunction);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: Theme.of(context).appBarTheme.color,
        height: 35.0,
        width: double.infinity,
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.all(
        //     Radius.circular(10.0),
        //   ),
        // ),
        child: Row(
          children: [
            Icon(
              Icons.search,
              color: Theme.of(context).textTheme.bodyText2.color,
            ),
            Text(
              'Search for playlist',
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
      ),
      onTap: onTapFunction,
    );
  }
}
