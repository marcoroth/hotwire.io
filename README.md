# Hotwire.io

The JavaScript Ecosystem for Server-rendered Web-Applications.

## Getting started

### Running locally

#### Running app locally

1. Clone the repository:

```bash
git clone https://github.com/marcoroth/hotwire.io
```

2. Install dependencies:

```bash
cd hotwire.io
```

3. Setup the app (install dependencies, create the database, etc.)

```bash
bin/setup
```

4. Run the app locally:

```bash
bin/dev
```

5. The app should be now available at <http://localhost:3000>

```bash
open http://localhost:3000
```

#### Running linters locally

To run ERB linters with the provided configuration, follow these steps:

1. Open your project's root directory in the terminal.
2. Run the linting command:

 ```bash
bin/lint
 ```

3. Review the linting results.
4. Make necessary corrections to your ERB templates.

- You can use the ``` --lint-all ``` option to lint all ERB files in the current directory and its descendants.
- You can use the ``` --autocorrect ``` option to automatically correct some linting errors.
- You can use the ``` -f ``` option to specify a different configuration file.
- You can use the ``` -h ```  option to see a list of all available options.

For example, to lint all ERB files in the current directory and its descendants and automatically correct some linting errors, you would run the following command:

```bash
 erb-lint --lint-all --autocorrect
```

#### Contributing

1. Fork the repository on GitHub.
2. Follow steps in "Running locally" section above
3. Update your git remote URL

```bash
git remote set-url origin https://github.com/[user]/hotwire.io
```

4. Fetch latest changes from your fork

```bash
git fetch origin
```

5. Create new branch for your feature

```bash
git checkout -b your-feature
```

6. Do your changes

7. Commit your work

```bash
git commit -m "Message"
```

8. Push your changes to your fork

```bash
git push origin
```

9. Open pull request on GitHub

### License

The project is available as open source under the terms of the [MIT License](https://opensource.org/license/mit/).
