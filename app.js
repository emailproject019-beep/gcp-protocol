async function connect() {
  if (!window.ethereum) return alert("Install MetaMask");

  const provider = new ethers.providers.Web3Provider(window.ethereum);
  await provider.send("eth_requestAccounts", []);
  document.getElementById("status").innerText = "Wallet Connected";
}
