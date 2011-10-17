.class public Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;
.super Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;
.source "AutoSyncSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton$AutoSyncObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AutoSyncSettingButton"


# instance fields
.field private mObserver:Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton$AutoSyncObserver;

.field private mSyncHandle:Ljava/lang/Object;

.field private mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;->mSyncHandle:Ljava/lang/Object;

    .line 26
    new-instance v0, Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton$1;-><init>(Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;->mViewUpdateHandler:Landroid/os/Handler;

    .line 32
    new-instance v0, Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton$AutoSyncObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton$AutoSyncObserver;-><init>(Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;->mObserver:Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton$AutoSyncObserver;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;->mViewUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;->updateStatus()V

    return-void
.end method

.method private getBackgroundDataState()Z
    .locals 3

    .prologue
    .line 39
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 40
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v1

    return v1
.end method

.method private getSyncState()Z
    .locals 3

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;->getBackgroundDataState()Z

    move-result v0

    .line 45
    .local v0, backgroundData:Z
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    .line 46
    .local v1, sync:Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateIcons()V
    .locals 6

    .prologue
    .line 57
    const/4 v1, 0x0

    .line 58
    .local v1, iconRes:I
    const/4 v4, 0x0

    .line 59
    .local v4, statusIconRes:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 60
    .local v2, rootView:Landroid/view/View;
    const v5, 0x7f0a0031

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 61
    .local v0, icon:Landroid/widget/ImageView;
    const v5, 0x7f0a0033

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 63
    .local v3, statusIcon:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;->getActivateStatus()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 75
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    return-void

    .line 65
    :pswitch_0
    const v1, 0x7f0200b1

    .line 66
    const v4, 0x7f02001a

    .line 67
    goto :goto_0

    .line 70
    :pswitch_1
    const v1, 0x7f0200b2

    .line 71
    const v4, 0x7f02001b

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateStatus()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;->getSyncState()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 52
    .local v0, mode:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;->setActivateStatus(I)V

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;->updateIcons()V

    .line 54
    return-void

    .line 50
    .end local v0           #mode:I
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 80
    const-string v1, "AutoSyncSettingButton"

    const-string v2, "activate()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 83
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setBackgroundDataSetting(Z)V

    .line 86
    :cond_0
    invoke-static {v3}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 87
    return-void
.end method

.method public deactivate()V
    .locals 2

    .prologue
    .line 90
    const-string v0, "AutoSyncSettingButton"

    const-string v1, "deactivate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 92
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onAttachedToWindow()V

    .line 96
    const-string v0, "AutoSyncSettingButton"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;->mSyncHandle:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;->mObserver:Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton$AutoSyncObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;->mSyncHandle:Ljava/lang/Object;

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;->updateStatus()V

    .line 102
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onDetachedFromWindow()V

    .line 107
    const-string v0, "AutoSyncSettingButton"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;->mSyncHandle:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;->mSyncHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 110
    :cond_0
    return-void
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 113
    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/AutoSyncSettingButton;->setText(I)V

    .line 114
    return-void
.end method
