# HEROKU Node Canvas

A simple fork just to get this guy working on heroku.

- Includes precompiled cairo modules in ./cairo
- Has a modified wscript in order to reference that precompiled cairo stuff

## Known Issues

- JPEG support is commented out in the wscript

```
../src/Image.cc:562: error: 'jpeg_mem_src' was not declared in this scope
```

- Image loading onto the canvas doesn't work with drawImage

```
node: symbol lookup error: /app/node_modules/canvas/build/default/canvas.node: undefined symbol: cairo_surface_create_for_rectangle
```