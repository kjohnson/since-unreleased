# Since Unreleased

## Installation

`composer require kjohnson/since-unreleased:dev-master`

## Usage

Given the following sytax:
```php
/**
 * @unreleased
 */ 
```

Run the script, passing a version number:
```
./vendor/bin/since-unreleased 1.0.1
```

and the `@unreleased` tag will be updated.
```php
/**
 * @since 1.0.1
 */ 
```
