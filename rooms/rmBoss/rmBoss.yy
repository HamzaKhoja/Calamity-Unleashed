{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rmBoss",
  "creationCodeFile": "",
  "inheritCode": true,
  "inheritCreationOrder": true,
  "inheritLayers": true,
  "instanceCreationOrder": [
    {"name":"inst_58C84A87","path":"rooms/rmBoss/rmBoss.yy",},
    {"name":"inst_27AC5E41","path":"rooms/rmBoss/rmBoss.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":false,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_58C84A87","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":{"name":"inst_58C84A87","path":"rooms/rmParent/rmParent.yy",},"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oPlayer","path":"objects/oPlayer/oPlayer.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":480.0,"y":480.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_27AC5E41","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"oCalamity","path":"objects/oCalamity/oCalamity.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oParentEntity","path":"objects/oParentEntity/oParentEntity.yy",},"propertyId":{"name":"entityShadow","path":"objects/oParentEntity/oParentEntity.yy",},"value":"False",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oParentEnemy","path":"objects/oParentEnemy/oParentEnemy.yy",},"propertyId":{"name":"enemyHP","path":"objects/oParentEnemy/oParentEnemy.yy",},"value":"250",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oParentEnemy","path":"objects/oParentEnemy/oParentEnemy.yy",},"propertyId":{"name":"enemyAgroRadius","path":"objects/oParentEnemy/oParentEnemy.yy",},"value":"480",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oParentEnemy","path":"objects/oParentEnemy/oParentEnemy.yy",},"propertyId":{"name":"enemyAttackRadius","path":"objects/oParentEnemy/oParentEnemy.yy",},"value":"10000",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oParentEnemy","path":"objects/oParentEnemy/oParentEnemy.yy",},"propertyId":{"name":"enemySpeed","path":"objects/oParentEnemy/oParentEnemy.yy",},"value":"1.5",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"oParentEntity","path":"objects/oParentEntity/oParentEntity.yy",},"propertyId":{"name":"type","path":"objects/oParentEntity/oParentEntity.yy",},"value":"100",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":480.0,"y":288.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Collision","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":true,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":34,"SerialiseWidth":60,"TileCompressedData":[
-61,1,-39,0,-19,-2147483648,-2,1,-39,0,-19,-2147483648,-2,1,-39,0,-19,-2147483648,-2,1,-39,0,-19,-2147483648,-2,1,-39,0,-19,-2147483648,-2,1,-39,0,-19,-2147483648,-2,1,-39,0,-19,-2147483648,-2,1,-39,0,-19,-2147483648,-2,1,-39,0,-19,-2147483648,-2,1,-39,0,-19,-2147483648,
-2,1,-39,0,-19,-2147483648,-2,1,-39,0,-19,-2147483648,-2,1,-39,0,-19,-2147483648,-2,1,-39,0,-19,-2147483648,-2,1,-39,0,-19,-2147483648,-2,1,-39,0,-19,-2147483648,-2,1,-39,0,-19,-2147483648,-2,1,-39,0,-19,-2147483648,-2,1,-39,0,-19,-2147483648,-2,1,-39,0,-19,-2147483648,
-2,1,-39,0,-19,-2147483648,-2,1,-39,0,-19,-2147483648,-2,1,-58,-2147483648,-2,1,-58,-2147483648,-2,1,-58,-2147483648,-2,1,-58,-2147483648,-2,1,-58,-2147483648,-2,1,-58,-2147483648,-2,1,-58,-2147483648,-2,1,-58,-2147483648,-2,1,-58,-2147483648,-2,1,-58,-2147483648,-61,1,],"TileDataFormat":1,},"tilesetId":{"name":"tCol","path":"tilesets/tCol/tCol.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"WallTiles","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":true,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":0,"SerialiseWidth":0,"TileSerialiseData":[
],},"tilesetId":null,"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"HouseTiles","depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":true,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":0,"SerialiseWidth":0,"TileSerialiseData":[
],},"tilesetId":null,"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"DecorativeTiles","depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":false,"layers":[],"properties":[],"tiles":{"SerialiseHeight":34,"SerialiseWidth":60,"TileCompressedData":[
-620,-2147483648,1,220,-18,221,1,222,-40,-2147483648,1,244,-18,-2147483648,1,246,-40,-2147483648,1,244,-18,-2147483648,1,246,-40,-2147483648,1,244,-18,-2147483648,1,246,-40,-2147483648,1,244,-18,-2147483648,3,246,-2147483648,0,-38,-2147483648,1,244,-18,-2147483648,3,246,0,0,-38,-2147483648,1,244,-18,-2147483648,2,246,
0,-39,-2147483648,1,244,-18,-2147483648,2,246,0,-39,-2147483648,1,244,-18,-2147483648,2,246,0,-39,-2147483648,1,244,-18,-2147483648,2,246,0,-39,-2147483648,1,244,-18,-2147483648,1,246,-40,-2147483648,1,244,-18,-2147483648,1,246,-40,-2147483648,1,244,-18,-2147483648,1,246,-40,-2147483648,1,268,-18,269,1,270,
-620,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"tCave","path":"tilesets/tCave/tCave.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"TilesMain","depth":500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":false,"layers":[],"properties":[],"tiles":{"SerialiseHeight":34,"SerialiseWidth":60,"TileCompressedData":[
-620,249,1,220,-18,221,1,222,-40,249,1,244,-18,273,1,246,-40,249,1,244,-18,273,1,246,-40,249,1,244,-18,273,1,246,-40,249,1,244,-18,273,1,246,-40,249,1,244,-18,273,1,246,-40,249,1,244,-18,273,1,246,-40,249,1,244,
-18,273,1,246,-40,249,1,244,-18,273,1,246,-40,249,1,244,-18,273,1,246,-40,249,1,244,-18,273,1,246,-40,249,1,244,-18,273,1,246,-40,249,1,244,-18,273,1,246,-40,249,1,268,-18,269,1,270,-3,273,-617,249,],"TileDataFormat":1,},"tilesetId":{"name":"tCave","path":"tilesets/tCave/tCave.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":30.0,"animationSpeedType":0,"colour":4278190080,"depth":600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":true,"inheritLayerSettings":true,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "parent": {
    "name": "Rooms",
    "path": "folders/Rooms.yy",
  },
  "parentRoom": {
    "name": "rmParent",
    "path": "rooms/rmParent/rmParent.yy",
  },
  "physicsSettings": {
    "inheritPhysicsSettings": true,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 540,
    "inheritRoomSettings": true,
    "persistent": false,
    "Width": 960,
  },
  "sequenceId": null,
  "views": [
    {"hborder":32,"hport":1080,"hspeed":-1,"hview":360,"inherit":true,"objectId":null,"vborder":32,"visible":true,"vspeed":-1,"wport":1920,"wview":640,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":true,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": true,
    "inheritViewSettings": true,
  },
  "volume": 1.0,
}