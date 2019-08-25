import express, { Request } from 'express'
import * as bodyParser from 'body-parser'
import { ApolloServer, gql } from 'apollo-server-express'
import { ApolloGateway, RemoteGraphQLDataSource } from '@apollo/gateway'
const { setContext } = require('apollo-link-context')
import { createHttpLink } from 'apollo-link-http'
import { GraphQLFormattedError, GraphQLError } from 'graphql'

async function run() {
  const app = express()

  // server
  const env = app.get('env')
  const currentPath = process.cwd()

  if (env === 'development') {
    const dotenv = require('dotenv')
    dotenv.config({ path: `${currentPath}/config/${env}.env` })
  }
  app.set('port', process.env.PORT || 3000)

  const gateway = new ApolloGateway({
    serviceList: [
      { name: 'accounts', url: `${process.env.ACCOUNT_URL}/graphql` },
      { name: 'products', url: `${process.env.PRODUCT_URL}/graphql` },
      { name: 'reviews', url: `${process.env.REVIEW_URL}/graphql` }
    ]
  })

  const server = new ApolloServer({
    gateway: gateway,
    introspection: true,
    subscriptions: false
  })

  server.applyMiddleware({ app: app })

  const port = app.get('port')
  app.listen(port)

  if (env === 'development') {
    console.info(
      `🚀 Server ready at http://localhost:${port}${server.graphqlPath}`
    )
  }
}

run()
