# Capacitor project with native Amplitude support

## Setup

- use Node LTS
- install node modules: `npm install`
- build the project: `npm run build`
- install [rbenv](https://www.google.com/url?q=https%3A%2F%2Fgithub.com%2Frbenv%2Frbenv&sa=D&sntz=1&usg=AOvVaw1QQTi917plLWXVpivEfAsc): Follow the [installation steps](https://github.com/rbenv/rbenv#installation)
- execute `rbenv install` in the project root folder
- install Bundler by executing `gem install bundler` (`sudo` should not be necessary, otherwise the `rbenv` setup is incorrect)
- execute `bundle install`
- sync the project to the native ios project: `npx cap sync`
- open xcode: `npx cap open ios`
- Build the project in Xcode

## Bug reproduction:

- When building the project, the build will error
- commenting out the `AmplitudeSwift` import in the `AmplitudePlugin.swift` file resolves the build error.
