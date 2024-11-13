import 'package:flutter/material.dart';
import 'package:macedon/static/flutter_toast_message/toast_messge.dart';
import 'package:pedometer/pedometer.dart';
import 'package:permission_handler/permission_handler.dart';

class StepCounterScreen extends StatefulWidget {
  @override
  _StepCounterScreenState createState() => _StepCounterScreenState();
}

class _StepCounterScreenState extends State<StepCounterScreen> {
  String _stepCountValue = '0';
  Stream<StepCount>? _stepCountStream;

  @override
  void initState() {
    super.initState();
    _requestPermission();
    _startListening();
  }

  void _requestPermission() async {
    var status = await Permission.activityRecognition.status;
    if (!status.isGranted) {
      await Permission.activityRecognition.request();
    }
  }

  void _startListening() {
    try {
      _stepCountStream = Pedometer.stepCountStream;

      if (_stepCountStream != null) {
        _stepCountStream!.listen(
          _onStepCount,
          onError: _onStepCountError,
          onDone: _onStepCountDone,
          cancelOnError: true,
        );
      } else {
        setState(() {
          _stepCountValue = 'Step Count not available (Stream is null)';
        });
      }
    } catch (e) {
      setState(() {
        _stepCountValue = 'Error initializing Step Count Stream: $e';
      });
    }
  }

  void _onStepCount(StepCount event) {
    print("Step Count: ${event.steps}");
    setState(() {
      _stepCountValue = event.steps.toString();
    });
  }

  void _onStepCountError(error) {
    setState(() {
      _stepCountValue = 'Step Count shows error';
    });
  }

  void _onStepCountDone() {
    ShowToast(msg: "Your step is complete");
    // Handle when step counting is done
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Step Counter'),
      ),
      body: Center(
        child: Text(
          'Steps taken: $_stepCountValue',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
