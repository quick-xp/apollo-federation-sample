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
    { name: 'accounts', url: `${process.env.ACCOUNT_URL}/graphql` },
    { name: 'products', url: `${process.env.PRODUCT_URL}/graphql` },
    { name: 'reviews', url: `${process.env.REVIEW_URL}/graphql` }
  ]
})

const server = new ApolloServer({ gateway })

server.listen().then(({ url }) => {
  console.log(`🚀 Server ready at ${url}`)
})

export default app
