import express from 'express';
import nunjucks from 'nunjucks';
import session from 'express-session';
import { prisma } from "./lib/prisma.js";
const app = express();
const port = 3000;

app.use( express.urlencoded());

app.use(session({
  secret: 'keyboard cat',
  resave: false,
  saveUninitialized: true,
}));

const env = nunjucks.configure('views', {
    autoescape: true,
    express: app
});

app.use(async (req, res, next) => {
  console.log(req.session)
  if(req.session.userID) {
  res.locals.user = await prisma.user.findUnique({
    where: { id: req.session.userID }
  });
  } else {
    res.locals.user = null;
  }
  next();
});

import publicController from './controllers/public.js'
app.use(publicController)

import catsController from './controllers/cats.js'
app.use('/cats', catsController)

import auth from './controllers/auth.js'
app.use(auth);

app.listen(port, () => {
  console.log(`Server running on http://localhost:${port}`);
});
