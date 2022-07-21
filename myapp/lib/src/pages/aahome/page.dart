import 'package:flutter/material.dart';
import 'package:myapp/src/pages/index.dart';
import 'package:collection/collection.dart';
import 'package:myapp/src/components/index.dart';
import 'package:myapp/auth/auth_state.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:teta_cms/teta_cms.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:font_awesome_flutter_named/font_awesome_flutter_named.dart';

class PageAAHome extends StatefulWidget {
  const PageAAHome({
    Key? key,
  }) : super(key: key);

  @override
  _StateAAHome createState() => _StateAAHome();
}

class _StateAAHome extends AuthState<PageAAHome>
    with SingleTickerProviderStateMixin {
  int filterChange = null;
  String search = '0';
  String cMSKey = 'filter';
  String cMSValue = 'actu';
  int changePage = null;

  var datasets = <String, dynamic>{};
  int index = 0;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    TetaCMS.instance.analytics.insertEvent(
      TetaAnalyticsType.usage,
      'App usage: view page',
      <String, dynamic>{
        'name': "AAHome",
      },
      isUserIdPreferableIfExists: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xFF000000),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            width: double.maxFinite,
            height: 150.h,
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF).withOpacity(1),
              border: Border(
                left: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                    color: Color(0xFF000000).withOpacity(1)),
                top: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                    color: Color(0xFF000000).withOpacity(1)),
                right: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                    color: Color(0xFF000000).withOpacity(1)),
                bottom: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                    color: Color(0xFF000000).withOpacity(1)),
              ),
            ),
            child: SafeArea(
              left: false,
              top: true,
              right: false,
              bottom: false,
              child: SizedBox(
                width: double.maxFinite,
                height: 62,
                child: Padding(
                  padding: EdgeInsets.zero,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 24,
                          right: 24,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              r'''Karmine Corp''',
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: Color(0xFF000000).withOpacity(1),
                                  fontWeight: FontWeight.w800,
                                  fontSize: 30,
                                  fontStyle: FontStyle.normal,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              textAlign: TextAlign.left,
                              textDirection: TextDirection.ltr,
                            ),
                            Icon(
                              faIconNameMapping['magnifyingGlassChart'],
                              size: 30,
                              color: Color(0xFF000000).withOpacity(1),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 24,
                          right: 24,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                top: 22,
                              ),
                              padding: EdgeInsets.zero,
                              width: 30,
                              height: 3,
                              decoration: BoxDecoration(
                                color: Color(0xFF000000).withOpacity(1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  topRight: Radius.circular(50),
                                  bottomRight: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                ),
                                border: Border(
                                  left: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                      color: Color(0xFF000000).withOpacity(1)),
                                  top: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                      color: Color(0xFF000000).withOpacity(1)),
                                  right: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                      color: Color(0xFF000000).withOpacity(1)),
                                  bottom: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                      color: Color(0xFF000000).withOpacity(1)),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                top: 5,
                              ),
                              child: Text(
                                r'''Accueil''',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    color: Color(0xFF000000).withOpacity(1),
                                    fontWeight: FontWeight.w800,
                                    fontSize: 25,
                                    fontStyle: FontStyle.normal,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                textAlign: TextAlign.left,
                                textDirection: TextDirection.ltr,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                left: 10,
                                top: 22,
                              ),
                              padding: EdgeInsets.zero,
                              width: 190,
                              height: 3,
                              decoration: BoxDecoration(
                                color: Color(0xFF000000).withOpacity(1),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5),
                                  bottomRight: Radius.circular(5),
                                  bottomLeft: Radius.circular(5),
                                ),
                                border: Border(
                                  left: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                      color: Color(0xFF000000).withOpacity(1)),
                                  top: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                      color: Color(0xFF000000).withOpacity(1)),
                                  right: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                      color: Color(0xFF000000).withOpacity(1)),
                                  bottom: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                      color: Color(0xFF000000).withOpacity(1)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      TetaFutureBuilder(
                          future: TetaCMS.instance.client.getCollection(
                            '''62d3de46d8c9320b1158141d''',
                            filters: [
                              Filter('''${cMSKey}''', '''${cMSValue}''')
                            ],
                            limit: 30,
                          ),
                          builder: (context, snapshot) {
                            if (!snapshot.hasData) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                            final list = snapshot.data as List<dynamic>?;
                            datasets['Cms fetch'] = list ?? const <dynamic>[];
                            var index = 0;

                            return SizedBox(
                              width: double.maxFinite,
                              height: 100.h,
                              child: Builder(
                                builder: (context) {
                                  return ListView.builder(
                                    reverse: false,
                                    physics:
                                        const AlwaysScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount:
                                        this.datasets['Cms fetch'].length > 0
                                            ? this.datasets['Cms fetch'].length
                                            : 0,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.only(
                                          top: 22,
                                        ),
                                        child: PageCARTEActualites(
                                          imageJoueur: datasets['Cms fetch']
                                                  ?[index]?['image_article'] ??
                                              '',
                                          jeu: datasets['Cms fetch']?[index]
                                                  ?['catégorie'] ??
                                              '',
                                          nomJoueur: datasets['Cms fetch']
                                                  ?[index]?['titre'] ??
                                              '',
                                          equipe: datasets['Cms fetch']?[index]
                                                  ?['nom_rédacteur_article'] ??
                                              '',
                                          dateJoin: datasets['Cms fetch']
                                                  ?[index]?['date_article'] ??
                                              '',
                                          imageJeu: datasets['Cms fetch']
                                                      ?[index]
                                                  ?['image_rédacteur'] ??
                                              '',
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            );
                          }),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 7,
                  right: 7,
                  bottom: 7,
                ),
                child: Container(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  width: double.maxFinite,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF).withOpacity(1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(22),
                      bottomRight: Radius.circular(22),
                      bottomLeft: Radius.circular(22),
                    ),
                    border: Border(
                      left: BorderSide(
                          width: 2, color: Color(0xFF000000).withOpacity(1)),
                      top: BorderSide(
                          width: 2, color: Color(0xFF000000).withOpacity(1)),
                      right: BorderSide(
                          width: 2, color: Color(0xFF000000).withOpacity(1)),
                      bottom: BorderSide(
                          width: 2, color: Color(0xFF000000).withOpacity(1)),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8,
                          top: 4,
                          right: 8,
                          bottom: 10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () async {},
                              onLongPress: () async {},
                              child: Icon(
                                FeatherIconsMap['home'],
                                size: 24,
                                color: Color(0xFF000000).withOpacity(1),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 18,
                              ),
                              child: Container(
                                margin: EdgeInsets.zero,
                                padding: EdgeInsets.zero,
                                width: 20,
                                height: 3,
                                decoration: BoxDecoration(
                                  color: Color(0xFF000000).withOpacity(1),
                                  border: Border(
                                    left: BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                        color:
                                            Color(0xFF000000).withOpacity(1)),
                                    top: BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                        color:
                                            Color(0xFF000000).withOpacity(1)),
                                    right: BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                        color:
                                            Color(0xFF000000).withOpacity(1)),
                                    bottom: BorderSide(
                                        width: 0,
                                        style: BorderStyle.none,
                                        color:
                                            Color(0xFF000000).withOpacity(1)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8,
                          top: 4,
                          right: 8,
                          bottom: 10,
                        ),
                        child: TextButton(
                          onPressed: () async {
                            await Navigator.push<void>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageMatchs(),
                              ),
                            );
                          },
                          onLongPress: () async {},
                          child: Icon(
                            FeatherIconsMap['calendar'],
                            size: 24,
                            color: Color(0xFF000000).withOpacity(1),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8,
                          top: 4,
                          right: 8,
                          bottom: 10,
                        ),
                        child: TextButton(
                          onPressed: () async {
                            await Navigator.push<void>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageVideoLives(
                                  redirect:
                                      datasets['null']?[index]?['null'] ?? '',
                                ),
                              ),
                            );
                          },
                          onLongPress: () async {},
                          child: Icon(
                            FeatherIconsMap['tv'],
                            size: 24,
                            color: Color(0xFF000000).withOpacity(1),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8,
                          top: 4,
                          right: 8,
                          bottom: 10,
                        ),
                        child: TextButton(
                          onPressed: () async {
                            await Navigator.push<void>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageJoueurs(),
                              ),
                            );
                          },
                          onLongPress: () async {},
                          child: Icon(
                            FeatherIconsMap['user'],
                            size: 24,
                            color: Color(0xFF000000).withOpacity(1),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8,
                          top: 4,
                          right: 8,
                          bottom: 10,
                        ),
                        child: TextButton(
                          onPressed: () async {
                            await Navigator.push<void>(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageParametres(),
                              ),
                            );
                          },
                          onLongPress: () async {},
                          child: Icon(
                            FeatherIconsMap['settings'],
                            size: 24,
                            color: Color(0xFF000000).withOpacity(1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
