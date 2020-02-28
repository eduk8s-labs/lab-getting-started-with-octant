var express = require('express');

var ingress_domain = process.env.INGRESS_DOMAIN;
var session_name = process.env.SESSION_NAME;
var session_namespace = process.env.SESSION_NAMESPACE;

module.exports = function(app, prefix) {
    var router = express.Router();

    router.get('/*', function(req, res) {
        res.redirect('http://'+session_name+'-octant.'+ingress_domain+'/#/overview/namespace/'+session_namespace);
    });

    return router;
}
