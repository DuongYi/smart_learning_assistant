// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'free_assistant_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(FreeAssistantController)
const freeAssistantControllerProvider = FreeAssistantControllerProvider._();

final class FreeAssistantControllerProvider
    extends $NotifierProvider<FreeAssistantController, FreeAssistantState> {
  const FreeAssistantControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'freeAssistantControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$freeAssistantControllerHash();

  @$internal
  @override
  FreeAssistantController create() => FreeAssistantController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FreeAssistantState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FreeAssistantState>(value),
    );
  }
}

String _$freeAssistantControllerHash() =>
    r'05d5097d1f734fdd81f7f73fabab14282f4ed8e9';

abstract class _$FreeAssistantController extends $Notifier<FreeAssistantState> {
  FreeAssistantState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<FreeAssistantState, FreeAssistantState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<FreeAssistantState, FreeAssistantState>,
              FreeAssistantState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
