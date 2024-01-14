const express = require ('express');
const mongoose = require ('mongoose');
const Article = require ('./models/article');
const articleRouter = require ('./routes/articles');
const methodOverride = require ('method-override');
const app = express();
const port = 5001;

mongoose.connect ('mongodb://localhost/notes'), {
     useCreateIndex: true
};

app.set ('view engine', 'ejs');
app.set ('views', './views');
app.use (methodOverride ('_method'));

app.use (express.urlencoded ({ extended: false}));
app.use (express.static ('public'));

app.get ('/', async (req, res) => {
     const articles = await Article.find ().sort ({
     createdAt: 'desc' });
     res.render ('articles/index', {articles: articles });
});

app.listen(port, function (err) {
     if (err) throw err;
     console.info (`Listening on port ${port}`);
});

app.use ('/articles', articleRouter);

