import Foundation

let url = URL(string: "http://www.wayapp.eu/public/api/login")
guard let requestUrl = url else { fatalError() }

// Prepare URL Request Object
var request = URLRequest(url: requestUrl)
request.httpMethod = "POST"
 
// HTTP Request Parameters which will be sent in HTTP Request Body
let postString = "email=norwagov43@gmail.com&password=hj83367107"

// Set HTTP Request Body
request.httpBody = postString.data(using: String.Encoding.utf8);

// Perform HTTP Request
let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
        
        // Check for Error
        if let error = error {
            print("Error took place \(error)")
            return
        }
 
        // Convert HTTP Response Data to a String
        if let data = data, let dataString = String(data: data, encoding: .utf8) {
            print("Response data string:\n \(dataString)")
        }
}
task.resume()
