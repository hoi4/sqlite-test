# Capacitor project with native Amplitude support

## Setup

- use Node LTS
- install node modules: `npm install`
- build the project: `npm run build`
- sync the project to the native ios project: `npx cap sync`
- open xcode: `npx cap open ios`
- Build the project in Xcode

## Bug reproduction:

- When building the project, the build will error
- commenting out the `AmplitudeSwift` import in the `AmplitudePlugin.swift` file resolves the build error.
