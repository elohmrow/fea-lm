var http=require('http');

 http.get('http://jsonplaceholder.typicode.com/posts/1', function(res){
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
