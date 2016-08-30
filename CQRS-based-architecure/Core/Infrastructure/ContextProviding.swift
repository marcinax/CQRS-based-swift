

import Foundation
import RxSwift

protocol ContextProviding {
    associatedtype TContext
    
    func execute<TOut, O: ContextOperational where O.TContext == TContext, O.TOut == TOut>(operation: O) -> TOut
}