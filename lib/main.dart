import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:process_run/shell.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var shell = Shell();

  String platform = Platform.isLinux ? 'Linux' : 'Windows';
  String executableEnding = Platform.isLinux ? '' : '.exe';

  String? imgFolder;
  String? resultFolder;

  TextEditingController imgFolderController = TextEditingController();
  TextEditingController resultFolderController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(36, 42, 54, 1),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: width - 300,
                height: 60,
                child: TextField(controller: imgFolderController,onChanged: (value) {
                  imgFolder = value;
                },style: TextStyle(color: Colors.white),),
              ),
              Padding(padding: const EdgeInsets.all(6),),
              TextButton(onPressed: () async {
                String? selectedDirectory = await FilePicker.platform.getDirectoryPath();

                if (selectedDirectory == null) {
                  // User canceled the picker
                }else{
                  imgFolder = selectedDirectory;
                  imgFolderController.text = selectedDirectory;
                  setState(() {});
                }


              }, child: Text('Pick Image Folder'))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: width - 300,
                height: 60,
                child: TextField(controller: resultFolderController,onChanged: (value) {
                  resultFolder = value;
                },style: TextStyle(color: Colors.white),),
              ),
              Padding(padding: const EdgeInsets.all(6),),
              TextButton(onPressed: () async {
                String? selectedDirectory = await FilePicker.platform.getDirectoryPath();

                if (selectedDirectory == null) {
                  // User canceled the picker
                }else{
                  resultFolder = selectedDirectory;
                  resultFolderController.text = selectedDirectory;
                  setState(() {});
                }


              }, child: Text('Pick Result Folder'))
            ],
          ),
          Center(
            child: TextButton(onPressed: () async {
              await shell.run('''externalSoftware/$platform/openMVG/openMVG_main_openMVG2openMVS$executableEnding''');
            }, child: const Text('Start')),
          ),
        ],
      ),
    );
  }
}