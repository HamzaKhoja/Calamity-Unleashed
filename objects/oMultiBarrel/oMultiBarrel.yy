{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "oMultiBarrel",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oParentEntity","path":"objects/oParentEntity/oParentEntity.yy",},"propertyId":{"name":"entityActivateScript","path":"objects/oParentEntity/oParentEntity.yy",},"value":"activateLiftable",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oParentEntity","path":"objects/oParentEntity/oParentEntity.yy",},"propertyId":{"name":"entityActivateArgs","path":"objects/oParentEntity/oParentEntity.yy",},"value":"[id]",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oParentEntity","path":"objects/oParentEntity/oParentEntity.yy",},"propertyId":{"name":"entityHitScript","path":"objects/oParentEntity/oParentEntity.yy",},"value":"entityHitDestroy",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oParentEntity","path":"objects/oParentEntity/oParentEntity.yy",},"propertyId":{"name":"entityShadow","path":"objects/oParentEntity/oParentEntity.yy",},"value":"True",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oParentEntity","path":"objects/oParentEntity/oParentEntity.yy",},"propertyId":{"name":"entityThrowBreak","path":"objects/oParentEntity/oParentEntity.yy",},"value":"True",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oParentEntity","path":"objects/oParentEntity/oParentEntity.yy",},"propertyId":{"name":"entityThrowDistance","path":"objects/oParentEntity/oParentEntity.yy",},"value":"100",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oParentEntity","path":"objects/oParentEntity/oParentEntity.yy",},"propertyId":{"name":"entityFragmentCount","path":"objects/oParentEntity/oParentEntity.yy",},"value":"8 + irandom(3)",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oParentEntity","path":"objects/oParentEntity/oParentEntity.yy",},"propertyId":{"name":"entityFragment","path":"objects/oParentEntity/oParentEntity.yy",},"value":"oFragBarrel",},
  ],
  "parent": {
    "name": "Interactables",
    "path": "folders/Objects/Interactables.yy",
  },
  "parentObjectId": {
    "name": "oParentEntity",
    "path": "objects/oParentEntity/oParentEntity.yy",
  },
  "persistent": false,
  "physicsAngularDamping": 0.1,
  "physicsDensity": 0.5,
  "physicsFriction": 0.2,
  "physicsGroup": 1,
  "physicsKinematic": false,
  "physicsLinearDamping": 0.1,
  "physicsObject": false,
  "physicsRestitution": 0.1,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsShapePoints": [],
  "physicsStartAwake": true,
  "properties": [],
  "solid": false,
  "spriteId": {
    "name": "MultiBarrel",
    "path": "sprites/MultiBarrel/MultiBarrel.yy",
  },
  "spriteMaskId": null,
  "visible": true,
}