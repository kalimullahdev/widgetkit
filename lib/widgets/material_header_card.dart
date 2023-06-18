import 'package:flutter/material.dart';

class MaterialHeaderCard extends StatelessWidget {
  const MaterialHeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const ListTile(
              leading: CircleAvatar(child: Icon(Icons.person_2_rounded)),
              title: Text(
                'Card title',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              subtitle: Text('Secondary Text'),
            ),
            Container(
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1502472584811-0a2f2feb8968?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1740&q=80")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16, top: 16),
              child: Text(
                'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                style: TextStyle(
                  color: Theme.of(context).hintColor,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text('Action 1'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Action 2'),
                    ),
                  ],
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.star),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.share),
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
