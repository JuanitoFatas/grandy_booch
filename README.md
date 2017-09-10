# GrandyBooch

Grandy will look at `ENV` and answer your questions about Continuous Integration.

## Installation

Add this line then `bundle`:

```ruby
gem "grandy_booch"
```

or `gem install grandy_booch`.

## Usage

```
result = GrandyBooch.new(env).think
result.ci => GB::Travis, GB::Circle
result.repo (#slug, #url)
result.pull_request.present? => true / false
result.pull_request
  #number, #platform (github/gitlab)
```

## License, Contributor's Guidelines

- MIT license
- [Moya Contributors Guidelines][moya] which TLDR: means we give out push access easily and often.

[mit]: https://opensource.org/licenses/MIT
[moya]: https://github.com/Moya/contributors
