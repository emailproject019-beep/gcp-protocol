# gcp-protocol
Web3 Groundwater Commons Protocol (GCP)

# Groundwater Commons Protocol (GCP)

A Web3 + AI system for sustainable groundwater management.

## Components
- Smart contracts for resource registration, quotas, credits, governance
- AI model for quota recommendations
- Mock environmental data
- Minimal frontend dashboard

## Quick Start
1. Deploy contracts in Remix
2. Run AI model: python ai/quota_model.py
3. Serve frontend: open frontend/index.html

gcp-protocol/
│
├── contracts/
│   ├── ResourceRegistry.sol
│   ├── QuotaManager.sol
│   ├── CreditToken.sol
│   └── Governance.sol
│
├── ai/
│   └── quota_model.py
│
├── data/
│   └── mock_groundwater_readings.json
│
├── frontend/
│   ├── index.html
│   ├── app.js
│   └── style.css
│
├── scripts/
│   ├── deploy.js
│   └── simulate_readings.js
│
└── README.md
