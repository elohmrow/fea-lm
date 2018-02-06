var Dumbo = function () {
    this.name = "John";
    this.getRandomNumber = function () {
        return Math.ceil(100 * Math.random());
    }
/*
    this.getStr = function () {
        var str = '';
        var http = require('http');

        http.get('http://jsonplaceholder.typicode.com/posts/1', function(res) {

            res.on('data', function (chunk) {
                str += chunk;
            });

            res.on('end', function () {
                return str;
            });
        });
    }
*/
};

new Dumbo();
