# VIVIDUS Supplyon Demo Project

[![Vividus](https://img.shields.io/badge/powered%20by-vividus-blue.svg)](

The purpose of this repository is to help users start creating automated tests using VIVIDUS.

The instructions on how to setup and generate tests project can be found in the official ["Getting Started"](https://docs.vividus.dev/vividus/latest/getting-started.html) guide.

# Installation
1. Install Java 21
2. Install Gradle (latest)
3. Clone repository `git clone --recurse-submodules <repo_url>`
4. Build the project `gradle build`
5. Run the tests `gradle runStories`
6. Check Allure report `gradle allureServe`

# Project Structure
The project follows a standard structure for a VIVIDUS-based test automation framework:

```
supplyon-demo
├── src
│   ├── main
│   │   ├── java
│   │   └── resources
│   └── test
│       ├── java
│       ├── resources
│       │   ├── stories
│       │   ├── steps
│       │   └── data
├── build.gradle
├── gradle
│   └── wrapper
├── gradlew
├── gradlew.bat
└── settings.gradle
```

- **src/main/java**: Place for main Java code if needed.
- **src/main/resources**: Place for main resources if needed.
- **src/test/java**: Place for test Java code, including step definitions and hooks.
- **src/test/resources/stories**: Directory containing BDD stories written in Gherkin syntax.
- **src/test/resources/steps**: Custom step definitions if needed.
- **src/test/resources/data**: Directory containing test data files.
- **build.gradle**: Gradle build script.
- **gradle**: Directory containing Gradle wrapper files.
- **gradlew**: Unix shell script to run Gradle.
- **gradlew.bat**: Windows batch script to run Gradle.
- **settings.gradle**: Settings for the Gradle project.

## Still have questions?
:postbox: [Contact Us](https://docs.vividus.dev/vividus/latest/index.html#_contract_us)
