import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PageInputData extends StatefulWidget {
  PageInputData({super.key});

  @override
  State<PageInputData> createState() => _PageInputDataState();
}

class _PageInputDataState extends State<PageInputData> {
  int count = 0;
  TextEditingController controller = TextEditingController();
  String? text = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input '),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: controller,
              keyboardType: TextInputType.number,
              // obscureText: true,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  label: Text('Enter Text'),
                  border: OutlineInputBorder(),
                  hintText: 'Enter something'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                text = controller.text;
              });
            },
            child: Text('save'),
          ),
          Text(text!)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });

          print(count);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
