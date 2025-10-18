// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LuckyDraw {
    address public owner;
    uint256 public ticketPrice = 0.01 ether;
    address[] public players;

    constructor() {
        owner = msg.sender;
    }

    // User joins the lottery by paying the ticket price
    function enter() public payable {
        require(msg.value == ticketPrice, "Ticket costs 0.01 ETH");
        players.push(msg.sender);
    }

    // Pseudo-random number generator (not secure!)
    function random() private view returns (uint256) {
        return uint256(
            keccak256(
                abi.encodePacked(block.timestamp, block.difficulty, msg.sender, players.length)
            )
        );
    }

    // Pick a winner and transfer the prize
    function pickWinner() public {
        require(msg.sender == owner, "Only owner can pick winner");
        require(players.length > 0, "No players joined");

        uint256 index = random() % players.length;
        address winner = players[index];

        payable(winner).transfer(address(this).balance);

        // Reset for next round
        delete players;
    }

    // Get list of all players (optional view)
    function getPlayers() public view returns (address[] memory) {
        return players;
    }
}
