# xephas_app

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

A starter app template that has been designed by Xephas as per his coding style when he's creating new apps for projects he's working on

_Generated by [mason][1] 🧱_

## Getting Started 🚀

This is a starting point for a new brick.
A few resources to get you started if this is your first brick template:

- [Official Mason Documentation][2]
- [Code generation with Mason Blog][3]
- [Very Good Livestream: Felix Angelov Demos Mason][4]
- [Flutter Package of the Week: Mason][5]
- [Observable Flutter: Building a Mason brick][6]
- [Meet Mason: Flutter Vikings 2022][7]

[1]: https://github.com/felangel/mason
[2]: https://docs.brickhub.dev
[3]: https://verygood.ventures/blog/code-generation-with-mason
[4]: https://youtu.be/G4PTjA6tpTU
[5]: https://youtu.be/qjA0JFiPMnQ
[6]: https://youtu.be/o8B1EfcUisw
[7]: https://youtu.be/LXhgiF5HiQg
[8]: https://github.com/capps096github/Cephas-Bricks/tree/master/mason_gitignore

## Steps to use on a new flutter project

## 1. Create a new flutter project

**Note:** Everywhere u see, `project_name` replace it with the name of your flutter app directory on creation.

```bash
flutter create project_name
```

## 2. Initialize mason in the project via the command below

- Activate from https://pub.dev
```bash
dart pub global activate mason_cli
```

- Initialize Bash
```bash
mason init
```

## 3. Add the brick to the project `mason.yaml` file using one of the 2 methods below

### 3.1. From Github

Bricks can also be imported via remote git url.

a) To import the `xephas_app` brick from git, use the commands below

```bash
bricks:
#a) start here incase the bricks tag is present in the mason.yaml file to add the path to our brick on github
  xephas_app:
    git:
      url: https://github.com/capps096github/Cephas-Bricks.git
      path: xephas_app

```

b) then run mason get, to get the `xephas_app` brick from github

```bash
mason get
```

c) (Optional) to test if the `xephas_app` brick was got from github run the command below to see a list of installed bricks on your machine

```bash
mason ls
```

### 3.2 From Local Storage (Preferred) - `Skip this if you used Methode 3.1 above`

This also comes with Hooks for installing all packages and plugins needed for the app to run

Incase the brick already exists on your machine, or incase you have cloned this repo folder containing the mason brick, You can then generate the brick locally via

```bash
  xephas_app:
    path: "location of brick on your machine"
```

For example, the command below assumes that the brick named `xephas_app` exists in the location `E:\Cephas-Bricks\xephas_app` however `\\` escape character is used to represent `\`

```bash
  xephas_app:
    path: "E:\\Cephas-Bricks\\xephas_app"
```

then steps `3.1.b)` and `3.1.c)` above can be used here as the next steps

## 4. Usage

### 4.1. Variables

These are highlighted in the `json` file, but here is a list of the variables that can be used to generate the brick

- app_name
  > This is the flutter app name of your project e.g sample_app, calcut, akatabo, first_app, example_app etc. (Using flutter app name conventions i.e app_name) or (using dart package name conventions i.e app_name) or (just lowercase app name i.e appname)
- app_title
  > This is the title of your app and is used for SEO purposes
- primary_color_code
  > The primary color code of the app? (Using Hexadecimal Color Code without the "#" at the start i.e 000000)
- secondary_color_code
  > The secondary color code of the app? (Using Hexadecimal Color Code without the "#" at the start i.e 000000)
- background_color_code
  > The background color code of the app? (Using Hexadecimal Color Code without the "#" at the start i.e 000000), `default is E5E5E5`
- has_nabar
  > This is checks if the app requres a navbar so as to generate the navbar folder, `default is true`

### 4.2. Create a json file to generate the brick

This is created in the root directory of the project, and is used to generate the brick

A sample json file labeled `project_name.json` is shown below

```json
{
  "app_name": "name of the app",
  "app_title": "title of the app mostly used for SEO",
  "app_description": "Brief description of the app",
  "primary_color_code": "primary color",
  "secondary_color_code": "seconday color",
  "background_color_code": "200E32",
  "has_navbar": true
}
```

### 4.3. Generate the brick

a) (Optional) Delete the `lib` folder incase you don't need it

```bash
rmdir lib
```

b) To use this brick, run the following command:

we prefer using a _json file to generate the brick since it contains many variables, and any existing files will be overwritten_

```bash
mason make xephas_app -c project_name.json --on-conflict overwrite
```

c) Incase your using this brick together with the [`mason_gitignore`][8] brick, you can use the combined command below

i) Run the 2 commands sequentially, like one after the other

```bash
mason make xephas_app -c project_name.json --on-conflict overwrite ; mason make mason_gitignore -c project_name.json --on-conflict append
```

ii) Or run the 2 commands in parallel, like at the same time

```bash
& mason make xephas_app -c project_name.json --on-conflict overwrite ; mason make mason_gitignore -c project_name.json --on-conflict append
```

## 5. Output

This will generate the following directory structure, starting with `lib` at the root of your project.

```bash
        lib
        │   main.dart
        │   app_exporter.dart
        │   {{app_name.snakeCase()}}_todo.dart
        │   {{app_name.snakeCase()}}_variable_test.txt
        │
        ├───app
        │       exporter.dart
        │       {{app_name.snakeCase()}}.dart
        │       {{app_name.snakeCase()}}_splash.dart
        │
        ├───data
        │   │   exporter.dart
        │   │
        │   ├───cloud
        │   │       exporter.dart
        │   │
        │   ├───mock
        │   │       exporter.dart
        │   │
        │   └───model
        │           exporter.dart
        │
        ├───global
        │   │   exporter.dart
        │   │
        │   ├───constants
        │   │       border_radius.dart
        │   │       dimens.dart
        │   │       durations.dart
        │   │       exporter.dart
        │   │       formatters.dart
        │   │       margins.dart
        │   │       padding.dart
        │   │       platforms.dart
        │   │       spacing.dart
        │   │       strings.dart
        │   │
        │   ├───functions
        │   │       exporter.dart
        │   │       links_launcher.dart
        │   │
        │   ├───responsive
        │   │       exporter.dart
        │   │       {{app_name.snakeCase()}}_responsive.dart
        │   │       {{app_name.snakeCase()}}_responsive_builder.dart
        │   │
        │   ├───theme
        │   │       colors.dart
        │   │       exporter.dart
        │   │       theme.dart
        │   │
        │   └───widgets
        │       │   disclaimer.dart
        │       │   dividers.dart
        │       │   dot.dart
        │       │   entrance_fader.dart
        │       │   exporter.dart
        │       │   placeholder.dart
        │       │   spaces.dart
        │       │
        │       └───app_button
        │               app_button.dart
        │               app_text_button.dart
        │               button_body.dart
        │               circular_progress_app_button.dart
        │               exporter.dart
        │
        ├───providers
        │       exporter.dart
        │       go_router_provider.dart
        │       user_provider.dart
        │
        ├───routes
        │       error_page.dart
        │       exporter.dart
        │       paths.dart
        │       routes.dart
        │
        └───screens
            │   exporter.dart
            │
            ├───auth
            │       auth.dart
            │       exporter.dart
            │
            ├───home
            │       exporter.dart
            │       home.dart
            │
            ├───settings
            │       exporter.dart
            │       settings.dart
            │
            └───user
                    exporter.dart

```

and

```bash
        test
            widget_test.dart
```

This folder structure (tree) is generated by running the command below in the root directory of the brick

```bash
tree
```

## 6. Ignore some files from being deployed to git

a) Using the mason_gitignore brick (Recommended)

The [`mason_gitignore`][8] brick can be obtained from Github and all it's usage details can be found in its README.md file of the brick.

It simplifies the process of ignoring files generated by mason.

b) Doing it manually

```bash

# 1. In the .gitignore file in the root directory of the project
# 2. Add the following lines to the file to Ignore files generated by mason

#ignore all those files generated by mason
mason*
.mason/
# also ignore the json file used to create this app
project_name.json

# ignore the variable test file
project_name_vars.txt

```

## Add Packages used to your project

Run the following command

```bash
flutter pub add go_router url_launcher intl uuid google_fonts animations cached_network_image cupertino_icons flutter_riverpod riverpod_annotation dev:build_runner dev:custom_lint dev:riverpod_generator dev:riverpod_lint
```

## Packages Used

They appear in `project_name_exporter.dart` and are

- cupertino_icons
- flutter_riverpod
- go_router
- url_launcher
- intl
- google_fonts
- animations

## Contributing

A pull request can be made and the after review it will be merged into the main branch
