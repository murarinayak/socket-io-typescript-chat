// import express from 'express';
// const app = express();

// app.get('/', (req, res) => res.send('Hello World!'));

// app.listen(3000, () => console.log('Example app listening on port 3000!'));

import express from 'express';

const PORT = process.env.PORT || 3000;
const app = express();
app.get('/', (req, res) => res.send('Hello World!'));
app.listen(PORT, () => console.log(`Example app listening on port ${PORT}!`));
