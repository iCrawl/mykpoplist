import 'package:flutter/material.dart';

class PlaceholderData {
  const PlaceholderData({
    this.romaji = '',
    this.name = '',
    this.image = '',
    this.likes = '1,000',
    @required this.hero,
    this.group = true,
  });

  final String romaji;
  final String name;
  final String image;
  final String likes;
  final String hero;
  final bool group;
}
