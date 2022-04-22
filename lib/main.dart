import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_number_picker/flutter_number_picker.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:process_run/shell.dart';
import 'package:toggle_switch/toggle_switch.dart';

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
  bool refineMesh = false;
  
  String denseReconApplication = 'openMVS';

  int minDecimationFactorMeshRecon = 0;
  int minDecimationFactorMeshRefine = 0;

  TextEditingController imgFolderController = TextEditingController();
  TextEditingController resultFolderController = TextEditingController();

  runProcess() async {
    await shell.run('''externalSoftware/$platform/openMVG/openMVG_main_openMVG2openMVS$executableEnding''');
  }

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width -300;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(36, 42, 54, 1),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: width,
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
                width: width,
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
            child: Container(
              width: width+140,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Refine Mesh:',style: TextStyle(color: Colors.white,fontSize: 18.0),),
                  Padding(padding: EdgeInsets.all(6.0)),
                  FlutterSwitch(
                    width: 80.0,
                    height: 35.0,
                    valueFontSize: 16.5,
                    toggleSize: 45.0,
                    value: refineMesh,
                    borderRadius: 30.0,
                    padding: 2.0,
                    showOnOff: true,
                    onToggle: (val) {
                      setState(() {
                        refineMesh = val;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              width: width+140,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Dense deconstruction application:',style: TextStyle(color: Colors.white,fontSize: 18.0),),
                  Padding(padding: EdgeInsets.all(6.0)),
                  ToggleSwitch(
                    minWidth: 140.0,
                    initialLabelIndex: 0,
                    cornerRadius: 20.0,
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    totalSwitches: 2,
                    labels: ['openMVS', 'CMVS (Linux only)'],
                    activeBgColors: [[Colors.blue],[Colors.blue]],
                    onToggle: (index) {
                      if(index == 0) {
                        denseReconApplication = 'openMVS';
                      }else{
                        denseReconApplication = 'CMVS';
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Min. decimation factor for Mesh Reconstruction (Will auto adjust later, Lower is better):',style: TextStyle(color: Colors.white,fontSize: 18.0),),
                  Padding(padding: EdgeInsets.all(6.0)),
                  CustomNumberPicker(
                    initialValue: 0,
                    maxValue: 100,
                    minValue: 0,
                    step: 1,
                    onValue: (int? value) {
                      minDecimationFactorMeshRecon = value ?? 0;
                    },
                  )
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Min. decimation factor for the Refine Mesh step (Will auto adjust later, Lower is better):',style: TextStyle(color: Colors.white,fontSize: 18.0),),
                  Padding(padding: EdgeInsets.all(6.0)),
                  CustomNumberPicker(
                    initialValue: 0,
                    maxValue: 100,
                    minValue: 0,
                    step: 1,
                    valueTextStyle: const TextStyle(color: Colors.white),
                    onValue: (value) {
                      minDecimationFactorMeshRefine = int.parse(value.toString());
                    },
                  )
                ],
              ),
            ),
          ),
          //Dense Reconstruction Strategy CMVS(Only on Linux)/openMVS
          Center(
            child: TextButton(onPressed: runProcess, child: const Text('Start')),
          ),
        ],
      ),
    );
  }
}