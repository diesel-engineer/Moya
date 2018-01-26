import Foundation

/// Represents an HTTP task.
public enum Task {

    /// A request body set with `Encodable` type
    case requestJSONEncodable(Encodable)

    /// A requests body set with encoded parameters.
    case requestParameters(parameters: [String: Any], encoding: ParameterEncoding)

    /// A file upload task.
    case uploadFile(URL)

    /// A "multipart/form-data" upload task.
    case uploadMultipart([MultipartFormData])

    /// A file download task to a destination.
    case downloadDestination(DownloadDestination)

    /// A file download task to a destination with extra parameters using the given encoding.
    case downloadParameters(parameters: [String: Any], encoding: ParameterEncoding, destination: DownloadDestination)
}
