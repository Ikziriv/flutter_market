import 'package:flutter/material.dart';
import '../../models/bank_model.dart';
import 'bank_item_page.dart';
import '../../widget/text_style.dart';

class BankListPage extends StatefulWidget {
  static LinearGradient gradientBankCard(Color startColor, Color endColor) {
    return LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [startColor, endColor],
        stops: [0.0, 0.7]);
  }

  @override
  _BankListPageState createState() => _BankListPageState();
}

class _BankListPageState extends State<BankListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bank List"),
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: dummyDataBank.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 4.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0)),
            margin: new EdgeInsets.all(8.0),
            child: Container(
              constraints: BoxConstraints.expand(height: 165.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                gradient: dummyDataBank[index].gradientColor,
              ),
              height: 165.0,
              child: Container(
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: <Widget>[
                    //This Widget is for Bank Title, LoanAmount Title and Loan Amount
                    Align(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(dummyDataBank[index].name,
                              style: TextStyles.bankTitle),
                          SizedBox(
                            height: 50.0,
                          ),
                          Text("Loan Amount",
                              style: TextStyles.loanAmountTitle),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(dummyDataBank[index].loanAmount,
                              style: TextStyles.bankTitle),
                        ],
                      ),
                      alignment: AlignmentDirectional.topStart,
                    ),

                    //This Widget is for Apply button (Bottom End)
                    Align(
                      child: new RaisedButton(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 0.0),
                          color: Colors.white,
                          elevation: 4.0,
                          child: new Text(
                            "Apply",
                            style: TextStyles.applyButton,
                          ),
                          onPressed: () {
                            //Navigate to BankDetail Screen
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      BankListItem(dummyDataBank[index]),
                                ));
                          },
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(8.0))),
                      alignment: AlignmentDirectional.bottomEnd,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
