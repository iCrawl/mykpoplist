import 'package:flutter/material.dart';
import 'package:mykpoplist/models/placeholder_data.dart';
import 'package:mykpoplist/ui/screens/group.dart';
import 'package:mykpoplist/ui/widgets/image_with_fallback.dart';
import 'package:mykpoplist/ui/widgets/rounded_corners.dart';

class KpopBoxName {
  const KpopBoxName({
    @required this.placeholder,
  });

  final PlaceholderData placeholder;

  List<Widget> build(BuildContext context) {
    if (placeholder.name.isNotEmpty && placeholder.romaji.isNotEmpty) {
      return [
        Container(
          margin: const EdgeInsets.fromLTRB(7.0, 7.0, 0.0, 0.0),
          alignment: Alignment.topLeft,
          child: Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                child: Text(
                  placeholder.romaji,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(7.0, 24.0, 0.0, 0.0),
          alignment: Alignment.topLeft,
          child: Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                child: Text(
                  placeholder.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ];
    } else if (placeholder.name.isEmpty) {
      return [
        Container(
          margin: const EdgeInsets.fromLTRB(7.0, 7.0, 0.0, 0.0),
          alignment: Alignment.topLeft,
          child: Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                child: Text(
                  placeholder.romaji,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ];
    } else {
      return [
        Container(
          margin: const EdgeInsets.fromLTRB(7.0, 7.0, 0.0, 0.0),
          alignment: Alignment.topLeft,
          child: Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Expanded(
                child: Text(
                  placeholder.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ];
    }
  }
}

class KpopBox extends StatelessWidget {
  const KpopBox({
    Key key,
    @required this.placeholder,
  }) : super(key: key);

  final PlaceholderData placeholder;

  @override
  Widget build(BuildContext context) => Hero(
        tag: placeholder.hero,
        child: Container(
          width: 150.0,
          decoration: const BoxDecoration(
            boxShadow: [
              const BoxShadow(
                color: const Color.fromRGBO(0, 0, 0, 0.30),
                offset: const Offset(0.0, 4.0),
                blurRadius: 4.0,
              ),
            ],
          ),
          child: RoundedCorners(
            child: Stack(
              fit: StackFit.passthrough,
              children: <Widget>[
                ImageWithFallback(
                  image: placeholder.image,
                ),
                Container(
                  decoration: const BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color.fromRGBO(5, 5, 5, 0.30),
                        const Color.fromRGBO(0, 0, 0, 0.50),
                      ],
                    ),
                  ),
                ),
                ...KpopBoxName(
                  placeholder: placeholder,
                ).build(context),
                Container(
                  margin: const EdgeInsets.fromLTRB(6.0, 0.0, 0.0, 5.0),
                  alignment: Alignment.bottomLeft,
                  child: Image.asset(
                    'assets/images/favorite.png',
                    width: 15.0,
                    height: 15.0,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 4.0),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    placeholder.likes,
                    style: const TextStyle(
                      color: const Color(0xFFDFDFDF),
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 4.0),
                  alignment: Alignment.bottomRight,
                  child: Text(
                    placeholder.group ? 'Group' : 'Idol',
                    style: const TextStyle(
                      color: const Color(0xFFC2C0C0),
                      fontSize: 14.0,
                    ),
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () async {
                      debugPrint('onTap: ${placeholder.name}');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Group(
                            group: placeholder,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
