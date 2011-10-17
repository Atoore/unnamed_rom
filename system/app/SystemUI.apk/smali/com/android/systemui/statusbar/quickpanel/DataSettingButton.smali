.class public Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;
.super Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;
.source "DataSettingButton.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DataSettingButton"

.field private static mobileDataEnabled:Z


# instance fields
.field private isAirPlaneMode:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private toastAlert:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->mContext:Landroid/content/Context;

    const v1, 0x7f080027

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->toastAlert:Landroid/widget/Toast;

    .line 29
    new-instance v0, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton$1;-><init>(Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget v0, p0, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->isAirPlaneMode:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput p1, p0, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->isAirPlaneMode:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->mobileDataEnabled:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    sput-boolean p0, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->mobileDataEnabled:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->updateStatus()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setDataEnabled(I)V
    .locals 6
    .parameter "enabled"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 60
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 62
    .local v0, cm:Landroid/net/ConnectivityManager;
    const-string v1, "DataSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataEnabled()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    if-ne p1, v4, :cond_1

    .line 66
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 67
    sput-boolean v4, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->mobileDataEnabled:Z

    .line 74
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->updateStatus()V

    .line 75
    return-void

    .line 69
    :cond_1
    if-nez p1, :cond_0

    .line 70
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 71
    sput-boolean v5, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->mobileDataEnabled:Z

    goto :goto_0
.end method

.method private updateIcons()V
    .locals 6

    .prologue
    .line 78
    const/4 v1, 0x0

    .line 79
    .local v1, iconRes:I
    const/4 v4, 0x0

    .line 80
    .local v4, statusIconRes:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 81
    .local v2, rootView:Landroid/view/View;
    const v5, 0x7f0a0037

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 82
    .local v0, icon:Landroid/widget/ImageView;
    const v5, 0x7f0a0039

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 84
    .local v3, statusIcon:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->getActivateStatus()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 96
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 97
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    return-void

    .line 86
    :pswitch_0
    const v1, 0x7f0200b6

    .line 87
    const v4, 0x7f02001a

    .line 88
    goto :goto_0

    .line 91
    :pswitch_1
    const v1, 0x7f0200b7

    .line 92
    const v4, 0x7f02001b

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 101
    iget v0, p0, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->isAirPlaneMode:I

    if-ne v0, v2, :cond_0

    .line 102
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->setActivateStatus(I)V

    .line 106
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->updateIcons()V

    .line 107
    return-void

    .line 104
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->mobileDataEnabled:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->setActivateStatus(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public activate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 110
    const-string v0, "DataSettingButton"

    const-string v1, "activate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->isAirPlaneMode:I

    .line 114
    iget v0, p0, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->isAirPlaneMode:I

    if-ne v0, v3, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 118
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->setDataEnabled(I)V

    goto :goto_0
.end method

.method public deactivate()V
    .locals 2

    .prologue
    .line 121
    const-string v0, "DataSettingButton"

    const-string v1, "deactivate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->setDataEnabled(I)V

    .line 124
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 127
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onAttachedToWindow()V

    .line 129
    const-string v2, "DataSettingButton"

    const-string v3, "onAttachedToWindow()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 132
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v2, "android.net.conn.MOBILE_DATA_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    iget-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    iget-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 137
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->mobileDataEnabled:Z

    .line 138
    iget-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->isAirPlaneMode:I

    .line 140
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->updateStatus()V

    .line 141
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 144
    const-string v0, "DataSettingButton"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 147
    return-void
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 150
    const v0, 0x7f08002e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/DataSettingButton;->setText(I)V

    .line 151
    return-void
.end method
