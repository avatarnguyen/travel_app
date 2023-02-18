import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authProvider = StreamProvider<User?>((ref) {
  return FirebaseAuth.instance.authStateChanges();
});

final firebaseAuthProvider = Provider<FirebaseAuth>((ref) {
  return FirebaseAuth.instance;
});

// Third Party Dependency
// final googleSignInProvider = Provider<GoogleSignIn>((ref) {
//   return GoogleSignIn(
//     serverClientId: Platform.isIOS
//         ? dotenv.env['GOOGLE_CALENDAR_CLIENT_ID_IOS']
//         : dotenv.env['GOOGLE_CALENDAR_CLIENT_ID_ANDROID'],
//     scopes: <String>[
//       // google_api.CalendarApi.calendarScope,
//     ],
//   );
// });
