

Regnerate rkt protobuf api:
~/protoc -I api/v1alpha api/v1alpha/api.proto --ruby_out=plugins=grpc:api/v1alpha --plugin=protoc-gen-grpc=`which grpc_ruby_plugin` --grpc_out=api/v1alpha
