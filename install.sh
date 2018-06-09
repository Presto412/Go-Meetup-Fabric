# to be executed on start
docker exec -it cli peer chaincode install -n mycc -p github.com/sacc -v v1
docker exec -it cli peer chaincode instantiate -o orderer.example.com:7050 -C mychannel -n mycc github.com/sacc -v v1 -c '{"Args": ["a", "100"]}'