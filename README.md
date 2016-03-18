Database Critics Browser
========================

# Installation
DCB is integrated to [Myrddin](http://smalltalkhub.com/#!/~AnneEtien/Myrddin)
but can also be used in standalone mode.

## Install in standalone mode
~~~
Metacello new
    baseline: 'DatabaseCriticsBrowserStandalone';
    repository: 'github://juliendelplanque/DatabaseCriticsBrowser/repository';
    load.
~~~

# Use this project as a dependency
To use this project as a dependency of your project, simply add
the following code snippet to you Configuration/Baseline:
~~~
spec baseline: 'DatabaseCriticsBrowser' with: [
    spec repository: 'github://juliendelplanque/DatabaseCriticsBrowser/repository' ].
~~~
