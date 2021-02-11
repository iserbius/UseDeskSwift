// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "UseDesk",
    platforms: [.iOS(.v10)],
    products: [
        .library(name: "UseDesk", targets: ["UseDesk"]),
    ],
    dependencies: [
        .package(url: "https://github.com/socketio/socket.io-client-swift", from: "14.0.0"),
        .package(url: "https://github.com/Alamofire/Alamofire", from: "5.0.0")
    ],
    targets: [
        .target(
            name: "UseDesk",
            dependencies: [
                "Alamofire",
                "SocketIO"
            ],
            path: "Sources"
        ),
    ]
)
