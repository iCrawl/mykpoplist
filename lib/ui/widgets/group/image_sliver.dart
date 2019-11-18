import 'package:flutter/material.dart';
import 'package:mykpoplist/models/placeholder_data.dart';
import 'package:mykpoplist/ui/widgets/group/big_box.dart';

class ImageSliver implements SliverPersistentHeaderDelegate {
  const ImageSliver({
    this.placeholder,
    this.minExtent,
    @required this.maxExtent,
  });

  final PlaceholderData placeholder;
  final double minExtent;
  final double maxExtent;

  @override
  Widget build(
          BuildContext context, double shrinkOffset, bool overlapsContent) =>
      KpopBigBox(
        maxExtent: maxExtent,
        offset: shrinkOffset,
        placeholder: placeholder,
      );

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => false;

  @override
  get snapConfiguration => null;
}
