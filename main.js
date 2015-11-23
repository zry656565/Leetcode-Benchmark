'use strict'

let fs = require('fs')
  , exec = require('exec')
  , mongodb = require('mongodb')
  , MongoClient = mongodb.MongoClient

let submitCurl = fs.readFileSync('./scripts/submit.sh', 'utf8')
  , checkCurl = fs.readFileSync('./scripts/check.sh', 'utf8')

// execute curl program
exec(submitCurl, function (err, result, code) {
  if (err instanceof Error) throw err;
  let res = JSON.parse(result)
  if (res.submission_id) {
    let acturalCheckCurl = checkCurl.replace(/\$\{id\}/i, res.submission_id)
    ;(function check() {
      exec(acturalCheckCurl, function (err, result, code) {
        let res = JSON.parse(result)
        if (res.state == "SUCCESS") {
          dbInsert({
            timestamp: Date.now(),
            runtime: res.status_runtime
          })
          console.log(res.status_runtime)
        } else {
          setTimeout(check, 200)
        }
      })
    }())
  }
})

function dbInsert(obj) {
  let url = 'mongodb://localhost:27017/leetcode'
  MongoClient.connect(url, function (err, db) {
    console.log('Connected correctly to server')
    
    let collection = db.collection('benchmark')
    collection.insertMany([obj], function (err, result) {
      if (err) console.log(err)
      else console.log("Insert Successfully.")
      db.close()
    })
  })
}
