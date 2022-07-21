  import 'package:flutter/services.dart';
  import 'package:flutter/material.dart';
  import 'package:splash_screen_view/SplashScreenView.dart';
  import 'package:sizer/sizer.dart';
  import 'package:supabase_flutter/supabase_flutter.dart';
  
  
  import 'package:google_mobile_ads/google_mobile_ads.dart';
  import 'package:myapp/src/pages/aahome/page.dart';
  import 'package:teta_cms/teta_cms.dart';

  void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    TetaCMS.initialize(
      token: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImltaG9mbWF0dGhpZXVAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsInByb2plY3RzIjpbOTU1NzMsMTQxNTg4LDE0NTgwNCwxNDg0OTgsMTQxNTgxLDE0MTYxMSwxNDU4MDVdLCJpbWFnZSI6Imh0dHBzOi8vbGgzLmdvb2dsZXVzZXJjb250ZW50LmNvbS9hLS9BRmRadWNxMHZIam1kQlJkOXR1SFFfUGtVblg4eFRqaENiZVNXNnZrZWZIYj1zOTYtYyIsIm5hbWUiOiJNYXR0YmF0dCIsImVtaXR0ZXIiOiJUZXRhLUF1dGgiLCJpYXQiOjE2NTgzOTYyMDEsImV4cCI6NDgxNDE1NjIwMX0.qBxAMi3J4jkwomh5QlxRelUN7jWgIzbTEgjTq3N9cb8',
      prjId: 145805,
    );
      await MobileAds.instance.initialize();
  
      Supabase.initialize(
    url: 'https://kjrumtusffigcaqmqegn.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImtqcnVtdHVzZmZpZ2NhcW1xZWduIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTc5ODEwNzcsImV4cCI6MTk3MzU1NzA3N30.v7QRNv9k6U-F4Bd2cq3p_7oAdK61zxs-nMWrOBQYNCQ',
  );
  
    
    
    runApp(MyApp());
  }
  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Sizer(
        builder: (
          final context,
          final orientation,
          final deviceType,
        ) => MaterialApp(
          title: 'Ultras Karmine ',
          home: SplashScreenView(
            navigateRoute: PageAAHome(),
            duration: 2200,
            imageSize: 80,
            imageSrc: 'assets/teta-app.png',
            text: '',
            textType: TextType.NormalText,
            textStyle: TextStyle(
              fontSize: 30.0,
            ),
            backgroundColor: Colors.black,
          ),
        ),
      );
    }
  }
  