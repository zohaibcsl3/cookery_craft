import 'package:flutter/material.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;

  ExpandableTextWidget({required this.text});

  @override
  _ExpandableTextWidgetState createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          _isExpanded ? widget.text : '${widget.text.substring(0, 30)}...',
          // Show truncated text if not expanded
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 16),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded; // Toggle the expansion
            });
          },
          child: Text(
            _isExpanded ? 'Show less' : 'See more',
            style: TextStyle(color: Colors.blue, fontSize: 16),
          ),
        ),
      ],
    );
  }
}
