Simple Pharo project that tries to load the deployment version of Launchpad, but it seems to load in a lot more for some reason?

e.g.

try:
```
Metacello new
  baseline: 'LPTest';
  repository: 'github://macta/LPTest';
  load.
```
