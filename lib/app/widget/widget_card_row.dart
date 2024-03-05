import 'package:flutter/material.dart';

class WidgetCardRow extends StatefulWidget {
  const WidgetCardRow({super.key, required this.widget});

  final Widget widget;
  @override
  State<WidgetCardRow> createState() => _WidgetCardRowState();
}

class _WidgetCardRowState extends State<WidgetCardRow> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              for (var i = 0; i < 5; i++) widget.widget,
              const SizedBox(
                width: 10,
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
