import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screva/app/constant/app.constant.dart';
import 'package:screva/notifiers/id.notifier.dart';

class VideoCallExp extends StatelessWidget {
  const VideoCallExp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final AgoraClient client = AgoraClient(
      agoraConnectionData: AgoraConnectionData(
        appId: AppConstants.agoraKey,
        channelName: Provider.of<IDnotifier>(context, listen: false).getId,
      ),
      enabledPermission: [
        Permission.camera,
        Permission.microphone,
        Permission.bluetooth,
      ],
    );
    client.initialize();
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
