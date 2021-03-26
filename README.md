# Since Unreleased

## Installation

`composer require kjohnson/since-unreleased`

## Usage

Given the following sytax:
```php
/**
 * @unreleased
 */ 
```

Run the script, passing the target directory followed by the version number:
```
./vendor/bin/since-unreleased example/ 1.0.1
```

and the `@unreleased` tag will be updated.
```php
/**
 * @since 1.0.1
 */ 
```
