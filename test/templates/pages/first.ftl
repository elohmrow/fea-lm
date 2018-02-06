<!DOCTYPE html>
<html xml:lang="en" lang="en" class="no-js">
    <head>
        [@cms.page /]
        
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <link rel="stylesheet" href="${ctx.contextPath}/.resources/test/webresources-basic/bootstrap.css" media="screen">
    </head>
    <body>
        <div class="container">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title">${content.title!"Hello World - Page"}</h3>
                </div>
                <div class="panel-body">
                    <p>${content.abstract!"This will become the page's abstract."}</p>
                </div>
            </div> 
            [#-- ****** main area ****** --]
            <!-- ADD AREA TAG HERE -->
            [@cms.area name="main" /]
        </div>
    </body>
</html>
