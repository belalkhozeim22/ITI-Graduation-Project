const express = require('express')
const app = express()
const port = 3000
app.get('/', (req, res) => {
    res.send('final task, deploy nodejs app')
  })
  
  app.listen(port, () => {
    console.log(`Example app listening at http://localhost:${port}`)
  })
