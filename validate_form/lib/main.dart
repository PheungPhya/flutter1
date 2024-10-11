// import 'package:flutter/material.dart';

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: FilterListExample(),
//     );
//   }
// }

// class FilterListExample extends StatefulWidget {
//   @override
//   _FilterListExampleState createState() => _FilterListExampleState();
// }

// class _FilterListExampleState extends State<FilterListExample> {
//   List<String> items = ['Apple', 'Banana', 'Cherry', 'Date', 'Elderberry'];
//   List<String> filteredItems = [];

//   @override
//   void initState() {
//     super.initState();
//     filteredItems = items; // Initially show all items
//   }

//   void filterSearch(String query) {
//     List<String> tempList = [];
//     if (query.isNotEmpty) {
//       tempList = items.where((item) => item.toLowerCase().contains(query.toLowerCase())).toList();
//     } else {
//       tempList = items;
//     }

//     setState(() {
//       filteredItems = tempList;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Filter List"),
//         bottom: PreferredSize(
//           preferredSize: Size.fromHeight(kToolbarHeight),
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(
//               onChanged: (value) {
//                 filterSearch(value);
//               },
//               decoration: InputDecoration(
//                 hintText: "Search here...",
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(8.0),
//                 ),
//                 prefixIcon: Icon(Icons.search),
//               ),
//             ),
//           ),
//         ),
//       ),
//       body: ListView.builder(
//         itemCount: filteredItems.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(filteredItems[index]),
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FilterListExample(),
    );
  }
}

class FilterListExample extends StatefulWidget {
  @override
  _FilterListExampleState createState() => _FilterListExampleState();
}

class _FilterListExampleState extends State<FilterListExample> {
  List<String> items = ['Apple', 'Banana', 'Cherry', 'Date', 'Elderberry'];
  List<String> filteredItems = [];

  @override
  void initState() {
    super.initState();
    filteredItems = items; // Initially show all items
  }

  void filterSearch(String query) {
    List<String> tempList = [];
    if (query.isNotEmpty) {
      tempList = items
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    } else {
      tempList = items;
    }

    setState(() {
      filteredItems = tempList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filter List"),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                filterSearch(value);
              },
              decoration: InputDecoration(
                hintText: "Search here...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: filteredItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text(filteredItems[index]),
                    content: Text("You clicked on ${filteredItems[index]}"),
                    actions: [
                      TextButton(
                        child: Text("OK"),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
            child: Card(
              margin: EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(Icons.home, color: Colors.green), // Leading icon
                title: Text(
                  filteredItems[index],
                  style: TextStyle(fontSize: 18),
                ),
                trailing: Icon(Icons.arrow_forward_ios), // Trailing icon
              ),
            ),
          );
        },
      ),
    );
  }
}
