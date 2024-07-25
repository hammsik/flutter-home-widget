// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_search_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchCharacterHash() => r'cedb90ae8c6a17d5b22f490643221fd6d58c967c';

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
  SearchCharacterProvider call({
    required String characterName,
  }) {
    return SearchCharacterProvider(
      characterName: characterName,
    );
  }

  @override
  SearchCharacterProvider getProviderOverride(
    covariant SearchCharacterProvider provider,
  ) {
    return call(
      characterName: provider.characterName,
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
  SearchCharacterProvider({
    required String characterName,
  }) : this._internal(
          (ref) => searchCharacter(
            ref as SearchCharacterRef,
            characterName: characterName,
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
        );

  SearchCharacterProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.characterName,
  }) : super.internal();

  final String characterName;

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
        other.characterName == characterName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, characterName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SearchCharacterRef on AutoDisposeFutureProviderRef<CharacterInfo> {
  /// The parameter `characterName` of this provider.
  String get characterName;
}

class _SearchCharacterProviderElement
    extends AutoDisposeFutureProviderElement<CharacterInfo>
    with SearchCharacterRef {
  _SearchCharacterProviderElement(super.provider);

  @override
  String get characterName => (origin as SearchCharacterProvider).characterName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
