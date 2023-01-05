// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Transactions {
    uint256 transactionCounter;

    event Transfer(
        address sender,
        address receiver,
        uint256 amount,
        string message,
        uint256 timestamp,
        string keywordord
    );

    struct TransactionDetails {
        address sender;
        address receiver;
        uint256 amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    TransactionDetails[] transaction;

    function addToBlockChain(
        address payable receiver,
        uint256 amount,
        string memory message,
        string memory keyword
    ) public {
        transactionCounter++;
        transaction.push(
            TransactionDetails(
                msg.sender,
                receiver,
                amount,
                message,
                block.timestamp,
                keyword
            )
        );
        emit Transfer(
            msg.sender,
            receiver,
            amount,
            message,
            block.timestamp,
            keyword
        );
    }

    function getAllTransactions()
        public
        view
        returns (TransactionDetails[] memory)
    {
        return transaction;
    }

    function getTransactionCount() public view returns (uint256) {
        return transactionCounter;
    }

    function getTransactionByUser(address userAddress)
        public
        view
        returns (TransactionDetails[] memory)
    {
        TransactionDetails[] memory userTransactions = new TransactionDetails[](
            transactionCounter
        );
        uint256 counter = 0;
        for (uint256 i = 0; i < transactionCounter; i++) {
            if (transaction[i].sender == userAddress) {
                userTransactions[counter] = transaction[i];
                counter++;
            }
        }
        return userTransactions;
    }

    // todo : mintNft
}
