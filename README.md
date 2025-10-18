# 🌀 FlowRoll

**FlowRoll** is a decentralized **lottery / lucky draw** project deployed on **Flow Testnet**, inspired by “Roll on Flow” reward mechanics.  

This project demonstrates how a **simple lottery system** can work on Flow — where users enter by paying a fixed amount, and a random winner receives the entire prize pool.  

Although originally modeled using Solidity concepts, this implementation and testing are done on **Flow Testnet** using Flow developer tools.

---

## 🧭 Project Overview

- 🎟️ Users join the lottery by paying a fixed ticket price.  
- 🏆 One winner is chosen randomly each round.  
- 🪙 The winner receives the prize pool.  
- 🔁 After each round, the lottery resets.  
- 🌿 Inspired by **Roll on Flow**, built on **Flow Testnet** for education.

---

## 🛠️ Tech Stack

| Tool / Tech               | Purpose                                                                   |
|---------------------------|----------------------------------------------------------------------------|
| **Flow Blockchain**       | Smart contract deployment on Flow Testnet                                 |
| **Cadence / Solidity (Concept)** | Lottery logic modeled in Solidity, conceptually ported to Cadence      |
| **Remix IDE**             | Used for early contract drafting and structure testing                    |
| **Flow CLI**              | Deployment and interaction with Flow Testnet                              |
| **Flow Testnet Wallet**   | Account for testing transactions                                          |
| **Blocto / Flow Wallet**  | Wallet provider for interacting with dApp                                 |

---


## 📜 Deployment Details

- **Deployer Address:**  
  `0xc98C9F8D98A7A5cbd5C7545f039da00d69ccae47`  

- **Transaction Link (Flow Testnet Explorer):**  
  [View on Flow Testnet](https://evm-testnet.flowscan.io/tx/0x448c18bdfd96d2594f39c36040f5b94202730513eb933c046fd657f626e9650d)

---

## 🪙 How It Works

1. Players call the `enter` transaction and pay the ticket price (0.01 FLOW).  
2. The contract stores their account addresses in the `players` array.  
3. When the round ends, the contract selects a random winner.  
4. The winner receives the FLOW prize pool.  
5. The contract resets the player list for the next round.

