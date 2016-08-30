
import Foundation

final class OperationHandler: Providing {
    func execute<TOut, O: Operational where O.TOut == TOut>(operation: O) -> TOut {
        return operation.execute()
    }
}