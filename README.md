# RktMan
:rocket: *It's all the science I don't understand*

[![Build Status](https://travis-ci.org/kallisti5/rktman.svg?branch=master)](https://travis-ci.org/kallisti5/rktman)

## Introduction
Control all your rkt containers via a friendly Ruby API.

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
