https://helpmanual.io/help/parity/

Note: help and version output are generated by a naïve script which tries a few variants of <command> --help, <command> -h etc. to find the command's help and version info. Sometimes it gets lucky, sometimes it doesn't; if the output below looks wrong, it probably is.
parity --version (return code: 0)
Parity
  version Parity/v1.6.9-stable-d44b008-20170716/x86_64-linux-gnu/rustc1.18.0
Copyright 2015, 2016, 2017 Parity Technologies (UK) Ltd

parity -h (return code: 0)
Parity. Ethereum Client.

Usage:
  parity [options]
  parity ui [options]
  parity dapp <path> [options]
  parity daemon <pid-file> [options]
  parity account (new | list ) [options]
  parity account import <path>... [options]
  parity wallet import <path> --password FILE [options]
  parity import [ <file> ] [options]
  parity export (blocks | state) [ <file> ] [options]
  parity signer new-token [options]
  parity signer list [options]
  parity signer sign [ <id> ] [ --password FILE ] [options]
  parity signer reject <id> [options]
  parity snapshot <file> [options]
  parity restore [ <file> ] [options]
  parity tools hash <file>
  parity db kill [options]

Operating Options:
  --mode MODE                    Set the operating mode. MODE can be one of:
                                 last - Uses the last-used mode, active if none.
                                 active - Parity continuously syncs the chain.
                                 passive - Parity syncs initially, then sleeps and
                                 wakes regularly to resync.
                                 dark - Parity syncs only when the RPC is active.
                                 offline - Parity doesn't sync. (default: last).
  --mode-timeout SECS            Specify the number of seconds before inactivity
                                 timeout occurs when mode is dark or passive
                                 (default: 300).
  --mode-alarm SECS              Specify the number of seconds before auto sleep
                                 reawake timeout occurs when mode is passive
                                 (default: 3600).
  --auto-update SET              Set a releases set to automatically update and
                                 install.
                                 all - All updates in the our release track.
                                 critical - Only consensus/security updates.
                                 none - No updates will be auto-installed.
                                 (default: critical).
  --release-track TRACK          Set which release track we should use for updates.
                                 stable - Stable releases.
                                 beta - Beta releases.
                                 nightly - Nightly releases (unstable).
                                 testing - Testing releases (do not use).
                                 current - Whatever track this executable was
                                 released on (default: current).
  --no-download                  Normally new releases will be downloaded ready for
                                 updating. This disables it. Not recommended.
                                 (default: false).
  --no-consensus                 Force the binary to run even if there are known
                                 issues regarding consensus. Not recommended.
                                 (default: false).
  --force-direct                 Run the originally installed version of Parity,
                                 ignoring any updates that have since been installed.
  --chain CHAIN                  Specify the blockchain type. CHAIN may be either a
                                 JSON chain specification file or olympic, frontier,
                                 homestead, mainnet, morden, ropsten, classic, expanse,
                                 testnet, kovan or dev (default: homestead).
  -d --base-path PATH            Specify the base data storage path.
                                 (default: /home/samuel/.local/share/io.parity.ethereum).
  --db-path PATH                 Specify the database directory path
                                 (default: $BASE/chains).
  --keys-path PATH               Specify the path for JSON key files to be found
                                 (default: $BASE/keys).
  --identity NAME                Specify your node's name. (default: )

Account Options:
  --unlock ACCOUNTS              Unlock ACCOUNTS for the duration of the execution.
                                 ACCOUNTS is a comma-delimited list of addresses.
                                 Implies --no-ui. (default: None)
  --password FILE                Provide a file containing a password for unlocking
                                 an account. Leading and trailing whitespace is trimmed.
                                 (default: [])
  --keys-iterations NUM          Specify the number of iterations to use when
                                 deriving key from the password (bigger is more
                                 secure) (default: 10240).
  --no-hardware-wallets          Disables hardware wallet support. (default: false)

UI Options:
  --force-ui                     Enable Trusted UI WebSocket endpoint,
                                 even when --unlock is in use. (default: $false)
  --no-ui                        Disable Trusted UI WebSocket endpoint.
                                 (default: $false)
  --ui-port PORT                 Specify the port of Trusted UI server
                                 (default: 8180).
  --ui-interface IP              Specify the hostname portion of the Trusted UI
                                 server, IP should be an interface's IP address,
                                 or local (default: local).
  --ui-path PATH                 Specify directory where Trusted UIs tokens should
                                 be stored. (default: $BASE/signer)
  --ui-no-validation             Disable Origin and Host headers validation for
                                 Trusted UI. WARNING: INSECURE. Used only for
                                 development. (default: false)

Networking Options:
  --no-warp                      Disable syncing from the snapshot over the network. (default: false)
  --port PORT                    Override the port on which the node should listen
                                 (default: 30303).
  --min-peers NUM                Try to maintain at least NUM peers (default: 25).
  --max-peers NUM                Allow up to NUM peers (default: 50).
  --snapshot-peers NUM           Allow additional NUM peers for a snapshot sync
                                 (default: 0).
  --nat METHOD                   Specify method to use for determining public
                                 address. Must be one of: any, none, upnp,
                                 extip:<IP> (default: any).
  --network-id INDEX             Override the network identifier from the chain we
                                 are on. (default: None)
  --bootnodes NODES              Override the bootnodes from our chain. NODES should
                                 be comma-delimited enodes. (default: None)
  --no-discovery                 Disable new peer discovery. (default: false)
  --node-key KEY                 Specify node secret key, either as 64-character hex
                                 string or input to SHA3 operation. (default: None)
  --reserved-peers FILE          Provide a file containing enodes, one per line.
                                 These nodes will always have a reserved slot on top
                                 of the normal maximum peers. (default: None)
  --reserved-only                Connect only to reserved nodes. (default: false)
  --allow-ips FILTER             Filter outbound connections. Must be one of:
                                 private - connect to private network IP addresses only;
                                 public - connect to public network IP addresses only;
                                 all - connect to any IP address.
                                 (default: all)
  --max-pending-peers NUM        Allow up to NUM pending connections. (default: 64)
  --no-ancient-blocks            Disable downloading old blocks after snapshot restoration
                                 or warp sync. (default: false)

API and Console Options:
  --no-jsonrpc                   Disable the JSON-RPC API server. (default: false)
  --jsonrpc-port PORT            Specify the port portion of the JSONRPC API server
                                 (default: 8545).
  --jsonrpc-interface IP         Specify the hostname portion of the JSONRPC API
                                 server, IP should be an interface's IP address, or
                                 all (all interfaces) or local (default: local).
  --jsonrpc-cors URL             Specify CORS header for JSON-RPC API responses.
                                 (default: None)
  --jsonrpc-apis APIS            Specify the APIs available through the JSONRPC
                                 interface. APIS is a comma-delimited list of API
                                 name. Possible name are web3, eth, net, personal,
                                 parity, parity_set, traces, rpc, parity_accounts.
                                 (default: web3,eth,net,parity,traces,rpc).
  --jsonrpc-hosts HOSTS          List of allowed Host header values. This option will
                                 validate the Host header sent by the browser, it
                                 is additional security against some attack
                                 vectors. Special options: "all", "none",
                                 (default: none).

  --no-ipc                       Disable JSON-RPC over IPC service. (default: false)
  --ipc-path PATH                Specify custom path for JSON-RPC over IPC service
                                 (default: $BASE/jsonrpc.ipc).
  --ipc-apis APIS                Specify custom API set available via JSON-RPC over
                                 IPC (default: web3,eth,net,parity,parity_accounts,traces,rpc).

  --no-dapps                     Disable the Dapps server (e.g. status page). (default: false)
  --dapps-port PORT              Specify the port portion of the Dapps server
                                 (default: 8080).
  --dapps-interface IP           Specify the hostname portion of the Dapps
                                 server, IP should be an interface's IP address,
                                 or local (default: local).
  --dapps-hosts HOSTS            List of allowed Host header values. This option will
                                 validate the Host header sent by the browser, it
                                 is additional security against some attack
                                 vectors. Special options: "all", "none",
                                 (default: none).
  --dapps-cors URL               Specify CORS headers for Dapps server APIs.
                                 (default: None)
  --dapps-user USERNAME          Specify username for Dapps server. It will be
                                 used in HTTP Basic Authentication Scheme.
                                 If --dapps-pass is not specified you will be
                                 asked for password on startup. (default: None)
  --dapps-pass PASSWORD          Specify password for Dapps server. Use only in
                                 conjunction with --dapps-user. (default: None)
  --dapps-path PATH              Specify directory where dapps should be installed.
                                 (default: $BASE/dapps)
  --dapps-apis-all               Expose all possible RPC APIs on Dapps port.
                                 WARNING: INSECURE. Used only for development.
                                 (default: false)
  --ipfs-api                     Enable IPFS-compatible HTTP API. (default: false)
  --ipfs-api-port PORT           Configure on which port the IPFS HTTP API should listen.
                                 (default: 5001)
  --ipfs-api-interface IP        Specify the hostname portion of the IPFS API server,
                                 IP should be an interface's IP address or local.
                                 (default: local)
  --ipfs-api-cors URL            Specify CORS header for IPFS API responses.
                                 (default: None)
  --ipfs-api-hosts HOSTS         List of allowed Host header values. This option will
                                 validate the Host header sent by the browser, it
                                 is additional security against some attack
                                 vectors. Special options: "all", "none"
                                 (default: none).


Secret Store Options:
  --no-secretstore               Disable Secret Store functionality. (default: false)
  --secretstore-port PORT        Specify the port portion for Secret Store Key Server
                                 (default: 8082).
  --secretstore-interface IP     Specify the hostname portion for Secret Store Key Server, IP
                                 should be an interface's IP address, or local
                                 (default: local).
  --secretstore-path PATH        Specify directory where Secret Store should save its data.
                                 (default: $BASE/secretstore)

Sealing/Mining Options:
  --author ADDRESS               Specify the block author (aka "coinbase") address
                                 for sending block rewards from sealed blocks.
                                 NOTE: MINING WILL NOT WORK WITHOUT THIS OPTION.
                                 (default: None)
  --engine-signer ADDRESS        Specify the address which should be used to
                                 sign consensus messages and issue blocks.
                                 Relevant only to non-PoW chains.
                                 (default: None)
  --force-sealing                Force the node to author new blocks as if it were
                                 always sealing/mining.
                                 (default: false)
  --reseal-on-txs SET            Specify which transactions should force the node
                                 to reseal a block. SET is one of:
                                 none - never reseal on new transactions;
                                 own - reseal only on a new local transaction;
                                 ext - reseal only on a new external transaction;
                                 all - reseal on all new transactions
                                 (default: own).
  --reseal-on-uncle              Force the node to author new blocks when a new uncle
                                 block is imported.
                                 (default: false)
  --reseal-min-period MS         Specify the minimum time between reseals from
                                 incoming transactions. MS is time measured in
                                 milliseconds (default: 2000).
  --work-queue-size ITEMS        Specify the number of historical work packages
                                 which are kept cached lest a solution is found for
                                 them later. High values take more memory but result
                                 in fewer unusable solutions (default: 20).
  --tx-gas-limit GAS             Apply a limit of GAS as the maximum amount of gas
                                 a single transaction may have for it to be mined.
                                 (default: None)
  --tx-time-limit MS             Maximal time for processing single transaction.
                                 If enabled senders/recipients/code of transactions
                                 offending the limit will be banned from being included
                                 in transaction queue for 180 seconds.
                                 (default: None)
  --relay-set SET                Set of transactions to relay. SET may be:
                                 cheap - Relay any transaction in the queue (this
                                 may include invalid transactions);
                                 strict - Relay only executed transactions (this
                                 guarantees we don't relay invalid transactions, but
                                 means we relay nothing if not mining);
                                 lenient - Same as strict when mining, and cheap
                                 when not (default: cheap).
  --usd-per-tx USD               Amount of USD to be paid for a basic transaction
                                 (default: 0.0025). The minimum gas price is set
                                 accordingly.
  --usd-per-eth SOURCE           USD value of a single ETH. SOURCE may be either an
                                 amount in USD, a web service or 'auto' to use each
                                 web service in turn and fallback on the last known
                                 good value (default: auto).
  --price-update-period T        T will be allowed to pass between each gas price
                                 update. T may be daily, hourly, a number of seconds,
                                 or a time string of the form "2 days", "30 minutes"
                                 etc. (default: hourly).
  --gas-floor-target GAS         Amount of gas per block to target when sealing a new
                                 block (default: 4700000).
  --gas-cap GAS                  A cap on how large we will raise the gas limit per
                                 block due to transaction volume (default: 6283184).
  --extra-data STRING            Specify a custom extra-data for authored blocks, no
                                 more than 32 characters. (default: None)
  --tx-queue-size LIMIT          Maximum amount of transactions in the queue (waiting
                                 to be included in next block) (default: 1024).
  --tx-queue-gas LIMIT           Maximum amount of total gas for external transactions in
                                 the queue. LIMIT can be either an amount of gas or
                                 'auto' or 'off'. 'auto' sets the limit to be 20x
                                 the current block gas limit. (default: auto).
  --tx-queue-strategy S          Prioritization strategy used to order transactions
                                 in the queue. S may be:
                                 gas - Prioritize txs with low gas limit;
                                 gas_price - Prioritize txs with high gas price;
                                 gas_factor - Prioritize txs using gas price
                                 and gas limit ratio (default: gas_price).
  --tx-queue-ban-count C         Number of times maximal time for execution (--tx-time-limit)
                                 can be exceeded before banning sender/recipient/code.
                                 (default: 1)
  --tx-queue-ban-time SEC        Banning time (in seconds) for offenders of specified
                                 execution time limit. Also number of offending actions
                                 have to reach the threshold within that time.
                                 (default: 180 seconds)
  --no-persistent-txqueue        Don't save pending local transactions to disk to be
                                 restored whenever the node restarts.
                                 (default: false).
  --remove-solved                Move solved blocks from the work package queue
                                 instead of cloning them. This gives a slightly
                                 faster import speed, but means that extra solutions
                                 submitted for the same work package will go unused.
                                 (default: false)
  --notify-work URLS             URLs to which work package notifications are pushed.
                                 URLS should be a comma-delimited list of HTTP URLs.
                                 (default: None)
  --refuse-service-transactions  Always refuse service transactions.
                                 (default: false).
  --stratum                      Run Stratum server for miner push notification. (default: false)
  --stratum-interface IP         Interface address for Stratum server. (default: local)
  --stratum-port PORT            Port for Stratum server to listen on. (default: 8008)
  --stratum-secret STRING        Secret for authorizing Stratum server for peers.
                                 (default: None)

Footprint Options:
  --tracing BOOL                 Indicates if full transaction tracing should be
                                 enabled. Works only if client had been fully synced
                                 with tracing enabled. BOOL may be one of auto, on,
                                 off. auto uses last used value of this option (off
                                 if it does not exist) (default: auto).
  --pruning METHOD               Configure pruning of the state/storage trie. METHOD
                                 may be one of auto, archive, fast:
                                 archive - keep all state trie data. No pruning.
                                 fast - maintain journal overlay. Fast but 50MB used.
                                 auto - use the method most recently synced or
                                 default to fast if none synced (default: auto).
  --pruning-history NUM          Set a minimum number of recent states to keep when pruning
                                 is active. (default: 64).
  --pruning-memory MB            The ideal amount of memory in megabytes to use to store
                                 recent states. As many states as possible will be kept
                                 within this limit, and at least --pruning-history states
                                 will always be kept. (default: 75)
  --cache-size-db MB             Override database cache size (default: 64).
  --cache-size-blocks MB         Specify the prefered size of the blockchain cache in
                                 megabytes (default: 8).
  --cache-size-queue MB          Specify the maximum size of memory to use for block
                                 queue (default: 50).
  --cache-size-state MB          Specify the maximum size of memory to use for
                                 the state cache (default: 25).
  --cache-size MB                Set total amount of discretionary memory to use for
                                 the entire system, overrides other cache and queue
                                 options. (default: None)
  --fast-and-loose               Disables DB WAL, which gives a significant speed up
                                 but means an unclean exit is unrecoverable. (default: false)
  --db-compaction TYPE           Database compaction type. TYPE may be one of:
                                 ssd - suitable for SSDs and fast HDDs;
                                 hdd - suitable for slow HDDs;
                                 auto - determine automatically (default: auto).
  --fat-db BOOL                  Build appropriate information to allow enumeration
                                 of all accounts and storage keys. Doubles the size
                                 of the state database. BOOL may be one of on, off
                                 or auto. (default: auto)
  --scale-verifiers              Automatically scale amount of verifier threads based on
                                 workload. Not guaranteed to be faster.
                                 (default: false)
  --num-verifiers INT            Amount of verifier threads to use or to begin with, if verifier
                                 auto-scaling is enabled. (default: None)

Import/Export Options:
  --from BLOCK                   Export from block BLOCK, which may be an index or
                                 hash (default: 1).
  --to BLOCK                     Export to (including) block BLOCK, which may be an
                                 index, hash or 'latest' (default: latest).
  --format FORMAT                For import/export in given format. FORMAT must be
                                 one of 'hex' and 'binary'.
                                 (default: None = Import: auto, Export: binary)
  --no-seal-check                Skip block seal check. (default: false)
  --at BLOCK                     Export state at the given block, which may be an
                                 index, hash, or 'latest'. (default: latest)
  --no-storage                   Don't export account storage. (default: false)
  --no-code                      Don't export account code. (default: false)
  --min-balance WEI              Don't export accounts with balance less than specified.
                                 (default: None)
  --max-balance WEI              Don't export accounts with balance greater than specified.
                                 (default: None)

Snapshot Options:
  --at BLOCK                     Take a snapshot at the given block, which may be an
                                 index, hash, or 'latest'. Note that taking snapshots at
                                 non-recent blocks will only work with --pruning archive
                                 (default: latest)
  --no-periodic-snapshot         Disable automated snapshots which usually occur once
                                 every 10000 blocks. (default: false)

Virtual Machine Options:
  --jitvm                        Enable the JIT VM. (default: false)

Legacy Options:
  --geth                         Run in Geth-compatibility mode. Sets the IPC path
                                 to be the same as Geth's. Overrides the --ipc-path
                                 and --ipcpath options. Alters RPCs to reflect Geth
                                 bugs. Includes the personal_ RPC by default.
  --testnet                      Testnet mode. Equivalent to --chain testnet.
                                 Overrides the --keys-path option.
  --import-geth-keys             Attempt to import keys from Geth client.
  --datadir PATH                 Equivalent to --base-path PATH.
  --networkid INDEX              Equivalent to --network-id INDEX.
  --peers NUM                    Equivalent to --min-peers NUM.
  --nodekey KEY                  Equivalent to --node-key KEY.
  --nodiscover                   Equivalent to --no-discovery.
  -j --jsonrpc                   Does nothing; JSON-RPC is on by default now.
  --jsonrpc-off                  Equivalent to --no-jsonrpc.
  -w --webapp                    Does nothing; dapps server is on by default now.
  --dapps-off                    Equivalent to --no-dapps.
  --rpc                          Does nothing; JSON-RPC is on by default now.
  --warp                         Does nothing; Warp sync is on by default. (default: true)
  --rpcaddr IP                   Equivalent to --jsonrpc-interface IP.
  --rpcport PORT                 Equivalent to --jsonrpc-port PORT.
  --rpcapi APIS                  Equivalent to --jsonrpc-apis APIS.
  --rpccorsdomain URL            Equivalent to --jsonrpc-cors URL.
  --ipcdisable                   Equivalent to --no-ipc.
  --ipc-off                      Equivalent to --no-ipc.
  --ipcapi APIS                  Equivalent to --ipc-apis APIS.
  --ipcpath PATH                 Equivalent to --ipc-path PATH.
  --gasprice WEI                 Minimum amount of Wei per GAS to be paid for a
                                 transaction to be accepted for mining. Overrides
                                 --basic-tx-usd.
  --etherbase ADDRESS            Equivalent to --author ADDRESS.
  --extradata STRING             Equivalent to --extra-data STRING.
  --cache MB                     Equivalent to --cache-size MB.

Internal Options:
  --can-restart                  Executable will auto-restart if exiting with 69.

Miscellaneous Options:
  -c --config CONFIG             Specify a filename containing a configuration file.
                                 (default: $BASE/config.toml)
  -l --logging LOGGING           Specify the logging level. Must conform to the same
                                 format as RUST_LOG. (default: None)
  --log-file FILENAME            Specify a filename into which logging should be
                                 appended. (default: None)
  --no-config                    Don't load a configuration file.
  --no-color                     Don't use terminal color codes in output. (default: false)
  -v --version                   Show information about version.
  -h --help                      Show this screen.