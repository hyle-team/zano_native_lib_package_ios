# Check if zano_ios.xcframework exists and remove it if necessary
if [ -d "./zano_ios.xcframework" ]; then
    echo "Removing existing zano_ios.xcframework..."
    rm -rf "./zano_ios.xcframework"
fi

# Clean the build directory
xcodebuild clean -project "zano-ios.xcodeproj" -scheme "zano-ios" -configuration Release

# Build for iOS Simulator
xcodebuild build \
    -project "zano-ios.xcodeproj" \
    -scheme "zano-ios" \
    -destination "generic/platform=iOS Simulator" \
    -configuration Release \
    -derivedDataPath build \
    Build_library_for_distribution=YES

# Build for iOS Device
xcodebuild build \
    -project "zano-ios.xcodeproj" \
    -scheme "zano-ios" \
    -destination "generic/platform=iOS" \
    -configuration Release \
    -derivedDataPath build \
    Build_library_for_distribution=YES

# Create XCFramework
xcodebuild \
    -create-xcframework \
    -framework "build/Build/Products/Release-iphoneos/zano_ios.framework" \
    -framework "build/Build/Products/Release-iphonesimulator/zano_ios.framework" \
    -output "./zano_ios.xcframework"
