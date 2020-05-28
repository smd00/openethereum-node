# openethereum-node
Run your own OpenEthereum node in one line

## How to Install an Ethereum node (with OpenEthereum)

To setup an Ethereum node on Ubuntu 18.04 run the below commands

```
mkdir $HOME/eth && cd $HOME/eth && curl -O https://raw.githubusercontent.com/smd00/openethereum-node/master/setup.sh && sudo chmod +x ./setup.sh && ./setup.sh
```

While the setup script is running, it will attempt to install Rust and that will prompt user input. 
Enter "1" to Proceed with installation (default) - unless you have a specific need.

### Cheat Sheet: Parity Ethereum and Bitcoin Core: 
You can find some useful commands on the post below:

https://medium.com/@danielmontoyahd/cheat-sheet-parity-and-bitcoin-core-c370163fca44