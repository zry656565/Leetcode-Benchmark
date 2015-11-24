'use strict'

let fs = require('fs')
  , mongo = require('mongodb')
  , MongoClient = mongo.MongoClient

var result = [];

let url = 'mongodb://localhost:27017/leetcode'
MongoClient.connect(url, function (err, db) {
  console.log('Connected correctly to server')
  let bm = db.collection('benchmark')
    , cursor = bm.find()
  
  cursor.each(function(err, obj) {
    if (err) console.log(err)
    else {
      if (!obj) {
        db.close()
        fs.writeFileSync('data.json', JSON.stringify(result))
      } else {
        result.push({
          'timestamp': obj.timestamp,
          'runtime': parseInt(obj.runtime, 10)
        })
      }
    }
  })
})