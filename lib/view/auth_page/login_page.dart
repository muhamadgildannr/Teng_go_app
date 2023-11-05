import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:teng_go_app/view/main.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:local_auth/local_auth.dart';
import 'package:local_auth_android/local_auth_android.dart';
import 'package:local_auth_ios/local_auth_ios.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teng_go_app/core/theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LocalAuthentication auth = LocalAuthentication();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColorgreen,
        body: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                  ),
                  ListTile(
                    title: Text(
                      "Selamat Datang!",
                      style: GoogleFonts.poppins(
                        fontSize: 32,
                        color: buttonWhite,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Silahkan menggunakan",
                      style:
                          GoogleFonts.poppins(fontSize: 16, color: buttonWhite),
                    ),
                    subtitle: Text(
                      "Fingerprint atau PIN anda",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: buttonWhite,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 50),
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset(
                            'assets/images/teng-go-icon.png',
                            height: 67,
                            width: 278,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 00.6,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        Center(
                          child: IconButton(
                            icon: Icon(
                              Icons.fingerprint_outlined,
                              color: backgroundColorgreen,
                            ),
                            iconSize: 80,
                            onPressed: () async {
                              final bool canAuthenticateWithBiometrics =
                                 await auth.canCheckBiometrics;
                              final bool canAuthenticate =
                                  canAuthenticateWithBiometrics ||
                                      await auth.isDeviceSupported();

                              print({'Cek Support': canAuthenticate});

                              if (canAuthenticate) {
                                try {
                                  final bool didAuthenticate = await auth
                                      .authenticate(
                                          options: const AuthenticationOptions(
                                              biometricOnly: true),
                                          localizedReason:
                                              'Masukan sidik jari untuk tetap login',
                                          authMessages: [
                                        const AndroidAuthMessages(
                                          cancelButton: 'Batalkan',
                                        )
                                      ]);
                                  print({
                                    'Cek apakah finger benar': didAuthenticate
                                  });
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            const MyHomePage(),
                                      ),
                                      (route) => false);
                                } on PlatformException catch (error) {
                                  print(error);
                                }
                              }
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: TextButton(
                            child: Text(
                              'Gunakan PIN',
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: fromCssColor('#212121'),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const Login2(),
                                  ));
                            },
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class Login2 extends StatefulWidget {
  const Login2({super.key});

  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  final LocalAuthentication auth = LocalAuthentication();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColorgreen1,
        body: Stack(
          children: [
            Form(
                child: SingleChildScrollView(
              child: Column(children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                ),
                ListTile(
                  title: Text(
                    "Selamat Datang!",
                    style: GoogleFonts.poppins(
                      fontSize: 32,
                      color: buttonWhite,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Silahkan menggunakan",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: buttonWhite,
                    ),
                  ),
                  subtitle: Text(
                    "Fingerprint atau PIN Anda",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: buttonWhite,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 75,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 200,
                  margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width *0.1,
                  vertical: MediaQuery.of(context).size.height *0.1),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: buttonGrey2,
                    elevation: 10,
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              SizedBox(height: 20),
                              Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  'Kode Akses',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.only(bottom: 10),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  height: 35,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: backgroundColorgreen,
                                      minimumSize: Size(
                                          0.6 *
                                              MediaQuery.of(context).size.width,
                                          35),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => const MyHomePage(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Login',
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ))
          ],
        )
        // )
        );
  }
}
