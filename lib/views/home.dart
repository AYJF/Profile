import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Selector>(
      create: (_) => Selector(),
      child: Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: SizedBox(
              height: 1700,
              child: Scrollbar(
                child: Column(
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height * 0.75,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.transparent,
                          ),
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.elliptical(500, 20),
                            bottomRight: Radius.elliptical(500, 20),
                          ),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/background.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.75,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.58),
                            border: Border.all(
                              color: Colors.transparent,
                            ),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.elliptical(500, 20),
                              bottomRight: Radius.elliptical(500, 20),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 25,
                                left: 200,
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/logo.png',
                                      height: 80,
                                      fit: BoxFit.cover,
                                    ),
                                    Column(
                                      children: const [
                                        Text(
                                          "ALVARO JIMENEZ",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontFamily: 'Poppins_Medium',
                                          ),
                                        ),
                                        Text(
                                          "SOFTWARE DEVELOPER",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const Positioned(
                                  top: 45, right: 200, child: MenuBar()),
                              const Positioned(
                                  top: 250, left: 225, child: Body())
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}

class MenuBar extends StatelessWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Selector _selector = Provider.of<Selector>(context, listen: true);
    return Row(
      children: [
        GestureDetector(
          onTap: _selector.setHome,
          child: Column(
            children: [
              const Text(
                "HOME",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Poppins_Medium',
                ),
              ),
              Container(
                width: 50,
                padding: const EdgeInsets.only(top: 25),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        color: _selector.home ? Colors.red : Colors.transparent,
                        width: 3.0),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(width: 55),
        GestureDetector(
          onTap: _selector.setProject,
          child: Column(
            children: [
              const Text(
                "PROJECTS",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Poppins_Medium',
                ),
              ),
              Container(
                width: 70,
                padding: const EdgeInsets.only(top: 25),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        color: _selector.projects
                            ? Colors.red
                            : Colors.transparent,
                        width: 3.0),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(width: 55),
        GestureDetector(
          onTap: _selector.setContact,
          child: Column(
            children: [
              const Text(
                "CONTACT",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Poppins_Medium',
                ),
              ),
              Container(
                width: 70,
                padding: const EdgeInsets.only(top: 25),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        color: _selector.contacts
                            ? Colors.red
                            : Colors.transparent,
                        width: 3.0),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "WEB, DESKTOP &  APP FULL STACK DEVELOPER ",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontFamily: 'Poppins_Medium',
          ),
        ),
        const SizedBox(height: 40),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.6,
          child: RichText(
            overflow: TextOverflow.clip,
            text: const TextSpan(
              text:
                  "I'm a web developer from Santa Clara, Cuba and currently living in Guadalajara, Mexico. I enjoy building everything from samll buisness sites to rich interactive web apps. If you are a buisness seeking a web presence or an employer looking to hire, you can get in touch with me here.",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'SFUIDisplay-Light'),
            ),
          ),
        ),
        const SizedBox(height: 40),
        Row(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red, // background
                onPrimary: Colors.white,
                // foreground
              ),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  children: const [
                    Text('I need a web site'),
                    SizedBox(width: 5),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(width: 12),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.grey.withOpacity(0.47), // background
                onPrimary: Colors.white,
                // foreground
              ),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  children: const [
                    Text('I\'m looking to hire'),
                    SizedBox(width: 5),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}

class Selector with ChangeNotifier {
  bool home = true;
  bool contacts = false;
  bool projects = false;

  setHome() {
    home = true;
    contacts = false;
    projects = false;
    notifyListeners();
  }

  setProject() {
    home = false;
    contacts = false;
    projects = true;
    notifyListeners();
  }

  setContact() {
    home = false;
    contacts = true;
    projects = false;
    notifyListeners();
  }
}
