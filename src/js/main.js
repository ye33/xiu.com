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
        'index':{
            deps: ["jquery"]
        },
        'index':{
            deps: ["common"]
        },
        'index':{
            deps: ["conjs"]
        },
        'list':{
            deps: ["jquery"]
        },
        'list':{
            deps: ["common"]
        },
        'list':{
            deps: ["conjs"]
        },
        'good':{
            deps: ["jquery"]
        },
        'good':{
            deps: ["common"]
        },
        'good':{
            deps: ["conjs"]
        },
        'good':{
             deps: ["jsimg"]
        },
        'good':{
             deps: ["list"]
        },
        'cart':{
            deps: ["jquery"]
        },
        'cart':{
            deps: ["common"]
        },
        'cart':{
             deps: ["list"]
        },
        'cart':{
             deps: ["good"]
        },
        'reg':{
            deps: ["jquery"]
        },
        'reg':{
            deps: ["common"]
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

requirejs(['jquery','common','conjs','index'],function($){
    console.log('ok');
});