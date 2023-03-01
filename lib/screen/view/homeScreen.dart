import 'package:counter_mvp/screen/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text(
          "Counter App",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<HomeProvider>(
              builder: (context, value, child) => Text(
                    "${value.i}",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )),
          SizedBox(height: 200,),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                  backgroundColor: Colors.black,
                  onPressed: () {
                    Provider.of<HomeProvider>(context, listen: false)
                        .Increament();
                  },
                  child: Text(
                    "+",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.black,
                  onPressed: () {
                    Provider.of<HomeProvider>(context, listen: false)
                        .Decreament();
                  },
                  child: Text(
                    "-",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.black,
                  onPressed: () {
                    Provider.of<HomeProvider>(context, listen: false)
                        .multi2();
                  },
                  child: Text(
                    "X2",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.black,
                  onPressed: () {
                    Provider.of<HomeProvider>(context, listen: false)
                        .multi3();
                  },
                  child: Text(
                    "X3",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.black,
                  onPressed: () {
                    Provider.of<HomeProvider>(context, listen: false)
                        .multi4();
                  },
                  child: Text(
                    "X4",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.black,
                  onPressed: () {
                    Provider.of<HomeProvider>(context, listen: false)
                        .multi6();
                  },
                  child: Text(
                    "X6",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 100,),
          FloatingActionButton(
            backgroundColor: Colors.black,
            onPressed: () {
              Provider.of<HomeProvider>(context, listen: false)
                  .reset();
            },
            child: Text(
              "Reset",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ],
      ),
    ));
  }
}
