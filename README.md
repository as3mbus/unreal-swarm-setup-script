# Unreal Swarm Setup Script

![version](https://img.shields.io/badge/Version-1.0.0-brightgreen)

<!-- TABLE OF CONTENTS -->
Table of Contents

1. [Overview](#overview)
1. [Dependency](#dependency)
1. [Contributing](#contributing)
1. [License](#license)

<!-- ABOUT THE PROJECT -->

## Overview

This script serve as quick setup script to setup Unreal Swarm. This setup process includes autostart installation, and firewall rule configuration

## Dependency

1. Windows 10 or later
1. Administrator privilege (For Firewall rule configuration)

<!-- USAGE EXAMPLES -->

## Usage

1. setup swarm agent following [Unreal Engine Official Guide](https://docs.unrealengine.com/5.1/en-US/unreal-swarm-in-unreal-engine/)
   - `Deploying Swarm Agents`` Section
1. move scripts to directory with swarm agent executables
1. edit SetupSwarmAgent.bat with text editor
   - change IP_RANGE variable to your desired range to suit your network and security measure
1. execute `SetupSwarmAgent.bat`

<!-- CONTRIBUTING -->

## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<!-- LICENSE -->

## License

Distributed under the MIT License.
