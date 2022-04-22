import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:process_run/shell.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
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

  double focal_length = 0.0;

  runProcess() async {
    //await shell.run('''externalSoftware/$platform/openMVG/openMVG_main_openMVG2openMVS$executableEnding''');
    //await shell.run('''''');
    bool didAlertShow = false;
    if(imgFolder == null || imgFolder == '') {
      Alert(context: context,title: 'Please select a Image Folder',buttons: [
        DialogButton(child: Text('Ok',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),), onPressed: () {
          Navigator.pop(context);
        })
      ]).show();
      didAlertShow = true;
    }else if(resultFolder == null || resultFolder == '') {
      Alert(context: context,title: 'Please select a Result Folder',buttons: [
        DialogButton(child: Text('Ok',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),), onPressed: () {
          Navigator.pop(context);
        })
      ]).show();
      didAlertShow = true;
    }
    final Directory _appDocDirFolder =
    Directory('$resultFolder/matches/');

    if (await _appDocDirFolder.exists()) {
      //if folder already exists return path
      
    } else {
      //if folder not exists create folder and then return its path
      final Directory _appDocDirNewFolder =
      await _appDocDirFolder.create(recursive: true);
    }

    List file = Directory("$imgFolder/").listSync();

    bool containsImgs = false;

    for(int i = 0;i<file.length;i++) {
      if(file[i].toString().contains('.jpg') || file[i].toString().contains('.png') || file[i].toString().contains('.tif') || file[i].toString().contains('.tiff')) {
        containsImgs = true;
      }
    }

    if(!containsImgs && !didAlertShow) {
      Alert(context: context,title: 'The Image folder should contain only .jpg/.png/.tif images',buttons: [
        DialogButton(child: Text('Ok',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),), onPressed: () {
          Navigator.pop(context);
        })
      ]).show();
      return;
    }

    File image = new File('${imgFolder}'); // Or any other way to get a File instance.
    var decodedImage = await decodeImageFromList(image.readAsBytesSync());
    print(decodedImage.width);
    print(decodedImage.height);

    await shell.run('''externalSoftware/$platform/openMVG/openMVG_main_SfMInit_ImageListing$executableEnding -i $imgFolder -o $resultFolder/matches/ -d externalSoftware/sensor_width_database/sensor_width_camera_database.txt -f focal_length''');
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
                },style: TextStyle(color: Colors.white),decoration: InputDecoration(hintText: 'Folder containing only .jpg/.png/.tif images, 8 bit only!',hintStyle: TextStyle(color: Colors.grey)),),
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
                },style: TextStyle(color: Colors.white),decoration: InputDecoration(hintText: 'Folder where result will be stored',hintStyle: TextStyle(color: Colors.grey)),),
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
          const Padding(padding: EdgeInsets.all(4.0)),
          Center(
            child: Container(
              width: width+140,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Refine Mesh:',style: TextStyle(color: Colors.white,fontSize: 18.0),),
                  //const Padding(padding: EdgeInsets.all(6.0)),
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
          const Padding(padding: EdgeInsets.all(4.0)),
          Center(
            child: Container(
              width: width+140,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Dense deconstruction application:',style: TextStyle(color: Colors.white,fontSize: 18.0),),
                  //const Padding(padding: EdgeInsets.all(6.0)),
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
          const Padding(padding: EdgeInsets.all(4.0)),
          Center(
            child: Container(
              width: width+140,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Min. decimation factor for Mesh Reconstruction (Will auto adjust later, Lower is better): ',style: TextStyle(color: Colors.white,fontSize: 18.0),),
                  //const Padding(padding: EdgeInsets.all(6.0)),
                  Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     IconButton(
                       icon: const Icon(Icons.remove,size: 25,color: Colors.white,),
                       onPressed: () => setState(() {
                         final newValue = minDecimationFactorMeshRecon - 1;
                         minDecimationFactorMeshRecon = newValue.clamp(0, 100);
                       }),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                       child: Text('$minDecimationFactorMeshRecon',style: const TextStyle(color: Colors.white,fontSize: 19),),
                     ),
                     IconButton(
                       icon: const Icon(Icons.add,size: 25,color: Colors.white,),
                       onPressed: () => setState(() {
                         final newValue = minDecimationFactorMeshRecon + 1;
                         minDecimationFactorMeshRecon = newValue.clamp(0, 100);
                       }),
                     ),
                   ],
                  ),
                ],
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.all(4.0)),
          Center(
            child: Container(
              width: width+140,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Min. decimation factor for the Refine Mesh step (Will auto adjust later, Lower is better):',style: TextStyle(color: Colors.white,fontSize: 18.0),),
                  //const Padding(padding: EdgeInsets.all(6.0)),
                  Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     IconButton(
                       icon: const Icon(Icons.remove,size: 25,color: Colors.white,),
                       onPressed: () => setState(() {
                         final newValue = minDecimationFactorMeshRefine - 1;
                         minDecimationFactorMeshRefine = newValue.clamp(0, 100);
                       }),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                       child: Text('$minDecimationFactorMeshRefine',style: const TextStyle(color: Colors.white,fontSize: 19),),
                     ),
                     IconButton(
                       icon: const Icon(Icons.add,size: 25,color: Colors.white,),
                       onPressed: () => setState(() {
                         final newValue = minDecimationFactorMeshRefine + 1;
                         minDecimationFactorMeshRefine = newValue.clamp(0, 100);
                       }),
                     ),
                   ],
                  ),
                ],
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.all(4.0)),
          //Dense Reconstruction Strategy CMVS(Only on Linux)/openMVS
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Center(
              child: TextButton(onPressed: runProcess, child: Container(height: 50,width: 80,child: Center(child: Text('Start',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17.5),)),decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.green[800],
                border: Border.all(color: Colors.green[900]!)
              ),)),
            ),
          ),
        ],
      ),
    );
  }
}