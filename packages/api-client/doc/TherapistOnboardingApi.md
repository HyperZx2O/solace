# Solace_api.api.TherapistOnboardingApi

## Load the API package
```dart
import 'package:Solace_api/api.dart';
```

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**acknowledgeTherapistTerms**](TherapistOnboardingApi.md#acknowledgetherapistterms) | **POST** /v1/therapist/acknowledgements | Record DSA, crisis responsibility and emergency statement acknowledgements.
[**therapistOnboarding**](TherapistOnboardingApi.md#therapistonboarding) | **POST** /v1/therapist/onboarding | Create a therapist profile after accepting an invite. Never open signup.


# **acknowledgeTherapistTerms**
> EmptyEnvelope acknowledgeTherapistTerms(acknowledgeTherapistTermsRequest)

Record DSA, crisis responsibility and emergency statement acknowledgements.

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getTherapistOnboardingApi();
final AcknowledgeTherapistTermsRequest acknowledgeTherapistTermsRequest = ; // AcknowledgeTherapistTermsRequest | 

try {
    final response = api.acknowledgeTherapistTerms(acknowledgeTherapistTermsRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TherapistOnboardingApi->acknowledgeTherapistTerms: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **acknowledgeTherapistTermsRequest** | [**AcknowledgeTherapistTermsRequest**](AcknowledgeTherapistTermsRequest.md)|  | 

### Return type

[**EmptyEnvelope**](EmptyEnvelope.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **therapistOnboarding**
> TherapistOnboarding201Response therapistOnboarding(therapistOnboardingRequest)

Create a therapist profile after accepting an invite. Never open signup.

### Example
```dart
import 'package:Solace_api/api.dart';

final api = SolaceApi().getTherapistOnboardingApi();
final TherapistOnboardingRequest therapistOnboardingRequest = ; // TherapistOnboardingRequest | 

try {
    final response = api.therapistOnboarding(therapistOnboardingRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TherapistOnboardingApi->therapistOnboarding: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **therapistOnboardingRequest** | [**TherapistOnboardingRequest**](TherapistOnboardingRequest.md)|  | 

### Return type

[**TherapistOnboarding201Response**](TherapistOnboarding201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

