import express from 'express'
import bodyParser from 'body-parser'
import { ApolloServer } from 'apollo-server'
import { ApolloGateway } from '@apollo/gateway'

const app = express()
const env = app.get('env')
const currentPath = process.cwd()

if (env === 'development') {
  const dotenv = require('dotenv')
  dotenv.config({ path: `${currentPath}/config/${env}.env` })
}

app.use(bodyParser.urlencoded({ extended: false }))
app.use(bodyParser.json())

const gateway = new ApolloGateway({
  serviceList: [
    { name: 'accounts', url: 'http://localhost:3001/graphql' },
    { name: 'products', url: 'http://localhost:3002/graphql' },
    { name: 'reviews', url: 'http://localhost:3003/graphql' }
  ]
})

const server = new ApolloServer({ gateway })

server.listen().then(({ url }) => {
  console.log(`🚀 Server ready at ${url}`)
})

export default app
