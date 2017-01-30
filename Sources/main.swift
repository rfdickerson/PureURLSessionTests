

import Foundation
import PureURLSession


func runNetwork() {

     let config = PureURLSession.URLSessionConfiguration.default // Session Configuration
     let mySession = PureURLSession.URLSession(configuration: config) // Load configuration into Session

     guard let url = URL(string: "http://www.google.com") else {
     	   fatalError("Could not create URL")
	   }



	   let task = mySession.dataTask(with: url) {
            (data, response, error) in

	    print("Received a response")
	    print("data is \(data!)")


 	    }


 	    task.resume()

}

print("Running a network request")
runNetwork()

sleep(5)