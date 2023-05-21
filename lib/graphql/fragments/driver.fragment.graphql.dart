import '../../schema.gql.dart';
import 'order.fragment.graphql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$BasicProfile {
  Fragment$BasicProfile({
    required this.mobileNumber,
    this.firstName,
    this.lastName,
    this.searchDistance,
    this.media,
    this.softRejectionNote,
    required this.status,
    required this.currentOrders,
    required this.wallets,
    required this.isWalletHidden,
  });

  factory Fragment$BasicProfile.fromJson(Map<String, dynamic> json) {
    final l$mobileNumber = json['mobileNumber'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$searchDistance = json['searchDistance'];
    final l$media = json['media'];
    final l$softRejectionNote = json['softRejectionNote'];
    final l$status = json['status'];
    final l$currentOrders = json['currentOrders'];
    final l$wallets = json['wallets'];
    final l$isWalletHidden = json['isWalletHidden'];
    return Fragment$BasicProfile(
      mobileNumber: (l$mobileNumber as String),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      searchDistance: (l$searchDistance as int?),
      media: l$media == null
          ? null
          : Fragment$BasicProfile$media.fromJson(
              (l$media as Map<String, dynamic>)),
      softRejectionNote: (l$softRejectionNote as String?),
      status: fromJson$Enum$DriverStatus((l$status as String)),
      currentOrders: (l$currentOrders as List<dynamic>)
          .map((e) =>
              Fragment$CurrentOrder.fromJson((e as Map<String, dynamic>)))
          .toList(),
      wallets: (l$wallets as List<dynamic>)
          .map((e) => Fragment$BasicProfile$wallets.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      isWalletHidden: (l$isWalletHidden as bool),
    );
  }

  final String mobileNumber;

  final String? firstName;

  final String? lastName;

  final int? searchDistance;

  final Fragment$BasicProfile$media? media;

  final String? softRejectionNote;

  final Enum$DriverStatus status;

  final List<Fragment$CurrentOrder> currentOrders;

  final List<Fragment$BasicProfile$wallets> wallets;

  final bool isWalletHidden;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mobileNumber = mobileNumber;
    _resultData['mobileNumber'] = l$mobileNumber;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$searchDistance = searchDistance;
    _resultData['searchDistance'] = l$searchDistance;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$softRejectionNote = softRejectionNote;
    _resultData['softRejectionNote'] = l$softRejectionNote;
    final l$status = status;
    _resultData['status'] = toJson$Enum$DriverStatus(l$status);
    final l$currentOrders = currentOrders;
    _resultData['currentOrders'] =
        l$currentOrders.map((e) => e.toJson()).toList();
    final l$wallets = wallets;
    _resultData['wallets'] = l$wallets.map((e) => e.toJson()).toList();
    final l$isWalletHidden = isWalletHidden;
    _resultData['isWalletHidden'] = l$isWalletHidden;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mobileNumber = mobileNumber;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$searchDistance = searchDistance;
    final l$media = media;
    final l$softRejectionNote = softRejectionNote;
    final l$status = status;
    final l$currentOrders = currentOrders;
    final l$wallets = wallets;
    final l$isWalletHidden = isWalletHidden;
    return Object.hashAll([
      l$mobileNumber,
      l$firstName,
      l$lastName,
      l$searchDistance,
      l$media,
      l$softRejectionNote,
      l$status,
      Object.hashAll(l$currentOrders.map((v) => v)),
      Object.hashAll(l$wallets.map((v) => v)),
      l$isWalletHidden,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$BasicProfile) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$mobileNumber = mobileNumber;
    final lOther$mobileNumber = other.mobileNumber;
    if (l$mobileNumber != lOther$mobileNumber) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$searchDistance = searchDistance;
    final lOther$searchDistance = other.searchDistance;
    if (l$searchDistance != lOther$searchDistance) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$softRejectionNote = softRejectionNote;
    final lOther$softRejectionNote = other.softRejectionNote;
    if (l$softRejectionNote != lOther$softRejectionNote) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$currentOrders = currentOrders;
    final lOther$currentOrders = other.currentOrders;
    if (l$currentOrders.length != lOther$currentOrders.length) {
      return false;
    }
    for (int i = 0; i < l$currentOrders.length; i++) {
      final l$currentOrders$entry = l$currentOrders[i];
      final lOther$currentOrders$entry = lOther$currentOrders[i];
      if (l$currentOrders$entry != lOther$currentOrders$entry) {
        return false;
      }
    }
    final l$wallets = wallets;
    final lOther$wallets = other.wallets;
    if (l$wallets.length != lOther$wallets.length) {
      return false;
    }
    for (int i = 0; i < l$wallets.length; i++) {
      final l$wallets$entry = l$wallets[i];
      final lOther$wallets$entry = lOther$wallets[i];
      if (l$wallets$entry != lOther$wallets$entry) {
        return false;
      }
    }
    final l$isWalletHidden = isWalletHidden;
    final lOther$isWalletHidden = other.isWalletHidden;
    if (l$isWalletHidden != lOther$isWalletHidden) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$BasicProfile on Fragment$BasicProfile {
  CopyWith$Fragment$BasicProfile<Fragment$BasicProfile> get copyWith =>
      CopyWith$Fragment$BasicProfile(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$BasicProfile<TRes> {
  factory CopyWith$Fragment$BasicProfile(
    Fragment$BasicProfile instance,
    TRes Function(Fragment$BasicProfile) then,
  ) = _CopyWithImpl$Fragment$BasicProfile;

  factory CopyWith$Fragment$BasicProfile.stub(TRes res) =
      _CopyWithStubImpl$Fragment$BasicProfile;

  TRes call({
    String? mobileNumber,
    String? firstName,
    String? lastName,
    int? searchDistance,
    Fragment$BasicProfile$media? media,
    String? softRejectionNote,
    Enum$DriverStatus? status,
    List<Fragment$CurrentOrder>? currentOrders,
    List<Fragment$BasicProfile$wallets>? wallets,
    bool? isWalletHidden,
  });
  CopyWith$Fragment$BasicProfile$media<TRes> get media;
  TRes currentOrders(
      Iterable<Fragment$CurrentOrder> Function(
              Iterable<CopyWith$Fragment$CurrentOrder<Fragment$CurrentOrder>>)
          _fn);
  TRes wallets(
      Iterable<Fragment$BasicProfile$wallets> Function(
              Iterable<
                  CopyWith$Fragment$BasicProfile$wallets<
                      Fragment$BasicProfile$wallets>>)
          _fn);
}

class _CopyWithImpl$Fragment$BasicProfile<TRes>
    implements CopyWith$Fragment$BasicProfile<TRes> {
  _CopyWithImpl$Fragment$BasicProfile(
    this._instance,
    this._then,
  );

  final Fragment$BasicProfile _instance;

  final TRes Function(Fragment$BasicProfile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mobileNumber = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? searchDistance = _undefined,
    Object? media = _undefined,
    Object? softRejectionNote = _undefined,
    Object? status = _undefined,
    Object? currentOrders = _undefined,
    Object? wallets = _undefined,
    Object? isWalletHidden = _undefined,
  }) =>
      _then(Fragment$BasicProfile(
        mobileNumber: mobileNumber == _undefined || mobileNumber == null
            ? _instance.mobileNumber
            : (mobileNumber as String),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        searchDistance: searchDistance == _undefined
            ? _instance.searchDistance
            : (searchDistance as int?),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$BasicProfile$media?),
        softRejectionNote: softRejectionNote == _undefined
            ? _instance.softRejectionNote
            : (softRejectionNote as String?),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$DriverStatus),
        currentOrders: currentOrders == _undefined || currentOrders == null
            ? _instance.currentOrders
            : (currentOrders as List<Fragment$CurrentOrder>),
        wallets: wallets == _undefined || wallets == null
            ? _instance.wallets
            : (wallets as List<Fragment$BasicProfile$wallets>),
        isWalletHidden: isWalletHidden == _undefined || isWalletHidden == null
            ? _instance.isWalletHidden
            : (isWalletHidden as bool),
      ));
  CopyWith$Fragment$BasicProfile$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$BasicProfile$media.stub(_then(_instance))
        : CopyWith$Fragment$BasicProfile$media(
            local$media, (e) => call(media: e));
  }

  TRes currentOrders(
          Iterable<Fragment$CurrentOrder> Function(
                  Iterable<
                      CopyWith$Fragment$CurrentOrder<Fragment$CurrentOrder>>)
              _fn) =>
      call(
          currentOrders: _fn(
              _instance.currentOrders.map((e) => CopyWith$Fragment$CurrentOrder(
                    e,
                    (i) => i,
                  ))).toList());
  TRes wallets(
          Iterable<Fragment$BasicProfile$wallets> Function(
                  Iterable<
                      CopyWith$Fragment$BasicProfile$wallets<
                          Fragment$BasicProfile$wallets>>)
              _fn) =>
      call(
          wallets: _fn(_instance.wallets
              .map((e) => CopyWith$Fragment$BasicProfile$wallets(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Fragment$BasicProfile<TRes>
    implements CopyWith$Fragment$BasicProfile<TRes> {
  _CopyWithStubImpl$Fragment$BasicProfile(this._res);

  TRes _res;

  call({
    String? mobileNumber,
    String? firstName,
    String? lastName,
    int? searchDistance,
    Fragment$BasicProfile$media? media,
    String? softRejectionNote,
    Enum$DriverStatus? status,
    List<Fragment$CurrentOrder>? currentOrders,
    List<Fragment$BasicProfile$wallets>? wallets,
    bool? isWalletHidden,
  }) =>
      _res;
  CopyWith$Fragment$BasicProfile$media<TRes> get media =>
      CopyWith$Fragment$BasicProfile$media.stub(_res);
  currentOrders(_fn) => _res;
  wallets(_fn) => _res;
}

const fragmentDefinitionBasicProfile = FragmentDefinitionNode(
  name: NameNode(value: 'BasicProfile'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Driver'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'mobileNumber'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'firstName'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'lastName'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'searchDistance'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'media'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'address'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        )
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'softRejectionNote'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'status'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'currentOrders'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'CurrentOrder'),
          directives: [],
        )
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'wallets'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'balance'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'currency'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'isWalletHidden'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentBasicProfile = DocumentNode(definitions: [
  fragmentDefinitionBasicProfile,
  fragmentDefinitionCurrentOrder,
  fragmentDefinitionPoint,
]);

extension ClientExtension$Fragment$BasicProfile on graphql.GraphQLClient {
  void writeFragment$BasicProfile({
    required Fragment$BasicProfile data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'BasicProfile',
            document: documentNodeFragmentBasicProfile,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$BasicProfile? readFragment$BasicProfile({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'BasicProfile',
          document: documentNodeFragmentBasicProfile,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$BasicProfile.fromJson(result);
  }
}

class Fragment$BasicProfile$media {
  Fragment$BasicProfile$media({required this.address});

  factory Fragment$BasicProfile$media.fromJson(Map<String, dynamic> json) {
    final l$address = json['address'];
    return Fragment$BasicProfile$media(address: (l$address as String));
  }

  final String address;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$address = address;
    _resultData['address'] = l$address;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$address = address;
    return Object.hashAll([l$address]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$BasicProfile$media) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$BasicProfile$media
    on Fragment$BasicProfile$media {
  CopyWith$Fragment$BasicProfile$media<Fragment$BasicProfile$media>
      get copyWith => CopyWith$Fragment$BasicProfile$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$BasicProfile$media<TRes> {
  factory CopyWith$Fragment$BasicProfile$media(
    Fragment$BasicProfile$media instance,
    TRes Function(Fragment$BasicProfile$media) then,
  ) = _CopyWithImpl$Fragment$BasicProfile$media;

  factory CopyWith$Fragment$BasicProfile$media.stub(TRes res) =
      _CopyWithStubImpl$Fragment$BasicProfile$media;

  TRes call({String? address});
}

class _CopyWithImpl$Fragment$BasicProfile$media<TRes>
    implements CopyWith$Fragment$BasicProfile$media<TRes> {
  _CopyWithImpl$Fragment$BasicProfile$media(
    this._instance,
    this._then,
  );

  final Fragment$BasicProfile$media _instance;

  final TRes Function(Fragment$BasicProfile$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? address = _undefined}) =>
      _then(Fragment$BasicProfile$media(
          address: address == _undefined || address == null
              ? _instance.address
              : (address as String)));
}

class _CopyWithStubImpl$Fragment$BasicProfile$media<TRes>
    implements CopyWith$Fragment$BasicProfile$media<TRes> {
  _CopyWithStubImpl$Fragment$BasicProfile$media(this._res);

  TRes _res;

  call({String? address}) => _res;
}

class Fragment$BasicProfile$wallets {
  Fragment$BasicProfile$wallets({
    required this.balance,
    required this.currency,
  });

  factory Fragment$BasicProfile$wallets.fromJson(Map<String, dynamic> json) {
    final l$balance = json['balance'];
    final l$currency = json['currency'];
    return Fragment$BasicProfile$wallets(
      balance: (l$balance as num).toDouble(),
      currency: (l$currency as String),
    );
  }

  final double balance;

  final String currency;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$balance = balance;
    _resultData['balance'] = l$balance;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$balance = balance;
    final l$currency = currency;
    return Object.hashAll([
      l$balance,
      l$currency,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$BasicProfile$wallets) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$balance = balance;
    final lOther$balance = other.balance;
    if (l$balance != lOther$balance) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$BasicProfile$wallets
    on Fragment$BasicProfile$wallets {
  CopyWith$Fragment$BasicProfile$wallets<Fragment$BasicProfile$wallets>
      get copyWith => CopyWith$Fragment$BasicProfile$wallets(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$BasicProfile$wallets<TRes> {
  factory CopyWith$Fragment$BasicProfile$wallets(
    Fragment$BasicProfile$wallets instance,
    TRes Function(Fragment$BasicProfile$wallets) then,
  ) = _CopyWithImpl$Fragment$BasicProfile$wallets;

  factory CopyWith$Fragment$BasicProfile$wallets.stub(TRes res) =
      _CopyWithStubImpl$Fragment$BasicProfile$wallets;

  TRes call({
    double? balance,
    String? currency,
  });
}

class _CopyWithImpl$Fragment$BasicProfile$wallets<TRes>
    implements CopyWith$Fragment$BasicProfile$wallets<TRes> {
  _CopyWithImpl$Fragment$BasicProfile$wallets(
    this._instance,
    this._then,
  );

  final Fragment$BasicProfile$wallets _instance;

  final TRes Function(Fragment$BasicProfile$wallets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? balance = _undefined,
    Object? currency = _undefined,
  }) =>
      _then(Fragment$BasicProfile$wallets(
        balance: balance == _undefined || balance == null
            ? _instance.balance
            : (balance as double),
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
      ));
}

class _CopyWithStubImpl$Fragment$BasicProfile$wallets<TRes>
    implements CopyWith$Fragment$BasicProfile$wallets<TRes> {
  _CopyWithStubImpl$Fragment$BasicProfile$wallets(this._res);

  TRes _res;

  call({
    double? balance,
    String? currency,
  }) =>
      _res;
}
