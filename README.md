# ruby-c-extention-debug-on-linux

In your local directory,

```sh
$ docker build . -t ruby-debug
$ docker run -it ruby-debug sh
```

In the docker container,

```
# echo 'puts "hello"' > hello.rb
# gdb --args ./ruby ./hello.rb
```

In the gdb console,

```
(gdb) break rb_io_puts
(gdb) run
```

### Ref.

https://qiita.com/kudojp/items/93ca90c195d3bffd1ed0
