| Name                   | Type                                                                                                             | Slot | Offset | Bytes | Contract                                                                 |
|------------------------|------------------------------------------------------------------------------------------------------------------|------|--------|-------|--------------------------------------------------------------------------|
| _avsRegistrar          | mapping(address => contract IAVSRegistrar)                                                                       | 0    | 0      | 32    | src/contracts/core/AllocationManagerStorage.sol:AllocationManagerStorage |
| _operatorSets          | mapping(address => struct EnumerableSet.UintSet)                                                                 | 1    | 0      | 32    | src/contracts/core/AllocationManagerStorage.sol:AllocationManagerStorage |
| _operatorSetStrategies | mapping(bytes32 => struct EnumerableSet.AddressSet)                                                              | 2    | 0      | 32    | src/contracts/core/AllocationManagerStorage.sol:AllocationManagerStorage |
| _operatorSetMembers    | mapping(bytes32 => struct EnumerableSet.AddressSet)                                                              | 3    | 0      | 32    | src/contracts/core/AllocationManagerStorage.sol:AllocationManagerStorage |
| _allocationDelayInfo   | mapping(address => struct IAllocationManagerTypes.AllocationDelayInfo)                                           | 4    | 0      | 32    | src/contracts/core/AllocationManagerStorage.sol:AllocationManagerStorage |
| registeredSets         | mapping(address => struct EnumerableSet.Bytes32Set)                                                              | 5    | 0      | 32    | src/contracts/core/AllocationManagerStorage.sol:AllocationManagerStorage |
| allocatedSets          | mapping(address => struct EnumerableSet.Bytes32Set)                                                              | 6    | 0      | 32    | src/contracts/core/AllocationManagerStorage.sol:AllocationManagerStorage |
| registrationStatus     | mapping(address => mapping(bytes32 => struct IAllocationManagerTypes.RegistrationStatus))                        | 7    | 0      | 32    | src/contracts/core/AllocationManagerStorage.sol:AllocationManagerStorage |
| allocatedStrategies    | mapping(address => mapping(bytes32 => struct EnumerableSet.AddressSet))                                          | 8    | 0      | 32    | src/contracts/core/AllocationManagerStorage.sol:AllocationManagerStorage |
| allocations            | mapping(address => mapping(bytes32 => mapping(contract IStrategy => struct IAllocationManagerTypes.Allocation))) | 9    | 0      | 32    | src/contracts/core/AllocationManagerStorage.sol:AllocationManagerStorage |
| _maxMagnitudeHistory   | mapping(address => mapping(contract IStrategy => struct Snapshots.DefaultWadHistory))                            | 10   | 0      | 32    | src/contracts/core/AllocationManagerStorage.sol:AllocationManagerStorage |
| encumberedMagnitude    | mapping(address => mapping(contract IStrategy => uint64))                                                        | 11   | 0      | 32    | src/contracts/core/AllocationManagerStorage.sol:AllocationManagerStorage |
| deallocationQueue      | mapping(address => mapping(contract IStrategy => struct DoubleEndedQueue.Bytes32Deque))                          | 12   | 0      | 32    | src/contracts/core/AllocationManagerStorage.sol:AllocationManagerStorage |
| __gap                  | uint256[37]                                                                                                      | 13   | 0      | 1184  | src/contracts/core/AllocationManagerStorage.sol:AllocationManagerStorage |