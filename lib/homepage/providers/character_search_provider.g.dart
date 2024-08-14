// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_search_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchCharacterHash() => r'ff32d546d75b7257caafb699e53820cde77eb750';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [searchCharacter].
@ProviderFor(searchCharacter)
const searchCharacterProvider = SearchCharacterFamily();

/// See also [searchCharacter].
class SearchCharacterFamily extends Family<AsyncValue<CharacterInfo>> {
  /// See also [searchCharacter].
  const SearchCharacterFamily();

  /// See also [searchCharacter].
  SearchCharacterProvider call(
    String characterName,
    BuildContext context,
  ) {
    return SearchCharacterProvider(
      characterName,
      context,
    );
  }

  @override
  SearchCharacterProvider getProviderOverride(
    covariant SearchCharacterProvider provider,
  ) {
    return call(
      provider.characterName,
      provider.context,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'searchCharacterProvider';
}

/// See also [searchCharacter].
class SearchCharacterProvider extends AutoDisposeFutureProvider<CharacterInfo> {
  /// See also [searchCharacter].
  SearchCharacterProvider(
    String characterName,
    BuildContext context,
  ) : this._internal(
          (ref) => searchCharacter(
            ref as SearchCharacterRef,
            characterName,
            context,
          ),
          from: searchCharacterProvider,
          name: r'searchCharacterProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchCharacterHash,
          dependencies: SearchCharacterFamily._dependencies,
          allTransitiveDependencies:
              SearchCharacterFamily._allTransitiveDependencies,
          characterName: characterName,
          context: context,
        );

  SearchCharacterProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.characterName,
    required this.context,
  }) : super.internal();

  final String characterName;
  final BuildContext context;

  @override
  Override overrideWith(
    FutureOr<CharacterInfo> Function(SearchCharacterRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchCharacterProvider._internal(
        (ref) => create(ref as SearchCharacterRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        characterName: characterName,
        context: context,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<CharacterInfo> createElement() {
    return _SearchCharacterProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchCharacterProvider &&
        other.characterName == characterName &&
        other.context == context;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, characterName.hashCode);
    hash = _SystemHash.combine(hash, context.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SearchCharacterRef on AutoDisposeFutureProviderRef<CharacterInfo> {
  /// The parameter `characterName` of this provider.
  String get characterName;

  /// The parameter `context` of this provider.
  BuildContext get context;
}

class _SearchCharacterProviderElement
    extends AutoDisposeFutureProviderElement<CharacterInfo>
    with SearchCharacterRef {
  _SearchCharacterProviderElement(super.provider);

  @override
  String get characterName => (origin as SearchCharacterProvider).characterName;
  @override
  BuildContext get context => (origin as SearchCharacterProvider).context;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
