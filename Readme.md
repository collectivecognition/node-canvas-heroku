# HEROKU Node Canvas

## usage:

### 1. create a heroku app in cedar:

`heroku create --stack cedar`

### 2. set environment variables

create a `.env` file in your application with this contents:

```bash
LD_PRELOAD='/app/node_modules/canvas/cairo/libcairo.so /app/node_modules/canvas/lib/libpixman-1.so.0 /app/node_modules/canvas/lib/libfreetype.so.6'
LD_LIBRARY_PATH=/app/node_modules/canvas/cairo
```
* `LD_PRELOAD` will tell heroku to always preload those libs
* `LD_LIBRARY_PATH` will tell heroku where to find aditional dinamic libs


#### Note:

If the `.env` file doesn't work for you, alternatively, you can try:

```
$ heroku config:add LD_PRELOAD='/app/node_modules/canvas/cairo/libcairo.so /app/node_modules/canvas/lib/libpixman-1.so.0 /app/node_modules/canvas/lib/libfreetype.so.6' --app your-app
$ heroku config:add LD_LIBRARY_PATH=/app/node_modules/canvas/cairo --app your-app
```


### P.P.S

If you ever need to "re-install" a library like this on heroku, you'll need to either

- destroy and recreate the app
- up the version number in the package.json

=======