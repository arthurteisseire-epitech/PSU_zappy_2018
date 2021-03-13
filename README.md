# R-type

## Install

### With Nix
If you don't have nix yet run `curl -L https://nixos.org/nix/install | sh` and read output messages
```shell script
nix-shell shell.nix  # This will install all dependencies in a separate environment
make
```

## USAGE

You can use `-h` option for each binary for information. Below are examples.

### Server
```
./zappy_server -n Team1 Team2 Team3
```

### Graphical client
```
./zappy_graphic 4242 127.0.0.1
```

### AI
```
./zappy_ai -p 4242 -n Team1 &
```

## Create your AI

Information below will allow you to create your own AI:

```
action                              | command          | time limit | response
move up one tile                    | Forward          | 7/f        | ok
turn 90o right                      | Right            | 7/f        | ok
turn 90o left                       | Left             | 7/f        | ok
look around                         | Look             | 7/f        | [tile1, tile2,. . . ]
inventory                           | Inventory        | 1/f        | [linemate n, sibur n,. . . ]
broadcast text                      | Broadcast text   | 7/f        | ok
number of team unused slots         | Connect_nbr      | -          | value
fork a player                       | Fork             | 42/f       | ok
eject players from this tile        | Eject            | 7/f        | ok/ko
death of a player                   | -                | -          | dead
take object                         | Take object      | 7/f        | ok/ko
set object down                     | Set object       | 7/f        | ok/ko
start incantation                   | Incantation      | 300/f      | Elevation underway, Current level: k/ko
```
