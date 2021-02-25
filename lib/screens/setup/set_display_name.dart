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

  final RegExp regExp = RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%\s-]');
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _controller = SetDisplayNameController(widget.displayName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 15),
      color: Color(0xff1F1F1F),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Observer(builder: (_) {
              return TextFormField(
                controller: _controller.textController,
                validator: (value) => value.isEmpty
                    ? 'Enter a username'
                    : (regExp.hasMatch(value)
                        ? 'Enter a valid username'
                        : null),
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
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.white),
                    foregroundColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.black)),
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    _controller.updateUsername();
                  }
                },
                child: Text('Save'))
          ],
        ),
      ),
    );
  }
}
