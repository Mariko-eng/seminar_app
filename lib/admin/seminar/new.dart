import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class AdminSeminarNew extends StatefulWidget {
  const AdminSeminarNew({super.key});

  @override
  State<AdminSeminarNew> createState() => _AdminSeminarNewState();
}

class _AdminSeminarNewState extends State<AdminSeminarNew> {
  final _formKey = GlobalKey<FormState>();
  final _titleCtr = TextEditingController();
  final _descriptionCtr = TextEditingController();
  final _typeCtr = TextEditingController();
  final _venueCtr = TextEditingController();
  final _dateCtr = TextEditingController();
  final _timeCtr = TextEditingController();
  final _currencyCtr = TextEditingController();
  final _amountCtr = TextEditingController();
  final _slotsCtr = TextEditingController();

  // List of options for the dropdown
  List<String> typeOptions = [
    'Young People',
    'Older People',
    'Professionals',
    "All"
  ];
  List<String> currencyOptions = ['KES', 'UGX'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        leadingWidth: 80,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            width: 80,
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                Text(
                  "Back",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
        ),
        title: Text(
          "New Seminar/Event",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 5, left: 10, right: 10),
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Text(
                          "Seminar and Event Creation Form",
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Title",
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            TextFormField(
                              controller: _titleCtr,
                              decoration:
                                  InputDecoration(border: OutlineInputBorder()),
                              validator: (String? val) {
                                if (val != null) {
                                  if (val.trim().length < 5) {
                                    return "*Required - AtLeast 5 characters";
                                  } else {
                                    return null;
                                  }
                                }
                                return "*Required";
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Description",
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            TextFormField(
                              controller: _descriptionCtr,
                              minLines: 2,
                              maxLines: 3,
                              decoration:
                                  InputDecoration(border: OutlineInputBorder()),
                              validator: (String? val) {
                                if (val != null) {
                                  if (val.trim().length < 5) {
                                    return "*Required - AtLeast 5 characters";
                                  } else {
                                    return null;
                                  }
                                }
                                return "*Required";
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Type",
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            TextFormField(
                              controller: _typeCtr,
                              readOnly: true,
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Please Select",
                                  suffixIcon: Icon(
                                      Icons.arrow_drop_down_circle_rounded)),
                              onTap: () {
                                showOptionsDialog(
                                    context, typeOptions, _typeCtr);
                              },
                              validator: (String? val) {
                                if (val != null) {
                                  if (val.trim().length < 5) {
                                    return "*Required";
                                  } else {
                                    return null;
                                  }
                                }
                                return "*Required";
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Venue",
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            TextFormField(
                              controller: _venueCtr,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                              validator: (String? val) {
                                if (val != null) {
                                  if (val.trim().length < 5) {
                                    return "*Required - AtLeast 5 characters";
                                  } else {
                                    return null;
                                  }
                                }
                                return "*Required";
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Date & Time",
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: TextFormField(
                                    controller: _dateCtr,
                                    readOnly: true,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "YYYY-MM-DD",
                                        suffixIcon: Icon(Icons
                                            .arrow_drop_down_circle_rounded)),
                                    onTap: () async {
                                      // Show a date picker when the text field is tapped
                                      final pickedDate = await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(2000),
                                        lastDate: DateTime(2101),
                                      );
                                      if (pickedDate != null) {
                                        final formattedDate =
                                            DateFormat('yyyy-MM-dd')
                                                .format(pickedDate);
                                        _dateCtr.text = formattedDate;
                                      }
                                    },
                                    validator: (String? val) {
                                      if (val != null) {
                                        if (val.trim().length < 2) {
                                          return "*Required";
                                        } else {
                                          return null;
                                        }
                                      }
                                      return "*Required";
                                    },
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  flex: 2,
                                  child: TextFormField(
                                    controller: _timeCtr,
                                    readOnly: true,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "HH:MM",
                                        suffixIcon: Icon(Icons
                                            .arrow_drop_down_circle_rounded)),
                                    onTap: () async {
                                      // Show a time picker when the text field is tapped
                                      final pickedTime = await showTimePicker(
                                        context: context,
                                        initialTime: TimeOfDay.now(),
                                      );

                                      if (pickedTime != null) {
                                        _timeCtr.text =
                                            pickedTime.format(context);
                                      }
                                    },
                                    validator: (String? val) {
                                      if (val != null) {
                                        if (val.trim().length < 2) {
                                          return "*Required";
                                        } else {
                                          return null;
                                        }
                                      }
                                      return "*Required";
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Amount (Charges)",
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  flex:2,
                                  child: TextFormField(
                                    controller: _currencyCtr,
                                    readOnly: true,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Currency",
                                        suffixIcon: Icon(
                                            Icons.arrow_drop_down_circle_rounded)),
                                    onTap: () {
                                      showOptionsDialog(
                                          context, currencyOptions, _currencyCtr);
                                    },
                                    validator: (String? val) {
                                      if (val != null) {
                                        if (val.trim().isEmpty) {
                                          return "*Required";
                                        } else {
                                          return null;
                                        }
                                      }
                                      return "*Required";
                                    },
                                  ),
                                ),
                                SizedBox(width: 5,),
                                Expanded(
                                  flex: 2,
                                  child: TextFormField(
                                    controller: _amountCtr,
                                    keyboardType: TextInputType.number,
                                    inputFormatters: <TextInputFormatter>[
                                      FilteringTextInputFormatter.digitsOnly,
                                    ],
                                    decoration:
                                    InputDecoration(border: OutlineInputBorder(),
                                      hintText: "Enter Amount",
                                    ),
                                    validator: (String? val) {
                                      if (val != null) {
                                        if (val.trim().isEmpty) {
                                          return "*Required - AtLeast 0 if free";
                                        } else {
                                          return null;
                                        }
                                      }
                                      return "*Required";
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Number Of slots",
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            TextFormField(
                              controller: _slotsCtr,
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              decoration:
                                  InputDecoration(border: OutlineInputBorder()),
                              validator: (String? val) {
                                if (val != null) {
                                  if (val.trim().isEmpty) {
                                    return "*Required - AtLeast 1";
                                  } else {
                                    return null;
                                  }
                                }
                                return "*Required";
                              },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Upload Relevant Document",
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 100,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.upload),
                                      Text("Browse Files"),
                                      Text("Choose a File"),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Divider(
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            bool isvalid = _formKey.currentState!.validate();
                            print(isvalid);
                          },
                          child: Container(
                            width: 200,
                            height: 50,
                            alignment: Alignment.center,
                            child: Text(
                              "Submit",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                            ),
                            decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                border: Border.all(color: Colors.grey)),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> showOptionsDialog(BuildContext context, List<String> options,
      TextEditingController ctr) async {
    String? selected = await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text('Select an option'),
          children: options.map((option) {
            return SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, option);
              },
              child: Container(
                color: Colors.grey[200],
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(option,style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                    Icon(Icons.arrow_right,color: Colors.blue,)
                  ],
                ),
              ),
            );
          }).toList(),
        );
      },
    );
    if (selected != null) {
      setState(() {
        // _typeCtr.text = selected;
        ctr.text = selected;
      });
    }
  }
}
