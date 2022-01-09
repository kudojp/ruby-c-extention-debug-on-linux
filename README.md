# ruby-c-extention-debug-on-linux

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

### Ref.

https://qiita.com/kudojp/items/93ca90c195d3bffd1ed0
