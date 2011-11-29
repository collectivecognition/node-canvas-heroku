# HEROKU Node Canvas


A simple fork just to get this guy working on heroku.

- Includes precompiled cairo modules in ./cairo
- Has a modified wscript in order to reference that precompiled cairo stuff

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

=======





# Derek Notes Old

- Loses JPEG and GIF support ... as I couldn't figure those out and I didn't need them.

## Known Issues

- JPEG support is commented out in the wscript

```
../src/Image.cc:562: error: 'jpeg_mem_src' was not declared in this scope
```

- Image loading onto the canvas doesn't work with drawImage

```
node: symbol lookup error: /app/node_modules/canvas/build/default/canvas.node: undefined symbol: cairo_surface_create_for_rectangle
```
