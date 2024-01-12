Template for basic web apps, and sandbox for practicing web dev-related work.
WRITE MORE HERE...


Project structure in this repository should look like this (I did not include the cat picture from the original repository, and I renamed a couple things):
   
📂 node_modules  
📂 public  
﹂ 📂 css  
﹂⎻  📜 main.css  
﹂ 📂 img  
~~﹂⎻  🖼 cat.jpg~~  
﹂ 📂 js   
﹂⎻  📜 main.js  
📂 views  
﹂ 🌍 about.ejs  
﹂ 🌍 index.ejs  
📜 README.md  
🌍 app.js  
📜 package-lock.json  
📜 package-json  

### To run:
1) Install express (application framework) and ejs (templating tool to generate html from plain JavaScript (view engine)):  
`npm install express ejs`

2) Install nodemon (automatically restarts the node.js server whenever a change is saved in the project directory):  
`npm install nodemon --save-dev`

3) Add this line to package.json:  
`"start": "nodemon app.js"`

(Full JSON should look something like this):  
```
{
  "name": "Learning NodeJS",
  "version": "1.0.0",
  "description": "NodeJS Tutorial",
  "main": "index.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1",
    "start": "nodemon app.js"
  },
  "author": "",
  "license": "ISC",
  "dependencies": {
    "ejs": "^3.1.3",
    "express": "^4.17.1"
  },
  "devDependencies": {
    "nodemon": "^2.0.4"
  }
}
```

4) Save everything and run it:  
`npm start`

Navigate to http://localhost:5001 in your browser and you should be able to see the project.
Change the port in app.js (`const port = 5001`) to whatever you like if you prefer a different port number.

I may have used `npm init` at some point, I can't remember if it was part of this project or not.

Note that the mongod.conf file is here for reference. It belongs in the /etc/ directory.
