import 'package:flutter/material.dart';

class LoadErrorWidget extends StatelessWidget {
  final String errorMessage;
  final Function function;

  const LoadErrorWidget({
    @required this.errorMessage,
    @required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            errorMessage,
            // style: Theme.of(context).textTheme.headline3,
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: function,
            child: const Icon(
              Icons.refresh,
              size: 50,
            ),
          )
        ],
      ),
    );
  }
}
