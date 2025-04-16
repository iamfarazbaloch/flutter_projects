import 'package:flutter/material.dart';
import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:video_call_app/utils/settings.dart'; // Make sure this contains your `appId` and `token`

class CallPage extends StatefulWidget {
  final String? channelName;
  final ClientRoleType? role;

  const CallPage({super.key, this.channelName, this.role});

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  late RtcEngine _engine;
  int? _remoteUid;
  bool _isJoined = false;

  @override
  void initState() {
    super.initState();
    initializeAgora();
  }

  Future<void> initializeAgora() async {
    _engine = createAgoraRtcEngine();
    await _engine.initialize(
      RtcEngineContext(appId: appId),
    );

    await _engine.enableVideo();
    await _engine.setChannelProfile(
      ChannelProfileType.channelProfileLiveBroadcasting,
    );
    await _engine.setClientRole(
      role:
          widget.role ??
          ClientRoleType.clientRoleBroadcaster,
    );

    _engine.registerEventHandler(
      RtcEngineEventHandler(
        onJoinChannelSuccess: (connection, elapsed) {
          setState(() => _isJoined = true);
        },
        onUserJoined: (connection, remoteUid, elapsed) {
          setState(() => _remoteUid = remoteUid);
        },
        onUserOffline: (connection, remoteUid, reason) {
          setState(() => _remoteUid = null);
        },
      ),
    );

    await _engine.startPreview();

    await _engine.joinChannel(
      token: '',
      channelId: widget.channelName ?? 'testchannel',
      uid: 0,
      options: const ChannelMediaOptions(),
    );
  }

  @override
  void dispose() {
    _engine.leaveChannel();
    _engine.release();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Agora Video Call')),
      body: Stack(
        children: [
          // Remote video
          if (_remoteUid != null)
            AgoraVideoView(
              controller: VideoViewController.remote(
                rtcEngine: _engine,
                canvas: VideoCanvas(uid: _remoteUid),
                connection: RtcConnection(
                  channelId:
                      widget.channelName ?? 'testchannel',
                ),
              ),
            )
          else
            const Center(
              child: Text("Waiting for remote user..."),
            ),

          // Local video preview (small corner box)
          Positioned(
            top: 20,
            right: 20,
            width: 120,
            height: 160,
            child:
                _isJoined
                    ? AgoraVideoView(
                      controller: VideoViewController(
                        rtcEngine: _engine,
                        canvas: const VideoCanvas(uid: 0),
                      ),
                    )
                    : const CircularProgressIndicator(),
          ),
        ],
      ),
    );
  }
}
