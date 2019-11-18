import 'package:flutter/material.dart';
import 'package:mykpoplist/models/placeholder_data.dart';
import 'package:mykpoplist/ui/widgets/box.dart';

class KpopList extends StatelessWidget {
  const KpopList({
    Key key,
    @required this.items,
  }) : super(key: key);

  final List<PlaceholderData> items;

  @override
  Widget build(BuildContext context) => Container(
        height: 160.0,
        margin: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
        child: ListView.separated(
          padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (context, idx) => KpopBox(placeholder: items[idx]),
          separatorBuilder: (context, idx) => const SizedBox(
            width: 15.0,
          ),
        ),
      );
}
