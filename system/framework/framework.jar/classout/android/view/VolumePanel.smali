.class public Landroid/view/VolumePanel;
.super Landroid/os/Handler;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VolumePanel$1;,
        Landroid/view/VolumePanel$LoadListener;
    }
.end annotation


# static fields
.field private static final ALARM_VOLUME_TEXT:I = 0x10403b7

.field private static final BEEP_DURATION:I = 0x96

.field private static final BLUETOOTH_INCALL_VOLUME_TEXT:I = 0x10403b6

.field static EAR_PROTECT_LIMIT_INDEX_VALUE:I = 0x0

.field private static final FM_VOLUME_TEXT:I = 0x10403b2

.field private static final FREE_DELAY:I = 0x2710

.field private static final INCALL_VOLUME_TEXT:I = 0x10403b5

.field private static LOGD:Z = false

.field private static final MAX_VOLUME:I = 0x64

.field private static final MAX_VOLUME_WARNING:I = 0xf

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_PLAY_SOUND:I = 0x2

.field private static final MSG_STOP_SOUNDS:I = 0x3

.field private static final MSG_VIBRATE:I = 0x4

.field private static final MSG_VOLUME_CHANGED:I = 0x0

.field private static final MUSIC_VOLUME_TEXT:I = 0x10403b1

.field private static final NOTIFICATION_VOLUME_TEXT:I = 0x10403b8

.field private static final NUM_VOLUME_EFFECT:I = 0x1

.field public static final PLAY_SOUND_DELAY:I = 0x0

.field private static final RINGTONE_VOLUME_TEXT:I = 0x10403b0

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_FILES:[Ljava/lang/String; = null

.field private static final SOUND_VOLUME_CONTROL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VolumePanel"

.field private static final UNKNOWN_VOLUME_TEXT:I = 0x10403b9

.field public static final VIBRATE_DELAY:I = 0x12c

.field private static final VIBRATE_DURATION:I = 0x12c

.field static getCurrentVol:I

.field static mFlag_isMusic:Z

.field static mIsLoadSoundPool:Z

.field static mPrevVol:I


# instance fields
.field private SOUND_EFFECT_FILES_MAP:[[I

.field private final mAdditionalMessage:Landroid/widget/TextView;

.field private mAudioManager:Landroid/media/AudioManager;

.field protected mAudioService:Landroid/media/AudioService;

.field protected mContext:Landroid/content/Context;

.field private mFlag_isFMRadio:Z

.field private mGetFMCurrentVol:I

.field private final mLargeStreamIcon:Landroid/widget/ImageView;

.field private final mLevel:Landroid/widget/ProgressBar;

.field private final mMessage:Landroid/widget/TextView;

.field private mPrevFMVol:I

.field private mRingIsSilent:Z

.field private final mSmallStreamIcon:Landroid/widget/ImageView;

.field private mSoundPool:Landroid/media/SoundPool;

.field private final mToast:Landroid/widget/Toast;

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mView:Landroid/view/View;

.field private final mWarningMessage:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 51
    sput v2, Landroid/view/VolumePanel;->getCurrentVol:I

    .line 52
    sput v2, Landroid/view/VolumePanel;->mPrevVol:I

    .line 53
    sput-boolean v2, Landroid/view/VolumePanel;->mFlag_isMusic:Z

    .line 56
    sput-boolean v2, Landroid/view/VolumePanel;->LOGD:Z

    .line 60
    sput-boolean v2, Landroid/view/VolumePanel;->mIsLoadSoundPool:Z

    .line 126
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "TW_Volume_control.ogg"

    aput-object v1, v0, v2

    sput-object v0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioService;)V
    .registers 13
    .parameter "context"
    .parameter "volumeService"

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 138
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 57
    iput v7, p0, Landroid/view/VolumePanel;->mGetFMCurrentVol:I

    .line 58
    iput v7, p0, Landroid/view/VolumePanel;->mPrevFMVol:I

    .line 59
    iput-boolean v7, p0, Landroid/view/VolumePanel;->mFlag_isFMRadio:Z

    .line 133
    new-array v4, v8, [[I

    new-array v5, v6, [I

    fill-array-data v5, :array_d8

    aput-object v5, v4, v7

    iput-object v4, p0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    .line 139
    iput-object p1, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    .line 140
    const-string v4, "audio"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 141
    iput-object p2, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    .line 142
    new-instance v4, Landroid/widget/Toast;

    invoke-direct {v4, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    .line 144
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 146
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x1090072

    invoke-virtual {v2, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    .line 147
    .local v3, view:Landroid/view/View;
    const v4, 0x102000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Landroid/view/VolumePanel;->mMessage:Landroid/widget/TextView;

    .line 148
    const v4, 0x102025d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Landroid/view/VolumePanel;->mAdditionalMessage:Landroid/widget/TextView;

    .line 150
    const v4, 0x1020260

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Landroid/view/VolumePanel;->mWarningMessage:Landroid/widget/TextView;

    .line 151
    const v4, 0x102025c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    .line 152
    const v4, 0x102025e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    .line 153
    const v4, 0x102025f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Landroid/view/VolumePanel;->mLevel:Landroid/widget/ProgressBar;

    .line 155
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v4

    new-array v4, v4, [Landroid/media/ToneGenerator;

    iput-object v4, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    .line 156
    new-instance v4, Landroid/os/Vibrator;

    invoke-direct {v4}, Landroid/os/Vibrator;-><init>()V

    iput-object v4, p0, Landroid/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    .line 158
    new-instance v4, Landroid/media/SoundPool;

    invoke-direct {v4, v8, v6, v7}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v4, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    .line 159
    iget-object v4, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    new-instance v5, Landroid/view/VolumePanel$LoadListener;

    invoke-direct {v5, p0, v9}, Landroid/view/VolumePanel$LoadListener;-><init>(Landroid/view/VolumePanel;Landroid/view/VolumePanel$1;)V

    invoke-virtual {v4, v5}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 160
    const/4 v0, 0x0

    .local v0, effect:I
    :goto_a1
    if-ge v0, v8, :cond_d7

    .line 161
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/media/audio/ui/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    iget-object v6, p0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v6, v6, v0

    aget v6, v6, v7

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, filePath:Ljava/lang/String;
    iget-object v4, p0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v4, v4, v0

    iget-object v5, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v5, v1, v7}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v5

    aput v5, v4, v8

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_a1

    .line 164
    .end local v1           #filePath:Ljava/lang/String;
    :cond_d7
    return-void

    .line 133
    :array_d8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .registers 5
    .parameter "streamType"

    .prologue
    .line 446
    monitor-enter p0

    .line 447
    :try_start_1
    iget-object v0, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v0, v0, p1

    if-nez v0, :cond_15

    .line 448
    iget-object v0, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v2, 0x64

    invoke-direct {v1, p1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    aput-object v1, v0, p1

    monitor-exit p0

    move-object v0, v1

    .line 450
    :goto_14
    return-object v0

    :cond_15
    iget-object v0, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v0, v0, p1

    monitor-exit p0

    goto :goto_14

    .line 452
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method private setLargeIcon(I)V
    .registers 4
    .parameter "resId"

    .prologue
    .line 475
    iget-object v0, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 476
    iget-object v0, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 478
    return-void
.end method

.method private setRingerIcon()V
    .registers 6

    .prologue
    .line 485
    iget-object v2, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 486
    iget-object v2, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 488
    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v2}, Landroid/media/AudioService;->getRingerMode()I

    move-result v1

    .line 491
    .local v1, ringerMode:I
    sget-boolean v2, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_30

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRingerIcon(), ringerMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_30
    if-nez v1, :cond_3b

    .line 494
    const v0, 0x10801ec

    .line 500
    .local v0, icon:I
    :goto_35
    iget-object v2, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 501
    return-void

    .line 495
    .end local v0           #icon:I
    :cond_3b
    const/4 v2, 0x1

    if-ne v1, v2, :cond_42

    .line 496
    const v0, 0x10801e7

    .restart local v0       #icon:I
    goto :goto_35

    .line 498
    .end local v0           #icon:I
    :cond_42
    const v0, 0x10801e9

    .restart local v0       #icon:I
    goto :goto_35
.end method

.method private setSmallIcon(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 461
    iget-object v0, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 464
    iget-object v0, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    if-nez p1, :cond_18

    const v1, 0x10801ed

    :goto_14
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 467
    return-void

    .line 464
    :cond_18
    const v1, 0x10801ee

    goto :goto_14
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 521
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1e

    .line 549
    :goto_5
    return-void

    .line 524
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onVolumeChanged(II)V

    goto :goto_5

    .line 529
    :pswitch_e
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onFreeResources()V

    goto :goto_5

    .line 534
    :pswitch_12
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    goto :goto_5

    .line 539
    :pswitch_16
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onPlaySound(II)V

    goto :goto_5

    .line 521
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_e
        :pswitch_16
        :pswitch_12
    .end packed-switch
.end method

.method protected onFreeResources()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 506
    iget-object v1, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 507
    iget-object v1, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 509
    monitor-enter p0

    .line 510
    :try_start_c
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_12
    if-ltz v0, :cond_29

    .line 511
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_21

    .line 512
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 514
    :cond_21
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 510
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 516
    :cond_29
    monitor-exit p0

    .line 517
    return-void

    .line 516
    .end local v0           #i:I
    :catchall_2b
    move-exception v1

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method protected onPlaySound(II)V
    .registers 14
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v10, 0x3

    const/4 v4, 0x1

    .line 384
    invoke-virtual {p0, v10}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 385
    invoke-virtual {p0, v10}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 387
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    .line 390
    :cond_e
    monitor-enter p0

    .line 391
    :try_start_f
    iget-object v0, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_15

    .line 392
    monitor-exit p0

    .line 417
    :goto_14
    return-void

    .line 394
    :cond_15
    sget-boolean v0, Landroid/view/VolumePanel;->mIsLoadSoundPool:Z

    if-nez v0, :cond_60

    .line 396
    const-string v0, "VolumePanel"

    const-string/jumbo v1, "soundpool is not loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v8, 0x0

    .local v8, effect:I
    :goto_22
    if-ge v8, v4, :cond_5b

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/audio/ui/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    iget-object v2, p0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v2, v2, v8

    const/4 v3, 0x0

    aget v2, v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 399
    .local v9, filePath:Ljava/lang/String;
    iget-object v0, p0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v0, v0, v8

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    const/4 v3, 0x0

    invoke-virtual {v2, v9, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v2

    aput v2, v0, v1
    :try_end_58
    .catchall {:try_start_f .. :try_end_58} :catchall_8a

    .line 397
    add-int/lit8 v8, v8, 0x1

    goto :goto_22

    .line 402
    .end local v9           #filePath:Ljava/lang/String;
    :cond_5b
    const-wide/16 v0, 0x28

    :try_start_5d
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_8a
    .catch Ljava/lang/InterruptedException; {:try_start_5d .. :try_end_60} :catch_85

    .line 408
    .end local v8           #effect:I
    :cond_60
    :goto_60
    :try_start_60
    iget-object v0, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->setStreamType(I)V

    .line 409
    iget-object v0, p0, Landroid/view/VolumePanel;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Landroid/view/VolumePanel;->SOUND_EFFECT_FILES_MAP:[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget v1, v1, v2

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 415
    monitor-exit p0
    :try_end_7b
    .catchall {:try_start_60 .. :try_end_7b} :catchall_8a

    .line 416
    invoke-virtual {p0, v10}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_14

    .line 403
    .restart local v8       #effect:I
    :catch_85
    move-exception v7

    .line 405
    .local v7, e1:Ljava/lang/InterruptedException;
    :try_start_86
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_60

    .line 415
    .end local v7           #e1:Ljava/lang/InterruptedException;
    .end local v8           #effect:I
    :catchall_8a
    move-exception v0

    monitor-exit p0
    :try_end_8c
    .catchall {:try_start_86 .. :try_end_8c} :catchall_8a

    throw v0
.end method

.method protected onShowVolumeChanged(II)V
    .registers 16
    .parameter "streamType"
    .parameter "flags"

    .prologue
    .line 209
    iget-object v9, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v9, p1}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v1

    .line 210
    .local v1, index:I
    const v5, 0x10403b9

    .line 211
    .local v5, message:I
    const/4 v0, 0x0

    .line 212
    .local v0, additionalMessage:I
    const/4 v8, 0x0

    .line 213
    .local v8, warningMessage:I
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    .line 215
    sget-boolean v9, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v9, :cond_3f

    .line 216
    const-string v9, "VolumePanel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onShowVolumeChanged(streamType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", flags: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_3f
    iget-object v9, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v9, p1}, Landroid/media/AudioService;->getStreamMaxVolume(I)I

    move-result v4

    .line 223
    .local v4, max:I
    packed-switch p1, :pswitch_data_200

    .line 328
    :cond_48
    :goto_48
    :pswitch_48
    sget v9, Landroid/view/VolumePanel;->getCurrentVol:I

    sput v9, Landroid/view/VolumePanel;->mPrevVol:I

    .line 329
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 330
    .local v6, messageString:Ljava/lang/String;
    iget-object v9, p0, Landroid/view/VolumePanel;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_65

    .line 331
    iget-object v9, p0, Landroid/view/VolumePanel;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    :cond_65
    if-nez v0, :cond_1d7

    .line 335
    iget-object v9, p0, Landroid/view/VolumePanel;->mAdditionalMessage:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    :goto_6e
    iget-object v9, p0, Landroid/view/VolumePanel;->mLevel:Landroid/widget/ProgressBar;

    invoke-virtual {v9}, Landroid/widget/ProgressBar;->getMax()I

    move-result v9

    if-eq v4, v9, :cond_7b

    .line 342
    iget-object v9, p0, Landroid/view/VolumePanel;->mLevel:Landroid/widget/ProgressBar;

    invoke-virtual {v9, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 344
    :cond_7b
    iget-object v9, p0, Landroid/view/VolumePanel;->mLevel:Landroid/widget/ProgressBar;

    invoke-virtual {v9, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 346
    sget-boolean v9, Landroid/view/VolumePanel;->mFlag_isMusic:Z

    const/4 v10, 0x1

    if-eq v9, v10, :cond_89

    iget-boolean v9, p0, Landroid/view/VolumePanel;->mFlag_isFMRadio:Z

    if-eqz v9, :cond_1ec

    .line 348
    :cond_89
    sget-boolean v9, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v9, :cond_94

    .line 349
    const-string v9, "VolumePanel"

    const-string v10, "mFlag_isMusic == true"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_94
    sget-boolean v9, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v9, :cond_9f

    .line 352
    const-string v9, "VolumePanel"

    const-string v10, "Show Waring Toast"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_9f
    const v8, 0x10404e3

    .line 356
    iget-object v9, p0, Landroid/view/VolumePanel;->mWarningMessage:Landroid/widget/TextView;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    const/4 v9, 0x0

    sput-boolean v9, Landroid/view/VolumePanel;->mFlag_isMusic:Z

    .line 359
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/view/VolumePanel;->mFlag_isFMRadio:Z

    .line 368
    :goto_b5
    iget-object v9, p0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    iget-object v10, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 369
    iget-object v9, p0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Toast;->setDuration(I)V

    .line 370
    iget-object v9, p0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    const/16 v10, 0x30

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/widget/Toast;->setGravity(III)V

    .line 371
    iget-object v9, p0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 374
    and-int/lit8 v9, p2, 0x10

    if-eqz v9, :cond_f8

    iget-object v9, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v9, p1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v9

    if-eqz v9, :cond_f8

    iget-object v9, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v9}, Landroid/media/AudioService;->getRingerMode()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_f8

    iget-object v9, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/media/AudioService;->shouldVibrate(I)Z

    move-result v9

    if-eqz v9, :cond_f8

    .line 378
    const/4 v9, 0x4

    invoke-virtual {p0, v9}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x12c

    invoke-virtual {p0, v9, v10, v11}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 380
    :cond_f8
    return-void

    .line 226
    .end local v6           #messageString:Ljava/lang/String;
    :pswitch_f9
    invoke-direct {p0}, Landroid/view/VolumePanel;->setRingerIcon()V

    .line 227
    const v5, 0x10403b0

    .line 228
    iget-object v9, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    .line 230
    .local v7, ringuri:Landroid/net/Uri;
    if-nez v7, :cond_48

    .line 231
    const v0, 0x10403b4

    .line 233
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_48

    .line 240
    .end local v7           #ringuri:Landroid/net/Uri;
    :pswitch_110
    invoke-static {}, Landroid/media/AudioManager;->getEarProtectLimitIndex()I

    move-result v9

    sput v9, Landroid/view/VolumePanel;->EAR_PROTECT_LIMIT_INDEX_VALUE:I

    .line 242
    iget-object v9, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    sput v9, Landroid/view/VolumePanel;->getCurrentVol:I

    .line 243
    iget-object v9, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const-string v10, "audioParam;curDevice"

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, isMusicHPH:Ljava/lang/String;
    const-string v9, "HPH"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14f

    sget v9, Landroid/view/VolumePanel;->getCurrentVol:I

    sget v10, Landroid/view/VolumePanel;->EAR_PROTECT_LIMIT_INDEX_VALUE:I

    if-lt v9, v10, :cond_13b

    sget v9, Landroid/view/VolumePanel;->getCurrentVol:I

    sget v10, Landroid/view/VolumePanel;->mPrevVol:I

    if-gt v9, v10, :cond_141

    :cond_13b
    sget v9, Landroid/view/VolumePanel;->getCurrentVol:I

    const/16 v10, 0xf

    if-ne v9, v10, :cond_14f

    .line 251
    :cond_141
    sget-boolean v9, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v9, :cond_14c

    .line 252
    const-string v9, "VolumePanel"

    const-string v10, "kdh debug line-1"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_14c
    const/4 v9, 0x1

    sput-boolean v9, Landroid/view/VolumePanel;->mFlag_isMusic:Z

    .line 257
    :cond_14f
    const v5, 0x10403b1

    .line 258
    iget-object v9, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v9}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v9

    if-eqz v9, :cond_165

    .line 259
    const v0, 0x10403b3

    .line 261
    const v9, 0x10801ea

    invoke-direct {p0, v9}, Landroid/view/VolumePanel;->setLargeIcon(I)V

    goto/16 :goto_48

    .line 263
    :cond_165
    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->setSmallIcon(I)V

    goto/16 :goto_48

    .line 277
    .end local v2           #isMusicHPH:Ljava/lang/String;
    :pswitch_16a
    add-int/lit8 v1, v1, 0x1

    .line 278
    add-int/lit8 v4, v4, 0x1

    .line 279
    const v5, 0x10403b5

    .line 280
    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->setSmallIcon(I)V

    goto/16 :goto_48

    .line 285
    :pswitch_176
    const v5, 0x10403b7

    .line 286
    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->setSmallIcon(I)V

    goto/16 :goto_48

    .line 291
    :pswitch_17e
    const v5, 0x10403b8

    .line 292
    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->setSmallIcon(I)V

    .line 293
    iget-object v9, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    .line 295
    .restart local v7       #ringuri:Landroid/net/Uri;
    if-nez v7, :cond_48

    .line 296
    const v0, 0x10403b4

    .line 298
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_48

    .line 309
    .end local v7           #ringuri:Landroid/net/Uri;
    :pswitch_195
    add-int/lit8 v1, v1, 0x1

    .line 310
    add-int/lit8 v4, v4, 0x1

    .line 311
    const v5, 0x10403b6

    .line 312
    const v9, 0x10801eb

    invoke-direct {p0, v9}, Landroid/view/VolumePanel;->setLargeIcon(I)V

    goto/16 :goto_48

    .line 317
    :pswitch_1a4
    invoke-static {}, Landroid/media/AudioManager;->getEarProtectLimitIndex()I

    move-result v9

    sput v9, Landroid/view/VolumePanel;->EAR_PROTECT_LIMIT_INDEX_VALUE:I

    .line 318
    iget-object v9, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v9

    iput v9, p0, Landroid/view/VolumePanel;->mGetFMCurrentVol:I

    .line 319
    iget-object v9, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v9}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v3

    .line 320
    .local v3, isSpeakerOn:Z
    if-nez v3, :cond_1cb

    iget v9, p0, Landroid/view/VolumePanel;->mGetFMCurrentVol:I

    sget v10, Landroid/view/VolumePanel;->EAR_PROTECT_LIMIT_INDEX_VALUE:I

    if-ne v9, v10, :cond_1cb

    iget v9, p0, Landroid/view/VolumePanel;->mPrevFMVol:I

    sget v10, Landroid/view/VolumePanel;->EAR_PROTECT_LIMIT_INDEX_VALUE:I

    if-ge v9, v10, :cond_1cb

    .line 321
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/view/VolumePanel;->mFlag_isFMRadio:Z

    .line 322
    :cond_1cb
    iget v9, p0, Landroid/view/VolumePanel;->mGetFMCurrentVol:I

    iput v9, p0, Landroid/view/VolumePanel;->mPrevFMVol:I

    .line 323
    const v5, 0x10403b2

    .line 324
    invoke-direct {p0, v1}, Landroid/view/VolumePanel;->setSmallIcon(I)V

    goto/16 :goto_48

    .line 337
    .end local v3           #isSpeakerOn:Z
    .restart local v6       #messageString:Ljava/lang/String;
    :cond_1d7
    iget-object v9, p0, Landroid/view/VolumePanel;->mAdditionalMessage:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    iget-object v9, p0, Landroid/view/VolumePanel;->mAdditionalMessage:Landroid/widget/TextView;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6e

    .line 363
    :cond_1ec
    sget-boolean v9, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v9, :cond_1f7

    .line 364
    const-string v9, "VolumePanel"

    const-string v10, "mFlag_isMusic != true"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_1f7
    iget-object v9, p0, Landroid/view/VolumePanel;->mWarningMessage:Landroid/widget/TextView;

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b5

    .line 223
    :pswitch_data_200
    .packed-switch 0x0
        :pswitch_16a
        :pswitch_48
        :pswitch_f9
        :pswitch_110
        :pswitch_176
        :pswitch_17e
        :pswitch_195
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_1a4
    .end packed-switch
.end method

.method protected onStopSounds()V
    .registers 5

    .prologue
    .line 421
    monitor-enter p0

    .line 422
    :try_start_1
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 423
    .local v1, numStreamTypes:I
    const/4 v3, 0x1

    sub-int v0, v1, v3

    .local v0, i:I
    :goto_8
    if-ltz v0, :cond_16

    .line 424
    iget-object v3, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v2, v3, v0

    .line 425
    .local v2, toneGen:Landroid/media/ToneGenerator;
    if-eqz v2, :cond_13

    .line 426
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    .line 423
    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 429
    .end local v2           #toneGen:Landroid/media/ToneGenerator;
    :cond_16
    monitor-exit p0

    .line 430
    return-void

    .line 429
    .end local v0           #i:I
    .end local v1           #numStreamTypes:I
    :catchall_18
    move-exception v3

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v3
.end method

.method protected onVibrate()V
    .registers 4

    .prologue
    .line 435
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    .line 440
    :goto_9
    return-void

    .line 439
    :cond_a
    iget-object v0, p0, Landroid/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_9
.end method

.method protected onVolumeChanged(II)V
    .registers 8
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 187
    sget-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_2f

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_2f
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_36

    .line 190
    invoke-virtual {p0, p1, p2}, Landroid/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 193
    :cond_36
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_4a

    iget-boolean v0, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    if-nez v0, :cond_4a

    .line 194
    invoke-virtual {p0, v3}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 195
    invoke-virtual {p0, v3, p1, p2}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 198
    :cond_4a
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_58

    .line 199
    invoke-virtual {p0, v3}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 200
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 201
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    .line 204
    :cond_58
    invoke-virtual {p0, v4}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 205
    invoke-virtual {p0, v4}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 206
    return-void
.end method

.method public postVolumeChanged(II)V
    .registers 5
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-virtual {p0, v1}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 178
    :goto_7
    return-void

    .line 176
    :cond_8
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 177
    invoke-virtual {p0, v1, p1, p2}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_7
.end method
