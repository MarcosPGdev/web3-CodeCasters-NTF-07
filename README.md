# 🗳️ Codecasters — NFT Collection

**Codecasters** is a simple yet practical **ERC-721 NFT collection** deployed on the **Arbitrum network**.  
It demonstrates how to build, deploy and mint a minimal NFT smart contract using **Solidity**, **OpenZeppelin**, and **Foundry**.

---

<p align="center">
  <img src="https://gateway.pinata.cloud/ipfs/bafybeidc5urxjjrw7gkiikeech6pb6iqia77ie42rddpfnb5jf22bflbgi" width="150"/>
  <img src="https://gateway.pinata.cloud/ipfs/bafybeihesdcqylpls4ubwc727b5rqcld23mzs2ypzmjegynoffeykdhmy4" width="150"/>
  <img src="https://gateway.pinata.cloud/ipfs/bafybeiepdafcts5icbjzspcqxfpgeycbflovvq564mdtm4o22hy7ru3ktq" width="150"/>
  <img src="https://gateway.pinata.cloud/ipfs/bafybeibxgcyig57bzi34ddashxfqtpy6dmej3u3yreevsfiou26txz323q" width="150"/>
  <img src="https://gateway.pinata.cloud/ipfs/bafybeibziowfmzrnbub7jbamsuafescypbulfq4mrvi2umnzos2qohuaqa" width="150"/>
</p>


## 🚀 Key Features

- ✅ ERC-721 standard with OpenZeppelin
- ✅ Fixed total supply (`totalSupply`)
- ✅ Simple `mint()` function — 1 NFT per call until sold out
- ✅ Emits `MintNFT` event on each mint
- ✅ Uses `baseUri` for off-chain metadata (IPFS recommended)
- ✅ `tokenURI` dynamically resolves each token’s metadata
- ✅ Deploy script included (Foundry)

---

## ⚙️ Tech Stack

- **Solidity** `^0.8.24`
- **OpenZeppelin Contracts**
- **Foundry** (`forge`, `cast`, `anvil`)
- **IPFS** for metadata storage

---

## 📦 How to Deploy

### 1️⃣ **Clone this repo**

```
git clone https://github.com/MarcosPGdev/codecasters-nft.git
cd codecasters-nft
```

###  2️⃣ Install Foundry (if you don’t have it)

```
curl -L https://foundry.paradigm.xyz | bash
foundryup
```

###  3️⃣ Set up your .env
```
PRIVATE_KEY=your_wallet_private_key
RPC_URL=https://arb-mainnet.g.alchemy.com/v2/your-api-key
```

###  4️⃣ Run the deploy script
```
forge script script/DeployNFTCollection.s.sol:DeployNFTCollection --rpc-url $RPC_URL --broadcast --chain-id 42161
```

✅ After deployment, Foundry will show the contract address.
You can verify and interact using Arbiscan or any wallet like MetaMask.

## 🧪 Tests
This contract is simple and does not include unit tests yet.
Feel free to contribute or expand it with tests using forge-std!

## 🔗 License
MIT — fork, build on, or learn from it freely.

## 👨‍💻 Author
Developed by Marcos Pérez Gómez — Smart Contract Developer & Fullstack Web3 Builder.

## 📣 Connect
If you like this project or want to discuss NFTs, smart contracts, or Web3, feel free to connect!
