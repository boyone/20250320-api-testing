# E2E Testing with Postman

## 1. Overview:System Under Tests and Dependencies

- Components and Version
- Data: Initial Data and Test Data
- Protocol and API Spec

## 2. Behind The Sense

- HTTP(s) API
  - RESTFul API
  - JSON
  - XML
- [Graphql](https://learning.postman.com/docs/sending-requests/graphql/graphql-overview/)
- [gRPC](https://learning.postman.com/docs/sending-requests/grpc/grpc-client-overview/)
- [WebSocket](https://learning.postman.com/docs/sending-requests/websocket/websocket-overview/)
  - ws://
  - wss://

## 3. Postman

- Supported Protocol
- HTTP, HTTPS(Verify, Self Signed)
  - Protocol
  - Method: GET, POST, PUT, DELETE
  - URL/PATH
  - Header
    - Status code
    - Parameter
    - Content-Type
    - Authenticate
  - Body
    - JSON
- Anatomy of UI

---

## In Action

### 1. Workshop: Sck-Online-Store

- [Collection](https://learning.postman.com/docs/collections/collections-overview/)
- Request
- History & Console
- Prescript
- Postscript: pm
- Chai: idiom
- Run Collection
- Report

#### Life Cycle[Part 1]

### 2. Working with Test Data

- CSV
- JSON

#### Life Cycle[Part 2]

### 3. Working with [Variables and Environments](https://learning.postman.com/docs/sending-requests/variables/variables-intro/)

- Global
- Collection
- Environment
- Data(external CSV and JSON files)
- Local(request or collection run)

> - If a variable with the same name is declared in two different scopes, the value stored in the variable with narrowest scope will be used. For example, if there is a global variable named `username` and a local variable named `username`, the local value will be used when the request runs.

> - Postman stores variables as strings. If you store objects or arrays, remember to `JSON.stringify()` them before storing, and `JSON.parse()` them when you retrieve them.

### 4. Working with XML(Response's body): [store-service-stub v1](https://github.com/boyone/store-service-stub)

    ```js
    const responseJson = xml2Json(pm.response.text());
    ```

### 5. Authentication and Authorization: [store-service-stub v2](https://github.com/boyone/store-service-stub)

### 6. Documentation

- [learning postman documentation](https://www.postman.com/postman/postman-public-workspace/documentation/)
- [postman to markdown](https://www.npmjs.com/package/postman-to-markdown)

### 7. Mock API

---

## [Newman](https://learning.postman.com/docs/collections/using-newman-cli/command-line-integration-with-newman/) & CLI Options

### 1. Install

    ```sh
    npm install -g newman
    ```

### 2. Run Newman

    ```sh
    newman run my-collection.json [options]
    ```

    ```sh
    newman run -h
    ```

### 3. [Newman Command Options](https://learning.postman.com/docs/collections/using-newman-cli/newman-options/)

- -d --data
- -e --environment
- -k --insecure
- --folder
- --bail

### 4. [Reporters](https://learning.postman.com/docs/collections/using-newman-cli/newman-built-in-reporters/)

#### Built-in Reporters

- cli
- json
- junit
- progress
- emojitrain

      ```sh
      newman run my-collection.json -r cli,json
      ```

#### External Reporters

- html

      ```sh
      npm install -g newman-reporter-html
      ```
      ```sh
      newman run my-collection.json -r html
      ```

- htmlextra

      ```sh
      npm install -g newman-reporter-htmlextra
      ```
      ```sh
      newman run my-collection.json -r htmlextra
      ```

### 5. [Newman with Docker](https://learning.postman.com/docs/collections/using-newman-cli/newman-with-docker/)

---

## 5. Makefile

## 6. OpenAPI

- API First
- Generate: Server, Client
- [postman to openapi](https://joolfe.github.io/postman-to-openapi/)
- [postman2openapi](https://github.com/kevinswiber/postman2openapi)

## 8. Working with Legacy Services(Test Last)

- [x]Postman: Start Proxy [Capture API Traffic](https://learning.postman.com/docs/sending-requests/capturing-request-data/capture-overview/)
- Proxyman
- Record and Replay

---

## Tricks

### Array.find(fn)

### Call Until...

### Token and Global Variables

---

## References

### [Package Library](https://learning.postman.com/docs/tests-and-scripts/write-scripts/package-library/)

### [Dynamic Variables](https://learning.postman.com/docs/tests-and-scripts/write-scripts/variables-list/)

### [Postman JavaScript reference](https://learning.postman.com/docs/tests-and-scripts/write-scripts/postman-sandbox-api-reference/)

### [Postbot](https://learning.postman.com/docs/getting-started/basics/about-postbot/)

### [Postman Flows](https://learning.postman.com/docs/postman-flows/overview/)

### [newman-reporter-influxdb](npm install -g newman-reporter-influxdb)