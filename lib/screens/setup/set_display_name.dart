import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:tracksfer/screens/setup/display_name_controller.dart';

class SetDisplayNameScreen extends StatelessWidget {
  final String displayName;

  SetDisplayNameScreen(this.displayName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SetDisplayNameWidget(displayName),
    );
  }
}

class SetDisplayNameWidget extends StatefulWidget {
  final String displayName;

  SetDisplayNameWidget(this.displayName);

  @override
  _SetDisplayNameWidgetState createState() => _SetDisplayNameWidgetState();
}

class _SetDisplayNameWidgetState extends State<SetDisplayNameWidget> {
  SetDisplayNameController _controller;

  @override
  void initState() {
    _controller = SetDisplayNameController(widget.displayName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Observer(builder: (_) {
            return TextFormField(
              onChanged: (value) => _controller.displayName = value,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter a username.';
                }
                return null;
              },
              autofocus: true,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(color: Colors.grey),
                helperStyle: TextStyle(color: Colors.white),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellow[100]),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
              ),
            );
          }),
          FlatButton(onPressed: null, child: Text('Save'))
        ],
      ),
    );
  }
}
