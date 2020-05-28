# openethereum-node
Run your own OpenEthereum node in one line

## Install OpenEthereum on Ubuntu (18.04)

```
mkdir $HOME/eth && cd $HOME/eth && curl -O https://raw.githubusercontent.com/smd00/openethereum-node/master/setup.sh && sudo chmod +x ./setup.sh && ./setup.sh
```

Note: While the setup script is running, it will attempt to install Rust and that will prompt user input. 
Enter "1" to Proceed with installation (default) - unless you have a specific need.

## Cheat Sheet: Parity Ethereum and Bitcoin Core: 
You can find some useful commands on the post below:

https://medium.com/@danielmontoyahd/cheat-sheet-parity-and-bitcoin-core-c370163fca44

## Example: Install OpenEthereum on AWS

1. Launch an EC2 instance:

    - Recommended instance type: t2.medium

    - Advanced Details > User data (Boot strap script):

    ```
    #!/bin/bash
    mkdir $HOME/eth && cd $HOME/eth && curl -O https://raw.githubusercontent.com/smd00/openethereum-node/master/setup.sh && sudo chmod +x ./setup.sh && ./setup.sh
    ```

    - Add additional storage volume (sdb): 500 GB