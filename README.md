# Using the php-buildpack to deploy Perl to PCF

The php-buildpack gives you a configurable Apache HTTPd web server that can be configured to run Perl scripts as some or all of the application.  There are a couple of options to run Perl:

1. Perl CGI using `mod_cgi`
1. Customer Apache modules using `mod_perl`

This repo is a demonstration app that configured both of these.  The app is structured in the following way to get things to be configured correctly:

1. The files under `lib` were built using https://github.com/bstarke/apt-cf-packager to build `libapache2-mod-perl2` against the PCF container's environment.

1. The files under `.bp-config` are used to configure the `php-buildpack`.  These files were taken from the default configuration files in the buildpack's source in order to maintain the default behavior, then modified to enable `mod_cgi` and `mod_perl`.

1. The files under `htdocs` are served as publicly-accessible files by httpd.

1. The files under `modules` are added to mod_perl's `@INC` and contain the application's custom Handlers and modules.