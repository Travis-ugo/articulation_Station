import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oblack_tech/Widgets/buttons.dart';

class SelectedUserClipBoard extends StatelessWidget {
  const SelectedUserClipBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFC19151),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SButton(
                    onPressed: () {},
                    pIcons: CupertinoIcons.home,
                  ),
                  SButton(
                    onPressed: () {},
                    pIcons: Icons.chevron_left,
                  ),
                  SButton(
                    onPressed: () {},
                    pIcons: Icons.settings,
                  ),
                ],
              ),
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 280,
                      width: 450,
                      color: Colors.brown[200],
                      child: Center(
                        child: Container(
                          height: 250,
                          width: 400,
                          color: const Color(0xFFC19151),
                          child: const DataTables(),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 140,
                            width: 380,
                            color: Colors.brown[200],
                            child: Center(
                              child: Container(
                                height: 100,
                                width: 320,
                                color: const Color(0xFF7E4900),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: const [
                                    SizedBox(width: 10),
                                    CircleAvatar(backgroundColor: Colors.white),
                                    SizedBox(width: 10),
                                    CircleAvatar(backgroundColor: Colors.white),
                                    SizedBox(width: 10),
                                    CircleAvatar(backgroundColor: Colors.white),
                                    SizedBox(width: 10),
                                    CircleAvatar(backgroundColor: Colors.white),
                                  ],
                                ),
                              ),
                            )),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            LButton(
                              onTap: () {},
                              text: 'cancel',
                            ),
                            const SizedBox(width: 15),
                            LButton(
                              onTap: () {},
                              text: 'Deselect',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  DButton(key: key),
                  SButton(
                    onPressed: () {},
                    pIcons: Icons.volume_up_outlined,
                  )
                ],
              )
            ],
          ),
        ));
  }
}

class DataTables extends StatelessWidget {
  const DataTables({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const [
        DataColumn(
          label: Text(
            'Date',
            style: TextStyle(color: Colors.white),
          ),
        ),
        DataColumn(
          label: Text(
            'Sound',
            style: TextStyle(color: Colors.white),
          ),
        ),
        DataColumn(
          label: Text(
            'Score',
            style: TextStyle(color: Colors.white),
          ),
        ),
        DataColumn(
          label: Text(
            '%',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
      rows: [
        DataRow(
          color: MaterialStateProperty.all(const Color(0xFF7E4900)),
          cells: const [
            DataCell(
              Text(
                '12/2/22',
                style: TextStyle(color: Colors.white),
              ),
            ),
            DataCell(
              Text(
                'P',
                style: TextStyle(color: Colors.white),
              ),
            ),
            DataCell(
              Text(
                '10/9',
                style: TextStyle(color: Colors.white),
              ),
            ),
            DataCell(
              Text(
                '100',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        const DataRow(
          cells: [
            DataCell(
              Text(
                '12/2/22',
                style: TextStyle(color: Colors.white),
              ),
            ),
            DataCell(
              Text(
                'P',
                style: TextStyle(color: Colors.white),
              ),
            ),
            DataCell(
              Text(
                '10/9',
                style: TextStyle(color: Colors.white),
              ),
            ),
            DataCell(
              Text(
                '100',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        DataRow(
          color: MaterialStateProperty.all(const Color(0xFF7E4900)),
          cells: const [
            DataCell(
              Text(
                '12/2/22',
                style: TextStyle(color: Colors.white),
              ),
            ),
            DataCell(
              Text(
                'P',
                style: TextStyle(color: Colors.white),
              ),
            ),
            DataCell(
              Text(
                '10/9',
                style: TextStyle(color: Colors.white),
              ),
            ),
            DataCell(
              Text(
                '100',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        const DataRow(
          cells: [
            DataCell(
              Text(
                '12/2/22',
                style: TextStyle(color: Colors.white),
              ),
            ),
            DataCell(
              Text(
                'P',
                style: TextStyle(color: Colors.white),
              ),
            ),
            DataCell(
              Text(
                '10/9',
                style: TextStyle(color: Colors.white),
              ),
            ),
            DataCell(
              Text(
                '100',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
