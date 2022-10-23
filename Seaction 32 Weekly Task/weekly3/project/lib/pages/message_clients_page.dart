import 'package:flutter/material.dart';
import 'package:project/helper/themes.dart';
import 'package:project/providers/add_message_provider.dart';
import 'package:provider/provider.dart';

class MessageClientPage extends StatefulWidget {
  static String rootNamed = '/message_clients';
  const MessageClientPage({Key? key}) : super(key: key);

  @override
  State<MessageClientPage> createState() => _MessageClientPageState();
}

class _MessageClientPageState extends State<MessageClientPage> {
  _appBar() {
    return AppBar(
      backgroundColor: colorPrimary,
      title: Text('Message Clients', style: gf1.copyWith(color: Colors.white)),
      elevation: 0,
    );
  }

  @override
  void initState() {
    super.initState();
    context.read<AddMessageProviders>().getDataMessage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _appBar(),
      body: Consumer<AddMessageProviders>(
        builder: (context, value, child) => value.dataMessage.isNotEmpty
            ? ListView.builder(
                itemCount: value.dataMessage.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(
                    value.dataMessage[index].name,
                    style: h2.copyWith(
                        color: txPrimary,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  subtitle: Text(
                    value.dataMessage[index].description,
                    style: h2.copyWith(fontSize: 12),
                  ),
                ),
              )
            : Center(
                child: Text(
                  'Data Not Avalaible',
                  style: h2.copyWith(fontSize: 16),
                ),
              ),
      ),
    );
  }
}
