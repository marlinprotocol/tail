# Go package for tail-ing files (modified for marlinstash)
**NOTE**: This is a modified version of `hpcloud/tail` - modified to work well with `marlinprotocol/marlinstash`.

A Go package striving to emulate the features of the BSD `tail` program. 

```Go
t, err := tail.TailFile("/var/log/nginx.log", tail.Config{Follow: true})
for line := range t.Lines {
    fmt.Println(line.Text)
}
```

See [API documentation](http://godoc.org/hpcloud/tail).

## Log rotation

Tail comes with full support for truncation/move detection as it is
designed to work with log rotation tools.

