# Some key notes About our Bricks

## Bricks

For scenarios where we shall need to create a new brick, we shall do this in the parent directory of the brick (Cephas BrickHub). This is because we shall need to create a new git repository for the brick.

## Getting Started 🚀

This is a starting point for a new brick.
A few resources to get you started if this is your first brick template:

- [Official Mason Documentation][2]
- [Code generation with Mason Blog][3]
- [Very Good Livestream: Felix Angelov Demos Mason][4]
- [Flutter Package of the Week: Mason][5]
- [Observable Flutter: Building a Mason brick][6]
- [Meet Mason: Flutter Vikings 2022][7]

[2]: https://docs.brickhub.dev
[3]: https://verygood.ventures/blog/code-generation-with-mason
[4]: https://youtu.be/G4PTjA6tpTU
[5]: https://youtu.be/qjA0JFiPMnQ
[6]: https://youtu.be/o8B1EfcUisw
[7]: https://youtu.be/LXhgiF5HiQg

## Initalization and Usage of a brick to create actual project

Initialization via a configuration file named app.json

```bash
mason make brick_name -c app.json --on-conflict overwrite
```

We can do initialization via A configuration file named config.json

```bash
mason make brick_name -c config.json --on-conflict overwrite
```

## Creating a Brick

1. Without hooks

   ```bash
   mason new brick_name
   ```

2. With hooks

   ```bash
   mason new brick_name --hooks
   ```

3. With hooks and decription

   ```bash
   mason new brick_name --hooks --description "A brick for creating a new flutter project"
   ```

## Help

For help when creating a brick and you need to view the available options and commands for the variables, you can use the following command:

```bash
make make brick_name --help
```

## Adding a local brick to mason.yaml

This can be found in the brickhub documentation via the link above.
[Local Installation](https://docs.brickhub.dev/brick-development#local-installation)

For some reason, you may need to add a local brick to the mason.yaml file. You can do this by adding the following to the mason.yaml file:

a) If it is not in the same directory as mason.yaml

```bash
mason add brick_name --path parent_folder/brick_name_folder
```

b) If it is in the same directory as mason.yaml

```bash
mason add brick_name --path brick_name_folder
```

## Using Mason VS Code extension

We can use the Mason VS code extension for some handy workflows without hustle, for example You can press F1 or Ctrl + Shift + P in VS code and it will pop up a window where u can do mason stuff

## Steps to create a brick

- Initialize using `mason init`
- Create a new brick with hooks mason new brick_name
- mason make brick_name
- mason make brick_name -c config.json --on-conflict overwrite

## Welcome to the xephas_app template

This is an app template that follows the [xephas] coding pattern as he builds his apps.
