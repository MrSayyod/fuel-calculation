[![hire-badge](https://img.shields.io/badge/Consult%2FHire%20Sayyod-Contact%20with%20Sayyod-brightgreen)](mailto:ssayyod@gmail.com)[![Twitter Follow](https://img.shields.io/twitter/follow/sayyodsaidov?label=Follow%20Sayyod%20on%20Twitter&style=social)](https://twitter.com/sayyodsaidov)

# fuel-calculation
It is a test task by Elixirator. The goal of this application is to calculate fuel to launch from one planet of the Solar system, and to land on another planet of the Solar system, depending on the flight route.

## Test Task Details 
Congratulations! You have received a contract from NASA for software application, which will help to calculate fuel required for the flight. The goal of this application is to calculate fuel to launch from one planet of the Solar system, and to land on another planet of the Solar system, depending on the flight route.

Formula to calculate fuel is quite simple, but it depends on the planet's gravity. Planets NASA is interested in are:

Earth - 9.807 m/s2
Moon - 1.62 m/s2
Mars - 3.711 m/s2

The formula for fuel calculations for the launch is the following:

mass * gravity * 0.042 - 33 rounded down

The formula for fuel calculations for the landing is the following:

mass * gravity * 0.033 - 42 rounded down

For example, for the Apollo 11 Command and Service Module, with a weight of 28801 kg, to land it on the Earth, the required amount of fuel will be:

28801 * 9.807 * 0.033 - 42 = 9278

But fuel adds weight to the ship, so it requires additional fuel, until additional fuel is 0 or negative. Additional fuel is calculated using the same formula from above.

9278 fuel requires 2960 more fuel
2960 fuel requires 915 more fuel
915 fuel requires 254 more fuel
254 fuel requires 40 more fuel
40 fuel requires no more fuel

So, to land Apollo 11 CSM on the Earth - 13447 fuel required (9278 + 2960 + 915 + 254 + 40).

Application should receive a flight route as 2 arguments. First one is the flight ship mass, and second is an array of 2 element tuples, with the first element being land or launch directive, and second element is the target planet gravity.

But take into account that to land a module on the Moon, you need additional fuel, which should be launched from the Earth - we don’t have a refuel station in space - and we need to carry fuel for all steps from the very beginning. 

For example, for the program to launch the ship from the Earth, land it on the Moon, and return back to the Earth, input arguments will look like this:
Ruby - 28801, [[:launch, 9.807], [:land, 1.62], [:launch, 1.62], [:land, 9.807]]
Elixir - 28801, [{:launch, 9.807}, {:land, 1.62}, {:launch, 1.62}, {:land, 9.807}]
Python - 28801, [(9.807, 1.62), (1.62, 9.807)]

And remember, you are hired by NASA, and reliability is crucial. We have no right for a mistake.

Here are examples of programs and required fuel for the whole mission:

Apollo 11:
path: launch Earth, land Moon, launch Moon, land Earth
weight of equipment: 28801 kg
weight of fuel: 51898 kg
arguments: 28801, [[:launch, 9.807], [:land, 1.62], [:launch, 1.62], [:land, 9.807]]
Mission on Mars:
path: launch Earth, land Mars, launch Mars, land Earth
weight of equipment: 14606 kg
weight of fuel: 33388 kg
arguments: 14606, [[:launch, 9.807], [:land, 3.711], [:launch, 3.711], [:land, 9.807]]
Passenger ship:
path: launch Earth, land Moon, launch Moon, land Mars, launch Mars, land Earth
weight of equipment: 75432 kg
weight of fuel: 212161 kg
arguments: 75432, [[:launch, 9.807], [:land, 1.62], [:launch, 1.62], [:land, 3.711], [:launch, 3.711], [:land, 9.807]]

P.S. It is very important to create not just working code but also maintainable and readable code, so take your time and show your best.

# About Project
The purpose of this project is to show skills on Ruby by solving the test. The test task is given by Elixirator

# Built With
 - Ruby 3.0.0
 - Rubocop 1.30.0
 - VSCode editor

# Getting Started
To get started, you should first get this file in your local machine by downloading this project or typing.
`
git clone https://github.com/MrSayyod/fuel-calculation.git
`

## Prerequisites
    Ruby installed on local machine
    Text editor (preferably: VSCode, Atom, Sublime)
    Git

## Setup and running
   If you have installed `Ruby` on your machine:
   1. Clone the project into your local machine using `git clone` command or download the zip file.
   2. Go into the project directory using `cd directory name` command.
   3. From the root directory type `main` command.
   
# Contributing

:handshake: Contributions, issues and feature requests are welcome! 
Start by:

    1. Forking the project
    2. Cloning the project to your local machine
    3. cd into the project directory
    4. Run git checkout -b your-branch-name
    5. Make your contributions
    6. Push your branch up to your forked repository
    7. Open a Pull Request with a detailed description to the development branch of the original project for a review

Please feel free to contribute to any of these!

Feel free to check the [issues page](https://github.com/MrSayyod/Ruby-Capstone-Project-Scraper/issues).

# Authors

:man_technologist: Sayyod Saidov

- Email: ssayyod@gmail.com
- Github: [@MrSayyod](https://github.com/MrSayyod) 
- LinkedIn:  [Sayyod Saidov](https://www.linkedin.com/in/sayyod-saidov-507b0818b)
- Twitter: [Sayyod Saidov](https://twitter.com/sayyodsaidov)
- Facebook: [Sayyod Saidov](https://www.facebook.com/sayyod)

# Show your support!

Give a :star2: if you like this project! :blush:

📝 Copyright

## Acknowledgments

> - [Rubocop](https://docs.rubocop.org/en/stable/)

Happy coding!