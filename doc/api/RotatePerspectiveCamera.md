# RotatePerspectiveCamera

The camera moving by a sphere polar coordinates. Extends from [PerspectiveCamera](./PerspectiveCamera).

## Contructor

```javascript
new G3D.RotatePerspectiveCamera(scene);
```

### Arguments

| name  | type      | description                                 |
| ----- | --------- | ------------------------------------------- |
| scene | G3D.Scene | the g3d scene you want to put the camera in |

## Properties

| name   | type   | description                                                       |
| ------ | ------ | ----------------------------------------------------------------- |
| radius | Number | the distance between camera and it's look at point (center point) |
| alpha  | Number | the alpha angle (on X-Z plane), from 0 to 360                     |
| beta   | Number | the beta angle (vertical to Y axis), from -180 to 180             |

## Example

```javascript
const camera = new G3D.RotatePerspectiveCamera(scene);
camera.alpha = 60;
camera.beta = 45;
camera.radius = 100;
```