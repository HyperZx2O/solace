// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (Serializers().toBuilder()
      ..add($SuccessEnvelope.serializer)
      ..add(AcceptInvite200Response.serializer)
      ..add(AcceptInviteRequest.serializer)
      ..add(AccessLogEntry.serializer)
      ..add(AccessLogEntryViewerRoleEnum.serializer)
      ..add(AcknowledgeTherapistTermsRequest.serializer)
      ..add(AlertState.serializer)
      ..add(AnswerTier2Consent200Response.serializer)
      ..add(AnswerTier2ConsentRequest.serializer)
      ..add(ApproveStageChangeRequest.serializer)
      ..add(AuthEnvelope.serializer)
      ..add(AuthTokens.serializer)
      ..add(CheckCrisis200Response.serializer)
      ..add(CheckIn.serializer)
      ..add(CheckInRequest.serializer)
      ..add(CompleteSurvey200Response.serializer)
      ..add(CompleteSurveyRequest.serializer)
      ..add(CompleteTask200Response.serializer)
      ..add(ConnectByCodeRequest.serializer)
      ..add(ConnectionState.serializer)
      ..add(ConnectionSummary.serializer)
      ..add(ConsentItem.serializer)
      ..add(ConsentState.serializer)
      ..add(ConsentStateSource_Enum.serializer)
      ..add(CreateCheckIn201Response.serializer)
      ..add(CreateInvite201Response.serializer)
      ..add(CreateInviteRequest.serializer)
      ..add(CreateJournalEntry201Response.serializer)
      ..add(CrisisAlertSummary.serializer)
      ..add(CrisisCheckRequest.serializer)
      ..add(CrisisCheckRequestSource_Enum.serializer)
      ..add(CrisisDecision.serializer)
      ..add(CrisisTier.serializer)
      ..add(DeletionRequest.serializer)
      ..add(DeletionRequestStatusEnum.serializer)
      ..add(DeviceSummary.serializer)
      ..add(DeviceSummaryPlatformEnum.serializer)
      ..add(EmptyEnvelope.serializer)
      ..add(ErrorCode.serializer)
      ..add(ErrorEnvelope.serializer)
      ..add(ErrorEnvelopeError.serializer)
      ..add(ErrorEnvelopeSuccessEnum.serializer)
      ..add(ExplainTask200Response.serializer)
      ..add(ExportRequest.serializer)
      ..add(ExportRequestStatusEnum.serializer)
      ..add(GetAccessLog200Response.serializer)
      ..add(GetCrisisResources200Response.serializer)
      ..add(GetMe200Response.serializer)
      ..add(GetNotificationPreferences200Response.serializer)
      ..add(GetPatientSummary200Response.serializer)
      ..add(GetSafetyPlan200Response.serializer)
      ..add(GetStatus200Response.serializer)
      ..add(GetSurvey200Response.serializer)
      ..add(GetTherapistAlert200Response.serializer)
      ..add(GetTherapistPatient200Response.serializer)
      ..add(GetToday200Response.serializer)
      ..add(HealthEnvelope.serializer)
      ..add(HealthEnvelopeAllOfData.serializer)
      ..add(HealthEnvelopeAllOfDataStatusEnum.serializer)
      ..add(InviteSummary.serializer)
      ..add(JournalEntry.serializer)
      ..add(JournalEntryAnalysisStatusEnum.serializer)
      ..add(JournalEntryRequest.serializer)
      ..add(JournalKind.serializer)
      ..add(JournalPrivacy.serializer)
      ..add(ListCheckIns200Response.serializer)
      ..add(ListConsents200Response.serializer)
      ..add(ListJournalEntries200Response.serializer)
      ..add(ListPendingConnections200Response.serializer)
      ..add(ListSessions200Response.serializer)
      ..add(ListSurveyResults200Response.serializer)
      ..add(ListTherapistAlerts200Response.serializer)
      ..add(ListTherapistPatients200Response.serializer)
      ..add(ListTherapistPatients200ResponseAllOfData.serializer)
      ..add(LoginRequest.serializer)
      ..add(LogoutRequest.serializer)
      ..add(Me.serializer)
      ..add(MeStatusEnum.serializer)
      ..add(NotificationPreference.serializer)
      ..add(NotificationType.serializer)
      ..add(PatientCard.serializer)
      ..add(PatientCardGroupEnum.serializer)
      ..add(PatientDetail.serializer)
      ..add(PatientDetailJournalSentimentEnum.serializer)
      ..add(PatientDetailMoodSeriesInner.serializer)
      ..add(PatientSummary.serializer)
      ..add(PauseProcessingRequest.serializer)
      ..add(ReadyEnvelope.serializer)
      ..add(ReadyEnvelopeAllOfData.serializer)
      ..add(ReadyEnvelopeAllOfDataChecks.serializer)
      ..add(ReadyEnvelopeAllOfDataChecksPostgresEnum.serializer)
      ..add(ReadyEnvelopeAllOfDataChecksRedisEnum.serializer)
      ..add(ReadyEnvelopeAllOfDataStatusEnum.serializer)
      ..add(RefreshRequest.serializer)
      ..add(RegisterDevice201Response.serializer)
      ..add(RegisterDeviceRequest.serializer)
      ..add(RegisterDeviceRequestPlatformEnum.serializer)
      ..add(RequestDeletion201Response.serializer)
      ..add(RequestExport201Response.serializer)
      ..add(ResolveAlertRequest.serializer)
      ..add(ResolveAlertRequestChecklist.serializer)
      ..add(Resource.serializer)
      ..add(RestrictionLevel.serializer)
      ..add(RetakeSurveyRequest.serializer)
      ..add(Role.serializer)
      ..add(SafetyPlan.serializer)
      ..add(SafetyPlanFields.serializer)
      ..add(SelfInitiatedCrisisRequest.serializer)
      ..add(SessionSummary.serializer)
      ..add(SetConsent200Response.serializer)
      ..add(SetConsentRequest.serializer)
      ..add(SetJournalPrivacyRequest.serializer)
      ..add(SetNotificationPreference200Response.serializer)
      ..add(SetNotificationPreferenceRequest.serializer)
      ..add(SetSafetyPlanFieldRequest.serializer)
      ..add(SetSafetyPlanSharingRequest.serializer)
      ..add(SignupRequest.serializer)
      ..add(StartCrisisMonitoringWithdrawal201Response.serializer)
      ..add(StartCrisisMonitoringWithdrawalRequest.serializer)
      ..add(Status.serializer)
      ..add(SubmitSurveyResponses201Response.serializer)
      ..add(SuccessEnvelopeSuccessEnum.serializer)
      ..add(Survey.serializer)
      ..add(SurveyItemsInner.serializer)
      ..add(SurveyResponse.serializer)
      ..add(SurveyResponseStatusEnum.serializer)
      ..add(SurveyResponsesRequest.serializer)
      ..add(SurveyResult.serializer)
      ..add(SyncItem.serializer)
      ..add(SyncItemKindEnum.serializer)
      ..add(SyncItems200Response.serializer)
      ..add(SyncItems200ResponseAllOfData.serializer)
      ..add(SyncItemsRequest.serializer)
      ..add(SyncResult.serializer)
      ..add(SyncResultOutcomeEnum.serializer)
      ..add(TaskAssignment.serializer)
      ..add(TaskExplanation.serializer)
      ..add(TaskFeedbackRequest.serializer)
      ..add(TherapistAlert.serializer)
      ..add(TherapistAlertHistoryInner.serializer)
      ..add(TherapistOnboarding201Response.serializer)
      ..add(TherapistOnboardingRequest.serializer)
      ..add(TherapistProfile.serializer)
      ..add(TherapistProfileVerificationStatusEnum.serializer)
      ..add(Today.serializer)
      ..add(WithdrawalRequest.serializer)
      ..add(WithdrawalRequestStatusEnum.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(PatientCard)]),
          () => ListBuilder<PatientCard>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(PatientCard)]),
          () => ListBuilder<PatientCard>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(PatientCard)]),
          () => ListBuilder<PatientCard>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(PatientCard)]),
          () => ListBuilder<PatientCard>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(PatientDetailMoodSeriesInner)]),
          () => ListBuilder<PatientDetailMoodSeriesInner>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Resource)]),
          () => ListBuilder<Resource>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(SurveyItemsInner)]),
          () => ListBuilder<SurveyItemsInner>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(SyncItem)]),
          () => ListBuilder<SyncItem>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(SyncResult)]),
          () => ListBuilder<SyncResult>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(bool)]),
          () => MapBuilder<String, bool>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(TherapistAlertHistoryInner)]),
          () => ListBuilder<TherapistAlertHistoryInner>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(int)]),
          () => MapBuilder<String, int>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(int)]),
          () => MapBuilder<String, int>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
