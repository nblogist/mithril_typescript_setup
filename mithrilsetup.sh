mkdir new_project
cd new_project
npm install mithril --save
npm install -D @types/mithril
npm init --yes
npm install mithril --save
npm install webpack webpack-cli --save-dev
echo "Enter this in scripts portion of package.json
 \"start\": \"webpack src/index.js --output bin/app.js -d --watch\" "

echo "{
  \"name\": \"new_project\",
  \"version\": \"1.0.0\",
  \"description\": \"\",
  \"main\": \"index.ts\",
  \"dependencies\": {
    \"mithril\": \"^2.0.4\"
  },
  \"devDependencies\": {
    \"@types/mithril\": \"^2.0.3\",
    \"webpack\": \"^4.43.0\",
    \"webpack-cli\": \"^3.3.11\",
    \"typescript\": \"^3.6.3\"
  },
  \"scripts\": {
    \"start\": \"webpack src/index.ts --output bin/app.js -d --watch\"
  },
  \"keywords\": [],
  \"author\": \"\",
  \"license\": \"ISC\"
}
" | tee package.json
mkdir src
cd src
mkdir models
mkdir views
cd views
cd ..
touch index.ts
echo "import m from \"mithril\";
m.render(document.body, \"hello world\");
/*import Home from \"./views/Home\";
m.route(document.body, \"/\", {
  \"/\": Home,
});*/" | tee index.ts
cd ..
mkdir public 
cd public
mkdir css
touch index.html
echo "<!DOCTYPE html>
<html>
  <head>
    <meta charset=\"utf-8\" />
    <meta name=\"viewport\" content=\"initial-scale=1, width=device-width\" />
    <title>TypeScript/Mithril App</title>
    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/styles.css\" />
    <script src=\"bin/app.js\" defer></script>
  </head>
  <body></body>
</html>
" | tee index.html
cd css
touch styles.css
cd ..
cd ..
cd new_project
code .
npm start


