import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:tracksfer/widgets/conditioned.dart';

class CustomBottomSheets {
  static showConfirmation(BuildContext context, String title, String actionText,
      VoidCallback action,
      {bool hasOppositeAction,
      String oppositeActionText,
      VoidCallback onOppositeAction}) {
    showCupertinoModalBottomSheet(
        context: context,
        expand: false,
        builder: (context) {
          return ConfirmationBottomSheet(
            title: title,
            actionText: actionText,
            action: action,
            hasOppositeAction: hasOppositeAction,
            oppositeActionText: oppositeActionText,
            onOppositeAction: onOppositeAction,
          );
        });
  }
}

class ConfirmationBottomSheet extends StatelessWidget {
  final String title;
  final String actionText;
  final VoidCallback action;
  final bool hasOppositeAction;
  final String oppositeActionText;
  final VoidCallback onOppositeAction;

  ConfirmationBottomSheet(
      {@required this.title,
      @required this.actionText,
      @required this.action,
      this.hasOppositeAction,
      this.onOppositeAction,
      this.oppositeActionText});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        color: Color(0xff1F1F1F),
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                )),
            FlatButton(
                onPressed: action,
                child: Container(
                  height: 35,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10),
                      Text(
                        actionText,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                )),
            ConditionedWidget(
                condition: () => hasOppositeAction,
                child: FlatButton(
                    onPressed: onOppositeAction,
                    child: Container(
                      height: 35,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Icon(
                            Icons.cancel,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10),
                          Text(oppositeActionText,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ))
                        ],
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
