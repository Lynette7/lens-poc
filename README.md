# Lens PoC

Implemented on node v0.1.0 with the updated Token Authority

This repository contains the Final smart contract, token authority and KRNL.sol code used in the implementation of the Lens Protocol PoC using KRNL technology and compatible with v0.1.0.

The Lens smart contract that has been modularised is <https://github.com/lens-protocol/core/blob/master/contracts/LensHub.sol> after being deployed on Sepolia testnet: <https://sepolia.etherscan.io/address/0x99A5a987fD51d006aA541eE8ad0b00416808DB2a#code>

Each of the view functions have been registered as kernels on the platform as follows:

- [Kernel 1481](https://app.platform.lat/kernel/1481)

```solidity
function getDelegatedExecutorsConfigNumber(uint256 delegatorProfileId) external view returns (uint64)
```

- [Kernel 1483](https://app.platform.lat/kernel/1483)

```solidity
function isDelegatedExecutorApproved(
    uint256 delegatorProfileId,
    address delegatedExecutor,
    uint64 configNumber
) external view returns (bool)
```

- [Kernel 1484](https://app.platform.lat/kernel/1484)

```solidity
function isFollowing(uint256 followerProfileId, uint256 followedProfileId) external view returns (bool)
```

- [Kernel 1490](https://app.platform.lat/kernel/1490)

```solidity
function isDelegatedExecutorApproved(
    uint256 delegatorProfileId,
    address delegatedExecutor
) external view returns (bool)
```

- [Kernel 1491](https://app.platform.lat/kernel/1491)

```solidity
function getDelegatedExecutorsPrevConfigNumber(uint256 delegatorProfileId) external view returns (uint64)
```

- [Kernel 1492](https://app.platform.lat/kernel/1492)

```solidity
function getDelegatedExecutorsMaxConfigNumberSet(uint256 delegatorProfileId) external view returns (uint64)
```

- [Kernel 1493](https://app.platform.lat/kernel/1493)

```solidity
function isBlocked(uint256 profileId, uint256 byProfileId) external view returns (bool)
```

- [Kernel 1494](https://app.platform.lat/kernel/1494)

```solidity
function getContentURI(uint256 profileId, uint256 pubId) external view override returns (string memory)
```

- [Kernel 1495](https://app.platform.lat/kernel/1495)

```solidity
function getProfile(uint256 profileId) external view override returns (Types.Profile memory) /* struct */
```

- [Kernel 1496](https://app.platform.lat/kernel/1496)

```solidity
function isActionModuleEnabledInPublication(
    uint256 profileId,
    uint256 pubId,
    address module
) external view returns (bool)
```

- [Kernel 1497](https://app.platform.lat/kernel/1497)

```solidity
function getFollowModule(uint256 profileId) external view returns (address)
```

- [Kernel 1498](https://app.platform.lat/kernel/1498)

```solidity
function isFollowing(
    uint256 followedProfileId,
    address followerAddress,
    uint256 /* tokenId */
) external view returns (bool)
```

- [Kernel 1499](https://app.platform.lat/kernel/1499)

```solidity
function getPublicationType(
    uint256 profileId,
    uint256 pubId
) external view override returns (Types.PublicationType) /* enum */
```
