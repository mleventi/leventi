
process.env.PATH = "./node_modules/.bin:#{process.env.PATH}"

{exec} = require 'child_process'

task 'build', 'Build project', ->
  exec 'coffee --compile --output public/scripts app/', (err, stdout, stderr) ->
    throw err if err
