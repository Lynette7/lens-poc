// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;
import {KRNL, KrnlPayload, KernelResponse} from "./KRNL.sol";

contract FinalContracts is KRNL {
    event Broadcast(string msg);

    constructor(
        address _tokenAuthorityPublicKey
    ) KRNL(_tokenAuthorityPublicKey) {}

    function protectedFunction(
        KrnlPayload memory krnlPayload,
        uint256 userParam1,
        string memory userParam2
    )
        public
        onlyAuthorized(krnlPayload, abi.encode(userParam1, userParam2))
        returns (uint256)
    {
        emit Broadcast("iloveyou3000");
        return userParam1;
    }
}


// contract Sample is KRNL {
//     constructor(address _tokenAuthorityPublicKey) KRNL(_tokenAuthorityPublicKey) {}

//     string message = "hello";

//     function protectedFunction(
//         KrnlPayload memory krnlPayload,
//         string memory input
//     )
//         external
//         onlyAuthorized(krnlPayload, abi.encode(input))
//     {
//         message = input;
//     }

//     function readMessage() external view returns (string memory) {
//         return message;
//     }
// }
