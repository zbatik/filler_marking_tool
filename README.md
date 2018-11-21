## Filler Marking Tool

The Filler Marking Tool has two scripts:
* run_tests.sh
* bulk_test.sh

### run_tests
The run_tests.sh bash script simply plays your filler against all the bots on all the maps in the order
they appear on the marking sheet. It will play a maximum of 5 games randomly picking between player 1 and player 2 and will stop playing after three wins (as per the requirements).

```
sh run_tests.sh you_filler_name.filler
```

### bulk_test
The bulk_test.sh script will play your filler against every bot on every map
both as player 1 and as player 2 allowing you to see which cases your filler is
sure to win and which in can't.

```
sh bulk_test.sh you_filler_name.filler
```

> These scripts along with your filler binary must be in the the directory with the ./filler_vm file and players/ directory.
