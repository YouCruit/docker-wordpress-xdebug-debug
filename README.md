### More debugging for kaihofstetter/docker-wordpress-xdebug


This is an extension of the excellent
[kaihofstetter/docker-wordpress-xdebug](https://hub.docker.com/r/kaihofstetter/docker-wordpress-xdebug/)
wordpress docker image. It adds ```display_errors = On``` debug output, extra wordpress debugging and dumps
all mails that would be sent on the console instead of sending them.

In addition to the documentation on the link above, the following is also possible:
```
docker run --rm -it --name my-wordpress -p 80:80 -p 3306:3306 -v <path to plugin in development>:/wordpress_sources/wp-content/plugins/<plugin-name>/ youcruit/docker-wordpress-xdebug-debug:latest
```
