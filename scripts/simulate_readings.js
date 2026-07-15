const fs = require("fs");
const data = JSON.parse(fs.readFileSync("./data/mock_groundwater_readings.json"));

data.forEach(r => console.log(`Level: ${r.level}m`));
