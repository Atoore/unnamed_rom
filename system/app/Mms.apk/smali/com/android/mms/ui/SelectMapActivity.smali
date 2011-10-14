.class public Lcom/android/mms/ui/SelectMapActivity;
.super Lcom/google/android/maps/MapActivity;
.source "SelectMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;,
        Lcom/android/mms/ui/SelectMapActivity$UpdateLocationTask;,
        Lcom/android/mms/ui/SelectMapActivity$SearchLocationTask;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCaptureHeight:I

.field private mCaptureWidth:I

.field private mEditText:Landroid/widget/EditText;

.field private mGeo:Landroid/location/Geocoder;

.field private mLocation:Ljava/lang/String;

.field mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field protected mMapView:Lcom/google/android/maps/MapView;

.field private mPickImage:Z

.field private mSearchButton:Landroid/widget/Button;

.field mSearchRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    .line 60
    const-string v0, "Messaging/SelectMapActivity"

    iput-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;

    .line 203
    new-instance v0, Lcom/android/mms/ui/SelectMapActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SelectMapActivity$3;-><init>(Lcom/android/mms/ui/SelectMapActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationListener:Landroid/location/LocationListener;

    .line 283
    new-instance v0, Lcom/android/mms/ui/SelectMapActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SelectMapActivity$4;-><init>(Lcom/android/mms/ui/SelectMapActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchRunnable:Ljava/lang/Runnable;

    .line 487
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SelectMapActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/mms/ui/SelectMapActivity;->searchLocation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SelectMapActivity;->updateLocation(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/SelectMapActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SelectMapActivity;->moveToMarker(Lcom/google/android/maps/GeoPoint;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SelectMapActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/SelectMapActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SelectMapActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SelectMapActivity;->getFromLocationName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SelectMapActivity;)Landroid/location/Geocoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mGeo:Landroid/location/Geocoder;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SelectMapActivity;D)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SelectMapActivity;->convToInt(D)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SelectMapActivity;IILjava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/SelectMapActivity;->addMarker(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SelectMapActivity;IIII)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/SelectMapActivity;->moveToMarker(IIII)Z

    move-result v0

    return v0
.end method

.method private addMarker(IILjava/lang/String;)Z
    .locals 3
    .parameter "lat"
    .parameter "lon"
    .parameter "snippet"

    .prologue
    .line 352
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v1

    .line 353
    .local v1, mapOverlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;

    .line 354
    .local v0, itemizedOverlay:Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2, p3}, Lcom/android/mms/ui/SelectMapActivity;->getOverlay(IILandroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/google/android/maps/OverlayItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->addOverlay(Lcom/google/android/maps/OverlayItem;)V

    .line 355
    const/4 v2, 0x1

    return v2
.end method

.method private convToDouble(I)D
    .locals 4
    .parameter "i"

    .prologue
    .line 339
    int-to-double v0, p1

    const-wide v2, 0x412e848000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private convToInt(D)I
    .locals 2
    .parameter "d"

    .prologue
    .line 335
    const-wide v0, 0x412e848000000000L

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    return v0
.end method

.method private getFromLocationName(Ljava/lang/String;)Z
    .locals 20
    .parameter "location"

    .prologue
    .line 244
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_1

    .line 245
    :cond_0
    const/16 v17, 0x0

    .line 280
    :goto_0
    return v17

    .line 248
    :cond_1
    new-instance v6, Landroid/location/Geocoder;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 249
    .local v6, geo:Landroid/location/Geocoder;
    const v15, 0x55d4a80

    .local v15, minLat:I
    const v13, -0x55d4a80

    .line 250
    .local v13, maxLat:I
    const v16, 0xaba9500

    .local v16, minLon:I
    const v14, -0xaba9500

    .line 252
    .local v14, maxLon:I
    const/16 v17, 0x5

    :try_start_0
    move-object v0, v6

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v10

    .line 253
    .local v10, loc:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_4

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v12

    .line 255
    .local v12, mapOverlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    const/16 v17, 0x0

    move-object v0, v12

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;

    .line 256
    .local v8, itemizedOverlay:Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;
    invoke-virtual {v8}, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->clearOverlay()V

    .line 257
    const/4 v5, 0x0

    .line 258
    .local v5, addr:Landroid/location/Address;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v17

    move v0, v7

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    .line 259
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #addr:Landroid/location/Address;
    check-cast v5, Landroid/location/Address;

    .line 260
    .restart local v5       #addr:Landroid/location/Address;
    invoke-virtual {v5}, Landroid/location/Address;->getLatitude()D

    move-result-wide v17

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/SelectMapActivity;->convToInt(D)I

    move-result v9

    .line 261
    .local v9, lat:I
    invoke-virtual {v5}, Landroid/location/Address;->getLongitude()D

    move-result-wide v17

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/SelectMapActivity;->convToInt(D)I

    move-result v11

    .line 262
    .local v11, lon:I
    invoke-virtual {v5}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move v1, v9

    move v2, v11

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/ui/SelectMapActivity;->addMarker(IILjava/lang/String;)Z

    .line 263
    invoke-static {v15, v9}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 264
    invoke-static {v13, v9}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 265
    move/from16 v0, v16

    move v1, v11

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 266
    invoke-static {v14, v11}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 258
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 269
    .end local v9           #lat:I
    .end local v11           #lon:I
    :cond_2
    if-eqz v5, :cond_3

    .line 270
    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    move/from16 v3, v16

    move v4, v14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/SelectMapActivity;->moveToMarker(IIII)Z

    .line 280
    .end local v5           #addr:Landroid/location/Address;
    .end local v7           #i:I
    .end local v8           #itemizedOverlay:Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;
    .end local v10           #loc:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    .end local v12           #mapOverlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    :cond_3
    :goto_2
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 273
    .restart local v10       #loc:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :cond_4
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0901b2

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 277
    .end local v10           #loc:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :catch_0
    move-exception v17

    goto :goto_2
.end method

.method private getMyLocation()Lcom/google/android/maps/GeoPoint;
    .locals 13

    .prologue
    const-wide v11, 0x412e848000000000L

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 144
    const/4 v10, 0x0

    .line 149
    .local v10, myLocation:Lcom/google/android/maps/GeoPoint;
    new-instance v6, Landroid/location/Criteria;

    invoke-direct {v6}, Landroid/location/Criteria;-><init>()V

    .line 150
    .local v6, criteria:Landroid/location/Criteria;
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 151
    invoke-virtual {v6, v2}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 152
    invoke-virtual {v6, v3}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 153
    invoke-virtual {v6, v3}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 154
    invoke-virtual {v6, v3}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 155
    invoke-virtual {v6, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 157
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v6, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, provider:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0901b2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 163
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->finish()V

    .line 164
    const/4 v0, 0x0

    .line 200
    :goto_0
    return-object v0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v9

    .line 169
    .local v9, location:Landroid/location/Location;
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationManager:Landroid/location/LocationManager;

    const-wide/16 v2, 0x2710

    const/high16 v4, 0x42c8

    iget-object v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 193
    if-eqz v9, :cond_1

    .line 194
    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    mul-double/2addr v2, v11

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    .line 195
    .local v7, geoLat:Ljava/lang/Double;
    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v11

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    .line 197
    .local v8, geoLng:Ljava/lang/Double;
    new-instance v10, Lcom/google/android/maps/GeoPoint;

    .end local v10           #myLocation:Lcom/google/android/maps/GeoPoint;
    invoke-virtual {v7}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-virtual {v8}, Ljava/lang/Double;->intValue()I

    move-result v2

    invoke-direct {v10, v0, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .end local v7           #geoLat:Ljava/lang/Double;
    .end local v8           #geoLng:Ljava/lang/Double;
    .restart local v10       #myLocation:Lcom/google/android/maps/GeoPoint;
    :cond_1
    move-object v0, v10

    .line 200
    goto :goto_0
.end method

.method private getOverlay(IILandroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/google/android/maps/OverlayItem;
    .locals 3
    .parameter "latitude"
    .parameter "longitude"
    .parameter "drawable"
    .parameter "snippet"

    .prologue
    .line 359
    new-instance v1, Lcom/google/android/maps/GeoPoint;

    invoke-direct {v1, p1, p2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 360
    .local v1, point:Lcom/google/android/maps/GeoPoint;
    new-instance v0, Lcom/google/android/maps/OverlayItem;

    const-string v2, ""

    invoke-direct {v0, v1, v2, p4}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .local v0, overlay:Lcom/google/android/maps/OverlayItem;
    invoke-virtual {v0, p3}, Lcom/google/android/maps/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    .line 362
    return-object v0
.end method

.method private initMarker()Z
    .locals 5

    .prologue
    .line 343
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v2

    .line 344
    .local v2, mapOverlays:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02015b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 345
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;

    invoke-direct {v1, p0, p0, v0}, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;-><init>(Lcom/android/mms/ui/SelectMapActivity;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 346
    .local v1, itemizedOverlay:Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    const/4 v3, 0x1

    return v3
.end method

.method private moveToMarker(IIII)Z
    .locals 5
    .parameter "minLat"
    .parameter "maxLat"
    .parameter "minLon"
    .parameter "maxLon"

    .prologue
    .line 374
    sub-int v0, p2, p1

    .line 375
    .local v0, lat_span:I
    sub-int v1, p4, p3

    .line 376
    .local v1, lon_span:I
    new-instance v2, Lcom/google/android/maps/GeoPoint;

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v3, p1

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v4, p3

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 377
    .local v2, point:Lcom/google/android/maps/GeoPoint;
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 378
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 379
    const/4 v3, 0x1

    return v3
.end method

.method private moveToMarker(Lcom/google/android/maps/GeoPoint;)Z
    .locals 4
    .parameter "point"

    .prologue
    const/4 v3, 0x1

    .line 366
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/MapController;->setCenter(Lcom/google/android/maps/GeoPoint;)V

    .line 367
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 369
    new-instance v0, Lcom/android/mms/ui/SelectMapActivity$UpdateLocationTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SelectMapActivity$UpdateLocationTask;-><init>(Lcom/android/mms/ui/SelectMapActivity;Lcom/android/mms/ui/SelectMapActivity$1;)V

    new-array v1, v3, [Lcom/google/android/maps/GeoPoint;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SelectMapActivity$UpdateLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 370
    return v3
.end method

.method private searchLocation()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 230
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, location:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iput-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 237
    new-instance v2, Lcom/android/mms/ui/SelectMapActivity$SearchLocationTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/SelectMapActivity$SearchLocationTask;-><init>(Lcom/android/mms/ui/SelectMapActivity;Lcom/android/mms/ui/SelectMapActivity$1;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SelectMapActivity$SearchLocationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 239
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SelectMapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 240
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private updateLocation(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    .locals 13
    .parameter "point"

    .prologue
    .line 384
    const-string v12, ""

    .line 385
    .local v12, location:Ljava/lang/String;
    const/4 v9, 0x0

    .line 387
    .local v9, data:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :try_start_0
    new-instance v0, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 388
    .local v0, geoCoder:Landroid/location/Geocoder;
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SelectMapActivity;->convToDouble(I)D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SelectMapActivity;->convToDouble(I)D

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v9

    .line 390
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 391
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    .line 392
    .local v6, address:Landroid/location/Address;
    invoke-virtual {v6}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v8

    .line 393
    .local v8, addressLines:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-gt v11, v8, :cond_2

    .line 394
    invoke-virtual {v6, v11}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v7

    .line 395
    .local v7, addressLine:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 396
    if-nez v11, :cond_1

    .line 397
    move-object v12, v7

    .line 393
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 399
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    goto :goto_1

    .line 404
    .end local v0           #geoCoder:Landroid/location/Geocoder;
    .end local v6           #address:Landroid/location/Address;
    .end local v7           #addressLine:Ljava/lang/String;
    .end local v8           #addressLines:I
    .end local v11           #i:I
    :catch_0
    move-exception v1

    move-object v10, v1

    .line 405
    .local v10, e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 407
    .end local v10           #e:Ljava/io/IOException;
    :cond_2
    return-object v12
.end method


# virtual methods
.method protected captureMap()V
    .locals 5

    .prologue
    .line 412
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/maps/MapView;->setDrawingCacheEnabled(Z)V

    .line 413
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 415
    .local v0, saved:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/mms/ui/SelectMapActivity;->mCaptureWidth:I

    sub-int/2addr v3, v4

    div-int/lit8 v1, v3, 0x2

    .line 416
    .local v1, x:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/mms/ui/SelectMapActivity;->mCaptureHeight:I

    sub-int/2addr v3, v4

    div-int/lit8 v2, v3, 0x2

    .line 418
    .local v2, y:I
    iget v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mCaptureWidth:I

    iget v4, p0, Lcom/android/mms/ui/SelectMapActivity;->mCaptureHeight:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 419
    return-void
.end method

.method protected doFinish(Ljava/lang/String;)V
    .locals 3
    .parameter "address"

    .prologue
    .line 460
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 461
    .local v0, result:Landroid/content/Intent;
    const-string v1, "location"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 462
    const-string v1, "map_image"

    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 463
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/SelectMapActivity;->setResult(ILandroid/content/Intent;)V

    .line 464
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->finish()V

    .line 465
    return-void
.end method

.method protected getAddress(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    .locals 14
    .parameter "point"

    .prologue
    const-string v5, "\n"

    .line 422
    const-string v11, ""

    .line 423
    .local v11, returnAddress:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    .local v10, retAddress:Ljava/lang/StringBuilder;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    .local v12, sb:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 426
    .local v7, data:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    new-instance v0, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v0, p0, v5}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 427
    .local v0, geoCoder:Landroid/location/Geocoder;
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/SelectMapActivity;->convToDouble(I)D

    move-result-wide v1

    .line 428
    .local v1, lat:D
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/SelectMapActivity;->convToDouble(I)D

    move-result-wide v3

    .line 431
    .local v3, lng:D
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v7

    .line 432
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 433
    const/4 v5, 0x0

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Address;

    .line 434
    .local v6, address:Landroid/location/Address;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-virtual {v6}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v5

    if-ge v9, v5, :cond_1

    .line 435
    invoke-virtual {v6, v9}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 436
    invoke-virtual {v6, v9}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, "\n"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 439
    :cond_1
    invoke-virtual {v6}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 440
    invoke-virtual {v6}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, "\n"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    :cond_2
    invoke-virtual {v6}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 444
    invoke-virtual {v6}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, "\n"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .end local v6           #address:Landroid/location/Address;
    .end local v9           #i:I
    :cond_3
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 448
    iget-object v5, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "http://maps.google.com/maps?f=q&q=("

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ","

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ")"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, "\n"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 456
    :goto_1
    return-object v11

    .line 452
    :catch_0
    move-exception v5

    move-object v8, v5

    .line 454
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 470
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    const/4 v4, 0x1

    .line 85
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 88
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "image_location"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mPickImage:Z

    .line 90
    const v3, 0x7f030028

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SelectMapActivity;->setContentView(I)V

    .line 91
    new-instance v3, Landroid/location/Geocoder;

    invoke-direct {v3, p0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mGeo:Landroid/location/Geocoder;

    .line 92
    const v3, 0x7f080093

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/maps/MapView;

    iput-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    .line 93
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3, v4}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V

    .line 94
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v3}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 96
    const/16 v3, 0xf0

    iput v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mCaptureHeight:I

    .line 97
    const/16 v3, 0x140

    iput v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mCaptureWidth:I

    .line 99
    const-string v2, "location"

    .line 100
    .local v2, serviceString:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SelectMapActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/LocationManager;

    iput-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationManager:Landroid/location/LocationManager;

    .line 102
    const v3, 0x7f080091

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    .line 103
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 104
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    new-instance v4, Lcom/android/mms/ui/SelectMapActivity$1;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/SelectMapActivity$1;-><init>(Lcom/android/mms/ui/SelectMapActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 111
    invoke-direct {p0}, Lcom/android/mms/ui/SelectMapActivity;->getMyLocation()Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    .line 112
    .local v1, point:Lcom/google/android/maps/GeoPoint;
    if-eqz v1, :cond_0

    .line 113
    invoke-direct {p0, v1}, Lcom/android/mms/ui/SelectMapActivity;->updateLocation(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;

    .line 115
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 116
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :cond_1
    const v3, 0x7f080092

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SelectMapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchButton:Landroid/widget/Button;

    .line 120
    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity;->mSearchButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/mms/ui/SelectMapActivity$2;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/SelectMapActivity$2;-><init>(Lcom/android/mms/ui/SelectMapActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onDestroy()V

    .line 139
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 141
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onResume()V

    .line 130
    invoke-direct {p0}, Lcom/android/mms/ui/SelectMapActivity;->initMarker()Z

    .line 131
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SelectMapActivity;->getFromLocationName(Ljava/lang/String;)Z

    .line 132
    return-void
.end method
