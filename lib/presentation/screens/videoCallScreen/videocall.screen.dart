import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';
import 'package:screva/app/constant/app.constant.dart';

class VideoCallExp extends StatefulWidget {
  final VideoCallScreenArgs videoCallScreenArgs;
  const VideoCallExp({Key? key, required this.videoCallScreenArgs})
      : super(key: key);

  @override
  State<VideoCallExp> createState() => _VideoCallExpState();
}

class _VideoCallExpState extends State<VideoCallExp> {
  final AgoraClient client = AgoraClient(
    agoraConnectionData: AgoraConnectionData(
      appId: AppConstants.agoraKey,
      channelName: "test",
    ),
    enabledPermission: [
      Permission.camera,
      Permission.microphone,
      Permission.bluetooth,
    ],
  );

  @override
  void initState() {
    super.initState();
    initAgora();
  }

  void initAgora() async {
    await client.initialize();
  }

  @override
  void dispose() {
    client.sessionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AgoraVideoViewer(client: client),
          AgoraVideoButtons(client: client)
        ],
      ),
    );
  }
}

class VideoCallScreenArgs {
  final String channelName;
  VideoCallScreenArgs({
    required this.channelName,
  });
}
