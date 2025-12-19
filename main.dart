import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: const Locale('ar'),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('ar')],
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
  int counter = 0;
  bool st1 = false, st2 = false, st3 = false, st4 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff001137),
        elevation: 10,
        shadowColor: Colors.black,
        title: const Text(
          "سعي",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 18.5,
            fontFamily: 'CustomFont',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Color.fromARGB(255, 10, 21, 45)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 200,
                    width: 400,
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('btn1.png'),
                          fit: BoxFit.cover,
                          opacity: 0.4),
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
                        child: const Center(
                          child: Text(
                            "المصحف",
                            style: TextStyle(
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
                    height: 200,
                    width: 400,
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
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
                        child: const Center(
                          child: Text(
                            "الاذكار",
                            style: TextStyle(
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
                    height: 200,
                    width: 400,
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
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
                        child: const Center(
                          child: Text(
                            "ادعيه من القران ",
                            style: TextStyle(
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
        decoration: const BoxDecoration(
          color: Color(0xff001A52),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
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
                color: st3 == true
                    ? const Color.fromARGB(255, 25, 97, 15)
                    : const Color.fromARGB(255, 200, 194, 194),
              ),
            ),
            IconButton(
              hoverColor: const Color.fromARGB(105, 54, 100, 215),
              onPressed: () {
                setState(() {
                  st1 = !st1;
                  st2 = st3 = st4 = false;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const doto()),
                );
              },
              icon: Icon(
                Icons.task_alt_outlined,
                color: st1 == true
                    ? const Color.fromARGB(255, 25, 97, 15)
                    : const Color.fromARGB(255, 200, 194, 194),
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
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: IconButton(
            onPressed: () {
              setState(() {
                counter = 0;
              });
            },
            icon: Image.network(
              'https://cdn-icons-png.flaticon.com/128/9899/9899372.png',
              scale: 5,
              color: Color.fromARGB(255, 0, 0, 0),
            )),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Icon(Icons.menu_book_rounded),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      body: PageView.builder(
        reverse: true,
        itemCount: list.length,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, i) {
          return Image.asset(list[i], fit: BoxFit.fill);
        },
      ),
    );
  }
}

// Page todo
class doto extends StatefulWidget {
  const doto({super.key});
  @override
  State<doto> createState() => _doto();
}

class _doto extends State<doto> {
  bool s1 = false, s2 = false, s3 = false, s4 = false, s5 = false, s6 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Icon(Icons.task_alt_outlined),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                color: Color.fromARGB(255, 10, 21, 45),
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
                        activeColor: const Color.fromARGB(255, 19, 127, 31),
                        hoverColor: const Color.fromARGB(255, 35, 48, 94),
                        value: s1,
                        onChanged: (val) {
                          setState(() {
                            s1 = s2 = s3 = s4 = s5 = s6 = !s1;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: const Text(
                          "ورد القران",
                          style: TextStyle(color: Colors.white),
                        ),
                        activeColor: const Color.fromARGB(255, 19, 127, 31),
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
                        activeColor: const Color.fromARGB(255, 19, 127, 31),
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
                          "قيام الليل",
                          style: TextStyle(color: Colors.white),
                        ),
                        activeColor: const Color.fromARGB(255, 19, 127, 31),
                        hoverColor: const Color.fromARGB(255, 35, 48, 94),
                        value: s5,
                        onChanged: (val) {
                          setState(() {
                            s5 = !s5;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: const Text(
                          "الوتر",
                          style: TextStyle(color: Colors.white),
                        ),
                        activeColor: const Color.fromARGB(255, 19, 127, 31),
                        hoverColor: const Color.fromARGB(255, 35, 48, 94),
                        value: s6,
                        onChanged: (val) {
                          setState(() {
                            s6 = !s6;
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
      appBar: AppBar(title: const Icon(Icons.light_mode_rounded)),
      body: SingleChildScrollView(
          child: Container(
        decoration: BoxDecoration(color: Color.fromARGB(255, 10, 21, 45)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 230,
                  width: 470,
                  margin: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      colors: [
                        const Color.fromARGB(255, 0, 0, 0),
                        const Color.fromARGB(255, 30, 54, 118),
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      colors: [
                        const Color.fromARGB(255, 0, 0, 0),
                        const Color.fromARGB(255, 30, 54, 118),
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      colors: [
                        const Color.fromARGB(255, 0, 0, 0),
                        const Color.fromARGB(255, 30, 54, 118),
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      colors: [
                        const Color.fromARGB(255, 0, 0, 0),
                        const Color.fromARGB(255, 30, 54, 118),
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      colors: [
                        const Color.fromARGB(255, 0, 0, 0),
                        const Color.fromARGB(255, 30, 54, 118),
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      colors: [
                        const Color.fromARGB(255, 0, 0, 0),
                        const Color.fromARGB(255, 30, 54, 118),
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      colors: [
                        const Color.fromARGB(255, 0, 0, 0),
                        const Color.fromARGB(255, 30, 54, 118),
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      colors: [
                        const Color.fromARGB(255, 0, 0, 0),
                        const Color.fromARGB(255, 30, 54, 118),
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      colors: [
                        const Color.fromARGB(255, 0, 0, 0),
                        const Color.fromARGB(255, 30, 54, 118),
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      colors: [
                        const Color.fromARGB(255, 0, 0, 0),
                        const Color.fromARGB(255, 30, 54, 118),
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      colors: [
                        const Color.fromARGB(255, 0, 0, 0),
                        const Color.fromARGB(255, 30, 54, 118),
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      colors: [
                        const Color.fromARGB(255, 0, 0, 0),
                        const Color.fromARGB(255, 30, 54, 118),
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      colors: [
                        const Color.fromARGB(255, 0, 0, 0),
                        const Color.fromARGB(255, 30, 54, 118),
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      colors: [
                        const Color.fromARGB(255, 0, 0, 0),
                        const Color.fromARGB(255, 30, 54, 118),
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
      )),
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
      appBar: AppBar(title: const Icon(Icons.back_hand_sharp)),
      body: SingleChildScrollView(
          child: Container(
        decoration: BoxDecoration(color: Color.fromARGB(255, 10, 21, 45)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 230,
                  width: 470,
                  margin: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      colors: [
                        const Color.fromARGB(255, 0, 0, 0),
                        const Color.fromARGB(255, 30, 54, 118),
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      colors: [
                        const Color.fromARGB(255, 0, 0, 0),
                        const Color.fromARGB(255, 30, 54, 118),
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      colors: [
                        const Color.fromARGB(255, 0, 0, 0),
                        const Color.fromARGB(255, 30, 54, 118),
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      colors: [
                        const Color.fromARGB(255, 0, 0, 0),
                        const Color.fromARGB(255, 30, 54, 118),
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
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      colors: [
                        const Color.fromARGB(255, 0, 0, 0),
                        const Color.fromARGB(255, 30, 54, 118),
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
      )),
    );
  }
}
