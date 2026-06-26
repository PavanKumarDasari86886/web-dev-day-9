import 'package:flutter/material.dart';

void main() {
  runApp(const FlutterStudentApp());
}

class FlutterStudentApp extends StatelessWidget {
  const FlutterStudentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Student App",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget menuButton(
    BuildContext context,
    IconData icon,
    String title,
    Widget page,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SizedBox(
        width: double.infinity,
        height: 55,
        child: ElevatedButton.icon(
          icon: Icon(icon),
          label: Text(title, style: const TextStyle(fontSize: 18)),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => page));
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Student App"),
        centerTitle: true,
      ),

      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Center(
                child: Text(
                  "Flutter Menu",
                  style: TextStyle(color: Colors.white, fontSize: 28),
                ),
              ),
            ),
            ListTile(leading: Icon(Icons.home), title: Text("Home")),
            ListTile(leading: Icon(Icons.info), title: Text("About")),
          ],
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundColor: Colors.blue,
              child: Icon(Icons.person, color: Colors.white, size: 70),
            ),

            const SizedBox(height: 15),

            const Text(
              "Pavan Kumar",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            const Text("BBA Student", style: TextStyle(fontSize: 18)),

            const SizedBox(height: 25),

            Card(
              elevation: 6,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: const [
                    ListTile(
                      leading: Icon(Icons.school),
                      title: Text("University"),
                      subtitle: Text("KL University"),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.badge),
                      title: Text("Roll Number"),
                      subtitle: Text("2400090291"),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.code),
                      title: Text("Course"),
                      subtitle: Text("Flutter & Dart"),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 25),

            menuButton(
              context,
              Icons.flutter_dash,
              "About Flutter",
              const AboutFlutterPage(),
            ),

            menuButton(
              context,
              Icons.star,
              "Flutter Features",
              const FeaturesPage(),
            ),

            menuButton(
              context,
              Icons.widgets,
              "Widgets Demo",
              const WidgetDemoPage(),
            ),

            menuButton(
              context,
              Icons.calculate,
              "Counter App",
              const CounterPage(),
            ),

            menuButton(
              context,
              Icons.info_outline,
              "Flutter Architecture",
              const ArchitecturePage(),
            ),

            menuButton(context, Icons.code, "Dart Basics", const DartPage()),
          ],
        ),
      ),
    );
  }
}

class AboutFlutterPage extends StatelessWidget {
  const AboutFlutterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("About Flutter")),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          "Flutter is Google's open-source UI toolkit for building Android, iOS, Web and Desktop apps from a single codebase.\n\nIt uses Dart language and provides Hot Reload, beautiful widgets and high performance.",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

class FeaturesPage extends StatelessWidget {
  const FeaturesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final features = [
      "Single Codebase",
      "Hot Reload",
      "Fast Performance",
      "Beautiful UI",
      "Open Source",
      "Cross Platform",
      "Rich Widgets",
      "Google Support",
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Features")),
      body: ListView.builder(
        itemCount: features.length,
        itemBuilder: (_, index) {
          return ListTile(
            leading: const Icon(Icons.check_circle, color: Colors.green),
            title: Text(features[index]),
          );
        },
      ),
    );
  }
}

class WidgetDemoPage extends StatelessWidget {
  const WidgetDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Widgets Demo")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.favorite, color: Colors.red, size: 70),
            SizedBox(height: 20),
            Text("Everything is a Widget!", style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stateful Widget Demo")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$count",
              style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              child: const Text("Increment"),
            ),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  count = 0;
                });
              },
              child: const Text("Reset"),
            ),
          ],
        ),
      ),
    );
  }
}

class ArchitecturePage extends StatelessWidget {
  const ArchitecturePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Architecture")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Card(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text("Framework"),
              ),
            ),
            Icon(Icons.arrow_downward),
            Card(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text("Engine"),
              ),
            ),
            Icon(Icons.arrow_downward),
            Card(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text("Platform"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DartPage extends StatelessWidget {
  const DartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dart Basics")),
      body: ListView(
        children: const [
          ListTile(leading: Icon(Icons.code), title: Text("Variables")),
          ListTile(leading: Icon(Icons.code), title: Text("Data Types")),
          ListTile(leading: Icon(Icons.code), title: Text("Operators")),
          ListTile(leading: Icon(Icons.code), title: Text("Functions")),
          ListTile(leading: Icon(Icons.code), title: Text("Loops")),
          ListTile(leading: Icon(Icons.code), title: Text("Conditions")),
        ],
      ),
    );
  }
}
