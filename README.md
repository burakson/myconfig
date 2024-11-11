# myconfig
 
This repo contains some of my Mac OS app configurations for;

- Homebrew
- Git
- Vim
- Zsh

## Why?

For two reasons:

1. Having a synced setup across multiple computers is not easy.
2. It is tedious to copy over different configuration files when setting up a new computer.

## How?

- Fork and clone it
- Change config files with yours
- Install homebrew
- Run `make setup`

_See all available commands via `make help`_

## FAQ

#### 1. Can I add config for another application?

Yes; create a folder, put your configuration file inside and align Makefile accordingly.

#### 2. Can I have sensitive information in any of those configurations?

If you like to. Just keep in mind that if you then use it as a public repo, you might end up exposing sensitive information.

#### 3. Why did you do this instead of using something like github.com/lra/mackup?

Fun and simplicity. I am sure there are many advanced tools out there for this purpose.
Though, this does not mean that I will never use any of those tools when things gets complicated.

## License

This project is released under the [MIT license](LICENSE.txt).
