# to be executed on start
docker exec -it cli peer chaincode install -n mycc -p github.com/sample-chaincode -v v1
docker exec -it cli peer chaincode instantiate -o orderer.example.com:7050 -C mychannel -n mycc github.com/sample-chaincode -v v1 -c '{"Args": ["a", "100"]}'