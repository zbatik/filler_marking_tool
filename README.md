## Filler Marking Tool

The Filler Marking Tool has two scripts:
* run_tests.sh
* bulk_testing.sh

### run_tests
The run_tests.sh bash script simply play filler against all the bots in the order
they appear on the marking sheet.


sh run_tests.sh [YOUR_FILLER NAME]

### bulk_test
The bulk_test.sh bash srcit will play your filler against every player on every map
both as player 1 and as player 2 allowing you to see which cases your filler is
sure to win and which in can't.

sh bulk_test.sh [YOUR_FILLER NAME]

### NOTE
The scripts along with your filler binary must be in the resources directory
