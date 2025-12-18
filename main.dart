import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   MyApp({super.key});
//   int counter = 0;

//   @override
//   Widget build(BuildContext context) {

//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> listt = [const Text("1"), const Text("1"), const Text("1")];
  int counter = 0;
  bool st1 = false, st2 = false, st3 = false, st4 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        elevation: 10,
        shadowColor: Colors.black,
        title: const Text(
          "Noor",
          style: TextStyle(
              color: Color.fromARGB(255, 214, 177, 11),
              fontSize: 18.5,
              fontWeight: FontWeight.w900),
        ),
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const azkarS()),
                            );
                          });
                        },
                        color: const Color.fromARGB(255, 7, 39, 82),
                        height: 300,
                        child: const Center(
                          child: Text(
                            "اذكار الصباح",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const azkarM()),
                          );
                        },
                        color: const Color.fromARGB(255, 7, 39, 82),
                        height: 300,
                        child: const Center(
                          child: Text(
                            "اذكار المساء ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const dua()),
                          );
                        },
                        color: const Color.fromARGB(255, 7, 39, 82),
                        height: 300,
                        child: const Center(
                          child: Text(
                            "ادعيه من القران ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ])),
      bottomNavigationBar: Container(
        height: 35,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(0, 0, 0, 0.451),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                hoverColor: const Color.fromARGB(105, 54, 100, 215),
                onPressed: () {
                  setState(() {
                    st1 = !st1;
                    st2 = st3 = st4 = false;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const setting(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.task_alt_outlined,
                  color: st1 == true
                      ? const Color.fromARGB(255, 25, 97, 15)
                      : const Color.fromARGB(255, 200, 194, 194),
                )),
            IconButton(
              hoverColor: const Color.fromARGB(105, 54, 100, 215),
              onPressed: () {
                setState(() {
                  st2 = !st2;
                  st1 = st3 = st4 = false;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const quran(),
                  ),
                );
              },
              icon: Icon(
                Icons.menu_book_rounded,
                color: st2 == true
                    ? const Color.fromARGB(255, 25, 97, 15)
                    : const Color.fromARGB(255, 200, 194, 194),
              ),
            ),
            IconButton(
              hoverColor: const Color.fromARGB(105, 54, 100, 215),
              onPressed: () {
                setState(() {
                  st3 = !st3;
                  st2 = st1 = st4 = false;
                });

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const sabha(),
                  ),
                );
              },
              icon: Icon(
                Icons.grain,
                color: st3
                    ? const Color.fromARGB(255, 25, 97, 15)
                    : const Color.fromARGB(255, 200, 194, 194),
              ),
            ),
            IconButton(
                hoverColor: const Color.fromARGB(105, 54, 100, 215),
                onPressed: () {
                  setState(() {
                    st4 = !st4;
                    st2 = st3 = st1 = false;
                  });
                },
                icon: Icon(
                  Icons.home_sharp,
                  color: st4 == true
                      ? const Color.fromARGB(255, 25, 97, 15)
                      : const Color.fromARGB(255, 200, 194, 194),
                )),
          ],
        ),
      ),
    );
  }
}

// Page Sabha
class sabha extends StatefulWidget {
  const sabha({super.key});
  @override
  State<sabha> createState() => _sabha();
}

class _sabha extends State<sabha> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Icon(Icons.loop_sharp),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                color: const Color.fromARGB(255, 0, 0, 0),
                child: Center(
                  child: Text(
                    "$counter",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Page Quran
class quran extends StatefulWidget {
  const quran({super.key});
  @override
  State<quran> createState() => _quran();
}

class _quran extends State<quran> {
  List list = [
    "Images/1.jpg",
    "Images/2.jpg",
    "Images/3.jpg",
    "Images/4.jpg",
    "Images/5.jpg",
  ];
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Quran")),
      body: PageView.builder(
          itemCount: list.length,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, i) {
            return Image.asset(
              list[i],
              fit: BoxFit.fill,
            );
          }),
    );
  }
}

// Page todo
class setting extends StatefulWidget {
  const setting({super.key});
  @override
  State<setting> createState() => _setting();
}

class _setting extends State<setting> {
  int counter = 0;
  bool s1 = false, s2 = false, s3 = false, s4 = false, s5 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Icon(Icons.task_alt_outlined),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  child: Expanded(
                    child: Column(
                      children: [
                        CheckboxListTile(
                          title: const Text(
                            "الكل",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900),
                          ),
                          activeColor: const Color.fromARGB(255, 0, 165, 19),
                          hoverColor: const Color.fromARGB(255, 35, 48, 94),
                          value: s1,
                          onChanged: (val) {
                            setState(() {
                              s1 = s2 = s3 = s4 = s5 = !s1;
                            });
                          },
                        ),
                        CheckboxListTile(
                          title: const Text(
                            "ورد القران",
                            style: TextStyle(color: Colors.white),
                          ),
                          activeColor: const Color.fromARGB(255, 0, 165, 19),
                          hoverColor: const Color.fromARGB(255, 35, 48, 94),
                          value: s3,
                          onChanged: (val) {
                            setState(() {
                              s3 = !s3;
                            });
                          },
                        ),
                        CheckboxListTile(
                          title: const Text(
                            "اذكار الصباح والمساء",
                            style: TextStyle(color: Colors.white),
                          ),
                          activeColor: const Color.fromARGB(255, 0, 165, 19),
                          hoverColor: const Color.fromARGB(255, 35, 48, 94),
                          value: s4,
                          onChanged: (val) {
                            setState(() {
                              s4 = !s4;
                            });
                          },
                        ),
                        CheckboxListTile(
                          title: const Text(
                            "الوتر",
                            style: TextStyle(color: Colors.white),
                          ),
                          activeColor: const Color.fromARGB(255, 0, 165, 19),
                          hoverColor: const Color.fromARGB(255, 35, 48, 94),
                          value: s5,
                          onChanged: (val) {
                            setState(() {
                              s5 = !s5;
                            });
                          },
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

// Page Azkar S
class azkarS extends StatefulWidget {
  const azkarS({super.key});
  @override
  State<azkarS> createState() => _azkarS();
}

class _azkarS extends State<azkarS> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Icon(Icons.light_mode_rounded),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}

// Page Azkar M
class azkarM extends StatefulWidget {
  const azkarM({super.key});
  @override
  State<azkarM> createState() => _azkarM();
}

class _azkarM extends State<azkarM> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Icon(Icons.dark_mode_sharp),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}

// Dua
class dua extends StatefulWidget {
  const dua({super.key});
  @override
  State<dua> createState() => _dua();
}

class _dua extends State<dua> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Icon(Icons.front_hand_rounded),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}
