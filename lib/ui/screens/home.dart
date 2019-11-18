import 'package:flutter/material.dart';
import 'package:mykpoplist/models/placeholder_data.dart';
import 'package:mykpoplist/ui/widgets/app_bar.dart';
import 'package:mykpoplist/ui/widgets/footer.dart';
import 'package:mykpoplist/ui/widgets/heading.dart';
import 'package:mykpoplist/ui/widgets/list.dart';

class Home extends StatelessWidget {
  final String title = 'MyKpopList';

  final List<PlaceholderData> groups = const [
    PlaceholderData(
      romaji: 'TWICE',
      image:
          'https://www.billboard.com/files/styles/article_main_image/public/media/01-TWICE-press-JYP-Entertainment-2019-billboard-1548.jpg',
      likes: '10,250',
      hero: 'twice',
    ),
    PlaceholderData(
      romaji: 'MAMAMOO',
      name: '마마무',
      image:
          'https://kprofiles.com/wp-content/uploads/2019/07/cf91d7e59105e96ae4dbc04bb034b5a0.jpg',
      likes: '∞',
      hero: 'mamamoo',
    ),
    PlaceholderData(
      name: '(G)I-DLE',
      image: 'https://i.redd.it/i0o0amlxzfv01.jpg',
      likes: '5,234',
      hero: 'gidle',
    ),
    PlaceholderData(
      romaji: 'GFRIEND',
      name: '여자친구',
      image:
          'http://www.asianjunkie.com/wp-content/uploads/2018/07/GFriendSunnySummer.jpg',
      likes: '4,500',
      hero: 'gfriend',
    ),
    PlaceholderData(
      name: 'Sunmi',
      image:
          'https://6.viki.io/image/d56a1088277940eea504dffb5d13b698.jpeg?s=900x600&e=t',
      likes: '2,342',
      hero: 'sunmi',
    ),
  ];

  final List<PlaceholderData> idols = const [
    PlaceholderData(
      name: 'Sana',
      image: 'https://i.imgur.com/ykgR6c1.png',
      likes: '2,250',
      group: false,
      hero: 'sana',
    ),
    PlaceholderData(
      name: 'Hwasa',
      image:
          'https://6.viki.io/image/20b486c204f04cad982cab86adef0778.jpeg?s=900x600&e=t',
      likes: '∞',
      group: false,
      hero: 'hwasa',
    ),
    PlaceholderData(
      name: 'Wendy',
      image:
          'https://www.allkpop.com/upload/2018/08/af_org/22063405/red-velvet-wendy.jpg',
      likes: '4,224',
      group: false,
      hero: 'wendy',
    ),
    PlaceholderData(
      name: 'LISA',
      image: 'https://i.imgur.com/pDDCW5T.png',
      likes: '4,500',
      group: false,
      hero: 'lisa',
    ),
    PlaceholderData(
      name: 'Sorn',
      image:
          'https://data.whicdn.com/images/311511737/original.jpg?t=1524998029',
      likes: '2,342',
      group: false,
      hero: 'sorn',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: KpopAppBar(appTitle: title),
        body: Container(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              const Heading(
                first: 'Trending Groups',
                second: 'View all groups',
              ),
              KpopList(
                items: groups,
              ),
              const Heading(
                first: 'Popular Idols',
                second: 'View all idols',
              ),
              KpopList(
                items: idols,
              ),
              const Heading(
                first: 'New Releases',
                second: 'View all releases',
              ),
              /* KpopList(items: groups), */
              const Footer(),
            ],
          ),
        ),
      );
  }
}
