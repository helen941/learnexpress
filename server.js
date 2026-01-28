import express from 'express';
import nunjucks from 'nunjucks'
const app = express();
const port = 3000;

nunjucks.configure('views', {
    autoescape: true,
    express: app
});

app.get('/', (req, res) => {
  let name = 'Helen';
  let age = 17
  let fruits = [
    'õun',
    'pirn',
    'ploom',
    'maasikas',
  ]
  res.render('index.njk', {name, age, fruits});
});

app.get('/about', (req, res) => {
  res.render('about.njk');
});

app.get('/contact', (req, res) => {
  res.render('contact.njk');
});

app.get('/form', (req, res) => {
  res.render('form.njk');
});

app.listen(port, () => {
  console.log(`Server running on http://localhost:${port}`);
});
