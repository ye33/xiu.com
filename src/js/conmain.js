requirejs.config({
    paths : {
        //新名字：旧名字
        //所有依赖
         "jquery": "../lib/jquery-1.10.1.min",
         "common": "common",
         "conjs": "conjs",
         'index':'index',
         'list':'list',
         'good':'good',
         'cart':'cart',
         'content':'content',
         'jsimg':'js'
    },
    shim:{
        'common':{
            deps: ["jquery"]
        },
        'conjs':{
            deps: ["jquery"]
        },
        'content':{
            deps: ["jquery"]
        },
        'content':{
            deps: ["common"]
        },
        'content':{
            deps: ["conjs"]
        }
    }
});

requirejs(['jquery','common','conjs','content'],function($){
    console.log('ok');
});