import 'dart:async';
import 'graphql/fragments/driver.fragment.graphql.dart';
import 'graphql/fragments/order.fragment.graphql.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.gql.dart';

class Variables$Query$Me {
  factory Variables$Query$Me({required int versionCode}) =>
      Variables$Query$Me._({
        r'versionCode': versionCode,
      });

  Variables$Query$Me._(this._$data);

  factory Variables$Query$Me.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$versionCode = data['versionCode'];
    result$data['versionCode'] = (l$versionCode as int);
    return Variables$Query$Me._(result$data);
  }

  Map<String, dynamic> _$data;

  int get versionCode => (_$data['versionCode'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$versionCode = versionCode;
    result$data['versionCode'] = l$versionCode;
    return result$data;
  }

  CopyWith$Variables$Query$Me<Variables$Query$Me> get copyWith =>
      CopyWith$Variables$Query$Me(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Me) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$versionCode = versionCode;
    final lOther$versionCode = other.versionCode;
    if (l$versionCode != lOther$versionCode) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$versionCode = versionCode;
    return Object.hashAll([l$versionCode]);
  }
}

abstract class CopyWith$Variables$Query$Me<TRes> {
  factory CopyWith$Variables$Query$Me(
    Variables$Query$Me instance,
    TRes Function(Variables$Query$Me) then,
  ) = _CopyWithImpl$Variables$Query$Me;

  factory CopyWith$Variables$Query$Me.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Me;

  TRes call({int? versionCode});
}

class _CopyWithImpl$Variables$Query$Me<TRes>
    implements CopyWith$Variables$Query$Me<TRes> {
  _CopyWithImpl$Variables$Query$Me(
    this._instance,
    this._then,
  );

  final Variables$Query$Me _instance;

  final TRes Function(Variables$Query$Me) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? versionCode = _undefined}) => _then(Variables$Query$Me._({
        ..._instance._$data,
        if (versionCode != _undefined && versionCode != null)
          'versionCode': (versionCode as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$Me<TRes>
    implements CopyWith$Variables$Query$Me<TRes> {
  _CopyWithStubImpl$Variables$Query$Me(this._res);

  TRes _res;

  call({int? versionCode}) => _res;
}

class Query$Me {
  Query$Me({
    this.driver,
    required this.requireUpdate,
  });

  factory Query$Me.fromJson(Map<String, dynamic> json) {
    final l$driver = json['driver'];
    final l$requireUpdate = json['requireUpdate'];
    return Query$Me(
      driver: l$driver == null
          ? null
          : Fragment$BasicProfile.fromJson((l$driver as Map<String, dynamic>)),
      requireUpdate: fromJson$Enum$VersionStatus((l$requireUpdate as String)),
    );
  }

  final Fragment$BasicProfile? driver;

  final Enum$VersionStatus requireUpdate;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$driver = driver;
    _resultData['driver'] = l$driver?.toJson();
    final l$requireUpdate = requireUpdate;
    _resultData['requireUpdate'] = toJson$Enum$VersionStatus(l$requireUpdate);
    return _resultData;
  }

  @override
  int get hashCode {
    final l$driver = driver;
    final l$requireUpdate = requireUpdate;
    return Object.hashAll([
      l$driver,
      l$requireUpdate,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Me) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$driver = driver;
    final lOther$driver = other.driver;
    if (l$driver != lOther$driver) {
      return false;
    }
    final l$requireUpdate = requireUpdate;
    final lOther$requireUpdate = other.requireUpdate;
    if (l$requireUpdate != lOther$requireUpdate) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Me on Query$Me {
  CopyWith$Query$Me<Query$Me> get copyWith => CopyWith$Query$Me(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Me<TRes> {
  factory CopyWith$Query$Me(
    Query$Me instance,
    TRes Function(Query$Me) then,
  ) = _CopyWithImpl$Query$Me;

  factory CopyWith$Query$Me.stub(TRes res) = _CopyWithStubImpl$Query$Me;

  TRes call({
    Fragment$BasicProfile? driver,
    Enum$VersionStatus? requireUpdate,
  });
  CopyWith$Fragment$BasicProfile<TRes> get driver;
}

class _CopyWithImpl$Query$Me<TRes> implements CopyWith$Query$Me<TRes> {
  _CopyWithImpl$Query$Me(
    this._instance,
    this._then,
  );

  final Query$Me _instance;

  final TRes Function(Query$Me) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? driver = _undefined,
    Object? requireUpdate = _undefined,
  }) =>
      _then(Query$Me(
        driver: driver == _undefined
            ? _instance.driver
            : (driver as Fragment$BasicProfile?),
        requireUpdate: requireUpdate == _undefined || requireUpdate == null
            ? _instance.requireUpdate
            : (requireUpdate as Enum$VersionStatus),
      ));
  CopyWith$Fragment$BasicProfile<TRes> get driver {
    final local$driver = _instance.driver;
    return local$driver == null
        ? CopyWith$Fragment$BasicProfile.stub(_then(_instance))
        : CopyWith$Fragment$BasicProfile(local$driver, (e) => call(driver: e));
  }
}

class _CopyWithStubImpl$Query$Me<TRes> implements CopyWith$Query$Me<TRes> {
  _CopyWithStubImpl$Query$Me(this._res);

  TRes _res;

  call({
    Fragment$BasicProfile? driver,
    Enum$VersionStatus? requireUpdate,
  }) =>
      _res;
  CopyWith$Fragment$BasicProfile<TRes> get driver =>
      CopyWith$Fragment$BasicProfile.stub(_res);
}

const documentNodeQueryMe = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Me'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'versionCode')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'driver'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: IntValueNode(value: '1'),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'BasicProfile'),
            directives: [],
          )
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'requireUpdate'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'versionCode'),
            value: VariableNode(name: NameNode(value: 'versionCode')),
          )
        ],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionBasicProfile,
  fragmentDefinitionCurrentOrder,
  fragmentDefinitionPoint,
]);
Query$Me _parserFn$Query$Me(Map<String, dynamic> data) =>
    Query$Me.fromJson(data);
typedef OnQueryComplete$Query$Me = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Me?,
);

class Options$Query$Me extends graphql.QueryOptions<Query$Me> {
  Options$Query$Me({
    String? operationName,
    required Variables$Query$Me variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Me? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Me? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$Me(data),
                  ),
          onError: onError,
          document: documentNodeQueryMe,
          parserFn: _parserFn$Query$Me,
        );

  final OnQueryComplete$Query$Me? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Me extends graphql.WatchQueryOptions<Query$Me> {
  WatchOptions$Query$Me({
    String? operationName,
    required Variables$Query$Me variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Me? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryMe,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Me,
        );
}

class FetchMoreOptions$Query$Me extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Me({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Me variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryMe,
        );
}

extension ClientExtension$Query$Me on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Me>> query$Me(
          Options$Query$Me options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Me> watchQuery$Me(
          WatchOptions$Query$Me options) =>
      this.watchQuery(options);
  void writeQuery$Me({
    required Query$Me data,
    required Variables$Query$Me variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryMe),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Me? readQuery$Me({
    required Variables$Query$Me variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryMe),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Me.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Me> useQuery$Me(
        Options$Query$Me options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$Me> useWatchQuery$Me(
        WatchOptions$Query$Me options) =>
    graphql_flutter.useWatchQuery(options);

class Query$Me$Widget extends graphql_flutter.Query<Query$Me> {
  Query$Me$Widget({
    widgets.Key? key,
    required Options$Query$Me options,
    required graphql_flutter.QueryBuilder<Query$Me> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$AvailableOrders {
  Query$AvailableOrders({required this.availableOrders});

  factory Query$AvailableOrders.fromJson(Map<String, dynamic> json) {
    final l$availableOrders = json['availableOrders'];
    return Query$AvailableOrders(
        availableOrders: (l$availableOrders as List<dynamic>)
            .map((e) =>
                Fragment$AvailableOrder.fromJson((e as Map<String, dynamic>)))
            .toList());
  }

  final List<Fragment$AvailableOrder> availableOrders;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$availableOrders = availableOrders;
    _resultData['availableOrders'] =
        l$availableOrders.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$availableOrders = availableOrders;
    return Object.hashAll([Object.hashAll(l$availableOrders.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$AvailableOrders) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$availableOrders = availableOrders;
    final lOther$availableOrders = other.availableOrders;
    if (l$availableOrders.length != lOther$availableOrders.length) {
      return false;
    }
    for (int i = 0; i < l$availableOrders.length; i++) {
      final l$availableOrders$entry = l$availableOrders[i];
      final lOther$availableOrders$entry = lOther$availableOrders[i];
      if (l$availableOrders$entry != lOther$availableOrders$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Query$AvailableOrders on Query$AvailableOrders {
  CopyWith$Query$AvailableOrders<Query$AvailableOrders> get copyWith =>
      CopyWith$Query$AvailableOrders(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$AvailableOrders<TRes> {
  factory CopyWith$Query$AvailableOrders(
    Query$AvailableOrders instance,
    TRes Function(Query$AvailableOrders) then,
  ) = _CopyWithImpl$Query$AvailableOrders;

  factory CopyWith$Query$AvailableOrders.stub(TRes res) =
      _CopyWithStubImpl$Query$AvailableOrders;

  TRes call({List<Fragment$AvailableOrder>? availableOrders});
  TRes availableOrders(
      Iterable<Fragment$AvailableOrder> Function(
              Iterable<
                  CopyWith$Fragment$AvailableOrder<Fragment$AvailableOrder>>)
          _fn);
}

class _CopyWithImpl$Query$AvailableOrders<TRes>
    implements CopyWith$Query$AvailableOrders<TRes> {
  _CopyWithImpl$Query$AvailableOrders(
    this._instance,
    this._then,
  );

  final Query$AvailableOrders _instance;

  final TRes Function(Query$AvailableOrders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? availableOrders = _undefined}) =>
      _then(Query$AvailableOrders(
          availableOrders:
              availableOrders == _undefined || availableOrders == null
                  ? _instance.availableOrders
                  : (availableOrders as List<Fragment$AvailableOrder>)));
  TRes availableOrders(
          Iterable<Fragment$AvailableOrder> Function(
                  Iterable<
                      CopyWith$Fragment$AvailableOrder<
                          Fragment$AvailableOrder>>)
              _fn) =>
      call(
          availableOrders: _fn(_instance.availableOrders
              .map((e) => CopyWith$Fragment$AvailableOrder(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$AvailableOrders<TRes>
    implements CopyWith$Query$AvailableOrders<TRes> {
  _CopyWithStubImpl$Query$AvailableOrders(this._res);

  TRes _res;

  call({List<Fragment$AvailableOrder>? availableOrders}) => _res;
  availableOrders(_fn) => _res;
}

const documentNodeQueryAvailableOrders = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'AvailableOrders'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'availableOrders'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'AvailableOrder'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  fragmentDefinitionAvailableOrder,
  fragmentDefinitionPoint,
]);
Query$AvailableOrders _parserFn$Query$AvailableOrders(
        Map<String, dynamic> data) =>
    Query$AvailableOrders.fromJson(data);
typedef OnQueryComplete$Query$AvailableOrders = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$AvailableOrders?,
);

class Options$Query$AvailableOrders
    extends graphql.QueryOptions<Query$AvailableOrders> {
  Options$Query$AvailableOrders({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$AvailableOrders? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$AvailableOrders? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$AvailableOrders(data),
                  ),
          onError: onError,
          document: documentNodeQueryAvailableOrders,
          parserFn: _parserFn$Query$AvailableOrders,
        );

  final OnQueryComplete$Query$AvailableOrders? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$AvailableOrders
    extends graphql.WatchQueryOptions<Query$AvailableOrders> {
  WatchOptions$Query$AvailableOrders({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$AvailableOrders? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryAvailableOrders,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$AvailableOrders,
        );
}

class FetchMoreOptions$Query$AvailableOrders extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$AvailableOrders(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryAvailableOrders,
        );
}

extension ClientExtension$Query$AvailableOrders on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$AvailableOrders>> query$AvailableOrders(
          [Options$Query$AvailableOrders? options]) async =>
      await this.query(options ?? Options$Query$AvailableOrders());
  graphql.ObservableQuery<Query$AvailableOrders> watchQuery$AvailableOrders(
          [WatchOptions$Query$AvailableOrders? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$AvailableOrders());
  void writeQuery$AvailableOrders({
    required Query$AvailableOrders data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryAvailableOrders)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$AvailableOrders? readQuery$AvailableOrders({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryAvailableOrders)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$AvailableOrders.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$AvailableOrders> useQuery$AvailableOrders(
        [Options$Query$AvailableOrders? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$AvailableOrders());
graphql.ObservableQuery<Query$AvailableOrders> useWatchQuery$AvailableOrders(
        [WatchOptions$Query$AvailableOrders? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$AvailableOrders());

class Query$AvailableOrders$Widget
    extends graphql_flutter.Query<Query$AvailableOrders> {
  Query$AvailableOrders$Widget({
    widgets.Key? key,
    Options$Query$AvailableOrders? options,
    required graphql_flutter.QueryBuilder<Query$AvailableOrders> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$AvailableOrders(),
          builder: builder,
        );
}

class Subscription$OrderCreated {
  Subscription$OrderCreated({required this.orderCreated});

  factory Subscription$OrderCreated.fromJson(Map<String, dynamic> json) {
    final l$orderCreated = json['orderCreated'];
    return Subscription$OrderCreated(
        orderCreated: Fragment$AvailableOrder.fromJson(
            (l$orderCreated as Map<String, dynamic>)));
  }

  final Fragment$AvailableOrder orderCreated;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orderCreated = orderCreated;
    _resultData['orderCreated'] = l$orderCreated.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orderCreated = orderCreated;
    return Object.hashAll([l$orderCreated]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$OrderCreated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderCreated = orderCreated;
    final lOther$orderCreated = other.orderCreated;
    if (l$orderCreated != lOther$orderCreated) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$OrderCreated
    on Subscription$OrderCreated {
  CopyWith$Subscription$OrderCreated<Subscription$OrderCreated> get copyWith =>
      CopyWith$Subscription$OrderCreated(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$OrderCreated<TRes> {
  factory CopyWith$Subscription$OrderCreated(
    Subscription$OrderCreated instance,
    TRes Function(Subscription$OrderCreated) then,
  ) = _CopyWithImpl$Subscription$OrderCreated;

  factory CopyWith$Subscription$OrderCreated.stub(TRes res) =
      _CopyWithStubImpl$Subscription$OrderCreated;

  TRes call({Fragment$AvailableOrder? orderCreated});
  CopyWith$Fragment$AvailableOrder<TRes> get orderCreated;
}

class _CopyWithImpl$Subscription$OrderCreated<TRes>
    implements CopyWith$Subscription$OrderCreated<TRes> {
  _CopyWithImpl$Subscription$OrderCreated(
    this._instance,
    this._then,
  );

  final Subscription$OrderCreated _instance;

  final TRes Function(Subscription$OrderCreated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? orderCreated = _undefined}) => _then(
      Subscription$OrderCreated(
          orderCreated: orderCreated == _undefined || orderCreated == null
              ? _instance.orderCreated
              : (orderCreated as Fragment$AvailableOrder)));
  CopyWith$Fragment$AvailableOrder<TRes> get orderCreated {
    final local$orderCreated = _instance.orderCreated;
    return CopyWith$Fragment$AvailableOrder(
        local$orderCreated, (e) => call(orderCreated: e));
  }
}

class _CopyWithStubImpl$Subscription$OrderCreated<TRes>
    implements CopyWith$Subscription$OrderCreated<TRes> {
  _CopyWithStubImpl$Subscription$OrderCreated(this._res);

  TRes _res;

  call({Fragment$AvailableOrder? orderCreated}) => _res;
  CopyWith$Fragment$AvailableOrder<TRes> get orderCreated =>
      CopyWith$Fragment$AvailableOrder.stub(_res);
}

const documentNodeSubscriptionOrderCreated = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'OrderCreated'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'orderCreated'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'AvailableOrder'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  fragmentDefinitionAvailableOrder,
  fragmentDefinitionPoint,
]);
Subscription$OrderCreated _parserFn$Subscription$OrderCreated(
        Map<String, dynamic> data) =>
    Subscription$OrderCreated.fromJson(data);

class Options$Subscription$OrderCreated
    extends graphql.SubscriptionOptions<Subscription$OrderCreated> {
  Options$Subscription$OrderCreated({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$OrderCreated? typedOptimisticResult,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionOrderCreated,
          parserFn: _parserFn$Subscription$OrderCreated,
        );
}

class WatchOptions$Subscription$OrderCreated
    extends graphql.WatchQueryOptions<Subscription$OrderCreated> {
  WatchOptions$Subscription$OrderCreated({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$OrderCreated? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionOrderCreated,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Subscription$OrderCreated,
        );
}

class FetchMoreOptions$Subscription$OrderCreated
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$OrderCreated(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeSubscriptionOrderCreated,
        );
}

extension ClientExtension$Subscription$OrderCreated on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$OrderCreated>> subscribe$OrderCreated(
          [Options$Subscription$OrderCreated? options]) =>
      this.subscribe(options ?? Options$Subscription$OrderCreated());
  graphql.ObservableQuery<Subscription$OrderCreated>
      watchSubscription$OrderCreated(
              [WatchOptions$Subscription$OrderCreated? options]) =>
          this.watchQuery(options ?? WatchOptions$Subscription$OrderCreated());
}

graphql.QueryResult<Subscription$OrderCreated> useSubscription$OrderCreated(
        Options$Subscription$OrderCreated options) =>
    graphql_flutter.useSubscription(options);

class Subscription$OrderCreated$Widget
    extends graphql_flutter.Subscription<Subscription$OrderCreated> {
  Subscription$OrderCreated$Widget({
    widgets.Key? key,
    Options$Subscription$OrderCreated? options,
    required graphql_flutter.SubscriptionBuilder<Subscription$OrderCreated>
        builder,
    graphql_flutter.OnSubscriptionResult<Subscription$OrderCreated>?
        onSubscriptionResult,
  }) : super(
          key: key,
          options: options ?? Options$Subscription$OrderCreated(),
          builder: builder,
          onSubscriptionResult: onSubscriptionResult,
        );
}

class Subscription$OrderRemoved {
  Subscription$OrderRemoved({required this.orderRemoved});

  factory Subscription$OrderRemoved.fromJson(Map<String, dynamic> json) {
    final l$orderRemoved = json['orderRemoved'];
    return Subscription$OrderRemoved(
        orderRemoved: Subscription$OrderRemoved$orderRemoved.fromJson(
            (l$orderRemoved as Map<String, dynamic>)));
  }

  final Subscription$OrderRemoved$orderRemoved orderRemoved;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orderRemoved = orderRemoved;
    _resultData['orderRemoved'] = l$orderRemoved.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orderRemoved = orderRemoved;
    return Object.hashAll([l$orderRemoved]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$OrderRemoved) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderRemoved = orderRemoved;
    final lOther$orderRemoved = other.orderRemoved;
    if (l$orderRemoved != lOther$orderRemoved) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$OrderRemoved
    on Subscription$OrderRemoved {
  CopyWith$Subscription$OrderRemoved<Subscription$OrderRemoved> get copyWith =>
      CopyWith$Subscription$OrderRemoved(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$OrderRemoved<TRes> {
  factory CopyWith$Subscription$OrderRemoved(
    Subscription$OrderRemoved instance,
    TRes Function(Subscription$OrderRemoved) then,
  ) = _CopyWithImpl$Subscription$OrderRemoved;

  factory CopyWith$Subscription$OrderRemoved.stub(TRes res) =
      _CopyWithStubImpl$Subscription$OrderRemoved;

  TRes call({Subscription$OrderRemoved$orderRemoved? orderRemoved});
  CopyWith$Subscription$OrderRemoved$orderRemoved<TRes> get orderRemoved;
}

class _CopyWithImpl$Subscription$OrderRemoved<TRes>
    implements CopyWith$Subscription$OrderRemoved<TRes> {
  _CopyWithImpl$Subscription$OrderRemoved(
    this._instance,
    this._then,
  );

  final Subscription$OrderRemoved _instance;

  final TRes Function(Subscription$OrderRemoved) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? orderRemoved = _undefined}) => _then(
      Subscription$OrderRemoved(
          orderRemoved: orderRemoved == _undefined || orderRemoved == null
              ? _instance.orderRemoved
              : (orderRemoved as Subscription$OrderRemoved$orderRemoved)));
  CopyWith$Subscription$OrderRemoved$orderRemoved<TRes> get orderRemoved {
    final local$orderRemoved = _instance.orderRemoved;
    return CopyWith$Subscription$OrderRemoved$orderRemoved(
        local$orderRemoved, (e) => call(orderRemoved: e));
  }
}

class _CopyWithStubImpl$Subscription$OrderRemoved<TRes>
    implements CopyWith$Subscription$OrderRemoved<TRes> {
  _CopyWithStubImpl$Subscription$OrderRemoved(this._res);

  TRes _res;

  call({Subscription$OrderRemoved$orderRemoved? orderRemoved}) => _res;
  CopyWith$Subscription$OrderRemoved$orderRemoved<TRes> get orderRemoved =>
      CopyWith$Subscription$OrderRemoved$orderRemoved.stub(_res);
}

const documentNodeSubscriptionOrderRemoved = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'OrderRemoved'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'orderRemoved'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
        ]),
      )
    ]),
  ),
]);
Subscription$OrderRemoved _parserFn$Subscription$OrderRemoved(
        Map<String, dynamic> data) =>
    Subscription$OrderRemoved.fromJson(data);

class Options$Subscription$OrderRemoved
    extends graphql.SubscriptionOptions<Subscription$OrderRemoved> {
  Options$Subscription$OrderRemoved({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$OrderRemoved? typedOptimisticResult,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionOrderRemoved,
          parserFn: _parserFn$Subscription$OrderRemoved,
        );
}

class WatchOptions$Subscription$OrderRemoved
    extends graphql.WatchQueryOptions<Subscription$OrderRemoved> {
  WatchOptions$Subscription$OrderRemoved({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$OrderRemoved? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionOrderRemoved,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Subscription$OrderRemoved,
        );
}

class FetchMoreOptions$Subscription$OrderRemoved
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$OrderRemoved(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeSubscriptionOrderRemoved,
        );
}

extension ClientExtension$Subscription$OrderRemoved on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$OrderRemoved>> subscribe$OrderRemoved(
          [Options$Subscription$OrderRemoved? options]) =>
      this.subscribe(options ?? Options$Subscription$OrderRemoved());
  graphql.ObservableQuery<Subscription$OrderRemoved>
      watchSubscription$OrderRemoved(
              [WatchOptions$Subscription$OrderRemoved? options]) =>
          this.watchQuery(options ?? WatchOptions$Subscription$OrderRemoved());
}

graphql.QueryResult<Subscription$OrderRemoved> useSubscription$OrderRemoved(
        Options$Subscription$OrderRemoved options) =>
    graphql_flutter.useSubscription(options);

class Subscription$OrderRemoved$Widget
    extends graphql_flutter.Subscription<Subscription$OrderRemoved> {
  Subscription$OrderRemoved$Widget({
    widgets.Key? key,
    Options$Subscription$OrderRemoved? options,
    required graphql_flutter.SubscriptionBuilder<Subscription$OrderRemoved>
        builder,
    graphql_flutter.OnSubscriptionResult<Subscription$OrderRemoved>?
        onSubscriptionResult,
  }) : super(
          key: key,
          options: options ?? Options$Subscription$OrderRemoved(),
          builder: builder,
          onSubscriptionResult: onSubscriptionResult,
        );
}

class Subscription$OrderRemoved$orderRemoved {
  Subscription$OrderRemoved$orderRemoved({required this.id});

  factory Subscription$OrderRemoved$orderRemoved.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    return Subscription$OrderRemoved$orderRemoved(id: (l$id as String));
  }

  final String id;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$OrderRemoved$orderRemoved) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$OrderRemoved$orderRemoved
    on Subscription$OrderRemoved$orderRemoved {
  CopyWith$Subscription$OrderRemoved$orderRemoved<
          Subscription$OrderRemoved$orderRemoved>
      get copyWith => CopyWith$Subscription$OrderRemoved$orderRemoved(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$OrderRemoved$orderRemoved<TRes> {
  factory CopyWith$Subscription$OrderRemoved$orderRemoved(
    Subscription$OrderRemoved$orderRemoved instance,
    TRes Function(Subscription$OrderRemoved$orderRemoved) then,
  ) = _CopyWithImpl$Subscription$OrderRemoved$orderRemoved;

  factory CopyWith$Subscription$OrderRemoved$orderRemoved.stub(TRes res) =
      _CopyWithStubImpl$Subscription$OrderRemoved$orderRemoved;

  TRes call({String? id});
}

class _CopyWithImpl$Subscription$OrderRemoved$orderRemoved<TRes>
    implements CopyWith$Subscription$OrderRemoved$orderRemoved<TRes> {
  _CopyWithImpl$Subscription$OrderRemoved$orderRemoved(
    this._instance,
    this._then,
  );

  final Subscription$OrderRemoved$orderRemoved _instance;

  final TRes Function(Subscription$OrderRemoved$orderRemoved) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Subscription$OrderRemoved$orderRemoved(
          id: id == _undefined || id == null ? _instance.id : (id as String)));
}

class _CopyWithStubImpl$Subscription$OrderRemoved$orderRemoved<TRes>
    implements CopyWith$Subscription$OrderRemoved$orderRemoved<TRes> {
  _CopyWithStubImpl$Subscription$OrderRemoved$orderRemoved(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Subscription$OrderUpdated {
  Subscription$OrderUpdated({required this.orderUpdated});

  factory Subscription$OrderUpdated.fromJson(Map<String, dynamic> json) {
    final l$orderUpdated = json['orderUpdated'];
    return Subscription$OrderUpdated(
        orderUpdated: Subscription$OrderUpdated$orderUpdated.fromJson(
            (l$orderUpdated as Map<String, dynamic>)));
  }

  final Subscription$OrderUpdated$orderUpdated orderUpdated;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orderUpdated = orderUpdated;
    _resultData['orderUpdated'] = l$orderUpdated.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orderUpdated = orderUpdated;
    return Object.hashAll([l$orderUpdated]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$OrderUpdated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderUpdated = orderUpdated;
    final lOther$orderUpdated = other.orderUpdated;
    if (l$orderUpdated != lOther$orderUpdated) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$OrderUpdated
    on Subscription$OrderUpdated {
  CopyWith$Subscription$OrderUpdated<Subscription$OrderUpdated> get copyWith =>
      CopyWith$Subscription$OrderUpdated(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$OrderUpdated<TRes> {
  factory CopyWith$Subscription$OrderUpdated(
    Subscription$OrderUpdated instance,
    TRes Function(Subscription$OrderUpdated) then,
  ) = _CopyWithImpl$Subscription$OrderUpdated;

  factory CopyWith$Subscription$OrderUpdated.stub(TRes res) =
      _CopyWithStubImpl$Subscription$OrderUpdated;

  TRes call({Subscription$OrderUpdated$orderUpdated? orderUpdated});
  CopyWith$Subscription$OrderUpdated$orderUpdated<TRes> get orderUpdated;
}

class _CopyWithImpl$Subscription$OrderUpdated<TRes>
    implements CopyWith$Subscription$OrderUpdated<TRes> {
  _CopyWithImpl$Subscription$OrderUpdated(
    this._instance,
    this._then,
  );

  final Subscription$OrderUpdated _instance;

  final TRes Function(Subscription$OrderUpdated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? orderUpdated = _undefined}) => _then(
      Subscription$OrderUpdated(
          orderUpdated: orderUpdated == _undefined || orderUpdated == null
              ? _instance.orderUpdated
              : (orderUpdated as Subscription$OrderUpdated$orderUpdated)));
  CopyWith$Subscription$OrderUpdated$orderUpdated<TRes> get orderUpdated {
    final local$orderUpdated = _instance.orderUpdated;
    return CopyWith$Subscription$OrderUpdated$orderUpdated(
        local$orderUpdated, (e) => call(orderUpdated: e));
  }
}

class _CopyWithStubImpl$Subscription$OrderUpdated<TRes>
    implements CopyWith$Subscription$OrderUpdated<TRes> {
  _CopyWithStubImpl$Subscription$OrderUpdated(this._res);

  TRes _res;

  call({Subscription$OrderUpdated$orderUpdated? orderUpdated}) => _res;
  CopyWith$Subscription$OrderUpdated$orderUpdated<TRes> get orderUpdated =>
      CopyWith$Subscription$OrderUpdated$orderUpdated.stub(_res);
}

const documentNodeSubscriptionOrderUpdated = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'OrderUpdated'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'orderUpdated'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
        ]),
      )
    ]),
  ),
]);
Subscription$OrderUpdated _parserFn$Subscription$OrderUpdated(
        Map<String, dynamic> data) =>
    Subscription$OrderUpdated.fromJson(data);

class Options$Subscription$OrderUpdated
    extends graphql.SubscriptionOptions<Subscription$OrderUpdated> {
  Options$Subscription$OrderUpdated({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$OrderUpdated? typedOptimisticResult,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionOrderUpdated,
          parserFn: _parserFn$Subscription$OrderUpdated,
        );
}

class WatchOptions$Subscription$OrderUpdated
    extends graphql.WatchQueryOptions<Subscription$OrderUpdated> {
  WatchOptions$Subscription$OrderUpdated({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$OrderUpdated? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionOrderUpdated,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Subscription$OrderUpdated,
        );
}

class FetchMoreOptions$Subscription$OrderUpdated
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$OrderUpdated(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeSubscriptionOrderUpdated,
        );
}

extension ClientExtension$Subscription$OrderUpdated on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$OrderUpdated>> subscribe$OrderUpdated(
          [Options$Subscription$OrderUpdated? options]) =>
      this.subscribe(options ?? Options$Subscription$OrderUpdated());
  graphql.ObservableQuery<Subscription$OrderUpdated>
      watchSubscription$OrderUpdated(
              [WatchOptions$Subscription$OrderUpdated? options]) =>
          this.watchQuery(options ?? WatchOptions$Subscription$OrderUpdated());
}

graphql.QueryResult<Subscription$OrderUpdated> useSubscription$OrderUpdated(
        Options$Subscription$OrderUpdated options) =>
    graphql_flutter.useSubscription(options);

class Subscription$OrderUpdated$Widget
    extends graphql_flutter.Subscription<Subscription$OrderUpdated> {
  Subscription$OrderUpdated$Widget({
    widgets.Key? key,
    Options$Subscription$OrderUpdated? options,
    required graphql_flutter.SubscriptionBuilder<Subscription$OrderUpdated>
        builder,
    graphql_flutter.OnSubscriptionResult<Subscription$OrderUpdated>?
        onSubscriptionResult,
  }) : super(
          key: key,
          options: options ?? Options$Subscription$OrderUpdated(),
          builder: builder,
          onSubscriptionResult: onSubscriptionResult,
        );
}

class Subscription$OrderUpdated$orderUpdated {
  Subscription$OrderUpdated$orderUpdated({required this.id});

  factory Subscription$OrderUpdated$orderUpdated.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    return Subscription$OrderUpdated$orderUpdated(id: (l$id as String));
  }

  final String id;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$OrderUpdated$orderUpdated) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$OrderUpdated$orderUpdated
    on Subscription$OrderUpdated$orderUpdated {
  CopyWith$Subscription$OrderUpdated$orderUpdated<
          Subscription$OrderUpdated$orderUpdated>
      get copyWith => CopyWith$Subscription$OrderUpdated$orderUpdated(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$OrderUpdated$orderUpdated<TRes> {
  factory CopyWith$Subscription$OrderUpdated$orderUpdated(
    Subscription$OrderUpdated$orderUpdated instance,
    TRes Function(Subscription$OrderUpdated$orderUpdated) then,
  ) = _CopyWithImpl$Subscription$OrderUpdated$orderUpdated;

  factory CopyWith$Subscription$OrderUpdated$orderUpdated.stub(TRes res) =
      _CopyWithStubImpl$Subscription$OrderUpdated$orderUpdated;

  TRes call({String? id});
}

class _CopyWithImpl$Subscription$OrderUpdated$orderUpdated<TRes>
    implements CopyWith$Subscription$OrderUpdated$orderUpdated<TRes> {
  _CopyWithImpl$Subscription$OrderUpdated$orderUpdated(
    this._instance,
    this._then,
  );

  final Subscription$OrderUpdated$orderUpdated _instance;

  final TRes Function(Subscription$OrderUpdated$orderUpdated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Subscription$OrderUpdated$orderUpdated(
          id: id == _undefined || id == null ? _instance.id : (id as String)));
}

class _CopyWithStubImpl$Subscription$OrderUpdated$orderUpdated<TRes>
    implements CopyWith$Subscription$OrderUpdated$orderUpdated<TRes> {
  _CopyWithStubImpl$Subscription$OrderUpdated$orderUpdated(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Variables$Mutation$UpdateDriverLocation {
  factory Variables$Mutation$UpdateDriverLocation(
          {required Input$PointInput point}) =>
      Variables$Mutation$UpdateDriverLocation._({
        r'point': point,
      });

  Variables$Mutation$UpdateDriverLocation._(this._$data);

  factory Variables$Mutation$UpdateDriverLocation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$point = data['point'];
    result$data['point'] =
        Input$PointInput.fromJson((l$point as Map<String, dynamic>));
    return Variables$Mutation$UpdateDriverLocation._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PointInput get point => (_$data['point'] as Input$PointInput);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$point = point;
    result$data['point'] = l$point.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateDriverLocation<
          Variables$Mutation$UpdateDriverLocation>
      get copyWith => CopyWith$Variables$Mutation$UpdateDriverLocation(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateDriverLocation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$point = point;
    final lOther$point = other.point;
    if (l$point != lOther$point) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$point = point;
    return Object.hashAll([l$point]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateDriverLocation<TRes> {
  factory CopyWith$Variables$Mutation$UpdateDriverLocation(
    Variables$Mutation$UpdateDriverLocation instance,
    TRes Function(Variables$Mutation$UpdateDriverLocation) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateDriverLocation;

  factory CopyWith$Variables$Mutation$UpdateDriverLocation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateDriverLocation;

  TRes call({Input$PointInput? point});
}

class _CopyWithImpl$Variables$Mutation$UpdateDriverLocation<TRes>
    implements CopyWith$Variables$Mutation$UpdateDriverLocation<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateDriverLocation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateDriverLocation _instance;

  final TRes Function(Variables$Mutation$UpdateDriverLocation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? point = _undefined}) =>
      _then(Variables$Mutation$UpdateDriverLocation._({
        ..._instance._$data,
        if (point != _undefined && point != null)
          'point': (point as Input$PointInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateDriverLocation<TRes>
    implements CopyWith$Variables$Mutation$UpdateDriverLocation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateDriverLocation(this._res);

  TRes _res;

  call({Input$PointInput? point}) => _res;
}

class Mutation$UpdateDriverLocation {
  Mutation$UpdateDriverLocation({required this.updateDriversLocationNew});

  factory Mutation$UpdateDriverLocation.fromJson(Map<String, dynamic> json) {
    final l$updateDriversLocationNew = json['updateDriversLocationNew'];
    return Mutation$UpdateDriverLocation(
        updateDriversLocationNew: (l$updateDriversLocationNew as List<dynamic>)
            .map((e) =>
                Fragment$AvailableOrder.fromJson((e as Map<String, dynamic>)))
            .toList());
  }

  final List<Fragment$AvailableOrder> updateDriversLocationNew;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateDriversLocationNew = updateDriversLocationNew;
    _resultData['updateDriversLocationNew'] =
        l$updateDriversLocationNew.map((e) => e.toJson()).toList();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateDriversLocationNew = updateDriversLocationNew;
    return Object.hashAll(
        [Object.hashAll(l$updateDriversLocationNew.map((v) => v))]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateDriverLocation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateDriversLocationNew = updateDriversLocationNew;
    final lOther$updateDriversLocationNew = other.updateDriversLocationNew;
    if (l$updateDriversLocationNew.length !=
        lOther$updateDriversLocationNew.length) {
      return false;
    }
    for (int i = 0; i < l$updateDriversLocationNew.length; i++) {
      final l$updateDriversLocationNew$entry = l$updateDriversLocationNew[i];
      final lOther$updateDriversLocationNew$entry =
          lOther$updateDriversLocationNew[i];
      if (l$updateDriversLocationNew$entry !=
          lOther$updateDriversLocationNew$entry) {
        return false;
      }
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateDriverLocation
    on Mutation$UpdateDriverLocation {
  CopyWith$Mutation$UpdateDriverLocation<Mutation$UpdateDriverLocation>
      get copyWith => CopyWith$Mutation$UpdateDriverLocation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverLocation<TRes> {
  factory CopyWith$Mutation$UpdateDriverLocation(
    Mutation$UpdateDriverLocation instance,
    TRes Function(Mutation$UpdateDriverLocation) then,
  ) = _CopyWithImpl$Mutation$UpdateDriverLocation;

  factory CopyWith$Mutation$UpdateDriverLocation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverLocation;

  TRes call({List<Fragment$AvailableOrder>? updateDriversLocationNew});
  TRes updateDriversLocationNew(
      Iterable<Fragment$AvailableOrder> Function(
              Iterable<
                  CopyWith$Fragment$AvailableOrder<Fragment$AvailableOrder>>)
          _fn);
}

class _CopyWithImpl$Mutation$UpdateDriverLocation<TRes>
    implements CopyWith$Mutation$UpdateDriverLocation<TRes> {
  _CopyWithImpl$Mutation$UpdateDriverLocation(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverLocation _instance;

  final TRes Function(Mutation$UpdateDriverLocation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? updateDriversLocationNew = _undefined}) =>
      _then(Mutation$UpdateDriverLocation(
          updateDriversLocationNew: updateDriversLocationNew == _undefined ||
                  updateDriversLocationNew == null
              ? _instance.updateDriversLocationNew
              : (updateDriversLocationNew as List<Fragment$AvailableOrder>)));
  TRes updateDriversLocationNew(
          Iterable<Fragment$AvailableOrder> Function(
                  Iterable<
                      CopyWith$Fragment$AvailableOrder<
                          Fragment$AvailableOrder>>)
              _fn) =>
      call(
          updateDriversLocationNew: _fn(_instance.updateDriversLocationNew
              .map((e) => CopyWith$Fragment$AvailableOrder(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$UpdateDriverLocation<TRes>
    implements CopyWith$Mutation$UpdateDriverLocation<TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverLocation(this._res);

  TRes _res;

  call({List<Fragment$AvailableOrder>? updateDriversLocationNew}) => _res;
  updateDriversLocationNew(_fn) => _res;
}

const documentNodeMutationUpdateDriverLocation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateDriverLocation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'point')),
        type: NamedTypeNode(
          name: NameNode(value: 'PointInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateDriversLocationNew'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'point'),
            value: VariableNode(name: NameNode(value: 'point')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'AvailableOrder'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  fragmentDefinitionAvailableOrder,
  fragmentDefinitionPoint,
]);
Mutation$UpdateDriverLocation _parserFn$Mutation$UpdateDriverLocation(
        Map<String, dynamic> data) =>
    Mutation$UpdateDriverLocation.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateDriverLocation = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateDriverLocation?,
);

class Options$Mutation$UpdateDriverLocation
    extends graphql.MutationOptions<Mutation$UpdateDriverLocation> {
  Options$Mutation$UpdateDriverLocation({
    String? operationName,
    required Variables$Mutation$UpdateDriverLocation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverLocation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateDriverLocation? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateDriverLocation>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateDriverLocation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateDriverLocation,
          parserFn: _parserFn$Mutation$UpdateDriverLocation,
        );

  final OnMutationCompleted$Mutation$UpdateDriverLocation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateDriverLocation
    extends graphql.WatchQueryOptions<Mutation$UpdateDriverLocation> {
  WatchOptions$Mutation$UpdateDriverLocation({
    String? operationName,
    required Variables$Mutation$UpdateDriverLocation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverLocation? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationUpdateDriverLocation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateDriverLocation,
        );
}

extension ClientExtension$Mutation$UpdateDriverLocation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateDriverLocation>>
      mutate$UpdateDriverLocation(
              Options$Mutation$UpdateDriverLocation options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateDriverLocation>
      watchMutation$UpdateDriverLocation(
              WatchOptions$Mutation$UpdateDriverLocation options) =>
          this.watchMutation(options);
}

class Mutation$UpdateDriverLocation$HookResult {
  Mutation$UpdateDriverLocation$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateDriverLocation runMutation;

  final graphql.QueryResult<Mutation$UpdateDriverLocation> result;
}

Mutation$UpdateDriverLocation$HookResult useMutation$UpdateDriverLocation(
    [WidgetOptions$Mutation$UpdateDriverLocation? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateDriverLocation());
  return Mutation$UpdateDriverLocation$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateDriverLocation>
    useWatchMutation$UpdateDriverLocation(
            WatchOptions$Mutation$UpdateDriverLocation options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateDriverLocation
    extends graphql.MutationOptions<Mutation$UpdateDriverLocation> {
  WidgetOptions$Mutation$UpdateDriverLocation({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverLocation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateDriverLocation? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateDriverLocation>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateDriverLocation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateDriverLocation,
          parserFn: _parserFn$Mutation$UpdateDriverLocation,
        );

  final OnMutationCompleted$Mutation$UpdateDriverLocation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateDriverLocation
    = graphql.MultiSourceResult<Mutation$UpdateDriverLocation> Function(
  Variables$Mutation$UpdateDriverLocation, {
  Object? optimisticResult,
  Mutation$UpdateDriverLocation? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateDriverLocation = widgets.Widget Function(
  RunMutation$Mutation$UpdateDriverLocation,
  graphql.QueryResult<Mutation$UpdateDriverLocation>?,
);

class Mutation$UpdateDriverLocation$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateDriverLocation> {
  Mutation$UpdateDriverLocation$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateDriverLocation? options,
    required Builder$Mutation$UpdateDriverLocation builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateDriverLocation(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Variables$Mutation$UpdateOrderStatus {
  factory Variables$Mutation$UpdateOrderStatus({
    required String orderId,
    required Enum$OrderStatus status,
    double? cashPayment,
  }) =>
      Variables$Mutation$UpdateOrderStatus._({
        r'orderId': orderId,
        r'status': status,
        if (cashPayment != null) r'cashPayment': cashPayment,
      });

  Variables$Mutation$UpdateOrderStatus._(this._$data);

  factory Variables$Mutation$UpdateOrderStatus.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$orderId = data['orderId'];
    result$data['orderId'] = (l$orderId as String);
    final l$status = data['status'];
    result$data['status'] = fromJson$Enum$OrderStatus((l$status as String));
    if (data.containsKey('cashPayment')) {
      final l$cashPayment = data['cashPayment'];
      result$data['cashPayment'] = (l$cashPayment as num?)?.toDouble();
    }
    return Variables$Mutation$UpdateOrderStatus._(result$data);
  }

  Map<String, dynamic> _$data;

  String get orderId => (_$data['orderId'] as String);
  Enum$OrderStatus get status => (_$data['status'] as Enum$OrderStatus);
  double? get cashPayment => (_$data['cashPayment'] as double?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$orderId = orderId;
    result$data['orderId'] = l$orderId;
    final l$status = status;
    result$data['status'] = toJson$Enum$OrderStatus(l$status);
    if (_$data.containsKey('cashPayment')) {
      final l$cashPayment = cashPayment;
      result$data['cashPayment'] = l$cashPayment;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateOrderStatus<
          Variables$Mutation$UpdateOrderStatus>
      get copyWith => CopyWith$Variables$Mutation$UpdateOrderStatus(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateOrderStatus) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderId = orderId;
    final lOther$orderId = other.orderId;
    if (l$orderId != lOther$orderId) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$cashPayment = cashPayment;
    final lOther$cashPayment = other.cashPayment;
    if (_$data.containsKey('cashPayment') !=
        other._$data.containsKey('cashPayment')) {
      return false;
    }
    if (l$cashPayment != lOther$cashPayment) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$orderId = orderId;
    final l$status = status;
    final l$cashPayment = cashPayment;
    return Object.hashAll([
      l$orderId,
      l$status,
      _$data.containsKey('cashPayment') ? l$cashPayment : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateOrderStatus<TRes> {
  factory CopyWith$Variables$Mutation$UpdateOrderStatus(
    Variables$Mutation$UpdateOrderStatus instance,
    TRes Function(Variables$Mutation$UpdateOrderStatus) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateOrderStatus;

  factory CopyWith$Variables$Mutation$UpdateOrderStatus.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateOrderStatus;

  TRes call({
    String? orderId,
    Enum$OrderStatus? status,
    double? cashPayment,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateOrderStatus<TRes>
    implements CopyWith$Variables$Mutation$UpdateOrderStatus<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateOrderStatus(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateOrderStatus _instance;

  final TRes Function(Variables$Mutation$UpdateOrderStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? orderId = _undefined,
    Object? status = _undefined,
    Object? cashPayment = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateOrderStatus._({
        ..._instance._$data,
        if (orderId != _undefined && orderId != null)
          'orderId': (orderId as String),
        if (status != _undefined && status != null)
          'status': (status as Enum$OrderStatus),
        if (cashPayment != _undefined) 'cashPayment': (cashPayment as double?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateOrderStatus<TRes>
    implements CopyWith$Variables$Mutation$UpdateOrderStatus<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateOrderStatus(this._res);

  TRes _res;

  call({
    String? orderId,
    Enum$OrderStatus? status,
    double? cashPayment,
  }) =>
      _res;
}

class Mutation$UpdateOrderStatus {
  Mutation$UpdateOrderStatus({required this.updateOneOrder});

  factory Mutation$UpdateOrderStatus.fromJson(Map<String, dynamic> json) {
    final l$updateOneOrder = json['updateOneOrder'];
    return Mutation$UpdateOrderStatus(
        updateOneOrder: Fragment$CurrentOrder.fromJson(
            (l$updateOneOrder as Map<String, dynamic>)));
  }

  final Fragment$CurrentOrder updateOneOrder;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateOneOrder = updateOneOrder;
    _resultData['updateOneOrder'] = l$updateOneOrder.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateOneOrder = updateOneOrder;
    return Object.hashAll([l$updateOneOrder]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateOrderStatus) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateOneOrder = updateOneOrder;
    final lOther$updateOneOrder = other.updateOneOrder;
    if (l$updateOneOrder != lOther$updateOneOrder) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateOrderStatus
    on Mutation$UpdateOrderStatus {
  CopyWith$Mutation$UpdateOrderStatus<Mutation$UpdateOrderStatus>
      get copyWith => CopyWith$Mutation$UpdateOrderStatus(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateOrderStatus<TRes> {
  factory CopyWith$Mutation$UpdateOrderStatus(
    Mutation$UpdateOrderStatus instance,
    TRes Function(Mutation$UpdateOrderStatus) then,
  ) = _CopyWithImpl$Mutation$UpdateOrderStatus;

  factory CopyWith$Mutation$UpdateOrderStatus.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateOrderStatus;

  TRes call({Fragment$CurrentOrder? updateOneOrder});
  CopyWith$Fragment$CurrentOrder<TRes> get updateOneOrder;
}

class _CopyWithImpl$Mutation$UpdateOrderStatus<TRes>
    implements CopyWith$Mutation$UpdateOrderStatus<TRes> {
  _CopyWithImpl$Mutation$UpdateOrderStatus(
    this._instance,
    this._then,
  );

  final Mutation$UpdateOrderStatus _instance;

  final TRes Function(Mutation$UpdateOrderStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? updateOneOrder = _undefined}) =>
      _then(Mutation$UpdateOrderStatus(
          updateOneOrder: updateOneOrder == _undefined || updateOneOrder == null
              ? _instance.updateOneOrder
              : (updateOneOrder as Fragment$CurrentOrder)));
  CopyWith$Fragment$CurrentOrder<TRes> get updateOneOrder {
    final local$updateOneOrder = _instance.updateOneOrder;
    return CopyWith$Fragment$CurrentOrder(
        local$updateOneOrder, (e) => call(updateOneOrder: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateOrderStatus<TRes>
    implements CopyWith$Mutation$UpdateOrderStatus<TRes> {
  _CopyWithStubImpl$Mutation$UpdateOrderStatus(this._res);

  TRes _res;

  call({Fragment$CurrentOrder? updateOneOrder}) => _res;
  CopyWith$Fragment$CurrentOrder<TRes> get updateOneOrder =>
      CopyWith$Fragment$CurrentOrder.stub(_res);
}

const documentNodeMutationUpdateOrderStatus = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateOrderStatus'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'status')),
        type: NamedTypeNode(
          name: NameNode(value: 'OrderStatus'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'cashPayment')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateOneOrder'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'orderId')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'update'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'status'),
                    value: VariableNode(name: NameNode(value: 'status')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'paidAmount'),
                    value: VariableNode(name: NameNode(value: 'cashPayment')),
                  ),
                ]),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'CurrentOrder'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  fragmentDefinitionCurrentOrder,
  fragmentDefinitionPoint,
]);
Mutation$UpdateOrderStatus _parserFn$Mutation$UpdateOrderStatus(
        Map<String, dynamic> data) =>
    Mutation$UpdateOrderStatus.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateOrderStatus = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateOrderStatus?,
);

class Options$Mutation$UpdateOrderStatus
    extends graphql.MutationOptions<Mutation$UpdateOrderStatus> {
  Options$Mutation$UpdateOrderStatus({
    String? operationName,
    required Variables$Mutation$UpdateOrderStatus variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateOrderStatus? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateOrderStatus? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateOrderStatus>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateOrderStatus(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateOrderStatus,
          parserFn: _parserFn$Mutation$UpdateOrderStatus,
        );

  final OnMutationCompleted$Mutation$UpdateOrderStatus? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateOrderStatus
    extends graphql.WatchQueryOptions<Mutation$UpdateOrderStatus> {
  WatchOptions$Mutation$UpdateOrderStatus({
    String? operationName,
    required Variables$Mutation$UpdateOrderStatus variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateOrderStatus? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationUpdateOrderStatus,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateOrderStatus,
        );
}

extension ClientExtension$Mutation$UpdateOrderStatus on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateOrderStatus>>
      mutate$UpdateOrderStatus(
              Options$Mutation$UpdateOrderStatus options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateOrderStatus>
      watchMutation$UpdateOrderStatus(
              WatchOptions$Mutation$UpdateOrderStatus options) =>
          this.watchMutation(options);
}

class Mutation$UpdateOrderStatus$HookResult {
  Mutation$UpdateOrderStatus$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateOrderStatus runMutation;

  final graphql.QueryResult<Mutation$UpdateOrderStatus> result;
}

Mutation$UpdateOrderStatus$HookResult useMutation$UpdateOrderStatus(
    [WidgetOptions$Mutation$UpdateOrderStatus? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateOrderStatus());
  return Mutation$UpdateOrderStatus$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateOrderStatus>
    useWatchMutation$UpdateOrderStatus(
            WatchOptions$Mutation$UpdateOrderStatus options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateOrderStatus
    extends graphql.MutationOptions<Mutation$UpdateOrderStatus> {
  WidgetOptions$Mutation$UpdateOrderStatus({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateOrderStatus? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateOrderStatus? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateOrderStatus>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateOrderStatus(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateOrderStatus,
          parserFn: _parserFn$Mutation$UpdateOrderStatus,
        );

  final OnMutationCompleted$Mutation$UpdateOrderStatus? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateOrderStatus
    = graphql.MultiSourceResult<Mutation$UpdateOrderStatus> Function(
  Variables$Mutation$UpdateOrderStatus, {
  Object? optimisticResult,
  Mutation$UpdateOrderStatus? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateOrderStatus = widgets.Widget Function(
  RunMutation$Mutation$UpdateOrderStatus,
  graphql.QueryResult<Mutation$UpdateOrderStatus>?,
);

class Mutation$UpdateOrderStatus$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateOrderStatus> {
  Mutation$UpdateOrderStatus$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateOrderStatus? options,
    required Builder$Mutation$UpdateOrderStatus builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateOrderStatus(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Variables$Mutation$UpdateDriverStatus {
  factory Variables$Mutation$UpdateDriverStatus({
    required Enum$DriverStatus status,
    String? fcmId,
  }) =>
      Variables$Mutation$UpdateDriverStatus._({
        r'status': status,
        if (fcmId != null) r'fcmId': fcmId,
      });

  Variables$Mutation$UpdateDriverStatus._(this._$data);

  factory Variables$Mutation$UpdateDriverStatus.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$status = data['status'];
    result$data['status'] = fromJson$Enum$DriverStatus((l$status as String));
    if (data.containsKey('fcmId')) {
      final l$fcmId = data['fcmId'];
      result$data['fcmId'] = (l$fcmId as String?);
    }
    return Variables$Mutation$UpdateDriverStatus._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$DriverStatus get status => (_$data['status'] as Enum$DriverStatus);
  String? get fcmId => (_$data['fcmId'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$status = status;
    result$data['status'] = toJson$Enum$DriverStatus(l$status);
    if (_$data.containsKey('fcmId')) {
      final l$fcmId = fcmId;
      result$data['fcmId'] = l$fcmId;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateDriverStatus<
          Variables$Mutation$UpdateDriverStatus>
      get copyWith => CopyWith$Variables$Mutation$UpdateDriverStatus(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateDriverStatus) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$fcmId = fcmId;
    final lOther$fcmId = other.fcmId;
    if (_$data.containsKey('fcmId') != other._$data.containsKey('fcmId')) {
      return false;
    }
    if (l$fcmId != lOther$fcmId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$status = status;
    final l$fcmId = fcmId;
    return Object.hashAll([
      l$status,
      _$data.containsKey('fcmId') ? l$fcmId : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateDriverStatus<TRes> {
  factory CopyWith$Variables$Mutation$UpdateDriverStatus(
    Variables$Mutation$UpdateDriverStatus instance,
    TRes Function(Variables$Mutation$UpdateDriverStatus) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateDriverStatus;

  factory CopyWith$Variables$Mutation$UpdateDriverStatus.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateDriverStatus;

  TRes call({
    Enum$DriverStatus? status,
    String? fcmId,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateDriverStatus<TRes>
    implements CopyWith$Variables$Mutation$UpdateDriverStatus<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateDriverStatus(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateDriverStatus _instance;

  final TRes Function(Variables$Mutation$UpdateDriverStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? status = _undefined,
    Object? fcmId = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateDriverStatus._({
        ..._instance._$data,
        if (status != _undefined && status != null)
          'status': (status as Enum$DriverStatus),
        if (fcmId != _undefined) 'fcmId': (fcmId as String?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateDriverStatus<TRes>
    implements CopyWith$Variables$Mutation$UpdateDriverStatus<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateDriverStatus(this._res);

  TRes _res;

  call({
    Enum$DriverStatus? status,
    String? fcmId,
  }) =>
      _res;
}

class Mutation$UpdateDriverStatus {
  Mutation$UpdateDriverStatus({required this.updateOneDriver});

  factory Mutation$UpdateDriverStatus.fromJson(Map<String, dynamic> json) {
    final l$updateOneDriver = json['updateOneDriver'];
    return Mutation$UpdateDriverStatus(
        updateOneDriver: Fragment$BasicProfile.fromJson(
            (l$updateOneDriver as Map<String, dynamic>)));
  }

  final Fragment$BasicProfile updateOneDriver;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateOneDriver = updateOneDriver;
    _resultData['updateOneDriver'] = l$updateOneDriver.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateOneDriver = updateOneDriver;
    return Object.hashAll([l$updateOneDriver]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateDriverStatus) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateOneDriver = updateOneDriver;
    final lOther$updateOneDriver = other.updateOneDriver;
    if (l$updateOneDriver != lOther$updateOneDriver) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateDriverStatus
    on Mutation$UpdateDriverStatus {
  CopyWith$Mutation$UpdateDriverStatus<Mutation$UpdateDriverStatus>
      get copyWith => CopyWith$Mutation$UpdateDriverStatus(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverStatus<TRes> {
  factory CopyWith$Mutation$UpdateDriverStatus(
    Mutation$UpdateDriverStatus instance,
    TRes Function(Mutation$UpdateDriverStatus) then,
  ) = _CopyWithImpl$Mutation$UpdateDriverStatus;

  factory CopyWith$Mutation$UpdateDriverStatus.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverStatus;

  TRes call({Fragment$BasicProfile? updateOneDriver});
  CopyWith$Fragment$BasicProfile<TRes> get updateOneDriver;
}

class _CopyWithImpl$Mutation$UpdateDriverStatus<TRes>
    implements CopyWith$Mutation$UpdateDriverStatus<TRes> {
  _CopyWithImpl$Mutation$UpdateDriverStatus(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverStatus _instance;

  final TRes Function(Mutation$UpdateDriverStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? updateOneDriver = _undefined}) =>
      _then(Mutation$UpdateDriverStatus(
          updateOneDriver:
              updateOneDriver == _undefined || updateOneDriver == null
                  ? _instance.updateOneDriver
                  : (updateOneDriver as Fragment$BasicProfile)));
  CopyWith$Fragment$BasicProfile<TRes> get updateOneDriver {
    final local$updateOneDriver = _instance.updateOneDriver;
    return CopyWith$Fragment$BasicProfile(
        local$updateOneDriver, (e) => call(updateOneDriver: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateDriverStatus<TRes>
    implements CopyWith$Mutation$UpdateDriverStatus<TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverStatus(this._res);

  TRes _res;

  call({Fragment$BasicProfile? updateOneDriver}) => _res;
  CopyWith$Fragment$BasicProfile<TRes> get updateOneDriver =>
      CopyWith$Fragment$BasicProfile.stub(_res);
}

const documentNodeMutationUpdateDriverStatus = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateDriverStatus'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'status')),
        type: NamedTypeNode(
          name: NameNode(value: 'DriverStatus'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'fcmId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateOneDriver'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: StringValueNode(
                  value: '1',
                  isBlock: false,
                ),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'update'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'status'),
                    value: VariableNode(name: NameNode(value: 'status')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'notificationPlayerId'),
                    value: VariableNode(name: NameNode(value: 'fcmId')),
                  ),
                ]),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'BasicProfile'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  fragmentDefinitionBasicProfile,
  fragmentDefinitionCurrentOrder,
  fragmentDefinitionPoint,
]);
Mutation$UpdateDriverStatus _parserFn$Mutation$UpdateDriverStatus(
        Map<String, dynamic> data) =>
    Mutation$UpdateDriverStatus.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateDriverStatus = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateDriverStatus?,
);

class Options$Mutation$UpdateDriverStatus
    extends graphql.MutationOptions<Mutation$UpdateDriverStatus> {
  Options$Mutation$UpdateDriverStatus({
    String? operationName,
    required Variables$Mutation$UpdateDriverStatus variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverStatus? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateDriverStatus? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateDriverStatus>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateDriverStatus(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateDriverStatus,
          parserFn: _parserFn$Mutation$UpdateDriverStatus,
        );

  final OnMutationCompleted$Mutation$UpdateDriverStatus? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateDriverStatus
    extends graphql.WatchQueryOptions<Mutation$UpdateDriverStatus> {
  WatchOptions$Mutation$UpdateDriverStatus({
    String? operationName,
    required Variables$Mutation$UpdateDriverStatus variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverStatus? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationUpdateDriverStatus,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateDriverStatus,
        );
}

extension ClientExtension$Mutation$UpdateDriverStatus on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateDriverStatus>>
      mutate$UpdateDriverStatus(
              Options$Mutation$UpdateDriverStatus options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateDriverStatus>
      watchMutation$UpdateDriverStatus(
              WatchOptions$Mutation$UpdateDriverStatus options) =>
          this.watchMutation(options);
}

class Mutation$UpdateDriverStatus$HookResult {
  Mutation$UpdateDriverStatus$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateDriverStatus runMutation;

  final graphql.QueryResult<Mutation$UpdateDriverStatus> result;
}

Mutation$UpdateDriverStatus$HookResult useMutation$UpdateDriverStatus(
    [WidgetOptions$Mutation$UpdateDriverStatus? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateDriverStatus());
  return Mutation$UpdateDriverStatus$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateDriverStatus>
    useWatchMutation$UpdateDriverStatus(
            WatchOptions$Mutation$UpdateDriverStatus options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateDriverStatus
    extends graphql.MutationOptions<Mutation$UpdateDriverStatus> {
  WidgetOptions$Mutation$UpdateDriverStatus({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverStatus? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateDriverStatus? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateDriverStatus>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateDriverStatus(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateDriverStatus,
          parserFn: _parserFn$Mutation$UpdateDriverStatus,
        );

  final OnMutationCompleted$Mutation$UpdateDriverStatus? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateDriverStatus
    = graphql.MultiSourceResult<Mutation$UpdateDriverStatus> Function(
  Variables$Mutation$UpdateDriverStatus, {
  Object? optimisticResult,
  Mutation$UpdateDriverStatus? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateDriverStatus = widgets.Widget Function(
  RunMutation$Mutation$UpdateDriverStatus,
  graphql.QueryResult<Mutation$UpdateDriverStatus>?,
);

class Mutation$UpdateDriverStatus$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateDriverStatus> {
  Mutation$UpdateDriverStatus$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateDriverStatus? options,
    required Builder$Mutation$UpdateDriverStatus builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateDriverStatus(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Variables$Mutation$UpdateDriverFCMId {
  factory Variables$Mutation$UpdateDriverFCMId({String? fcmId}) =>
      Variables$Mutation$UpdateDriverFCMId._({
        if (fcmId != null) r'fcmId': fcmId,
      });

  Variables$Mutation$UpdateDriverFCMId._(this._$data);

  factory Variables$Mutation$UpdateDriverFCMId.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('fcmId')) {
      final l$fcmId = data['fcmId'];
      result$data['fcmId'] = (l$fcmId as String?);
    }
    return Variables$Mutation$UpdateDriverFCMId._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get fcmId => (_$data['fcmId'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('fcmId')) {
      final l$fcmId = fcmId;
      result$data['fcmId'] = l$fcmId;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateDriverFCMId<
          Variables$Mutation$UpdateDriverFCMId>
      get copyWith => CopyWith$Variables$Mutation$UpdateDriverFCMId(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateDriverFCMId) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$fcmId = fcmId;
    final lOther$fcmId = other.fcmId;
    if (_$data.containsKey('fcmId') != other._$data.containsKey('fcmId')) {
      return false;
    }
    if (l$fcmId != lOther$fcmId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$fcmId = fcmId;
    return Object.hashAll([_$data.containsKey('fcmId') ? l$fcmId : const {}]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateDriverFCMId<TRes> {
  factory CopyWith$Variables$Mutation$UpdateDriverFCMId(
    Variables$Mutation$UpdateDriverFCMId instance,
    TRes Function(Variables$Mutation$UpdateDriverFCMId) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateDriverFCMId;

  factory CopyWith$Variables$Mutation$UpdateDriverFCMId.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateDriverFCMId;

  TRes call({String? fcmId});
}

class _CopyWithImpl$Variables$Mutation$UpdateDriverFCMId<TRes>
    implements CopyWith$Variables$Mutation$UpdateDriverFCMId<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateDriverFCMId(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateDriverFCMId _instance;

  final TRes Function(Variables$Mutation$UpdateDriverFCMId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? fcmId = _undefined}) =>
      _then(Variables$Mutation$UpdateDriverFCMId._({
        ..._instance._$data,
        if (fcmId != _undefined) 'fcmId': (fcmId as String?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateDriverFCMId<TRes>
    implements CopyWith$Variables$Mutation$UpdateDriverFCMId<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateDriverFCMId(this._res);

  TRes _res;

  call({String? fcmId}) => _res;
}

class Mutation$UpdateDriverFCMId {
  Mutation$UpdateDriverFCMId({required this.updateOneDriver});

  factory Mutation$UpdateDriverFCMId.fromJson(Map<String, dynamic> json) {
    final l$updateOneDriver = json['updateOneDriver'];
    return Mutation$UpdateDriverFCMId(
        updateOneDriver: Mutation$UpdateDriverFCMId$updateOneDriver.fromJson(
            (l$updateOneDriver as Map<String, dynamic>)));
  }

  final Mutation$UpdateDriverFCMId$updateOneDriver updateOneDriver;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateOneDriver = updateOneDriver;
    _resultData['updateOneDriver'] = l$updateOneDriver.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateOneDriver = updateOneDriver;
    return Object.hashAll([l$updateOneDriver]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateDriverFCMId) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateOneDriver = updateOneDriver;
    final lOther$updateOneDriver = other.updateOneDriver;
    if (l$updateOneDriver != lOther$updateOneDriver) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateDriverFCMId
    on Mutation$UpdateDriverFCMId {
  CopyWith$Mutation$UpdateDriverFCMId<Mutation$UpdateDriverFCMId>
      get copyWith => CopyWith$Mutation$UpdateDriverFCMId(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverFCMId<TRes> {
  factory CopyWith$Mutation$UpdateDriverFCMId(
    Mutation$UpdateDriverFCMId instance,
    TRes Function(Mutation$UpdateDriverFCMId) then,
  ) = _CopyWithImpl$Mutation$UpdateDriverFCMId;

  factory CopyWith$Mutation$UpdateDriverFCMId.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverFCMId;

  TRes call({Mutation$UpdateDriverFCMId$updateOneDriver? updateOneDriver});
  CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver<TRes> get updateOneDriver;
}

class _CopyWithImpl$Mutation$UpdateDriverFCMId<TRes>
    implements CopyWith$Mutation$UpdateDriverFCMId<TRes> {
  _CopyWithImpl$Mutation$UpdateDriverFCMId(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverFCMId _instance;

  final TRes Function(Mutation$UpdateDriverFCMId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? updateOneDriver = _undefined}) =>
      _then(Mutation$UpdateDriverFCMId(
          updateOneDriver:
              updateOneDriver == _undefined || updateOneDriver == null
                  ? _instance.updateOneDriver
                  : (updateOneDriver
                      as Mutation$UpdateDriverFCMId$updateOneDriver)));
  CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver<TRes>
      get updateOneDriver {
    final local$updateOneDriver = _instance.updateOneDriver;
    return CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver(
        local$updateOneDriver, (e) => call(updateOneDriver: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateDriverFCMId<TRes>
    implements CopyWith$Mutation$UpdateDriverFCMId<TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverFCMId(this._res);

  TRes _res;

  call({Mutation$UpdateDriverFCMId$updateOneDriver? updateOneDriver}) => _res;
  CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver<TRes>
      get updateOneDriver =>
          CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver.stub(_res);
}

const documentNodeMutationUpdateDriverFCMId = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateDriverFCMId'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'fcmId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateOneDriver'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: StringValueNode(
                  value: '1',
                  isBlock: false,
                ),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'update'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'notificationPlayerId'),
                    value: VariableNode(name: NameNode(value: 'fcmId')),
                  )
                ]),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
        ]),
      )
    ]),
  ),
]);
Mutation$UpdateDriverFCMId _parserFn$Mutation$UpdateDriverFCMId(
        Map<String, dynamic> data) =>
    Mutation$UpdateDriverFCMId.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateDriverFCMId = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateDriverFCMId?,
);

class Options$Mutation$UpdateDriverFCMId
    extends graphql.MutationOptions<Mutation$UpdateDriverFCMId> {
  Options$Mutation$UpdateDriverFCMId({
    String? operationName,
    Variables$Mutation$UpdateDriverFCMId? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverFCMId? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateDriverFCMId? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateDriverFCMId>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateDriverFCMId(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateDriverFCMId,
          parserFn: _parserFn$Mutation$UpdateDriverFCMId,
        );

  final OnMutationCompleted$Mutation$UpdateDriverFCMId? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateDriverFCMId
    extends graphql.WatchQueryOptions<Mutation$UpdateDriverFCMId> {
  WatchOptions$Mutation$UpdateDriverFCMId({
    String? operationName,
    Variables$Mutation$UpdateDriverFCMId? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverFCMId? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationUpdateDriverFCMId,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateDriverFCMId,
        );
}

extension ClientExtension$Mutation$UpdateDriverFCMId on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateDriverFCMId>>
      mutate$UpdateDriverFCMId(
              [Options$Mutation$UpdateDriverFCMId? options]) async =>
          await this.mutate(options ?? Options$Mutation$UpdateDriverFCMId());
  graphql.ObservableQuery<
      Mutation$UpdateDriverFCMId> watchMutation$UpdateDriverFCMId(
          [WatchOptions$Mutation$UpdateDriverFCMId? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$UpdateDriverFCMId());
}

class Mutation$UpdateDriverFCMId$HookResult {
  Mutation$UpdateDriverFCMId$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateDriverFCMId runMutation;

  final graphql.QueryResult<Mutation$UpdateDriverFCMId> result;
}

Mutation$UpdateDriverFCMId$HookResult useMutation$UpdateDriverFCMId(
    [WidgetOptions$Mutation$UpdateDriverFCMId? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateDriverFCMId());
  return Mutation$UpdateDriverFCMId$HookResult(
    ({variables, optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables?.toJson() ?? const {},
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateDriverFCMId>
    useWatchMutation$UpdateDriverFCMId(
            [WatchOptions$Mutation$UpdateDriverFCMId? options]) =>
        graphql_flutter.useWatchMutation(
            options ?? WatchOptions$Mutation$UpdateDriverFCMId());

class WidgetOptions$Mutation$UpdateDriverFCMId
    extends graphql.MutationOptions<Mutation$UpdateDriverFCMId> {
  WidgetOptions$Mutation$UpdateDriverFCMId({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverFCMId? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateDriverFCMId? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateDriverFCMId>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateDriverFCMId(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateDriverFCMId,
          parserFn: _parserFn$Mutation$UpdateDriverFCMId,
        );

  final OnMutationCompleted$Mutation$UpdateDriverFCMId? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateDriverFCMId
    = graphql.MultiSourceResult<Mutation$UpdateDriverFCMId> Function({
  Variables$Mutation$UpdateDriverFCMId? variables,
  Object? optimisticResult,
  Mutation$UpdateDriverFCMId? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateDriverFCMId = widgets.Widget Function(
  RunMutation$Mutation$UpdateDriverFCMId,
  graphql.QueryResult<Mutation$UpdateDriverFCMId>?,
);

class Mutation$UpdateDriverFCMId$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateDriverFCMId> {
  Mutation$UpdateDriverFCMId$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateDriverFCMId? options,
    required Builder$Mutation$UpdateDriverFCMId builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateDriverFCMId(),
          builder: (
            run,
            result,
          ) =>
              builder(
            ({
              variables,
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables?.toJson() ?? const {},
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$UpdateDriverFCMId$updateOneDriver {
  Mutation$UpdateDriverFCMId$updateOneDriver({required this.id});

  factory Mutation$UpdateDriverFCMId$updateOneDriver.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    return Mutation$UpdateDriverFCMId$updateOneDriver(id: (l$id as String));
  }

  final String id;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateDriverFCMId$updateOneDriver) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateDriverFCMId$updateOneDriver
    on Mutation$UpdateDriverFCMId$updateOneDriver {
  CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver<
          Mutation$UpdateDriverFCMId$updateOneDriver>
      get copyWith => CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver<TRes> {
  factory CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver(
    Mutation$UpdateDriverFCMId$updateOneDriver instance,
    TRes Function(Mutation$UpdateDriverFCMId$updateOneDriver) then,
  ) = _CopyWithImpl$Mutation$UpdateDriverFCMId$updateOneDriver;

  factory CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverFCMId$updateOneDriver;

  TRes call({String? id});
}

class _CopyWithImpl$Mutation$UpdateDriverFCMId$updateOneDriver<TRes>
    implements CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver<TRes> {
  _CopyWithImpl$Mutation$UpdateDriverFCMId$updateOneDriver(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverFCMId$updateOneDriver _instance;

  final TRes Function(Mutation$UpdateDriverFCMId$updateOneDriver) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Mutation$UpdateDriverFCMId$updateOneDriver(
          id: id == _undefined || id == null ? _instance.id : (id as String)));
}

class _CopyWithStubImpl$Mutation$UpdateDriverFCMId$updateOneDriver<TRes>
    implements CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver<TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverFCMId$updateOneDriver(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Variables$Mutation$UpdateDriverSearchDistance {
  factory Variables$Mutation$UpdateDriverSearchDistance(
          {required int distance}) =>
      Variables$Mutation$UpdateDriverSearchDistance._({
        r'distance': distance,
      });

  Variables$Mutation$UpdateDriverSearchDistance._(this._$data);

  factory Variables$Mutation$UpdateDriverSearchDistance.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$distance = data['distance'];
    result$data['distance'] = (l$distance as int);
    return Variables$Mutation$UpdateDriverSearchDistance._(result$data);
  }

  Map<String, dynamic> _$data;

  int get distance => (_$data['distance'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$distance = distance;
    result$data['distance'] = l$distance;
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateDriverSearchDistance<
          Variables$Mutation$UpdateDriverSearchDistance>
      get copyWith => CopyWith$Variables$Mutation$UpdateDriverSearchDistance(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateDriverSearchDistance) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$distance = distance;
    final lOther$distance = other.distance;
    if (l$distance != lOther$distance) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$distance = distance;
    return Object.hashAll([l$distance]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateDriverSearchDistance<TRes> {
  factory CopyWith$Variables$Mutation$UpdateDriverSearchDistance(
    Variables$Mutation$UpdateDriverSearchDistance instance,
    TRes Function(Variables$Mutation$UpdateDriverSearchDistance) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateDriverSearchDistance;

  factory CopyWith$Variables$Mutation$UpdateDriverSearchDistance.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateDriverSearchDistance;

  TRes call({int? distance});
}

class _CopyWithImpl$Variables$Mutation$UpdateDriverSearchDistance<TRes>
    implements CopyWith$Variables$Mutation$UpdateDriverSearchDistance<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateDriverSearchDistance(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateDriverSearchDistance _instance;

  final TRes Function(Variables$Mutation$UpdateDriverSearchDistance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? distance = _undefined}) =>
      _then(Variables$Mutation$UpdateDriverSearchDistance._({
        ..._instance._$data,
        if (distance != _undefined && distance != null)
          'distance': (distance as int),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateDriverSearchDistance<TRes>
    implements CopyWith$Variables$Mutation$UpdateDriverSearchDistance<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateDriverSearchDistance(this._res);

  TRes _res;

  call({int? distance}) => _res;
}

class Mutation$UpdateDriverSearchDistance {
  Mutation$UpdateDriverSearchDistance({required this.updateOneDriver});

  factory Mutation$UpdateDriverSearchDistance.fromJson(
      Map<String, dynamic> json) {
    final l$updateOneDriver = json['updateOneDriver'];
    return Mutation$UpdateDriverSearchDistance(
        updateOneDriver:
            Mutation$UpdateDriverSearchDistance$updateOneDriver.fromJson(
                (l$updateOneDriver as Map<String, dynamic>)));
  }

  final Mutation$UpdateDriverSearchDistance$updateOneDriver updateOneDriver;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateOneDriver = updateOneDriver;
    _resultData['updateOneDriver'] = l$updateOneDriver.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateOneDriver = updateOneDriver;
    return Object.hashAll([l$updateOneDriver]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateDriverSearchDistance) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateOneDriver = updateOneDriver;
    final lOther$updateOneDriver = other.updateOneDriver;
    if (l$updateOneDriver != lOther$updateOneDriver) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateDriverSearchDistance
    on Mutation$UpdateDriverSearchDistance {
  CopyWith$Mutation$UpdateDriverSearchDistance<
          Mutation$UpdateDriverSearchDistance>
      get copyWith => CopyWith$Mutation$UpdateDriverSearchDistance(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverSearchDistance<TRes> {
  factory CopyWith$Mutation$UpdateDriverSearchDistance(
    Mutation$UpdateDriverSearchDistance instance,
    TRes Function(Mutation$UpdateDriverSearchDistance) then,
  ) = _CopyWithImpl$Mutation$UpdateDriverSearchDistance;

  factory CopyWith$Mutation$UpdateDriverSearchDistance.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverSearchDistance;

  TRes call(
      {Mutation$UpdateDriverSearchDistance$updateOneDriver? updateOneDriver});
  CopyWith$Mutation$UpdateDriverSearchDistance$updateOneDriver<TRes>
      get updateOneDriver;
}

class _CopyWithImpl$Mutation$UpdateDriverSearchDistance<TRes>
    implements CopyWith$Mutation$UpdateDriverSearchDistance<TRes> {
  _CopyWithImpl$Mutation$UpdateDriverSearchDistance(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverSearchDistance _instance;

  final TRes Function(Mutation$UpdateDriverSearchDistance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? updateOneDriver = _undefined}) =>
      _then(Mutation$UpdateDriverSearchDistance(
          updateOneDriver:
              updateOneDriver == _undefined || updateOneDriver == null
                  ? _instance.updateOneDriver
                  : (updateOneDriver
                      as Mutation$UpdateDriverSearchDistance$updateOneDriver)));
  CopyWith$Mutation$UpdateDriverSearchDistance$updateOneDriver<TRes>
      get updateOneDriver {
    final local$updateOneDriver = _instance.updateOneDriver;
    return CopyWith$Mutation$UpdateDriverSearchDistance$updateOneDriver(
        local$updateOneDriver, (e) => call(updateOneDriver: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateDriverSearchDistance<TRes>
    implements CopyWith$Mutation$UpdateDriverSearchDistance<TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverSearchDistance(this._res);

  TRes _res;

  call(
          {Mutation$UpdateDriverSearchDistance$updateOneDriver?
              updateOneDriver}) =>
      _res;
  CopyWith$Mutation$UpdateDriverSearchDistance$updateOneDriver<TRes>
      get updateOneDriver =>
          CopyWith$Mutation$UpdateDriverSearchDistance$updateOneDriver.stub(
              _res);
}

const documentNodeMutationUpdateDriverSearchDistance =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateDriverSearchDistance'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'distance')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateOneDriver'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: StringValueNode(
                  value: '1',
                  isBlock: false,
                ),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'update'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'searchDistance'),
                    value: VariableNode(name: NameNode(value: 'distance')),
                  )
                ]),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
        ]),
      )
    ]),
  ),
]);
Mutation$UpdateDriverSearchDistance
    _parserFn$Mutation$UpdateDriverSearchDistance(Map<String, dynamic> data) =>
        Mutation$UpdateDriverSearchDistance.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateDriverSearchDistance = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateDriverSearchDistance?,
);

class Options$Mutation$UpdateDriverSearchDistance
    extends graphql.MutationOptions<Mutation$UpdateDriverSearchDistance> {
  Options$Mutation$UpdateDriverSearchDistance({
    String? operationName,
    required Variables$Mutation$UpdateDriverSearchDistance variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverSearchDistance? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateDriverSearchDistance? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateDriverSearchDistance>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateDriverSearchDistance(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateDriverSearchDistance,
          parserFn: _parserFn$Mutation$UpdateDriverSearchDistance,
        );

  final OnMutationCompleted$Mutation$UpdateDriverSearchDistance?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateDriverSearchDistance
    extends graphql.WatchQueryOptions<Mutation$UpdateDriverSearchDistance> {
  WatchOptions$Mutation$UpdateDriverSearchDistance({
    String? operationName,
    required Variables$Mutation$UpdateDriverSearchDistance variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverSearchDistance? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationUpdateDriverSearchDistance,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateDriverSearchDistance,
        );
}

extension ClientExtension$Mutation$UpdateDriverSearchDistance
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateDriverSearchDistance>>
      mutate$UpdateDriverSearchDistance(
              Options$Mutation$UpdateDriverSearchDistance options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateDriverSearchDistance>
      watchMutation$UpdateDriverSearchDistance(
              WatchOptions$Mutation$UpdateDriverSearchDistance options) =>
          this.watchMutation(options);
}

class Mutation$UpdateDriverSearchDistance$HookResult {
  Mutation$UpdateDriverSearchDistance$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateDriverSearchDistance runMutation;

  final graphql.QueryResult<Mutation$UpdateDriverSearchDistance> result;
}

Mutation$UpdateDriverSearchDistance$HookResult
    useMutation$UpdateDriverSearchDistance(
        [WidgetOptions$Mutation$UpdateDriverSearchDistance? options]) {
  final result = graphql_flutter.useMutation(
      options ?? WidgetOptions$Mutation$UpdateDriverSearchDistance());
  return Mutation$UpdateDriverSearchDistance$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateDriverSearchDistance>
    useWatchMutation$UpdateDriverSearchDistance(
            WatchOptions$Mutation$UpdateDriverSearchDistance options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateDriverSearchDistance
    extends graphql.MutationOptions<Mutation$UpdateDriverSearchDistance> {
  WidgetOptions$Mutation$UpdateDriverSearchDistance({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverSearchDistance? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateDriverSearchDistance? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateDriverSearchDistance>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateDriverSearchDistance(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateDriverSearchDistance,
          parserFn: _parserFn$Mutation$UpdateDriverSearchDistance,
        );

  final OnMutationCompleted$Mutation$UpdateDriverSearchDistance?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateDriverSearchDistance
    = graphql.MultiSourceResult<Mutation$UpdateDriverSearchDistance> Function(
  Variables$Mutation$UpdateDriverSearchDistance, {
  Object? optimisticResult,
  Mutation$UpdateDriverSearchDistance? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateDriverSearchDistance = widgets.Widget Function(
  RunMutation$Mutation$UpdateDriverSearchDistance,
  graphql.QueryResult<Mutation$UpdateDriverSearchDistance>?,
);

class Mutation$UpdateDriverSearchDistance$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateDriverSearchDistance> {
  Mutation$UpdateDriverSearchDistance$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateDriverSearchDistance? options,
    required Builder$Mutation$UpdateDriverSearchDistance builder,
  }) : super(
          key: key,
          options:
              options ?? WidgetOptions$Mutation$UpdateDriverSearchDistance(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$UpdateDriverSearchDistance$updateOneDriver {
  Mutation$UpdateDriverSearchDistance$updateOneDriver({required this.id});

  factory Mutation$UpdateDriverSearchDistance$updateOneDriver.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    return Mutation$UpdateDriverSearchDistance$updateOneDriver(
        id: (l$id as String));
  }

  final String id;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateDriverSearchDistance$updateOneDriver) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateDriverSearchDistance$updateOneDriver
    on Mutation$UpdateDriverSearchDistance$updateOneDriver {
  CopyWith$Mutation$UpdateDriverSearchDistance$updateOneDriver<
          Mutation$UpdateDriverSearchDistance$updateOneDriver>
      get copyWith =>
          CopyWith$Mutation$UpdateDriverSearchDistance$updateOneDriver(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverSearchDistance$updateOneDriver<
    TRes> {
  factory CopyWith$Mutation$UpdateDriverSearchDistance$updateOneDriver(
    Mutation$UpdateDriverSearchDistance$updateOneDriver instance,
    TRes Function(Mutation$UpdateDriverSearchDistance$updateOneDriver) then,
  ) = _CopyWithImpl$Mutation$UpdateDriverSearchDistance$updateOneDriver;

  factory CopyWith$Mutation$UpdateDriverSearchDistance$updateOneDriver.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverSearchDistance$updateOneDriver;

  TRes call({String? id});
}

class _CopyWithImpl$Mutation$UpdateDriverSearchDistance$updateOneDriver<TRes>
    implements
        CopyWith$Mutation$UpdateDriverSearchDistance$updateOneDriver<TRes> {
  _CopyWithImpl$Mutation$UpdateDriverSearchDistance$updateOneDriver(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverSearchDistance$updateOneDriver _instance;

  final TRes Function(Mutation$UpdateDriverSearchDistance$updateOneDriver)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Mutation$UpdateDriverSearchDistance$updateOneDriver(
          id: id == _undefined || id == null ? _instance.id : (id as String)));
}

class _CopyWithStubImpl$Mutation$UpdateDriverSearchDistance$updateOneDriver<
        TRes>
    implements
        CopyWith$Mutation$UpdateDriverSearchDistance$updateOneDriver<TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverSearchDistance$updateOneDriver(
      this._res);

  TRes _res;

  call({String? id}) => _res;
}
