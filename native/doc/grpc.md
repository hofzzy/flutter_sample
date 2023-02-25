# gRPC

## proto ファイルから Dart コードを生成する

```bash
$ protoc --proto_path=protos --dart_out=grpc:lib/proto_generated **/*.proto
```

<details>
<summary>protoc がインストールされていない場合</summary>

```bash
# Protocol buffer のコンパイラをインストール
$ brew install protobuf
# Dart ファイルを生成するためのプラグインをインストール
$ dart pub global activate protoc_plugin
$ export PATH="$PATH:$HOME/.pub-cache/bin"
```

refs: https://grpc.io/docs/languages/dart/quickstart/

</details>
