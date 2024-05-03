import 'package:flutter/material.dart';

// Define a class for Person
class Person {
  final String firstName;
  final String lastName;
  final String address;
  final String city;
  final String state;
  final List<Person>? subRows; // Each person can have sub rows of more people

  Person({
    required this.firstName,
    required this.lastName,
    required this.address,
    required this.city,
    required this.state,
    this.subRows,
  });
}

// Define the data
final List<Person> data = [
  Person(
    firstName: 'Dylan',
    lastName: 'Murray',
    address: '261 Erdman Ford',
    city: 'East Daphne',
    state: 'Kentucky',
    subRows: [
      Person(
        firstName: 'Ervin',
        lastName: 'Reinger',
        address: '566 Brakus Inlet',
        city: 'South Linda',
        state: 'West Virginia',
        subRows: [
          Person(
            firstName: 'Jordane',
            lastName: 'Homenick',
            address: '1234 Brakus Inlet',
            city: 'South Linda',
            state: 'West Virginia',
          ),
        ],
      ),
      Person(
        firstName: 'Brittany',
        lastName: 'McCullough',
        address: '722 Emie Stream',
        city: 'Lincoln',
        state: 'Nebraska',
      ),
    ],
  ),
  Person(
    firstName: 'Raquel',
    lastName: 'Kohler',
    address: '769 Dominic Grove',
    city: 'Columbus',
    state: 'Ohio',
    subRows: [
      Person(
        firstName: 'Branson',
        lastName: 'Frami',
        address: '32188 Larkin Turnpike',
        city: 'Charleston',
        state: 'South Carolina',
      ),
    ],
  ),
];

class Example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example'),
      ),
      body: MaterialReactTable(data: data),
    );
  }
}

class MaterialReactTable extends StatefulWidget {
  final List<Person> data;

  MaterialReactTable({required this.data});

  @override
  _MaterialReactTableState createState() => _MaterialReactTableState();
}

class _MaterialReactTableState extends State<MaterialReactTable> {
  List<bool> _expandedStates = [];

  @override
  void initState() {
    super.initState();
    _expandedStates = List.generate(widget.data.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: ExpansionPanelList(
        expansionCallback: (int index, bool isExpanded) {
          setState(() {
            _expandedStates[index] = !isExpanded;
          });
        },
        children: List.generate(widget.data.length, (index) {
          return ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded) {
              return ListTile(
                title: Text('${widget.data[index].firstName} ${widget.data[index].lastName}'),
              );
            },
            body: ListTile(
              title: Text('Address: ${widget.data[index].address}'),
              subtitle: Text('City: ${widget.data[index].city}, State: ${widget.data[index].state}'),
            ),
            isExpanded: _expandedStates[index],
          );
        }),
      ),
    );
  }
}


