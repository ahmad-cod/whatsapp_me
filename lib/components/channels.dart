import 'package:flutter/material.dart';
import 'package:whatsapp_clone/components/title_bar.dart';

class Channels extends StatelessWidget {
  const Channels({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MyTitleBar(
            title: 'Channels',
            icon: Icons.add_outlined,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('here are some channels '),
          const SizedBox(height: 10,),
          SizedBox(
            height: 200,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: ((context, index) {
                  return Container(
                    height: 150,
                    // width: 100,
                    padding: const EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
                    margin: const EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(36),
                              child: Image.asset(
                                'lib/images/ahmadDp.png',
                                width: 72,
                                height: 72,
                              ),
                            ),
                            Positioned(
                                bottom: 1,
                                right: 7,
                                child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: const Icon(
                                      Icons.check,
                                      color: Colors.white,
                                    )))
                          ],
                        ),
                    
                        Text(
                          'Channel $index',
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 6, bottom: 6, left: 8, right: 8),
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.green.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text('Follow',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        )
                      ],
                    ),
                  );
                })),
          ),

          const SizedBox(height: 18,),
          ElevatedButton(
            onPressed: () => {},
            child: const Text('Explore more')
          )
        ],
      ),
    );
  }
}
