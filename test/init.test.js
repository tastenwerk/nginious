/* jslint node: true */
'use strict';

var vows          = require('vows'),
    assert        = require('assert'),
    request       = require('superagent'),
    caminio       = require('../index');

vows
  .describe('caminio()')
  .addBatch({
    'default config': {
      topic: caminio(),

      '@env: development': function( app ){
        assert.equal( app.env, 'development');
      },

      '@config: {}': function( app ){
        assert.isObject( app.config );
      },

      '@config.env: development': function( app ){
        assert.equal( app.config.env, 'development');
      } 
    }
  })
  .addBatch({
    '#start': {
      topic: function(){
        var cb = this.callback;
        caminio().start( function(err,cb){
        });

      'server is running': function( app ){
        assert.equal( app.status, 'running' );
      }
    }
  })
  .export(module);