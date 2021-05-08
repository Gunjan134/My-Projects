import 'package:flutter/material.dart';

class DetailsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: const ExactAssetImage(
                      'assets/images/1.jpg',
                    ),
                    minRadius: 40,
                    maxRadius: 40,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'Sample text',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const Text(
                        'Sample title',
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * 0.385,
                        child: const ListTile(
                          title: const Text(
                            'Name 1',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                          ),
                          subtitle: const Text(
                            'Value 1',
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * 0.385,
                        child: const ListTile(
                          title: const Text(
                            'Name 2',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15.0),
                          ),
                          subtitle: const Text(
                            'Value 2',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(
                  height: 15.0,
                  endIndent: 20,
                  indent: 20,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * 0.385,
                        child: const ListTile(
                          title: const Text(
                            'Name 3',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                          ),
                          subtitle: const Text(
                            'Value 3',
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * 0.385,
                        child: const ListTile(
                          title: const Text(
                            'Name 4',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                          ),
                          subtitle: const Text(
                            'Value 4',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
