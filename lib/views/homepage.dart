import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                height: 220,
                width: double.infinity,
                color: Theme.of(context).primaryColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://avatars.githubusercontent.com/u/38634459?v=4'),
                      ),
                      title: Text(
                        'Alton',
                        style: TextStyle(fontFamily: 'Bokor', fontSize: 28),
                      ),
                      subtitle: Text('Flutter Dev'),
                    ),
                    SizedBox(
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Text('2343'),
                              Text('654'),
                              Text('5432'),
                              Text('234'),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text('Track'),
                              const Text('Seen'),
                              const Text('Test'),
                              const Text('Dev'),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        appBar: AppBar(
          leading: const Icon(Icons.search),
          centerTitle: true,
          title: const Text('Flutter Mobile'),
          actions: const [
            Icon(Icons.camera_alt),
            Icon(Icons.shopping_cart),
            Icon(Icons.notifications),
            SizedBox(
              width: 20,
            )
          ],
        ),
        body: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                  height: 200,
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(20))),
                  child: const Image(
                    image: NetworkImage(
                        'https://cdn.hashnode.com/res/hashnode/image/upload/v1629475994690/_b-42E0Dq.png'),
                  )),
            ),
            Expanded(
              flex: 3,
              child: Container(
                  height: 200,
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(20))),
                  child: const Image(
                    image: NetworkImage(
                        'https://cdn.hashnode.com/res/hashnode/image/upload/v1629475994690/_b-42E0Dq.png'),
                  )),
            ),
          ],
        ));
  }
}
