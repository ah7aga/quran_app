// ignore_for_file: camel_case_types, unnecessary_const
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: const MaterialScrollBehavior().copyWith(
      dragDevices: {
        PointerDeviceKind.mouse,
        PointerDeviceKind.touch,
        PointerDeviceKind.stylus,
        PointerDeviceKind.unknown,
      },
      ),
      locale: const Locale('ar'),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('ar')],
      theme: ThemeData(
        textTheme: GoogleFonts.almaraiTextTheme()
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
bool st1 = false, st2 = false, st3 = false, st4 = true;

class _HomePageState extends State<HomePage> {
  List<Widget> listt = [const Text("1"), const Text("1"), const Text("1")];
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff001A52),
        foregroundColor: Color.fromARGB(255, 255, 255, 255),
        elevation: 10,
        title: Text(
          "سعي",
          style: TextStyle(
            fontFamily: GoogleFonts.almarai().fontFamily,
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 18.5,
          ),
        ),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(color: Color(0xff001137)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 250,
                    width: 500,
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('btn1.png'),
                        fit: BoxFit.cover,
                        opacity: 0.45,
                      ),
                      borderRadius: BorderRadius.circular(40),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 4, 0, 255),
                          const Color.fromARGB(255, 0, 140, 255),
                        ],
                      ),
                    ),
                    child: Expanded(
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const quran(),
                            ),
                          );
                        },
                        child: Center(
                          child: Text(
                            "المصحف",
                            style: TextStyle(
                              fontFamily: GoogleFonts.almarai().fontFamily,
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 250,
                    width: 500,
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('btn2.png'),
                        fit: BoxFit.cover,
                        opacity: 0.45,
                      ),
                      borderRadius: BorderRadius.circular(40),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 4, 0, 255),
                          const Color.fromARGB(255, 0, 140, 255),
                        ],
                      ),
                    ),
                    child: Expanded(
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const azkar(),
                            ),
                          );
                        },
                        child: Center(
                          child: Text(
                            "الاذكار",
                            style: TextStyle(
                              fontFamily: GoogleFonts.almarai().fontFamily,
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 250,
                    width: 500,
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('btn3.png'),
                        fit: BoxFit.cover,
                        opacity: 0.45,
                      ),
                      borderRadius: BorderRadius.circular(40),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 4, 0, 255),
                          const Color.fromARGB(255, 0, 140, 255),
                        ],
                      ),
                    ),
                    child: Expanded(
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const dua(),
                            ),
                          );
                        },
                        child: Center(
                          child: Text(
                            "ادعيه من القران ",
                            style: TextStyle(
                              fontFamily: GoogleFonts.almarai().fontFamily,
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 40,
        decoration: const BoxDecoration(color: Color(0xff001A52)),
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
                  MaterialPageRoute(builder: (context) => const setting()),
                );
              },
              icon: Icon(
                Icons.task_alt_outlined,
                color: const Color.fromARGB(255, 255, 255, 255),
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
                  MaterialPageRoute(builder: (context) => const sabha()),
                );
              },
              icon: Image.network(
                'https://cdn-icons-png.flaticon.com/128/15993/15993067.png',
                color: Color.fromARGB(255, 255, 255, 255),
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
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
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
        elevation: 10,
        backgroundColor: Color(0xff001A52),
        foregroundColor: Color.fromARGB(255, 255, 255, 255),
        title: IconButton(
        onPressed: () {
          setState(() {
            counter = 0;
          });
        },
        icon: Image.network(
          'https://cdn-icons-png.flaticon.com/128/9899/9899372.png',
          scale: 4,
          color:  const Color.fromARGB(255, 255, 255, 255),
        ),
      ),
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
                color: const Color(0xff001137),
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
            ),
            
          ],
        ),
      ),
              bottomNavigationBar: Container(
        height: 40,
        decoration: const BoxDecoration(color: Color(0xff001A52)),
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
                  MaterialPageRoute(builder: (context) => const setting()),
                );
              },
              icon: Icon(
                Icons.task_alt_outlined,
                color: const Color.fromARGB(255, 255, 255, 255),
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
                  MaterialPageRoute(builder: (context) => const sabha()),
                );
              },
              icon: Image.network(
                'https://cdn-icons-png.flaticon.com/128/15993/15993067.png',
                color: Color.fromARGB(255, 255, 255, 255),
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
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              icon: Icon(
                Icons.home_sharp,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
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
  final PageController _controller = PageController();
  int currentPage = 1; 

  List list = [
    "assets/1.png", "assets/2.png", "assets/3.png", "assets/4.png", "assets/5.png",
    "assets/6.png", "assets/7.png", "assets/8.png", "assets/9.png", "assets/10.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("القرآن الكريم"),
        centerTitle: true,
        backgroundColor: const Color(0xff001A52),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView.builder(
            controller: _controller,
            itemCount: list.length,
            onPageChanged: (index) {
              setState(() {
                currentPage = index + 1;
              });
            },
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, i) {
              return InteractiveViewer( 
                child: Image.asset(
                  list[i], 
                  fit: BoxFit.contain, 
                ),
              );
            },
          ),
        
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              "صفحة $currentPage",
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ],
      ),
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
        centerTitle: true,
        backgroundColor: Color(0xff001A52),
        foregroundColor: Color.fromARGB(255, 255, 255, 255),
        elevation: 10,
        title: Text(
          "سعي",
          style: TextStyle(
            fontFamily: GoogleFonts.almarai().fontFamily,
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 18.5,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                color: const Color(0xff001137),
                child: Expanded(
                  child: Column(
                    children: [
                      CheckboxListTile(
                        title: const Text(
                          "الكل",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        activeColor: const Color(0xff0051FF),
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
                        activeColor: const Color(0xff0051FF),
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
                        activeColor: const Color(0xff0051FF),
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
                        activeColor: const Color(0xff0051FF),
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
                ),
              ),
            ),
          ],
        ),
      ),
        bottomNavigationBar: Container(
        height: 40,
        decoration: const BoxDecoration(color: Color(0xff001A52)),
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
                  MaterialPageRoute(builder: (context) => const setting()),
                );
              },
              icon: Icon(
                Icons.task_alt_outlined,
                color: const Color.fromARGB(255, 255, 255, 255),
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
                  MaterialPageRoute(builder: (context) => const sabha()),
                );
              },
              icon: Image.network(
                'https://cdn-icons-png.flaticon.com/128/15993/15993067.png',
                color: Color.fromARGB(255, 255, 255, 255),
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
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              icon: Icon(
                Icons.home_sharp,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Page Azkar
class azkar extends StatefulWidget {
  const azkar({super.key});
  @override
  State<azkar> createState() => _azkar();
}

class _azkar extends State<azkar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff001A52),
        foregroundColor: Color.fromARGB(255, 255, 255, 255),
        elevation: 10,
        title: Text(
          "سعي",
          style: TextStyle(
            fontFamily: GoogleFonts.almarai().fontFamily,
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 18.5,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Color(0xff001137)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 230,
                    width: 470,
                    margin: EdgeInsets.all(7),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('btn0.png'),
                        fit: BoxFit.cover,
                        opacity: 0.45,
                      ),
                      borderRadius: BorderRadius.circular(40),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 4, 0, 255),
                          const Color.fromARGB(255, 0, 140, 255),
                        ],
                      ),
                    ),
                    child: Expanded(
                      child: const Center(
                        child: Text(
                          "اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 230,
                    width: 470,
                    margin: EdgeInsets.all(7),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('btn0.png'),
                        fit: BoxFit.cover,
                        opacity: 0.45,
                      ),
                      borderRadius: BorderRadius.circular(40),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 4, 0, 255),
                          const Color.fromARGB(255, 0, 140, 255),
                        ],
                      ),
                    ),
                    child: Expanded(
                      child: const Center(
                        child: Text(
                          "قُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ. ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 230,
                    width: 470,
                    margin: EdgeInsets.all(7),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('btn0.png'),
                        fit: BoxFit.cover,
                        opacity: 0.45,
                      ),
                      borderRadius: BorderRadius.circular(40),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 4, 0, 255),
                          const Color.fromARGB(255, 0, 140, 255),
                        ],
                      ),
                    ),
                    child: Expanded(
                      child: const Center(
                        child: Text(
                          "قُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 230,
                    width: 470,
                    margin: EdgeInsets.all(7),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('btn0.png'),
                        fit: BoxFit.cover,
                        opacity: 0.45,
                      ),
                      borderRadius: BorderRadius.circular(40),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 4, 0, 255),
                          const Color.fromARGB(255, 0, 140, 255),
                        ],
                      ),
                    ),
                    child: Expanded(
                      child: const Center(
                        child: Text(
                          "قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 230,
                    width: 470,
                    margin: EdgeInsets.all(7),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('btn0.png'),
                        fit: BoxFit.cover,
                        opacity: 0.45,
                      ),
                      borderRadius: BorderRadius.circular(40),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 4, 0, 255),
                          const Color.fromARGB(255, 0, 140, 255),
                        ],
                      ),
                    ),
                    child: Expanded(
                      child: const Center(
                        child: Text(
                          "اللّهـمَّ أَنْتَ رَبِّـي لا إلهَ إلاّ أَنْتَ ، خَلَقْتَنـي وَأَنا عَبْـدُك ، وَأَنا عَلـى عَهْـدِكَ وَوَعْـدِكَ ما اسْتَـطَعْـت ، أَعـوذُبِكَ مِنْ شَـرِّ ما صَنَـعْت ، أَبـوءُ لَـكَ بِنِعْـمَتِـكَ عَلَـيَّ وَأَبـوءُ بِذَنْـبي فَاغْفـِرْ لي فَإِنَّـهُ لا يَغْـفِرُ الذُّنـوبَ إِلاّ أَنْتَ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 230,
                    width: 470,
                    margin: EdgeInsets.all(7),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('btn0.png'),
                        fit: BoxFit.cover,
                        opacity: 0.45,
                      ),
                      borderRadius: BorderRadius.circular(40),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 4, 0, 255),
                          const Color.fromARGB(255, 0, 140, 255),
                        ],
                      ),
                    ),
                    child: Expanded(
                      child: const Center(
                        child: Text(
                          "رَضيـتُ بِاللهِ رَبَّـاً وَبِالإسْلامِ ديـناً وَبِمُحَـمَّدٍ صلى الله عليه وسلم نَبِيّـاً",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 230,
                    width: 470,
                    margin: EdgeInsets.all(7),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('btn0.png'),
                        fit: BoxFit.cover,
                        opacity: 0.45,
                      ),
                      borderRadius: BorderRadius.circular(40),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 4, 0, 255),
                          const Color.fromARGB(255, 0, 140, 255),
                        ],
                      ),
                    ),
                    child: Expanded(
                      child: const Center(
                        child: Text(
                          "اللّهُـمَّ إِنِّـي أَصْبَـحْتُ أُشْـهِدُك ، وَأُشْـهِدُ حَمَلَـةَ عَـرْشِـك ، وَمَلَائِكَتَكَ ، وَجَمـيعَ خَلْـقِك ، أَنَّـكَ أَنْـتَ اللهُ لا إلهَ إلاّ أَنْـتَ وَحْـدَكَ لا شَريكَ لَـك ، وَأَنَّ ُ مُحَمّـداً عَبْـدُكَ وَرَسـولُـك",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 230,
                    width: 470,
                    margin: EdgeInsets.all(7),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('btn0.png'),
                        fit: BoxFit.cover,
                        opacity: 0.45,
                      ),
                      borderRadius: BorderRadius.circular(40),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 4, 0, 255),
                          const Color.fromARGB(255, 0, 140, 255),
                        ],
                      ),
                    ),
                    child: Expanded(
                      child: const Center(
                        child: Text(
                          "حَسْبِـيَ اللّهُ لا إلهَ إلاّ هُوَ عَلَـيهِ تَوَكَّـلتُ وَهُوَ رَبُّ العَرْشِ العَظـيم",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 230,
                    width: 470,
                    margin: EdgeInsets.all(7),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('btn0.png'),
                        fit: BoxFit.cover,
                        opacity: 0.45,
                      ),
                      borderRadius: BorderRadius.circular(40),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 4, 0, 255),
                          const Color.fromARGB(255, 0, 140, 255),
                        ],
                      ),
                    ),
                    child: Expanded(
                      child: const Center(
                        child: Text(
                          "اللّهُـمَّ ما أَصْبَـَحَ بي مِـنْ نِعْـمَةٍ أَو بِأَحَـدٍ مِـنْ خَلْـقِك ، فَمِـنْكَ وَحْـدَكَ لا شريكَ لَـك ، فَلَـكَ الْحَمْـدُ وَلَـكَ الشُّكْـر",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 230,
                    width: 470,
                    margin: EdgeInsets.all(7),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('btn0.png'),
                        fit: BoxFit.cover,
                        opacity: 0.45,
                      ),
                      borderRadius: BorderRadius.circular(40),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 4, 0, 255),
                          const Color.fromARGB(255, 0, 140, 255),
                        ],
                      ),
                    ),
                    child: Expanded(
                      child: const Center(
                        child: Text(
                          "يَا رَبِّ , لَكَ الْحَمْدُ كَمَا يَنْبَغِي لِجَلَالِ وَجْهِكَ , وَلِعَظِيمِ سُلْطَانِكَ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 230,
                    width: 470,
                    margin: EdgeInsets.all(7),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('btn0.png'),
                        fit: BoxFit.cover,
                        opacity: 0.45,
                      ),
                      borderRadius: BorderRadius.circular(40),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 4, 0, 255),
                          const Color.fromARGB(255, 0, 140, 255),
                        ],
                      ),
                    ),
                    child: Expanded(
                      child: const Center(
                        child: Text(
                          "اللَّهُمَّ إِنِّي أَسْأَلُكَ عِلْمًا نَافِعًا، وَرِزْقًا طَيِّبًا، وَعَمَلًا مُتَقَبَّلًا",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 230,
                    width: 470,
                    margin: EdgeInsets.all(7),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('btn0.png'),
                        fit: BoxFit.cover,
                        opacity: 0.45,
                      ),
                      borderRadius: BorderRadius.circular(40),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 4, 0, 255),
                          const Color.fromARGB(255, 0, 140, 255),
                        ],
                      ),
                    ),
                    child: Expanded(
                      child: const Center(
                        child: Text(
                          "لَا إلَه إلّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءِ قَدِيرِ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 230,
                    width: 470,
                    margin: EdgeInsets.all(7),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('btn0.png'),
                        fit: BoxFit.cover,
                        opacity: 0.45,
                      ),
                      borderRadius: BorderRadius.circular(40),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 4, 0, 255),
                          const Color.fromARGB(255, 0, 140, 255),
                        ],
                      ),
                    ),
                    child: Expanded(
                      child: const Center(
                        child: Text(
                          "سُبْحـانَ اللهِ وَبِحَمْـدِهِ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 230,
                    width: 470,
                    margin: EdgeInsets.all(7),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('btn0.png'),
                        fit: BoxFit.cover,
                        opacity: 0.45,
                      ),
                      borderRadius: BorderRadius.circular(40),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 4, 0, 255),
                          const Color.fromARGB(255, 0, 140, 255),
                        ],
                      ),
                    ),
                    child: Expanded(
                      child: const Center(
                        child: Text(
                          "أسْتَغْفِرُ اللهَ وَأتُوبُ إلَيْهِ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff001A52),
        foregroundColor: Color.fromARGB(255, 255, 255, 255),
        elevation: 10,
        title: Text(
          "سعي",
          style: TextStyle(
            fontFamily: GoogleFonts.almarai().fontFamily,
            fontWeight: FontWeight.w700,
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 18.5,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Color(0xff001137)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 230,
                    width: 470,
                    margin: EdgeInsets.all(7),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('btn0.png'),
                        fit: BoxFit.cover,
                        opacity: 0.45,
                      ),
                      borderRadius: BorderRadius.circular(40),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 4, 0, 255),
                          const Color.fromARGB(255, 0, 140, 255),
                        ],
                      ),
                    ),
                    child: Expanded(
                      child: const Center(
                        child: Text(
                          "رَبَّنَا آتِنَا فِي الدُّنْيَا حَسَنَةً وَفِي الْآخِرَةِ حَسَنَةً وَقِنَا عَذَابَ النَّارِ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 230,
                    width: 470,
                    margin: EdgeInsets.all(7),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('btn0.png'),
                        fit: BoxFit.cover,
                        opacity: 0.45,
                      ),
                      borderRadius: BorderRadius.circular(40),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 4, 0, 255),
                          const Color.fromARGB(255, 0, 140, 255),
                        ],
                      ),
                    ),
                    child: Expanded(
                      child: const Center(
                        child: Text(
                          "رَبَّنَا لَا تُؤَاخِذْنَا إِنْ نَسِينَا أَوْ أَخْطَأْنَا",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 230,
                    width: 470,
                    margin: EdgeInsets.all(7),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('btn0.png'),
                        fit: BoxFit.cover,
                        opacity: 0.45,
                      ),
                      borderRadius: BorderRadius.circular(40),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 4, 0, 255),
                          const Color.fromARGB(255, 0, 140, 255),
                        ],
                      ),
                    ),
                    child: Expanded(
                      child: const Center(
                        child: Text(
                          "رَبَّنَا لَا تُحَمِّلْنَا مَا لَا طَاقَةَ لَنَا بِهِ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 230,
                    width: 470,
                    margin: EdgeInsets.all(7),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('btn0.png'),
                        fit: BoxFit.cover,
                        opacity: 0.45,
                      ),
                      borderRadius: BorderRadius.circular(40),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 4, 0, 255),
                          const Color.fromARGB(255, 0, 140, 255),
                        ],
                      ),
                    ),
                    child: Expanded(
                      child: const Center(
                        child: Text(
                          "رَبِّ زِدْنِي عِلْمًا",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 230,
                    width: 470,
                    margin: EdgeInsets.all(7),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('btn0.png'),
                        fit: BoxFit.cover,
                        opacity: 0.45,
                      ),
                      borderRadius: BorderRadius.circular(40),
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 4, 0, 255),
                          const Color.fromARGB(255, 0, 140, 255),
                        ],
                      ),
                    ),
                    child: Expanded(
                      child: const Center(
                        child: Text(
                          "رَبَّنَا آمَنَّا فَاغْفِرْ لَنَا ذُنُوبَنَا وَقِنَا عَذَابَ النَّارِ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
