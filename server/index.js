require('dotenv').config();
const express = require('express');
const app = express();

const PORT = process.env.PORT || 3000;
console.log(process.env.PORT);


app.listen(PORT, () => console.log(`server running on port: ${PORT}`));