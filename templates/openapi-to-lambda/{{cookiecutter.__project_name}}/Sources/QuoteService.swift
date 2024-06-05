import Foundation
import OpenAPIRuntime
import OpenAPILambda

@main
struct QuoteServiceImpl: APIProtocol, OpenAPILambdaHttpApi {

  init(transport: OpenAPILambdaTransport) throws { 
    try self.registerHandlers(on: transport)
  }

  func getQuote(_ input: Operations.getQuote.Input) async throws -> Operations.getQuote.Output {

    let symbol = input.path.symbol

    // generate the response with random numbers. 
    // adjust for your own logic
    let price = Components.Schemas.quote(
        symbol: symbol,
        price: Double.random(in: 100..<150).rounded(),
        change: Double.random(in: -5..<5).rounded(),
        changePercent: Double.random(in: -0.05..<0.05),
        volume: Double.random(in: 10000..<100000).rounded(),
        timestamp: Date())

    return .ok(.init(body: .json(price)))
  }
}
