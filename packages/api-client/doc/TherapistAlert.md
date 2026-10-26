# between_api.model.TherapistAlert

## Load the model package
```dart
import 'package:between_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**patientId** | **String** |  | 
**state** | [**AlertState**](AlertState.md) |  | 
**tier** | [**CrisisTier**](CrisisTier.md) |  | 
**escalatedExternal** | **bool** |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | 
**elapsedSeconds** | **int** |  | 
**reviewedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**undoDeadline** | [**DateTime**](DateTime.md) |  | [optional] 
**checklist** | **BuiltMap&lt;String, bool&gt;** |  | 
**history** | [**BuiltList&lt;TherapistAlertHistoryInner&gt;**](TherapistAlertHistoryInner.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


