import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterfire_ui/auth.dart';

import '../../domain/auth_presentation.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});
  static String get routeName => 'login';
  static String get routeLocation => '/$routeName';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SignInScreen(
      auth: ref.read(firebaseAuthProvider),
      providerConfigs: const [
        EmailProviderConfiguration(),
        // GoogleProviderConfiguration(
        //   clientId: (Platform.isIOS
        //       ? dotenv.env['GOOGLE_CALENDAR_CLIENT_ID_IOS']
        //       : dotenv.env['GOOGLE_CALENDAR_CLIENT_ID_ANDROID'])!,
        //   scopes: <String>[
        //     google_api.CalendarApi.calendarScope,
        //   ],
        // )
      ],
    );
  }
}
