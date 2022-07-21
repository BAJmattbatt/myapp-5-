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
import 'package:lottie/lottie.dart';

class PageVuearticle extends StatefulWidget {
  const PageVuearticle({
    Key? key,
    this.imageJoueur =
        '''https://dtlaca8pgqtx.cloudfront.net/player/1e239c43-37a5-456c-a405-eb6c226eb96e.png''',
    this.jeu = '''Valorant''',
    this.nomJoueur = '''Amine "Amilwa" Saidi''',
    this.description =
        '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.''',
    this.equipe = '''Équipe Valorant''',
    this.dateJoin = '''11/11/1111''',
    this.textImg1 = '''text_img_1''',
    this.textImg2 = '''text_img_2''',
    this.textImg3 = '''text_img_3''',
    this.img1 =
        '''https://pic.clubic.com/v1/images/1941993/raw.webp?fit=max&width=1200&hash=adc8940e8fc4db01d798567e33208f41cbec46df''',
    this.img2 =
        '''https://pic.clubic.com/v1/images/1941993/raw.webp?fit=max&width=1200&hash=adc8940e8fc4db01d798567e33208f41cbec46df''',
    this.img3 =
        '''https://pic.clubic.com/v1/images/1941993/raw.webp?fit=max&width=1200&hash=adc8940e8fc4db01d798567e33208f41cbec46df''',
    this.lienImg1 = '''twitter.com''',
    this.lienImg2 = '''twitter.com''',
    this.lienImg3 = '''twitter.com''',
  }) : super(key: key);

  final String imageJoueur;
  final String jeu;
  final String nomJoueur;
  final String description;
  final String equipe;
  final String dateJoin;
  final String textImg1;
  final String textImg2;
  final String textImg3;
  final String img1;
  final String img2;
  final String img3;
  final String lienImg1;
  final String lienImg2;
  final String lienImg3;

  @override
  _StateVuearticle createState() => _StateVuearticle();
}

class _StateVuearticle extends AuthState<PageVuearticle>
    with SingleTickerProviderStateMixin {
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
        'name': "Vuearticle",
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
          SizedBox(
            width: double.maxFinite,
            height: 150.h,
            child: ListView(
              reverse: false,
              primary: true,
              physics: const AlwaysScrollableScrollPhysics(),
              children: [
                Stack(
                  children: [
                    Image.network(
                      '''${widget.imageJoueur}''',
                      height: 60.h,
                      fit: BoxFit.cover,
                    ),
                    Opacity(
                      opacity: 1,
                      child: Container(
                        margin: EdgeInsets.zero,
                        padding: EdgeInsets.zero,
                        width: double.maxFinite,
                        height: 150.h,
                        decoration: BoxDecoration(
                          color: Color(0xFF000000).withOpacity(1),
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
                        child: Text(
                          r'''''',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xFFFFFFFF).withOpacity(1),
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          textAlign: TextAlign.left,
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 300,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 24,
                              right: 24,
                              bottom: 24,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                    bottom: 16,
                                  ),
                                  padding: const EdgeInsets.only(
                                    left: 8,
                                    top: 4,
                                    right: 8,
                                    bottom: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFFFFF).withOpacity(1),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      topRight: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                      bottomLeft: Radius.circular(8),
                                    ),
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
                                  child: Text(
                                    '''${widget.jeu}''',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Color(0xFF000000).withOpacity(1),
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                        fontStyle: FontStyle.normal,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    textAlign: TextAlign.left,
                                    textDirection: TextDirection.ltr,
                                  ),
                                ),
                                Text(
                                  '''${widget.nomJoueur}''',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      color: Color(0xFFFFFFFF).withOpacity(1),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      fontStyle: FontStyle.normal,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                  textAlign: TextAlign.left,
                                  textDirection: TextDirection.ltr,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.zero,
                            padding: const EdgeInsets.only(
                              left: 16,
                              top: 24,
                              right: 16,
                            ),
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF).withOpacity(1),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(18),
                                topRight: Radius.circular(18),
                                bottomRight: Radius.circular(18),
                                bottomLeft: Radius.circular(18),
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
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: double.maxFinite,
                                  height: 8.h,
                                  child: Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(26),
                                          topRight: Radius.circular(26),
                                          bottomRight: Radius.circular(26),
                                          bottomLeft: Radius.circular(26),
                                        ),
                                        child: Image.network(
                                          r'''https://images.cults3d.com/4QqRV9kLYYEuw9ur_X3yjQl1sjk=/516x516/https://files.cults3d.com/uploaders/15024335/illustration-file/a86d53e4-2bd9-4a8f-9550-986686c3131a/gi0mAjIh_400x400.png''',
                                          width: 48,
                                          height: 48,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 26,
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '''${widget.equipe}''',
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  color: Color(0xFF000000)
                                                      .withOpacity(1),
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 15,
                                                  fontStyle: FontStyle.normal,
                                                  decoration:
                                                      TextDecoration.none,
                                                ),
                                              ),
                                              textAlign: TextAlign.left,
                                              textDirection: TextDirection.ltr,
                                            ),
                                            Text(
                                              '''${widget.dateJoin}''',
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  color: Color(0xFF000000)
                                                      .withOpacity(1),
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16,
                                                  fontStyle: FontStyle.normal,
                                                  decoration:
                                                      TextDecoration.none,
                                                ),
                                              ),
                                              textAlign: TextAlign.left,
                                              textDirection: TextDirection.ltr,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 16,
                                  ),
                                  child: Text(
                                    '''${widget.description}''',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Color(0xFF000000).withOpacity(1),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13,
                                        fontStyle: FontStyle.normal,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    textAlign: TextAlign.center,
                                    textDirection: TextDirection.ltr,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: Text(
                                    r'''Lié''',
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        color: Color(0xFF000000).withOpacity(1),
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    textAlign: TextAlign.left,
                                    textDirection: TextDirection.ltr,
                                  ),
                                ),
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
                                  child: ListView(
                                    reverse: false,
                                    primary: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 20,
                                            ),
                                            child: Text(
                                              '''${widget.textImg1}''',
                                              style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  color: Color(0xFF000000)
                                                      .withOpacity(1),
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16,
                                                  fontStyle: FontStyle.normal,
                                                  decoration:
                                                      TextDecoration.none,
                                                ),
                                              ),
                                              textAlign: TextAlign.left,
                                              textDirection: TextDirection.ltr,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 15,
                                              right: 15,
                                            ),
                                            child: GestureDetector(
                                              onTap: () async {
                                                if (await canLaunchUrlString(
                                                    '''${widget.lienImg1}''')) {
                                                  await launchUrlString(
                                                    '''${widget.lienImg1}''',
                                                    mode:
                                                        LaunchMode.inAppWebView,
                                                  );
                                                }
                                              },
                                              onDoubleTap: () async {},
                                              onLongPress: () async {},
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  topRight: Radius.circular(20),
                                                  bottomRight:
                                                      Radius.circular(20),
                                                  bottomLeft:
                                                      Radius.circular(20),
                                                ),
                                                child: Image.network(
                                                  '''${widget.img1}''',
                                                  width: double.maxFinite,
                                                  height: 150,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.zero,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 20,
                                                top: 10,
                                              ),
                                              child: Text(
                                                '''${widget.textImg2}''',
                                                style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                    color: Color(0xFF000000)
                                                        .withOpacity(1),
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16,
                                                    fontStyle: FontStyle.normal,
                                                    decoration:
                                                        TextDecoration.none,
                                                  ),
                                                ),
                                                textAlign: TextAlign.left,
                                                textDirection:
                                                    TextDirection.ltr,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 15,
                                                right: 15,
                                              ),
                                              child: GestureDetector(
                                                onTap: () async {
                                                  if (await canLaunchUrlString(
                                                      '''${widget.lienImg2}''')) {
                                                    await launchUrlString(
                                                      '''${widget.lienImg2}''',
                                                      mode: LaunchMode
                                                          .inAppWebView,
                                                    );
                                                  }
                                                },
                                                onDoubleTap: () async {},
                                                onLongPress: () async {},
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(20),
                                                    topRight:
                                                        Radius.circular(20),
                                                    bottomRight:
                                                        Radius.circular(20),
                                                    bottomLeft:
                                                        Radius.circular(20),
                                                  ),
                                                  child: Image.network(
                                                    '''${widget.img2}''',
                                                    width: double.maxFinite,
                                                    height: 150,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.zero,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 20,
                                                top: 10,
                                              ),
                                              child: Text(
                                                '''${widget.textImg3}''',
                                                style: GoogleFonts.poppins(
                                                  textStyle: TextStyle(
                                                    color: Color(0xFF000000)
                                                        .withOpacity(1),
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16,
                                                    fontStyle: FontStyle.normal,
                                                    decoration:
                                                        TextDecoration.none,
                                                  ),
                                                ),
                                                textAlign: TextAlign.left,
                                                textDirection:
                                                    TextDirection.ltr,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                left: 15,
                                                right: 15,
                                              ),
                                              child: GestureDetector(
                                                onTap: () async {
                                                  if (await canLaunchUrlString(
                                                      '''${widget.lienImg3}''')) {
                                                    await launchUrlString(
                                                      '''${widget.lienImg3}''',
                                                      mode: LaunchMode
                                                          .inAppWebView,
                                                    );
                                                  }
                                                },
                                                onDoubleTap: () async {},
                                                onLongPress: () async {},
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(20),
                                                    topRight:
                                                        Radius.circular(20),
                                                    bottomRight:
                                                        Radius.circular(20),
                                                    bottomLeft:
                                                        Radius.circular(20),
                                                  ),
                                                  child: Image.network(
                                                    '''${widget.img3}''',
                                                    width: double.maxFinite,
                                                    height: 150,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SafeArea(
                      left: false,
                      top: true,
                      right: false,
                      bottom: false,
                      child: Stack(
                        children: [
                          GestureDetector(
                            onTap: () async {},
                            onDoubleTap: () async {},
                            onLongPress: () async {},
                            child: Container(
                              margin: const EdgeInsets.only(
                                left: 24,
                                top: 24,
                              ),
                              padding: const EdgeInsets.only(
                                left: 8,
                                top: 8,
                                right: 8,
                                bottom: 8,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(24),
                                  topRight: Radius.circular(24),
                                  bottomRight: Radius.circular(24),
                                  bottomLeft: Radius.circular(24),
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
                              child: Icon(
                                MdiIcons.fromString('arrow-left'),
                                size: 24,
                                color: Color(0xFFFFFFFF).withOpacity(1),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () async {},
                            onDoubleTap: () async {},
                            onLongPress: () async {},
                            child: Opacity(
                              opacity: 1,
                              child: Container(
                                margin: const EdgeInsets.only(
                                  left: 24,
                                  top: 24,
                                ),
                                padding: const EdgeInsets.only(
                                  left: 8,
                                  top: 8,
                                  right: 8,
                                  bottom: 8,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFF1F1F1).withOpacity(1),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(24),
                                    topRight: Radius.circular(24),
                                    bottomRight: Radius.circular(24),
                                    bottomLeft: Radius.circular(24),
                                  ),
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
                                child: Icon(
                                  MdiIcons.fromString('plus'),
                                  size: 24,
                                  color: Color(0xFFFFFFFF).withOpacity(1),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
