# produce-example-no-conf
A no-configuration example for [`produce`](https://github.com/etabits/node-produce) engine.

`produce` looks at your [`package.json`](https://github.com/aularon/produce-example-no-conf/blob/master/package.json) and finds plugins, automatically sets `rules`, `source` and `target` based on command line arguments

## Setup
### 1. Clone repository
```sh
git clone https://github.com/aularon/produce-example-no-conf.git
cd produce-example-no-conf/
npm install
```
### 2. Install `produce` globally
```sh
npm install -g produce
```

## Run
### 1. Development mode (serve/preview/etc.)
This mode takes one argument, that is the source directory, and creates a `FileSystemSource` out of it, then delivers it over HTTP (using `HTTPTarget`) on port 9000 (or `PORT` environment variable)
```sh
PORT=9001 produce source/
```
After that point your browser at http://localhost:9001/index.html and it will serve automatically-transformed files

### 2. Production mode (dist/build/etc.)
This mode takes two arguments, first is the source directory and the second is the target directory, and creates a `FileSystemSource` and `FileSystemTarget` out of them, then runs transforming every file in source dir to target dir, using the transformation rules provided by the automatically loaded plugins
```sh
produce source/ target/
```
`target/` is an arbitrarily named folder, it can be anything.
