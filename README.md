# RKTMan
:rocket: *It's all the science I don't understand*

## Introduction
Control all your RKT containers via a friendly Ruby API.

## Dependencies
  * gem install google-protobuf --pre
  * gem install grpc

## Maintenance

### Regnerate rkt protobuf API
Google's protocol buffer can be complex, here is how to regenerate the API from the .proto files.
```
protoc -I api/v1alpha api/v1alpha/api.proto \
    --ruby_out=plugins=grpc:api/v1alpha \
    --plugin=protoc-gen-grpc=`which grpc_ruby_plugin` --grpc_out=api/v1alpha
```
