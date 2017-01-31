

import Foundation


func uploadImage( oncomplete: @escaping (Void)->Void ) {

     let config = URLSessionConfiguration.default // Session Configuration
     let mySession = URLSession(configuration: config) // Load configuration into Session

     guard let data = try? Data(contentsOf: URL(fileURLWithPath: "IBM.png")) else {
     	fatalError("Could not load the data to upload")
     }

     guard let url = URL(string: "http://localhost:3000") else {
     	   fatalError("Could not create URL")
	   }


	   var request = URLRequest(url: url)
	   request.httpMethod = "POST"
	   request.httpBody = data 

	   let task = mySession.dataTask(with: request) {
            (data, response, error) in

	    print("Received a response")
	    print("data is \(data!)")

	    oncomplete()


 	    }


 	    task.resume()

}


print("Uploading the image")

uploadImage() {

	print("Done")

}


sleep(5)
