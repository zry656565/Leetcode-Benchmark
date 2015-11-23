'use strict'

let fs = require('fs')
  , exec = require('exec')

let submitCurl = fs.readFileSync('./scripts/submit.sh', 'utf8')
  , checkCurl = fs.readFileSync('./scripts/check.sh', 'utf8')

exec(submitCurl, function (err, result, code) {
  if (err instanceof Error) throw err;
  let res = JSON.parse(result)
  if (res.submission_id) {
    let acturalCheckCurl = checkCurl.replace(/\$\{id\}/i, res.submission_id)
    ;(function check() {
      exec(acturalCheckCurl, function (err, result, code) {
        let res = JSON.parse(result)
        if (res.state == "SUCCESS") {
          console.log(res.status_runtime)
        } else {
          setTimeout(check, 200)
        }
      })
    }())
  }
})