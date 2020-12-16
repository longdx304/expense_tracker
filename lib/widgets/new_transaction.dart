import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTx;

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: 'Title',
              ),
            ),
            TextField(
              controller: amountController,
              decoration: InputDecoration(
                labelText: 'Amount',
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.purple,
              ),
              child: Text('Add Transaction'),
              onPressed: () {
                addTx(
                  title: titleController.text,
                  amount: double.parse(amountController.text),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
