## Remappings issue test

- install with `forge install`
- run script `forge script script/MyScript.s.sol`

Observations:

- without root project remappings, why are the optimism remappings about @openzeppelin not loaded?
- with the remappings as in the project, version nightly-17e0981a071fbd3b5a0a59affb4d638a28dfec89 correctly compiles the script, with the latest stable it doesn't
