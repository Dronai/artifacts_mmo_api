<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->
# Artifacts MMO API

This is my very first package.

Artifacts MMO is an API-based game.
You can control up to 5 characters to collect resources, kill monsters and level up your characters.

The website: https://www.artifactsmmo.com/

This package implements the Artifacts MMO APIs.
I'm using this package as a laboratory to test package development.

Feel free to give feedback!

There is another package with the same purpose:
https://github.com/regenvanwalbeek/artifacts_mmo_openapi

## Features

Considering that every function that doesn't appear in this list is not implemented

<details>
<summary>Account</summary>

| Method | Function             | Implemented        |
|--------|----------------------|--------------------|
| GET    | getAccountCharacters | :white_check_mark: |

</details>

<details>
<summary>Characters</summary>

| Method | Function        | Implemented        |
|--------|-----------------|--------------------|
| POST   | createCharacter | :white_check_mark: |
| GET    | getCharacter    | :white_check_mark: |
| DELETE | deleteCharacter | :white_check_mark: |

</details>

<details>
<summary>Effects</summary>

| Method | Function      | Implemented        |
|--------|---------------|--------------------|
| GET    | getAllEffects | :white_check_mark: |

</details>

<details>
<summary>Items</summary>

| Method | Function    | Implemented        |
|--------|-------------|--------------------|
| GET    | getAllItems | :white_check_mark: |

</details>

<details>
<summary>Map</summary>

| Method | Function   | Implemented        |
|--------|------------|--------------------|
| GET    | getAllMaps | :white_check_mark: |
| GET    | getMap     | :white_check_mark: |

</details>

<details>
<summary>Monsters</summary>

| Method | Function      | Implemented        |
|--------|---------------|--------------------|
| GET    | getAllMonster | :white_check_mark: |
| GET    | getMonster    | :white_check_mark: |

</details>

<details>
<summary>MyAccount</summary>

| Method | Function            | Implemented        |
|--------|---------------------|--------------------|
| GET    | getMyAccountDetails | :white_check_mark: |

</details>

<details>
<summary>Resources</summary>

| Method | Function            | Implemented        |
|--------|---------------------|--------------------|
| GET    | getMyAccountDetails | :white_check_mark: |

</details>

<details>
<summary>Token</summary>

| Method | Function               | Implemented        |
|--------|------------------------|--------------------|
| GET    | getMyCharacters        | :white_check_mark: |
| POST   | actionFight            | :white_check_mark: |
| POST   | actionRest             | :white_check_mark: |
| POST   | actionEquipItem        | :white_check_mark: |
| POST   | actionUnequipItem      | :white_check_mark: |
| POST   | actionUseItem          | :white_check_mark: |
| POST   | actionGathering        | :white_check_mark: |
| POST   | actionCrafting         | :white_check_mark: |
| POST   | actionRecycling        | :white_check_mark: |
| POST   | actionDeleteItem       | :white_check_mark: |
| POST   | actionDepositBankGold  | :white_check_mark: |
| POST   | actionWithdrawBankGold | :white_check_mark: |
| POST   | actionDepositBank      | :white_check_mark: |
| POST   | actionWithdrawBank     | :white_check_mark: |

</details>

<!--
## Getting started

Nothing for the moment

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder.

```dart
const like = 'sample';
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.
-->