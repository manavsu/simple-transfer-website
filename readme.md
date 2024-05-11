# Simple Transfer Website

A simple website to ease the pain of send your friends big video files. The project is build with html and css served with an apache server in a docker container.

## Usage
Ports can be configured in the docker-compose.yml file. A volume is used to store the files that will be served. Make sure the mount point is correct. You copy of releavent files using the `docker cp` command.

The `httpd.conf` file adds protections around the *videos*. In order to use this feature make sure you generate a `.htpasswd` file. You can use the `htpasswd -c path/to/.htpasswd wolly` command.
The following segment was added to add basic authentication to the *videos* directory.

```
<Directory "/usr/local/apache2/htdocs/videos">
    AuthType Basic
    AuthName "Videos"
    AuthBasicProvider file
    AuthUserFile "/usr/local/apache2/.htpasswd"
    Require user wolly
</Directory>
```
