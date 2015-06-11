# Using Turtle Shell with Nix

Using a simple wrapper script called `turtle` allows your Turtle shell programs to execute with a simple shebang. [[http://nixos.org/nix][Nix]] will take care of installing the necessary dependencies if you don't have them already.

## Set your PATH environment varible using `bin/env`.

```shell
$ source bin/env
```

## Then you can execute the sample Turtle scripts like this:

```shellsession
$ examples/hello-turtle
Turtle
```

## a Turtle Shell script can start with a simple shebang:

```Haskell
#!/usr/bin/env turtle

main = echo "Hello, Turtle!"
```

## References

- Gabriel's original blog post, [[http://www.haskellforall.com/2015/01/use-haskell-for-shell-scripting.html][Use Haskell for shell scripting]]
- [[http://hackage.haskell.org/package/turtle][Turtle on hackage]]
- [[https://github.com/Gabriel439/Haskell-Turtle-Library][Turtle on GitHub]]
- [[http://hackage.haskell.org/package/turtle-1.0.2/docs/Turtle-Tutorial.html][The Turtle Tutorial]]
