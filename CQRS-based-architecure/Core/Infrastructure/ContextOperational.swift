

import Foundation
import RxSwift

protocol ContextOperational {
    associatedtype TContext
    associatedtype TOut
    func execute(context: TContext) -> TOut
}