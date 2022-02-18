import 'package:flutter/material.dart';

import 'qna_data.dart';

class QnACard extends StatefulWidget {
  final int idx;
  QnACard(this.idx);

  @override
  State<QnACard> createState() => _QnACardState();
}

class _QnACardState extends State<QnACard> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0XFF152646),
              borderRadius: _expanded
                  ? const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    )
                  : BorderRadius.circular(10),
            ),
            child: Row(
              children: <Widget>[
                Text(
                  questions[widget.idx],
                ),
                const Spacer(),
                IconButton(
                  icon: _expanded
                      ? const Icon(Icons.expand_less)
                      : const Icon(Icons.expand_more),
                  onPressed: () {
                    setState(() {
                      _expanded = !_expanded;
                    });
                  },
                )
              ],
            ),
          ),
          if (_expanded)
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Color(0XFF172A4F),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Row(
                children: <Widget>[
                  const Spacer(),
                  Text(
                    answers[widget.idx],
                  ),
                  const Spacer(),
                ],
              ),
            )
        ],
      ),
    );
  }
}
