// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Transaction {
    uint256 transactionCounter;

    event Transfer(
        address indexed _from,
        address indexed _to,
        uint256 _value,
        string _message,
        uint256 _timestamp,
        string _transactionId
    );

    struct TransactionDetails {
        address from;
        address to;
        uint256 value;
        string message;
        uint256 timestamp;
        string transactionId;
    }

    TransactionDetails[] transaction;

    function addToBlockChain(
        address _from,
        address _to,
        uint256 _value,
        string memory _message,
        uint256 _timestamp,
        string memory _transactionId
    ) public {
        transactionCounter++;
        transaction.push(
            TransactionDetails(
                _from,
                _to,
                _value,
                _message,
                _timestamp,
                _transactionId
            )
        );
        emit Transfer(_from, _to, _value, _message, _timestamp, _transactionId);
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
}
