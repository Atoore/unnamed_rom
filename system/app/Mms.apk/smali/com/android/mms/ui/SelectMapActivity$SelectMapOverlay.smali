.class Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;
.super Lcom/google/android/maps/ItemizedOverlay;
.source "SelectMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SelectMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectMapOverlay"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay$MapGestureListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/maps/ItemizedOverlay",
        "<",
        "Lcom/google/android/maps/OverlayItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mOverlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/maps/OverlayItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/mms/ui/SelectMapActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SelectMapActivity;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "defaultMarker"

    .prologue
    .line 494
    iput-object p1, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    .line 495
    invoke-static {p3}, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 490
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    .line 496
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay$MapGestureListener;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay$MapGestureListener;-><init>(Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;)V

    invoke-direct {v0, p2, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->mGestureDetector:Landroid/view/GestureDetector;

    .line 497
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->populate()V

    .line 498
    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public addOverlay(Lcom/google/android/maps/OverlayItem;)V
    .locals 1
    .parameter "overlay"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->populate()V

    .line 503
    return-void
.end method

.method public clearOverlay()V
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 507
    invoke-virtual {p0}, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->populate()V

    .line 508
    return-void
.end method

.method protected createItem(I)Lcom/google/android/maps/OverlayItem;
    .locals 1
    .parameter "i"

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/maps/OverlayItem;

    return-object p0
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
    .locals 1
    .parameter "c"
    .parameter "v"
    .parameter "b"

    .prologue
    .line 512
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, v0}, Lcom/google/android/maps/ItemizedOverlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V

    .line 513
    return-void
.end method

.method protected onTap(I)Z
    .locals 4
    .parameter "index"

    .prologue
    .line 527
    invoke-super {p0, p1}, Lcom/google/android/maps/ItemizedOverlay;->onTap(I)Z

    .line 528
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/maps/OverlayItem;

    invoke-virtual {v2}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    .line 529
    .local v1, point:Lcom/google/android/maps/GeoPoint;
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    iget-object v2, v2, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getMapCenter()Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    .line 530
    .local v0, center:Lcom/google/android/maps/GeoPoint;
    invoke-virtual {v1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 532
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/SelectMapActivity;->captureMap()V

    .line 533
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    iget-object v3, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    invoke-virtual {v3, v1}, Lcom/android/mms/ui/SelectMapActivity;->getAddress(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SelectMapActivity;->doFinish(Ljava/lang/String;)V

    .line 537
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 535
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    invoke-static {v2, v1}, Lcom/android/mms/ui/SelectMapActivity;->access$1100(Lcom/android/mms/ui/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Z

    goto :goto_0
.end method

.method public onTap(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)Z
    .locals 3
    .parameter "p"
    .parameter "mapView"

    .prologue
    .line 542
    const/4 v1, 0x0

    .line 543
    .local v1, ret:Z
    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 545
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/ItemizedOverlay;->onTap(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 550
    :cond_0
    :goto_0
    return v1

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, oobe:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z
    .locals 1
    .parameter "ev"
    .parameter "mapView"

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 556
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
