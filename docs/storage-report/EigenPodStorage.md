| Name                                            | Type                                               | Slot | Offset | Bytes | Contract                                               |
|-------------------------------------------------|----------------------------------------------------|------|--------|-------|--------------------------------------------------------|
| podOwner                                        | address                                            | 0    | 0      | 20    | src/contracts/pods/EigenPodStorage.sol:EigenPodStorage |
| __deprecated_mostRecentWithdrawalTimestamp      | uint64                                             | 0    | 20     | 8     | src/contracts/pods/EigenPodStorage.sol:EigenPodStorage |
| withdrawableRestakedExecutionLayerGwei          | uint64                                             | 1    | 0      | 8     | src/contracts/pods/EigenPodStorage.sol:EigenPodStorage |
| __deprecated_hasRestaked                        | bool                                               | 1    | 8      | 1     | src/contracts/pods/EigenPodStorage.sol:EigenPodStorage |
| __deprecated_provenWithdrawal                   | mapping(bytes32 => mapping(uint64 => bool))        | 2    | 0      | 32    | src/contracts/pods/EigenPodStorage.sol:EigenPodStorage |
| _validatorPubkeyHashToInfo                      | mapping(bytes32 => struct IEigenPod.ValidatorInfo) | 3    | 0      | 32    | src/contracts/pods/EigenPodStorage.sol:EigenPodStorage |
| __deprecated_nonBeaconChainETHBalanceWei        | uint256                                            | 4    | 0      | 32    | src/contracts/pods/EigenPodStorage.sol:EigenPodStorage |
| __deprecated_sumOfPartialWithdrawalsClaimedGwei | uint64                                             | 5    | 0      | 8     | src/contracts/pods/EigenPodStorage.sol:EigenPodStorage |
| activeValidatorCount                            | uint256                                            | 6    | 0      | 32    | src/contracts/pods/EigenPodStorage.sol:EigenPodStorage |
| lastCheckpointTimestamp                         | uint64                                             | 7    | 0      | 8     | src/contracts/pods/EigenPodStorage.sol:EigenPodStorage |
| currentCheckpointTimestamp                      | uint64                                             | 7    | 8      | 8     | src/contracts/pods/EigenPodStorage.sol:EigenPodStorage |
| checkpointBalanceExitedGwei                     | mapping(uint64 => uint64)                          | 8    | 0      | 32    | src/contracts/pods/EigenPodStorage.sol:EigenPodStorage |
| _currentCheckpoint                              | struct IEigenPod.Checkpoint                        | 9    | 0      | 64    | src/contracts/pods/EigenPodStorage.sol:EigenPodStorage |
| proofSubmitter                                  | address                                            | 11   | 0      | 20    | src/contracts/pods/EigenPodStorage.sol:EigenPodStorage |
| __gap                                           | uint256[36]                                        | 12   | 0      | 1152  | src/contracts/pods/EigenPodStorage.sol:EigenPodStorage |
