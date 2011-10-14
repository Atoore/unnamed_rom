.class final Landroid/view/ViewRoot$GestureSurfaceTouch;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ViewRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "GestureSurfaceTouch"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Landroid/view/ViewRoot;


# direct methods
.method public constructor <init>(Landroid/view/ViewRoot;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "baseContext"

    .prologue
    .line 310
    iput-object p1, p0, Landroid/view/ViewRoot$GestureSurfaceTouch;->this$0:Landroid/view/ViewRoot;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 311
    iput-object p2, p0, Landroid/view/ViewRoot$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    .line 312
    return-void
.end method


# virtual methods
.method public onShapeSweepLR(I)Z
    .registers 6
    .parameter "direction"

    .prologue
    .line 315
    const-string v1, "ViewRoot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Event] Shape Sweep LR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.screencapture.capture"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 317
    .local v0, screenCaptureIntent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const-string v1, "PenGestureConcept"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 319
    iget-object v1, p0, Landroid/view/ViewRoot$GestureSurfaceTouch;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 320
    const/4 v1, 0x0

    return v1
.end method
