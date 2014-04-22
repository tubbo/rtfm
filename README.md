# RTFM: A Documentation Server

This is a private documentation server, initially designed for use with
RDoc, but it can really be used with any HTML-formatted documentation
like Doxygen or Javadoc. It's a basic Rack app that serves documentation
from a specific directory, and gives you a nice little front page for
navigation.

## Setup

This is how you set up RTFM manually on a server, or for development
purposes:

### Requirements

- Ruby 2.1
- Bundler

### Process

Clone down this repo:

```bash
$ git clone https://github.com/telvue/rtfm.git
```

Install the bundle:

```bash
$ bundle install
```

Start the server:

```bash
$ ./bin/rtfm
```

## Usage

Just upload your documentation to the `public/` directory of this repo,
and RTFM will automatically find the folder name and link to it on the
front page.

## Contributing

Make your contributions in the form of a pull request, and be sure to
include tests.
