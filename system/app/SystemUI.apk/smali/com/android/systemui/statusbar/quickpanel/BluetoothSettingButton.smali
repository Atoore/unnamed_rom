.class public final Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;
.super Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;
.source "BluetoothSettingButton.java"


# instance fields
.field private isAirPlaneMode:I

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private toastAlert:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->toastAlert:Landroid/widget/Toast;

    .line 33
    new-instance v0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton$1;-><init>(Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->handleStateChanged(I)V

    return-void
.end method

.method private couldClick()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->isAirPlaneMode:I

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 196
    const-string v0, "BluetoothSettingButton"

    const-string v1, "mBluetoothAdapter is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 200
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->updateStatus(I)V

    .line 44
    return-void
.end method

.method private updateIconsAndTextColor()V
    .locals 7

    .prologue
    .line 94
    const/4 v1, 0x0

    .local v1, iconRes:I
    const/4 v4, 0x0

    .local v4, statusIconRes:I
    const/4 v5, -0x1

    .line 95
    .local v5, textColor:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 96
    .local v2, rootView:Landroid/view/View;
    const v6, 0x7f0a0009

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 97
    .local v0, icon:Landroid/widget/ImageView;
    const v6, 0x7f0a000b

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 99
    .local v3, statusIcon:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->getActivateStatus()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 114
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 116
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->setTextColor(I)V

    .line 117
    return-void

    .line 101
    :pswitch_0
    const v1, 0x7f020016

    .line 102
    const v4, 0x7f02001b

    .line 103
    goto :goto_0

    .line 105
    :pswitch_1
    const v1, 0x7f020015

    .line 106
    const v4, 0x7f02001a

    .line 107
    goto :goto_0

    .line 109
    :pswitch_2
    const v1, 0x7f020014

    .line 110
    const v4, 0x7f020019

    .line 111
    const v5, -0x777778

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateStatus(I)V
    .locals 2
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 75
    packed-switch p1, :pswitch_data_0

    .line 90
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->updateIconsAndTextColor()V

    .line 91
    return-void

    .line 77
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->setActivateStatus(I)V

    .line 78
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->setSoundEffectsEnabled(Z)V

    goto :goto_0

    .line 81
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->setActivateStatus(I)V

    .line 82
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->setSoundEffectsEnabled(Z)V

    goto :goto_0

    .line 86
    :pswitch_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->setActivateStatus(I)V

    .line 87
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->setSoundEffectsEnabled(Z)V

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public activate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const-string v2, "BluetoothSettingButton"

    .line 124
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->couldClick()Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    const-string v1, "BluetoothSettingButton"

    const-string v1, "activate() couldn\'t click"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget v1, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->isAirPlaneMode:I

    if-ne v1, v3, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->toastAlert:Landroid/widget/Toast;

    const v2, 0x7f080027

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    .line 129
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    const-string v1, "BluetoothSettingButton"

    const-string v1, "activate()"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    .line 140
    const-string v1, "BluetoothSettingButton"

    const-string v2, "BT is Disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.systemui.statusbar.action.BLUETOOTH_ON"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public deactivate()V
    .locals 2

    .prologue
    const-string v1, "BluetoothSettingButton"

    .line 170
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->couldClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    const-string v0, "BluetoothSettingButton"

    const-string v0, "deactivate() couldn\'t click"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    const-string v0, "BluetoothSettingButton"

    const-string v0, "deactivate()"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 52
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onAttachedToWindow()V

    .line 53
    const-string v0, "BluetoothSettingButton"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 59
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->updateStatus(I)V

    .line 64
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onDetachedFromWindow()V

    .line 69
    const-string v0, "BluetoothSettingButton"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 72
    return-void
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 120
    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/BluetoothSettingButton;->setText(I)V

    .line 121
    return-void
.end method
