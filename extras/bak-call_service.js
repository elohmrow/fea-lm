var http=require('http');

 http.get('http://eternagame.wikia.com/wiki/EteRNA_Dictionary', function(res){
      var str = '';
      console.log('Response is '+res.statusCode);

      res.on('data', function (chunk) {
            //console.log('BODY: ' + chunk);
             str += chunk;
       });

      res.on('end', function () {
           console.log(str);
      });

});
