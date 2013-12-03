{exec}          = require 'child_process'
pkg             = require './package.json'

task      'build', 'Build everything', ->
  exec 'coffee --compile --output lib/ src/', (err, stdout, stderr) ->
    exec "rm -f #{pkg.name}.nw && zip -r #{pkg.name}.nw index.html package.json lib/* vendor/* css/*", (e1) ->
      throw e1 if e1
      exec "unzip -l ./#{pkg.name}.nw", (err, stdout, stderr) ->
        throw err if err
        console.log stdout + stderr

task      'run', 'Run the application', ->
  exec "/Applications/node-webkit.app/Contents/MacOS/node-webkit #{pkg.name}.nw"

