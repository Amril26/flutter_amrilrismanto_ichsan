import 'package:flutter/material.dart';
import 'package:praktikum/pages/form_custom_widget.dart';
import 'package:praktikum/providers/service_data.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final TextEditingController _inputName = TextEditingController();
  final TextEditingController _inputJob = TextEditingController();

  final GlobalKey<FormState> _keyName = GlobalKey<FormState>();
  final GlobalKey<FormState> _keyJob = GlobalKey<FormState>();

  _appBar() {
    return AppBar(
      title: const Text('Rest API'),
    );
  }

  _formInput() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          FormRegisterCustom(
              controller: _inputName,
              title: 'Name',
              hintText: 'Masukan Nama',
              obsucreText: false,
              globalKey: _keyName,
              inputType: TextInputType.text),
          const SizedBox(
            height: 10,
          ),
          FormRegisterCustom(
              controller: _inputJob,
              title: 'Name',
              hintText: 'Masukan Nama',
              obsucreText: false,
              globalKey: _keyJob,
              inputType: TextInputType.text)
        ],
      ),
    );
  }

  _bottomIcon(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          RaisedButton(
            color: Colors.blue,
            onPressed: () async {
              await context.read<ServiceData>().getData();
            },
            child: const Text(
              'Get',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
          RaisedButton(
            color: Colors.blue,
            onPressed: () async {
              await context.read<ServiceData>().postData(context,
                  name: _inputName.text, job: _inputJob.text);
            },
            child: const Text(
              'Post',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
          RaisedButton(
            color: Colors.blue,
            onPressed: () async {
              await context.read<ServiceData>().updateData(context,
                  name: _inputName.text, job: _inputJob.text);
            },
            child: const Text(
              'Put',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
          RaisedButton(
            color: Colors.blue,
            onPressed: () async {
              await context.read<ServiceData>().deleteData();
            },
            child: const Text(
              'Delete',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: ListView(
        children: [
          _formInput(),
          _bottomIcon(context),
          Consumer<ServiceData>(builder: (context, value, child) {
            if (value.showGet == true) {
              return ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: value.listDataUser.length,
                itemBuilder: (context, index) => ListTile(
                  leading: Image.network(value.listDataUser[index].avatar),
                  title: Text(
                      '${value.listDataUser[index].fristName} ${value.listDataUser[index].fristName}'),
                  subtitle: Text(value.listDataUser[index].email),
                ),
              );
            }
            {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(value.resultData),
              );
            }
          }),
        ],
      ),
    );
  }
}
