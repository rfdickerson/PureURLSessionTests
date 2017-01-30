import PackageDescription

let package = Package(
    name: "TestURL",
	dependencies: [
		.Package(url: "https://github.com/rfdickerson/PureURLSession", majorVersion: 0)
	]
)
