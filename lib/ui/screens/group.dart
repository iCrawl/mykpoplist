import 'package:flutter/material.dart';
import 'package:mykpoplist/models/placeholder_data.dart';
import 'package:mykpoplist/ui/widgets/app_bar.dart';
import 'package:mykpoplist/ui/widgets/group/edit_info_button.dart';
import 'package:mykpoplist/ui/widgets/group/favorite_button.dart';
import 'package:mykpoplist/ui/widgets/footer.dart';
import 'package:mykpoplist/ui/widgets/group/about.dart';
import 'package:mykpoplist/ui/widgets/group/information.dart';
import 'package:mykpoplist/ui/widgets/group/links.dart';
import 'package:mykpoplist/ui/widgets/group/trivia.dart';
import 'package:mykpoplist/ui/widgets/heading.dart';
import 'package:mykpoplist/ui/widgets/group/image_sliver.dart';
import 'package:mykpoplist/ui/widgets/list.dart';
import 'package:mykpoplist/ui/widgets/group/rank_group_button.dart';
import 'package:mykpoplist/ui/widgets/group/whats_hot.dart';

class Group extends StatelessWidget {
  const Group({
    Key key,
    @required this.group,
  }) : super(key: key);

  final String title = 'MyKpopList';
  final group;

  final List<PlaceholderData> idols = const [
    PlaceholderData(
      name: 'Sana',
      image: 'https://i.imgur.com/ykgR6c1.png',
      likes: '2,250',
      group: false,
      hero: 'sana1',
    ),
    PlaceholderData(
      name: 'Hwasa',
      image:
          'https://6.viki.io/image/20b486c204f04cad982cab86adef0778.jpeg?s=900x600&e=t',
      likes: '∞',
      group: false,
      hero: 'hwasa1',
    ),
    PlaceholderData(
      name: 'Wendy',
      image:
          'https://www.allkpop.com/upload/2018/08/af_org/22063405/red-velvet-wendy.jpg',
      likes: '4,224',
      group: false,
      hero: 'wendy1',
    ),
    PlaceholderData(
      name: 'LISA',
      image: 'https://i.imgur.com/pDDCW5T.png',
      likes: '4,500',
      group: false,
      hero: 'lisa1',
    ),
    PlaceholderData(
      name: 'Sorn',
      image:
          'https://data.whicdn.com/images/311511737/original.jpg?t=1524998029',
      likes: '2,342',
      group: false,
      hero: 'sorn1',
    ),
  ];

  @override
  Widget build(context) => Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            KpopSliverAppBar(
              appTitle: title,
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: ImageSliver(
                placeholder: group,
                minExtent: 50.0,
                maxExtent: 250.0,
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  WhatsHot(group: group),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FavoriteButton(),
                        RankGroupButton(),
                        EditInfoButton(),
                      ],
                    ),
                  ),
                  GroupInformation(),
                  GroupAbout(),
                  Column(
                    children: <Widget>[
                      const Heading(
                        first: 'Members',
                      ),
                      KpopList(
                        items: idols,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Heading(
                        first: 'Releases',
                      ),
                    ],
                  ),
                  GroupTrivia(),
                  GroupLinks(
                    placeholder: group,
                  ),
                  const Footer(),
                ],
              ),
            ),
          ],
        ),
      );
}
