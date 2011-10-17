.class public Lcom/android/systemui/statusbar/quickpanel/FlashlightActivity;
.super Landroid/app/Activity;
.source "FlashlightActivity.java"


# instance fields
.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 33
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/FlashlightActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/FlashlightActivity;->finish()V

    .line 35
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 18
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/FlashlightActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 21
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/high16 v2, 0x3f80

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/FlashlightActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/FlashlightActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/quickpanel/FlashlightActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 26
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v2, 0x6

    const-string v3, "Flashlight"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/FlashlightActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 27
    iget-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/FlashlightActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 28
    return-void
.end method
