import 'package:flutter/foundation.dart';

/// Counts open patient-space modals (bottom sheets).
///
/// Sheets hosted on the nested shell navigator cannot cover the bottom bar or
/// the rail (they render inside the body), so PatientShell watches this and
/// makes the navigation inert while a modal is up, so nothing outside the
/// sheet responds to taps.
final modalOpen = ValueNotifier<int>(0);
