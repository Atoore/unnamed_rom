.class public Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;
.super Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;
.source "SoundSettingButton.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SoundSettingButton"

.field private static mSoundProfile:I

.field private static mSoundText:I

.field private static mVibProfile:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mAudioManager:Landroid/media/AudioManager;

    .line 31
    new-instance v0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton$1;-><init>(Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mSoundProfile:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    sput p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mSoundProfile:I

    return p0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mVibProfile:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    sput p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mVibProfile:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->updateStatus()V

    return-void
.end method

.method private updateIconsAndText()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 55
    const/4 v1, 0x0

    .line 56
    .local v1, iconRes:I
    const/4 v5, 0x0

    .line 57
    .local v5, statusIconRes:I
    const/4 v3, 0x0

    .line 58
    .local v3, soundText:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 59
    .local v2, rootView:Landroid/view/View;
    const v6, 0x7f0a003d

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 60
    .local v0, icon:Landroid/widget/ImageView;
    const v6, 0x7f0a003f

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 62
    .local v4, statusIcon:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->getActivateStatus()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 90
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->setText(I)V

    .line 93
    sput v3, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mSoundText:I

    .line 94
    return-void

    .line 64
    :pswitch_0
    sget v6, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mSoundProfile:I

    if-nez v6, :cond_1

    .line 65
    const v1, 0x7f02001e

    .line 66
    const v3, 0x7f080017

    .line 73
    :cond_0
    :goto_1
    const v5, 0x7f02001a

    .line 74
    goto :goto_0

    .line 68
    :cond_1
    sget v6, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mSoundProfile:I

    if-ne v6, v7, :cond_0

    .line 69
    const v1, 0x7f020021

    .line 70
    const v3, 0x7f080018

    goto :goto_1

    .line 77
    :pswitch_1
    sget v6, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mSoundProfile:I

    if-ne v6, v7, :cond_2

    .line 78
    const v1, 0x7f020020

    .line 79
    const v3, 0x7f080016

    .line 86
    :goto_2
    const v5, 0x7f02001b

    goto :goto_0

    .line 82
    :cond_2
    const v1, 0x7f02001f

    .line 83
    const v3, 0x7f080015

    goto :goto_2

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateStatus()V
    .locals 2

    .prologue
    .line 97
    sget v0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mSoundProfile:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->setActivateStatus(I)V

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->updateIconsAndText()V

    .line 99
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 2

    .prologue
    .line 102
    const-string v0, "SoundSettingButton"

    const-string v1, "activate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 105
    return-void
.end method

.method public deactivate()V
    .locals 4

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 110
    .local v0, soundProfile:I
    sget v1, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mVibProfile:I

    packed-switch v1, :pswitch_data_0

    .line 128
    :goto_0
    const-string v1, "SoundSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deactivate()-S:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " V:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mVibProfile:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 132
    return-void

    .line 112
    :pswitch_0
    const/4 v0, 0x0

    .line 113
    goto :goto_0

    .line 116
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_in_silent"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 117
    const/4 v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    const/4 v0, 0x0

    .line 121
    goto :goto_0

    .line 124
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const-string v3, "SoundSettingButton"

    .line 135
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onAttachedToWindow()V

    .line 137
    const-string v1, "SoundSettingButton"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mAudioManager:Landroid/media/AudioManager;

    .line 145
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    sput v1, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mSoundProfile:I

    .line 147
    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v1

    sput v1, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mVibProfile:I

    .line 148
    invoke-direct {p0}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->updateStatus()V

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    const-string v1, "SoundSettingButton"

    const-string v1, "mAudioManager is null"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Lcom/android/systemui/statusbar/quickpanel/QuickSettingButton;->onDetachedFromWindow()V

    .line 157
    const-string v0, "SoundSettingButton"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 160
    return-void
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 163
    const v0, 0x7f080015

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/quickpanel/SoundSettingButton;->setText(I)V

    .line 164
    return-void
.end method
