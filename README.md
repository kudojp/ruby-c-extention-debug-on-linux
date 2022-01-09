# ruby-c-extention-debug-on-linux

## About this repository

This is to reproduce a bug described in [kudojp/async_scheduler@pull#9](https://github.com/kudojp/async_scheduler/pull/9#issue-1096874214).

## How to boot up

In your local directory,

```sh
$ docker build . -t ruby-debug
$ git clone https://github.com/kudojp/async_scheduler.git ./ruby_scripts/async_scheduler
$ docker run \
    --mount type=bind,source=$(pwd)/ruby_scripts,target=/ruby_scripts \
    -it ruby-debug
```

In the docker container,

```
# gdb --args ./ruby /ruby_scripts/async_script.rb
```

In the gdb console,

```
(gdb) break rb_io_puts
(gdb) run
```

## Ref.
- https://qiita.com/kudojp/items/93ca90c195d3bffd1ed0
