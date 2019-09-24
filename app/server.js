/* Express is a module of node to make routes to database */
const express = require('express');

/* Set the port to 3000 */
const PORT = process.env.PORT || 3000;

const app = express();

/* Start the server */
app.listen(PORT, () => {
    console.log(`App running on port ${PORT}`);
});