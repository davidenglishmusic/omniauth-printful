# OmniAuth Printful

This gem contains the Printful strategy for OmniAuth.

## Installing

Add to your `Gemfile`:

```
gem 'omniauth-printful'
```

Then `bundle install`.

## Basic Usage

```
use OmniAuth::Builder do
    provider :printful, ENV['PRINTFUL_CLIENT_ID'], ENV['PRINTFUL_CLIENT_SECRET']
end
```
