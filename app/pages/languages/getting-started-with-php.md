---
title: "PHP"
slug: "getting-started-with-php"
category: "languages"
ordinal: 1000
---

PHP can be downloaded and built from source, available at [php.net/downloads.php](http://php.net/downloads.php)

Alternatively there are many pre-compiled versions available for [different operating systems](http://php.net/manual/en/install.php):

**Windows users**: There are pre-built stacks including [WAMP](http://www.wampserver.com/en/) - (windows, Apache, MySQL, PHP) and [XAMPP](https://www.apachefriends.org/index.html)

**OS X users**: Normally comes with PHP installed, but there are other pre-built options available, including [MAMP](http://www.mamp.info/en/).

**Linux users**: Different distributions have different methods. You should be able to 

````$ yum install php````

or 

````$ apt-get php````
    
depending on your repository manager.


### Install PHPUnit:

To globally install PHPUnit testing framework, you can add it to your global composer file, which you can then add to your environment PATH.

To do this call

````$ composer global require phpunit/phpunit````

If you are not using Composer package manager you can download the phpunit.phar file and add that to your PATH, or project directory as explained here: [PHPUnit](https://phpunit.de/manual/current/en/installation.html)


## Running Tests

Execute the tests with:

````$ phpunit hamming_test.php````


## Recommended Learning Resources

* [25 Resources to get you started with PHP from scratch](http://code.tutsplus.com/articles/25-resources-to-get-you-started-with-php-from-scratch--net-2223)

## Recommended References

* [PHP.net](http://php.net/)
* [Composer dependency manager](https://getcomposer.org/)
* [PHPUnit testing framework](https://phpunit.de/)