import 'dart:io';
import 'dart:math';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:openpt3d/progressWidget.dart';
import 'package:path_provider/path_provider.dart';
import 'package:process_run/shell.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shared_preferences/shared_preferences.dart';
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

  TextEditingController imgWidth = TextEditingController();
  TextEditingController imgHeight = TextEditingController();

  TextEditingController focalLengthController = TextEditingController();
  TextEditingController sensorWidthController = TextEditingController();

  bool accurate = false;

  double focal_length = 0.0;

  int currentStep = -1;

  List<String> steps = ['ImageListing','ComputeFeatures','PairGenerator','ComputeMatches','GeometricFilter','SfM','DataColor','openMVG2openMVS','DensifyPointCloud','ReconstructMesh','RefineMesh','TextureMesh'];

  runProcess() async {
    //await shell.run('''externalSoftware/$platform/openMVG/openMVG_main_openMVG2openMVS$executableEnding''');
    //await shell.run('''''');
    bool didAlertShow = false;
    String errorMessage = '';
    if(imgFolder == null || imgFolder == '') {
      errorMessage = 'Please select a Image Folder';
      didAlertShow = true;
    }else if(resultFolder == null || resultFolder == '') {
      errorMessage = 'Please select a Result Folder';
      didAlertShow = true;
      
    }else if(accurate && (imgWidth.text.trim() == '' || focalLengthController.text.trim() == '' || sensorWidthController.text.trim() == '')) {
      errorMessage = 'Please enter the Image Width and the Focal Length and the Sensor Width';
      didAlertShow = true;
      
    }else if(!accurate && (imgWidth.text.trim() == '' || imgHeight.text.trim() == '')) {
      errorMessage = 'Please enter the Image Width and Height';
      didAlertShow = true;
    }

    try{
      if(accurate) {
        double imgWidthTest = double.parse(imgWidth.text);
        double imgFocalLengthTest = double.parse(focalLengthController.text);
        double sensorWidthTest = double.parse(sensorWidthController.text);
      }else{
        double imgWidthTest = double.parse(imgWidth.text);
        double imgHeightTest = double.parse(imgHeight.text);
      }
    }catch(_){
      if(accurate) {
        errorMessage = 'The Image Width and the Focal Length and the Sensor Width have to be numbers';
      }else{
        errorMessage = 'The Image Width and Height have to be numbers';
      }
    }

    if(errorMessage != '') {
      Alert(context: context,type: AlertType.error,title: errorMessage,buttons: [
          DialogButton(child: const Text('Ok',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),), onPressed: () {
            Navigator.pop(context);
          })
        ]).show();
        return;
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

    List imgFiles = Directory("$imgFolder/").listSync();

    bool containsImgs = false;
    int lastImgIndex = 0;

    for(int i = 0;i<imgFiles.length;i++) {
      print('imgFiles: ${imgFiles[i]}');
      if(imgFiles[i].toString().contains('.jpg') || imgFiles[i].toString().contains('.png') || imgFiles[i].toString().contains('.tif') || imgFiles[i].toString().contains('.tiff')) {
        containsImgs = true;
        lastImgIndex = i;
      }
    }

    if(!containsImgs && !didAlertShow) {
      Alert(context: context,title: 'The Image folder should contain only .jpg/.png/.tif images',buttons: [
        DialogButton(child: const Text('Ok',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),), onPressed: () {
          Navigator.pop(context);
        })
      ]).show();
      return;
    }


    //focal_length = 6220.8;
    //focal_length = (focal_mm / sensor_width_mm) * image_width_in_pixels

    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('imgWidth', imgWidth.text);
    sharedPreferences.setString('imgHeight', imgHeight.text);
    sharedPreferences.setString('focalLengthmm', focalLengthController.text);
    sharedPreferences.setString('sensorWidthmm', sensorWidthController.text);
    sharedPreferences.setBool('accurate', accurate);

    focal_length = accurate ? ((double.parse(focalLengthController.text) / double.parse(sensorWidthController.text)) * double.parse(imgWidth.text)) : (max(double.parse(imgWidth.text),double.parse(imgHeight.text)) * 1.2);

    currentStep = 0;
    setState(() {});
    await shell.run('''externalSoftware/$platform/openMVG/openMVG_main_SfMInit_ImageListing$executableEnding -i $imgFolder -o $resultFolder/matches/ -d externalSoftware/sensor_width_database/sensor_width_camera_database.txt -f $focal_length''');
    
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    asyncInitTasks() async {
      SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
      imgWidth.text = sharedPreferences.getString('imgWidth') ?? '';
      imgHeight.text = sharedPreferences.getString('imgHeight') ?? '';
      focalLengthController.text = sharedPreferences.getString('focalLengthmm') ?? '';
      sensorWidthController.text = sharedPreferences.getString('sensorWidthmm') ?? '';
      accurate = sharedPreferences.getBool('accurate') ?? false;

      setState(() {});
    }
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
                    labels: const ['openMVS', 'CMVS (Linux only)'],
                    activeBgColors: const [[Colors.blue],[Colors.blue]],
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
          Center(
            child: Container(
              width: width+140,
              child: Align(
                alignment: Alignment.topLeft,
                child: ToggleSwitch(
                        minWidth: (width+139 > 1920 ? 1920 : width+139)/2,
                        initialLabelIndex: accurate ? 1 : 0,
                        cornerRadius: 20.0,
                        activeFgColor: Colors.white,
                        inactiveBgColor: Colors.grey,
                        inactiveFgColor: Colors.white,
                        totalSwitches: 2,
                        labels: const ['Focal Length approx., Requires Image Width and height', 'Calculate Focal Length, Requires Focal Length (mm), Sensor Width (mm), Image Width (before resizing)'],
                        activeBgColors: const [[Colors.blue],[Colors.blue]],
                        onToggle: (index) {
                          if(index == 0) {
                            accurate = false;
                          }else{
                            accurate = true;
                          }
                          setState(() {});
                        },
                      ),
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.all(8.0)),
          Center(
            child: Container(
              width: width+140,
              child: const Text('This data will be saved for later',style: TextStyle(color: Colors.white),),
            ),
          ),
          const Padding(padding: EdgeInsets.all(2.0)),
          accurate ? Center(
            child: Container(
              width: width+140,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: (width+116)/3,
                    height: 60,
                    child: TextField(controller: imgWidth,style: const TextStyle(color: Colors.white),decoration: const InputDecoration(hintText: 'Image width (Before any resizing)',hintStyle: TextStyle(color: Colors.grey)),),
                  ),
                  const Padding(padding: EdgeInsets.all(6),),
                  Container(
                    width: (width+116)/3,
                    height: 60,
                    child: TextField(controller: focalLengthController,style: const TextStyle(color: Colors.white),decoration: const InputDecoration(hintText: 'Focal length (mm)',hintStyle: TextStyle(color: Colors.grey)),),
                  ),
                  const Padding(padding: EdgeInsets.all(6),),
                  Container(
                    width: (width+116)/3,
                    height: 60,
                    child: TextField(controller: sensorWidthController,style: const TextStyle(color: Colors.white),decoration: const InputDecoration(hintText: 'Sensor Width (mm)',hintStyle: TextStyle(color: Colors.grey)),),
                  ),
                ],
              ),
            ),
          ) : Center(
            child: Container(
              width: width+140,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: (width+128)/2,
                    height: 60,
                    child: TextField(controller: imgWidth,style: const TextStyle(color: Colors.white),decoration: const InputDecoration(hintText: 'Image width (Before any resizing)',hintStyle: TextStyle(color: Colors.grey)),),
                  ),
                  const Padding(padding: EdgeInsets.all(6),),
                  Container(
                    width: (width+128)/2,
                    height: 60,
                    child: TextField(controller: imgHeight,style: const TextStyle(color: Colors.white),decoration: const InputDecoration(hintText: 'Image height (Before any resizing)',hintStyle: TextStyle(color: Colors.grey)),),
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
          Padding(padding: EdgeInsets.all(4.0)),
          Center(child: progressWidget(width, currentStep, steps)),
        ],
      ),
    );
  }
}