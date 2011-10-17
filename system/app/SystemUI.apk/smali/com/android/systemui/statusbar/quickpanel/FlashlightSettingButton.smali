.class public Lcom/android/systemui/statusbar/quickpanel/FlashlightSettingButton;
.super Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;
.source "FlashlightSettingButton.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FlashlightSettingButton"


# instance fields
.field private mIsFlashSupported:Z

.field private mLedController:Lcom/android/systemui/util/LedController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-static {}, Lcom/android/systemui/util/LedController;->getInstance()Lcom/android/systemui/util/LedController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/FlashlightSettingButton;->mLedController:Lcom/android/systemui/util/LedController;

    .line 24
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/FlashlightSettingButton;->mLedController:Lcom/android/systemui/util/LedController;

    invoke-virtual {v0}, Lcom/android/systemui/util/LedController;->isFlashSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/quickpanel/FlashlightSettingButton;->mIsFlashSupported:Z

    .line 25
    return-void
.end method

.method private startFlashlightActivity()V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/FlashlightSettingButton;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/statusbar/quickpanel/FlashlightActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 53
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/FlashlightSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void
.end method

.method private updateIcons()V
    .locals 6

    .prologue
    .line 28
    const/4 v1, 0x0

    .line 29
    .local v1, iconRes:I
    const/4 v4, 0x0

    .line 30
    .local v4, statusIconRes:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/FlashlightSettingButton;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 31
    .local v2, rootView:Landroid/view/View;
    const v5, 0x7f0a003a

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 32
    .local v0, icon:Landroid/widget/ImageView;
    const v5, 0x7f0a003c

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 34
    .local v3, statusIcon:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/FlashlightSettingButton;->getActivateStatus()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 46
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 47
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    return-void

    .line 36
    :pswitch_0
    const v1, 0x7f0200b8

    .line 37
    const v4, 0x7f02001a

    .line 38
    goto :goto_0

    .line 41
    :pswitch_1
    const v1, 0x7f0200b9

    .line 42
    const v4, 0x7f02001b

    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public activate()V
    .locals 2

    .prologue
    const-string v1, "FlashlightSettingButton"

    .line 57
    const-string v0, "FlashlightSettingButton"

    const-string v0, "activate()"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quickpanel/FlashlightSettingButton;->mIsFlashSupported:Z

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "FlashlightSettingButton"

    const-string v0, "Camera torch supported"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/FlashlightSettingButton;->setActivateStatus(I)V

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/FlashlightSettingButton;->mLedController:Lcom/android/systemui/util/LedController;

    invoke-virtual {v0}, Lcom/android/systemui/util/LedController;->on()V

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/FlashlightSettingButton;->updateIcons()V

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_0
    const-string v0, "FlashlightSettingButton"

    const-string v0, "Camera torch not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/FlashlightSettingButton;->startFlashlightActivity()V

    goto :goto_0
.end method

.method public deactivate()V
    .locals 2

    .prologue
    const-string v1, "FlashlightSettingButton"

    .line 73
    const-string v0, "FlashlightSettingButton"

    const-string v0, "deactivate()"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/quickpanel/FlashlightSettingButton;->mIsFlashSupported:Z

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "FlashlightSettingButton"

    const-string v0, "Camera torch supported"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/FlashlightSettingButton;->setActivateStatus(I)V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/FlashlightSettingButton;->mLedController:Lcom/android/systemui/util/LedController;

    invoke-virtual {v0}, Lcom/android/systemui/util/LedController;->off()V

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/FlashlightSettingButton;->updateIcons()V

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    const-string v0, "FlashlightSettingButton"

    const-string v0, "Camera torch not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 87
    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/FlashlightSettingButton;->setText(I)V

    .line 88
    return-void
.end method
