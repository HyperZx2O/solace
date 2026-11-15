//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:solace_api/src/serializers.dart';
import 'package:solace_api/src/auth/api_key_auth.dart';
import 'package:solace_api/src/auth/basic_auth.dart';
import 'package:solace_api/src/auth/bearer_auth.dart';
import 'package:solace_api/src/auth/oauth.dart';
import 'package:solace_api/src/api/auth_api.dart';
import 'package:solace_api/src/api/consent_api.dart';
import 'package:solace_api/src/api/crisis_api.dart';
import 'package:solace_api/src/api/devices_api.dart';
import 'package:solace_api/src/api/health_api.dart';
import 'package:solace_api/src/api/invites_and_connections_api.dart';
import 'package:solace_api/src/api/journals_api.dart';
import 'package:solace_api/src/api/privacy_api.dart';
import 'package:solace_api/src/api/safety_plan_api.dart';
import 'package:solace_api/src/api/status_api.dart';
import 'package:solace_api/src/api/surveys_api.dart';
import 'package:solace_api/src/api/sync_api.dart';
import 'package:solace_api/src/api/tasks_and_check_ins_api.dart';
import 'package:solace_api/src/api/therapist_alerts_api.dart';
import 'package:solace_api/src/api/therapist_onboarding_api.dart';
import 'package:solace_api/src/api/therapist_patients_api.dart';

class SolaceApi {
  static const String basePath = r'http://localhost:3000';

  final Dio dio;
  final Serializers serializers;

  SolaceApi({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: const Duration(milliseconds: 5000),
              receiveTimeout: const Duration(milliseconds: 3000),
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }
  }

  /// Get AuthApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AuthApi getAuthApi() {
    return AuthApi(dio, serializers);
  }

  /// Get ConsentApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ConsentApi getConsentApi() {
    return ConsentApi(dio, serializers);
  }

  /// Get CrisisApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CrisisApi getCrisisApi() {
    return CrisisApi(dio, serializers);
  }

  /// Get DevicesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DevicesApi getDevicesApi() {
    return DevicesApi(dio, serializers);
  }

  /// Get HealthApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  HealthApi getHealthApi() {
    return HealthApi(dio, serializers);
  }

  /// Get InvitesAndConnectionsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  InvitesAndConnectionsApi getInvitesAndConnectionsApi() {
    return InvitesAndConnectionsApi(dio, serializers);
  }

  /// Get JournalsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  JournalsApi getJournalsApi() {
    return JournalsApi(dio, serializers);
  }

  /// Get PrivacyApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PrivacyApi getPrivacyApi() {
    return PrivacyApi(dio, serializers);
  }

  /// Get SafetyPlanApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SafetyPlanApi getSafetyPlanApi() {
    return SafetyPlanApi(dio, serializers);
  }

  /// Get StatusApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  StatusApi getStatusApi() {
    return StatusApi(dio, serializers);
  }

  /// Get SurveysApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SurveysApi getSurveysApi() {
    return SurveysApi(dio, serializers);
  }

  /// Get SyncApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SyncApi getSyncApi() {
    return SyncApi(dio, serializers);
  }

  /// Get TasksAndCheckInsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TasksAndCheckInsApi getTasksAndCheckInsApi() {
    return TasksAndCheckInsApi(dio, serializers);
  }

  /// Get TherapistAlertsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TherapistAlertsApi getTherapistAlertsApi() {
    return TherapistAlertsApi(dio, serializers);
  }

  /// Get TherapistOnboardingApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TherapistOnboardingApi getTherapistOnboardingApi() {
    return TherapistOnboardingApi(dio, serializers);
  }

  /// Get TherapistPatientsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TherapistPatientsApi getTherapistPatientsApi() {
    return TherapistPatientsApi(dio, serializers);
  }
}
