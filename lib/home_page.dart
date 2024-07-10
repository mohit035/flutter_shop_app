import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> filters = const ['All', 'Adidas', 'Nike', 'Bataa'];
  late String selectedFilter;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedFilter = filters[0];
  }

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
        borderSide: BorderSide(color: Color.fromRGBO(255, 255, 255, 1)),
        borderRadius: BorderRadius.horizontal(left: Radius.circular(50)));
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Shoes\n Collection',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search),
                      border: border,
                      // enabledBorder: border,
                      // focusedBorder: border
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: filters.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: GestureDetector(
                      onTap: () {
                        selectedFilter = filters[index];
                      },
                      child: Chip(
                        side: const BorderSide( 
                          color:Color.fromRGBO(245, 247, 249, 1)
                        ),
                        backgroundColor:selectedFilter == filters[index] ? Theme.of(context).colorScheme.primary:const Color.fromRGBO(245, 247, 249, 1),
                        label: Text(filters[index]),
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                        labelStyle: const TextStyle(fontSize: 16) ,
                        shape: RoundedRectangleBorder( 
                          borderRadius: BorderRadius.circular(30)
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
