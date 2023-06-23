// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.12;

/**
 * @title Interface for a contract that coordinates between various registries for an AVS.
 * @author Layr Labs, Inc.
 */
interface IRegistryCoordinator {
    // DATA STRUCTURES
    enum OperatorStatus
    {
        // default is NEVER_REGISTERED
        NEVER_REGISTERED,
        REGISTERED,
        DEREGISTERED
    }

    /**
     * @notice Data structure for storing info on operators
     */
    struct Operator {
        // the id of the operator, which is likely the keccak256 hash of the operator's public key if using BLSRegsitry
        bytes32 operatorId;
        // start taskNumber from which the  operator has been registered
        uint32 fromTaskNumber;
        // indicates whether the operator is actively registered for serving the middleware or not
        OperatorStatus status;
    }

    /// @notice Returns the operator struct for the given `operator`
    function getOperator(address operator) external view returns (Operator memory);

    /// @notice Returns the operatorId for the given `operator`
    function getOperatorId(address operator) external view returns (bytes32);

    /// @notice Returns the quorum bitmap for the given `operatorId` at the given `blockNumber` via the `index`
    function getQuorumBitmapOfOperatorAtBlockNumberByIndex(bytes32 operatorId, uint32 blockNumber, uint256 index) external view returns (uint192);

    /// @notice Returns task number from when `operator` has been registered.
    function getFromTaskNumberForOperator(address operator) external view returns (uint32);

    /// @notice Returns the registry at the desired index
    function registries(uint256) external view returns (address);

    /// @notice Returns the number of registries
    function numRegistries() external view returns (uint256);

    /**
     * @notice Registers msg.sender as an operator with the middleware
     * @param quorumNumbers are the bytes representing the quorum numbers that the operator is registering for
     * @param registrationData is the data that is decoded to get the operator's registration information
     */
    function registerOperatorWithCoordinator(bytes memory quorumNumbers, bytes calldata registrationData) external;

    /**
     * @notice Deregisters the msg.sender as an operator from the middleware
     * @param quorumNumbers are the bytes representing the quorum numbers that the operator is registered for
     * @param deregistrationData is the the data that is decoded to get the operator's deregisteration information
     */
    function deregisterOperatorWithCoordinator(bytes calldata quorumNumbers, bytes calldata deregistrationData) external;
}
