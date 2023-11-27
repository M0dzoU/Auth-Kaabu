import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:login_kaabu_plus/onboarding.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.grey[350],
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/images/logo_orange_min.png'),
                        fit: BoxFit.fill,
                        height: 70,
                        width: 70,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Kaabu",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Plus",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Veuillez vous connecter",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.image,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                          hintText: 'Identifiant',
                        ),
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.image,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.zero,
                              borderSide: BorderSide(
                                color: Colors.black,
                              )),
                          hintText: 'Mot de passe',
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Mot de passe oublié ?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          _showNumberKeyboardBottomSheet(context);
                        },
                        style: ElevatedButton.styleFrom(
                            elevation: 4,
                            shape: const BeveledRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                            backgroundColor: Colors.grey[500],
                            minimumSize:
                                Size(MediaQuery.of(context).size.width, 50)),
                        child: const Text(
                          "Se connecter",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Besoin d'aide supplémentaire ?",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 16),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Appelez le",
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 16),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "33 333 33 33",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _showNumberKeyboardBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: MediaQuery.of(context).size.height / 2,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.lock,
                  color: Colors.black,
                  size: 28,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Entrez votre code PIN",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),

             Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              height: 18,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Dot(),
                  SizedBox(width: 30),
                  Dot(),
                  SizedBox(width: 30),
                  Dot(),
                  SizedBox(width: 30),
                  Dot(),
                ],
              ),
            ),
            Expanded(
              child: NumericPad(),
            ),
          ],
        ),
      );
    },
  );
}

class Dot extends StatelessWidget {
  const Dot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12.0,
      height: 12.0,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.orange,
      ),
    );
  }
}

class NumericPad extends StatelessWidget {
  NumericPad({super.key});

  final List<String> keys = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '',
    '0',
    '',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 4.5),
                crossAxisCount: 3,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: keys.length,
              itemBuilder: (context, index) {
                return NumericKeyButton(keys[index]);
              },
            ),
          ),
        ),
        SizedBox(
          height: 48,
          child: Row(
            children: [
              Expanded(
                child: IconKeyButton(
                  icon: Icons.refresh_outlined,
                  onPressed: () {
                    _navigateToOnboardingPage(context);
                  },
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: IconKeyButton(
                  icon: Icons.backspace_outlined,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class NumericKeyButton extends StatelessWidget {
  const NumericKeyButton(this.num, {super.key});
  final String num;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (kDebugMode) {
          print('Pressed: $num');
        }
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.0,
            color: Colors.grey,
          ),
        ),
        child: Center(
          child: Text(
            num,
            style: const TextStyle(fontSize: 24.0),
          ),
        ),
      ),
    );
  }
}

class IconKeyButton extends StatelessWidget {
  const IconKeyButton({Key? key, required this.icon, required this.onPressed})
      : super(key: key);
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1.5),
        ),
        child: Center(
          child: Icon(
            icon,
            size: 30,
          ),
        ),
      ),
    );
  }
}

void _navigateToOnboardingPage(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return const Center(
        child: CircularProgressIndicator(color: Colors.orange,),
      );
    },
  );
  Future.delayed(const Duration(milliseconds: 2000), () {
    Navigator.pop(context);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const OnboardingPage()),
    );
  });
}
