module github.com/keep-network/keep-core

go 1.12

replace github.com/urfave/cli => github.com/keep-network/cli v1.20.0

require (
	github.com/BurntSushi/toml v0.3.1
	github.com/btcsuite/btcd v0.20.1-beta
	github.com/ethereum/go-ethereum v1.10.10
	github.com/gogo/protobuf v1.3.1
	github.com/google/gofuzz v1.1.1-0.20200604201612-c04b05f3adfa
	github.com/ipfs/go-datastore v0.1.1
	github.com/ipfs/go-log v0.0.1
	github.com/keep-network/go-libp2p-bootstrap v0.0.0-20200423153828-ed815bc50aec
	github.com/keep-network/keep-common v1.1.1-0.20200703125023-d9872a19ebd1
	github.com/libp2p/go-addr-util v0.0.1
	github.com/libp2p/go-libp2p v0.4.1
	github.com/libp2p/go-libp2p-connmgr v0.1.0
	github.com/libp2p/go-libp2p-core v0.3.0
	github.com/libp2p/go-libp2p-kad-dht v0.3.0
	github.com/libp2p/go-libp2p-peerstore v0.1.4
	github.com/libp2p/go-libp2p-pubsub v0.2.6-0.20200127182502-25c434f5f772
	github.com/libp2p/go-libp2p-secio v0.2.1
	github.com/libp2p/go-yamux v1.2.4 // indirect
	github.com/multiformats/go-multiaddr v0.2.0
	github.com/pborman/uuid v1.2.0
	github.com/urfave/cli v1.22.1
	golang.org/x/crypto v0.0.0-20210322153248-0c34fe9e7dc2
)
