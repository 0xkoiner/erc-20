## ERC-20 Token Testing Project

This project is an educational exploration of Foundry and the OpenZeppelin libraries, focused on testing ERC-20 tokens and improving skills in identifying vulnerabilities in smart contracts. 
It leverages Foundry’s powerful testing environment to perform comprehensive tests on ERC-20 token implementations.

<h3>Overview</h3>

This project aims to:

Deepen understanding of smart contract testing, especially ERC-20 tokens.
Improve vulnerability detection skills using Foundry.
Explore effective usage of the OpenZeppelin contract libraries in secure and efficient token development.

<h3>Features</h3>

ERC-20 Token Tests: Unit tests for ERC-20 standard functionalities (e.g., transfers, approvals, balances).
Security Testing: Basic vulnerability testing to ensure secure contract deployment.
Modular Structure: Uses OpenZeppelin libraries for reusable and well-tested code.

<h3>Installation</h3>

Prerequisites
Foundry installed
Git installed

<h4>Clone the Repository</h4>
```
git clone https://github.com/yourusername/erc20-foundry-testing.git
cd erc20-foundry-testing
```

<h4>Install Dependencies</h4>
Make sure to install dependencies with Foundry:
```
forge install
```

<h4>OpenZeppelin Contracts</h4>
This project utilizes OpenZeppelin’s contracts for reliable and secure token implementations. If they’re not installed automatically, you can add them manually:
```
forge install OpenZeppelin/openzeppelin-contracts
```

<h4>Usage</h4>
Run tests with Foundry to ensure that the ERC-20 functionalities work as expected and pass security checks:
```
forge test
```
To inspect vulnerabilities, additional checks and assertions are written within the tests. Each test case checks for edge cases in ERC-20 operations to enhance security awareness.

<h4>Folder Structure</h4>
```
.
├── script/
│   └── DeployKoinerToken.s.sol # Script for deployment of the Contract
├── src/
│   └── koiner_manual_token.sol # Main token contract (inherits ERC-20 from OpenZeppelin)
│   └── koiner_token.sol
├── test/
│   └── KoinerToken.t.sol      # Foundry test cases for ERC-20 functionality
├── README.md                  # Project overview and instructions
└── foundry.toml               # Foundry configuration file
```

<h4>Contributing</h4>

Contributions are welcome! Please fork this repository, make any changes in a new branch, and submit a pull request with a description of your changes.

<h4>License</h4>

This project is licensed under the MIT License. See the LICENSE file for details.
















