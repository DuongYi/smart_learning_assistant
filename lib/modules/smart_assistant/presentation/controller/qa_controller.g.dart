// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qa_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(QAController)
const qAControllerProvider = QAControllerProvider._();

final class QAControllerProvider
    extends $NotifierProvider<QAController, QAState> {
  const QAControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'qAControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$qAControllerHash();

  @$internal
  @override
  QAController create() => QAController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(QAState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<QAState>(value),
    );
  }
}

String _$qAControllerHash() => r'944d4d667ee4a18e27a0e9e292c8e895c829af04';

abstract class _$QAController extends $Notifier<QAState> {
  QAState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<QAState, QAState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<QAState, QAState>,
              QAState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
