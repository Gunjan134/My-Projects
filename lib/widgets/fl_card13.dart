import 'package:flutter/material.dart';

class Card13 extends StatelessWidget {
  final String headingText, key1, value1, key2, value2;

  Card13(this.headingText, this.key1, this.value1, this.key2, this.value2);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.33,
      width: width * 0.9,
      child: Card(
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2.0),
        ),
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 5.0,
                ),
                alignment: Alignment.centerLeft,
                child: Text(
                  headingText,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: height * 0.15,
                width: width * 0.85,
                child: Container(
                  height: height * 0.1,
                  width: width * 0.85,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            width: width * 0.38,
                            child: Text(
                              key1,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 22.0,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.1,
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.blue,
                            width: width * 0.25,
                            height: height * 0.05,
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 4.0,
                            ),
                            child: Text(
                              value1,
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Divider(
                color: Colors.grey,
              ),
              Container(
                height: height * 0.05,
                padding: const EdgeInsets.only(
                  top: 10.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        width: width * 0.38,
                        child: Text(
                          key2,
                          style: const TextStyle(
                            color: Colors.grey,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: width * 0.25,
                        alignment: Alignment.centerRight,
                        child: Text(
                          value2,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
