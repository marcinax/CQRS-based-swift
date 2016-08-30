
import Foundation

extension SequenceType {
    func map<T: Convertible where T.TIn == Self.Generator.Element>(converter: T) -> [T.TOut] {
        return self.map { value -> T.TOut in
            return converter.convert(value)
        }
    }
}