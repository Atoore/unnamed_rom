.class public Lcom/android/systemui/statusbar/quickpanel/BrightnessSettingButton;
.super Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;
.source "BrightnessSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/quickpanel/BrightnessSettingButton$BrightnessObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BrightnessSettingButton"


# instance fields
.field private mObserver:Lcom/android/systemui/statusbar/quickpanel/BrightnessSettingButton$BrightnessObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Lcom/android/systemui/statusbar/quickpanel/BrightnessSettingButton$BrightnessObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quickpanel/BrightnessSettingButton$BrightnessObserver;-><init>(Lcom/android/systemui/statusbar/quickpanel/BrightnessSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/BrightnessSettingButton;->mObserver:Lcom/android/systemui/statusbar/quickpanel/BrightnessSettingButton$BrightnessObserver;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quickpanel/BrightnessSettingButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/BrightnessSettingButton;->updateStatus()V

    return-void
.end method

.method private setAutoBrightnessEnabled(I)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/BrightnessSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 77
    return-void
.end method

.method private updateIcons()V
    .locals 6

    .prologue
    .line 42
    const/4 v1, 0x0

    .line 43
    .local v1, iconRes:I
    const/4 v4, 0x0

    .line 44
    .local v4, statusIconRes:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/BrightnessSettingButton;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 45
    .local v2, rootView:Landroid/view/View;
    const v5, 0x7f0a0034

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 46
    .local v0, icon:Landroid/widget/ImageView;
    const v5, 0x7f0a0036

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 48
    .local v3, statusIcon:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/BrightnessSettingButton;->getActivateStatus()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 60
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    return-void

    .line 50
    :pswitch_0
    const v1, 0x7f0200b3

    .line 51
    const v4, 0x7f02001a

    .line 52
    goto :goto_0

    .line 55
    :pswitch_1
    const v1, 0x7f0200b4

    .line 56
    const v4, 0x7f02001b

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateStatus()V
    .locals 4

    .prologue
    .line 35
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/BrightnessSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 37
    .local v0, mode:I
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/BrightnessSettingButton;->setActivateStatus(I)V

    .line 38
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/BrightnessSettingButton;->updateIcons()V

    .line 39
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 2

    .prologue
    .line 65
    const-string v0, "BrightnessSettingButton"

    const-string v1, "activate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/BrightnessSettingButton;->setAutoBrightnessEnabled(I)V

    .line 67
    return-void
.end method

.method public deactivate()V
    .locals 2

    .prologue
    .line 70
    const-string v0, "BrightnessSettingButton"

    const-string v1, "deactivate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/BrightnessSettingButton;->setAutoBrightnessEnabled(I)V

    .line 72
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 80
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onAttachedToWindow()V

    .line 82
    const-string v0, "BrightnessSettingButton"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/BrightnessSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/quickpanel/BrightnessSettingButton;->mObserver:Lcom/android/systemui/statusbar/quickpanel/BrightnessSettingButton$BrightnessObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/BrightnessSettingButton;->updateStatus()V

    .line 86
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onDetachedFromWindow()V

    .line 91
    const-string v0, "BrightnessSettingButton"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/BrightnessSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/BrightnessSettingButton;->mObserver:Lcom/android/systemui/statusbar/quickpanel/BrightnessSettingButton$BrightnessObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 95
    return-void
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 98
    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/BrightnessSettingButton;->setText(I)V

    .line 99
    return-void
.end method
