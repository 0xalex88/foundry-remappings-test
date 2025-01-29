## Remappings issue test

- install with `forge install`
- run script `forge script script/MyScript.s.sol`

Observations:

- without root project remappings, why are the optimism remappings about @openzeppelin not loaded?
- with the remappings as in the project, version nightly-17e0981a071fbd3b5a0a59affb4d638a28dfec89 correctly compiles the script, with the latest stable it doesn't
- if I add these remappings:
  ```
    "src:@openzeppelin/contracts/=lib/optimism/packages/contracts-bedrock/lib/openzeppelin-contracts/contracts",
    "src:@openzeppelin/contracts-upgradeable/=lib/optimism/packages/contracts-bedrock/lib/openzeppelin-contracts-upgradeable/contracts",
    "src:@rari-capital/=lib/optimism/packages/contracts-bedrock/lib",
  ```
  which IMO satisfies the dependency when the scripts imports `@eth-optimism-bedrock/src/libraries/Constants.sol` which then imports `src/L1/ResourceMetering.sol` (note the src/ that probably matches the unscoped remapping), the script fails to compile with `Error (9574): Type struct ResourceMetering.ResourceConfig memory is not implicitly convertible to expected type struct ResourceMetering.ResourceConfig memory.`
