import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screva/app/constant/app.assets.dart';
import 'package:screva/app/constant/app.colors.dart';
import 'package:screva/app/constant/app.fonts.dart';
import 'package:screva/app/routes/app.routes.dart';
import 'package:screva/notifiers/id.notifier.dart';
import 'package:screva/presentation/screens/videoCallScreen/videocall.screen.dart';
import 'package:screva/presentation/widget/custom.text.field.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final TextEditingController userName = TextEditingController();
  final TextEditingController roomID = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackPearl,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(35.0, 0.0, 35.0, 2.0),
              child: Image.asset(AppAssets.blackSlogan),
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(35.0, 20.0, 35.0, 2.0),
                    child: CustomTextField.customTextField(
                      iconData: const Icon(Icons.input_rounded),
                      textEditingController: roomID,
                      hintText: 'Enter Room ID',
                      validator: (val) => val!.isEmpty ? 'Enter Room ID' : null,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(35.0, 20.0, 35.0, 2.0),
              child: Center(
                child: TextButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Provider.of<IDnotifier>(context, listen: false).id =
                          roomID.text;

                      Navigator.of(context).pushNamed(
                        AppRouter.videoRoute,
                      );
                    }
                  },
                  child: Text(
                    'Video Call',
                    style: TextStyle(
                      backgroundColor: AppColors.blackPearl,
                      fontFamily: AppFonts.montserrat,
                      color: AppColors.bluish,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
