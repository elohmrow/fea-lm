BTK - Bootstrap Templating kit
==============================

BTK is a light module for Magnolia CMS with a basic set of templates ideal to start new website project based on Bootstrap framework.

If your project (html prototype from your designer) is based on Bootstrap framework, then this light module is the best place to start from. It contains all basic components such as text & image, image with modal, links / buttons and teaser, carousel, youtube video, jumbotron and html. Other then these components it also contains section component - this is a master component for rows and columns (grid) logic.

But not only components, this light module also contains home and article page templates with main area, inherited footer area and autogenerated navigation and breadcrumb areas.

These all are purely made for Bootstrap framework, but there is also few more templates which shows some every-project functionalities, such as search and search results or content app list and detail rendering, etc.

## Installation ##
Developed on Magnolia 5.4.9, suggested to use with 5.5+

With Magnolia CLI just run `mgnl install btk`.

Alternatively git clone it from https://git.magnolia-cms.com/projects/LIGHT-MODULES/repos/btk/browse and copy 'btk' folder into your Magnolia's light modules folder.

## Usage ##
After successful installation 'Home page [#btk]' and 'Article page [#btk]' should be available as a page templates when creating new page. (Use home for root page and article for any subpage)

## Sample content / demo page ##
This module also contains demo page which is not only fully build with BTK but also is a documentation for BTK functionalities including screenshots.
To see sample pages manual import is required, please import these files:

`/btk/_do-manually/bootstrap-samples/dam.btk-demo-content.xml` to dam workspace

`/btk/_do-manually/bootstrap-samples/website.btk-demo.xml` to website workspace



# Bootstrap Framework #
Bootstrap framework v3.3.7 is currently implemented in BTK.

BTK is build to work with Bootstrap Framework (www.getbootstrap.com) and all components using class names which Bootstrap Framework defines.

It does already contain and use default bootstrap.css, bootstrap.js and glyphicons.

But also source code (scss) for recompiling bootstrap.css and .js any time, all of them are in '/btk/webresources-sources' folder. Of course we strongly recommend to do it locally in development environment and then just distribute final resources which should be generated into '/btk/webresources' folder.

There are many ways ho to recompile Bootstrap resources, for example with gulp, grunt and other tools. Bellow is an example how to do it just with with 'node-sass' and 'uglifyjs'.


## Example of recompiling: ##
We expect you have Nodejs installed because you probably get this light module from npm repository, if not pls check and install https://nodejs.org/en/.

For recompiling you will need another two libraries:

* **node-sass** allow to compile SCSS files to CSS, create source-maps, optionally you can minify output files ( --output-style=compressed )

* **UglifyJS2** concatenate, minify and create source maps for javascript files

Just install both by run this command in Terminal (as an Administrator)
```
npm install -g node-sass uglify-js
```

### To compile SCSS files to CSS with source map, in '/btk/webresources-sources/scss' run: ###
```
node-sass --source-map=true -o ../webresources/css scss/*.scss
```

### To concat and compress javascript files with source map, in '/btk/webresources-sources/js' run: ###
```
uglifyjs js/bootstrap/*.js -o ../webresources/js/bootstrap.min.js --source-map ../webresources/js/bootstrap.js.map
```




# License

MIT


# Contributors

Magnolia, https://www.magnolia-cms.com

Tomáš Gregovský, tomas.gregovsky@magnolia.com