.class public Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;
.super Landroid/widget/RelativeLayout;
.source "GlassLockScreenFMRadioWidget.java"


# static fields
.field private static final FMPLAYER_NEXT_ACTION:Ljava/lang/String; = "com.android.fm.player_lock.tune.next"

.field private static final FMPLAYER_OFF_ACTION:Ljava/lang/String; = "com.android.fm.player_lock.off"

.field private static final FMPLAYER_ON:I = 0x1

.field private static final FMPLAYER_ON_ACTION:Ljava/lang/String; = "com.android.fm.player_lock.on"

.field private static final FMPLAYER_PREV_ACTION:Ljava/lang/String; = "com.android.fm.player_lock.tune.prev"

.field private static final MUSICHUB_ON:I = 0x2

.field private static final RETURN_CHANNEL_CHANGE_ACTION:Ljava/lang/String; = "com.android.fm.player_lock.status.channel"

.field private static final RETURN_CHANNEL_TUNE_ACTION:Ljava/lang/String; = "com.android.fm.player_lock.tune.channel"

.field private static final RETURN_FMPLAYER_INFO:Ljava/lang/String; = "com.android.fm.player_lock.info"

.field private static final RETURN_OFF_ACTION:Ljava/lang/String; = "com.android.fm.player_lock.status.off"

.field private static final RETURN_ON_ACTION:Ljava/lang/String; = "com.android.fm.player_lock.status.on"

.field private static final SOUND_TOUCH_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GlassLockScreenFMRadioWidget"


# instance fields
.field private final DEBUG:Z

.field private final MSG_FMFREQ_UPDATE:I

.field private final MSG_FM_UPDATE:I

.field private final SHINK_ANIMATION_START:I

.field private final STOP_MARQUEE:I

.field private final STOP_MARQUEE_DELAY:I

.field private currentAlbumID:Ljava/lang/String;

.field private isMaxLayout:Z

.field private isTopLayout:Z

.field private mBeforeButton:Landroid/widget/ImageButton;

.field private mBoxInMaxFMRadio:Landroid/widget/LinearLayout;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCurrentChannel:Ljava/lang/String;

.field private mCurrentFreq:Ljava/lang/String;

.field private mFFLongPressed:Z

.field private mFMAppImage:Landroid/widget/ImageView;

.field private mFMInfoTextInMax:Landroid/widget/TextView;

.field private mFMInfoTextInMin:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHeightDifference:I

.field private mIsFMPlayerPlaying:Z

.field private mIsMoving:Z

.field private mIsPlaying:Z

.field private mIsStopped:Z

.field private mMainLayout:Landroid/widget/RelativeLayout;

.field private mMaxFMRadio:Landroid/widget/FrameLayout;

.field private mMinFMControllerHandle:Landroid/widget/LinearLayout;

.field private mNextButton:Landroid/widget/ImageButton;

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

.field private mREWLongPressed:Z

.field private mScreenOn:Z

.field private mServiceNumber:I

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mVisibleLayout:Z

.field private mWasShowed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .registers 9
    .parameter "context"
    .parameter "callback"
    .parameter "updateMonitor"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 142
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 55
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->DEBUG:Z

    .line 75
    iput-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 84
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isMaxLayout:Z

    .line 90
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mScreenOn:Z

    .line 91
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsMoving:Z

    .line 92
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mVisibleLayout:Z

    .line 93
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsPlaying:Z

    .line 94
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsFMPlayerPlaying:Z

    .line 95
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsStopped:Z

    .line 96
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mWasShowed:Z

    .line 98
    iput-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mCurrentChannel:Ljava/lang/String;

    .line 99
    iput-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mCurrentFreq:Ljava/lang/String;

    .line 100
    iput-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->currentAlbumID:Ljava/lang/String;

    .line 106
    const/16 v2, 0x12c1

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->SHINK_ANIMATION_START:I

    .line 107
    const/16 v2, 0x12c2

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->MSG_FM_UPDATE:I

    .line 108
    const/16 v2, 0x12c3

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->MSG_FMFREQ_UPDATE:I

    .line 109
    const/16 v2, 0x12c4

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->STOP_MARQUEE:I

    .line 111
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->STOP_MARQUEE_DELAY:I

    .line 113
    iput v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mServiceNumber:I

    .line 117
    new-instance v2, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$1;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHandler:Landroid/os/Handler;

    .line 144
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 145
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 147
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 148
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x109007a

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 150
    const v2, 0x1020274

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 152
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 153
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.android.fm.player_lock.status.channel"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v2, "com.android.fm.player_lock.tune.channel"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v2, "com.android.fm.player_lock.status.on"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v2, "com.android.fm.player_lock.status.off"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    new-instance v2, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$2;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 196
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setFocusable(Z)V

    .line 199
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setFocusableInTouchMode(Z)V

    .line 200
    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setDescendantFocusability(I)V

    .line 202
    :try_start_90
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    if-nez v2, :cond_a6

    .line 203
    const-string v2, "FMPlayer"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/media/fmradio/FMPlayer;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    .line 204
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mPlayer:Lcom/samsung/media/fmradio/FMPlayer;

    invoke-virtual {v2}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsFMPlayerPlaying:Z
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_a6} :catch_aa

    .line 208
    :cond_a6
    :goto_a6
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->init()V

    .line 209
    return-void

    .line 207
    :catch_aa
    move-exception v2

    goto :goto_a6
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setMinLayout()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;III)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->startTranslateAnimation(III)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setMaxLayout(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsPlaying:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mServiceNumber:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mServiceNumber:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->resetMinTimer()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHeightDifference:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isTopLayout:Z

    return v0
.end method

.method private addMinTimer()V
    .registers 5

    .prologue
    .line 679
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isMaxLayout:Z

    if-eqz v1, :cond_13

    .line 680
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12c1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 681
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xdac

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 683
    .end local v0           #msg:Landroid/os/Message;
    :cond_13
    return-void
.end method

.method private generateTitleText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "freq"
    .parameter "chname"

    .prologue
    const v3, 0x10404f9

    const-string v5, " MHz"

    const-string v4, " - "

    .line 474
    const-string v0, ""

    .line 475
    .local v0, newTitleText:Ljava/lang/CharSequence;
    if-eqz p1, :cond_47

    if-eqz p2, :cond_47

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_47

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MHz"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 484
    :goto_42
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 478
    :cond_47
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsPlaying:Z

    if-eqz v1, :cond_71

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MHz"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_42

    .line 481
    :cond_71
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_42
.end method

.method private init()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 278
    const v1, 0x1020279

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    .line 279
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 280
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 282
    const v1, 0x102027e

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    .line 283
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 284
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 286
    const v1, 0x1020275

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMaxFMRadio:Landroid/widget/FrameLayout;

    .line 287
    const v1, 0x1020277

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mBoxInMaxFMRadio:Landroid/widget/LinearLayout;

    .line 288
    const v1, 0x1020276

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMinFMControllerHandle:Landroid/widget/LinearLayout;

    .line 289
    const v1, 0x1020278

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMAppImage:Landroid/widget/ImageView;

    .line 292
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setSoundEffectsEnabled(Z)V

    .line 293
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$3;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    new-instance v1, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$4;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 389
    const v1, 0x102027d

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mNextButton:Landroid/widget/ImageButton;

    .line 390
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mNextButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$5;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$5;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    const v1, 0x102027b

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mBeforeButton:Landroid/widget/ImageButton;

    .line 401
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mBeforeButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$6;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$6;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    const v1, 0x102027c

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mPauseButton:Landroid/widget/ImageButton;

    .line 414
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mPauseButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$7;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$7;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.fm.player_lock.info"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 431
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "lockscreen"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 432
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->sendBroadcastAfterBooting(Landroid/content/Intent;)V

    .line 433
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->resetMinTimer()V

    .line 434
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 435
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mVisibleLayout:Z

    .line 436
    return-void
.end method

.method private removeMinTimer()V
    .registers 3

    .prologue
    const/16 v1, 0x12c1

    .line 673
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 674
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 675
    :cond_f
    return-void
.end method

.method private resetMinTimer()V
    .registers 1

    .prologue
    .line 687
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->removeMinTimer()V

    .line 688
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->addMinTimer()V

    .line 689
    return-void
.end method

.method private setMaxLayout(I)V
    .registers 7
    .parameter "value"

    .prologue
    const/16 v4, 0x190

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 610
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsMoving:Z

    if-eqz v0, :cond_9

    .line 637
    :goto_8
    return-void

    .line 614
    :cond_9
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isMaxLayout:Z

    .line 617
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMinFMControllerHandle:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 619
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mBoxInMaxFMRadio:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 620
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mBoxInMaxFMRadio:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 623
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isTopLayout:Z

    if-eqz v0, :cond_3b

    .line 624
    invoke-direct {p0, p1, v2, v4}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->startTranslateAnimation(III)V

    .line 630
    :goto_22
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 631
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 632
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 633
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 636
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->resetMinTimer()V

    goto :goto_8

    .line 626
    :cond_3b
    invoke-direct {p0, p1, v2, v4}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->startTranslateAnimation(III)V

    goto :goto_22
.end method

.method private setMinLayout()V
    .registers 5

    .prologue
    const/16 v3, 0xc8

    const/4 v2, 0x0

    .line 642
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsMoving:Z

    if-eqz v0, :cond_8

    .line 668
    :goto_7
    return-void

    .line 646
    :cond_8
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isMaxLayout:Z

    .line 649
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMinFMControllerHandle:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 651
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mBoxInMaxFMRadio:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 652
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mBoxInMaxFMRadio:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 653
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mBoxInMaxFMRadio:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 655
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMaxFMRadio:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_35

    .line 656
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMaxFMRadio:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMinFMControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHeightDifference:I

    .line 659
    :cond_35
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isTopLayout:Z

    if-eqz v0, :cond_51

    .line 660
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHeightDifference:I

    neg-int v0, v0

    invoke-direct {p0, v2, v0, v3}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->startTranslateAnimation(III)V

    .line 665
    :goto_3f
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 666
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 667
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_7

    .line 662
    :cond_51
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHeightDifference:I

    invoke-direct {p0, v2, v0, v3}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->startTranslateAnimation(III)V

    goto :goto_3f
.end method

.method private startTranslateAnimation(III)V
    .registers 8
    .parameter "x"
    .parameter "y"
    .parameter "duration"

    .prologue
    const/4 v3, 0x0

    .line 597
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsMoving:Z

    if-eqz v1, :cond_6

    .line 605
    :goto_5
    return-void

    .line 600
    :cond_6
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 601
    .local v0, animation:Landroid/view/animation/Animation;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 602
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 603
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 604
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMaxFMRadio:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_5
.end method


# virtual methods
.method public cleanUp()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 440
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 442
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 443
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 444
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->stopMarguee()V

    .line 445
    return-void
.end method

.method public getIsFMPlayerPlaying()Z
    .registers 4

    .prologue
    .line 706
    const-string v0, "GlassLockScreenFMRadioWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIsFMPlayerPlaying() : mIsFMPlayerPlaying="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsFMPlayerPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsFMPlayerPlaying:Z

    return v0
.end method

.method protected handleFMUpdate(IILjava/lang/Object;)V
    .registers 11
    .parameter "isPlaying"
    .parameter "isStop"
    .parameter "obj"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, ""

    .line 214
    const-string v1, "GlassLockScreenFMRadioWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMediaUpdate !! isPlaying = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isStop = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIsFMPlayerPlaying = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsFMPlayerPlaying:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    if-ne p1, v4, :cond_55

    move v1, v4

    :goto_35
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsPlaying:Z

    .line 216
    if-ne p2, v4, :cond_57

    move v1, v4

    :goto_3a
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsStopped:Z

    .line 218
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsPlaying:Z

    if-eqz v1, :cond_47

    .line 219
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 220
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mVisibleLayout:Z

    .line 223
    :cond_47
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsFMPlayerPlaying:Z

    if-nez v1, :cond_59

    .line 224
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 225
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mVisibleLayout:Z

    .line 241
    :goto_54
    return-void

    :cond_55
    move v1, v5

    .line 215
    goto :goto_35

    :cond_57
    move v1, v5

    .line 216
    goto :goto_3a

    .line 230
    :cond_59
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsPlaying:Z

    if-eqz v1, :cond_6e

    .line 231
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v2, 0x10803e1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 240
    :goto_65
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMAppImage:Landroid/widget/ImageView;

    const v2, 0x1080248

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_54

    .line 233
    :cond_6e
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v2, 0x10803e0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 234
    const-string v1, ""

    const-string v1, ""

    invoke-direct {p0, v6, v6}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->generateTitleText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, newTitleText:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->invalidate()V

    goto :goto_65
.end method

.method protected handleFMUpdate(IILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "isPlaying"
    .parameter "isStop"
    .parameter "freq"
    .parameter "chname"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 245
    if-nez p3, :cond_5

    .line 270
    :goto_4
    return-void

    .line 248
    :cond_5
    iput-object p4, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mCurrentChannel:Ljava/lang/String;

    .line 249
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mCurrentFreq:Ljava/lang/String;

    .line 250
    if-ne p1, v1, :cond_2b

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsPlaying:Z

    .line 251
    if-ne p2, v1, :cond_2d

    move v0, v1

    :goto_11
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsStopped:Z

    .line 253
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsPlaying:Z

    if-eqz v0, :cond_1e

    .line 254
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 255
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mVisibleLayout:Z

    .line 258
    :cond_1e
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsFMPlayerPlaying:Z

    if-nez v0, :cond_2f

    .line 259
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 260
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mVisibleLayout:Z

    goto :goto_4

    :cond_2b
    move v0, v2

    .line 250
    goto :goto_c

    :cond_2d
    move v0, v2

    .line 251
    goto :goto_11

    .line 263
    :cond_2f
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsPlaying:Z

    if-eqz v0, :cond_47

    .line 264
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x10803e1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 268
    :goto_3b
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->updateFMPlayer(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMAppImage:Landroid/widget/ImageView;

    const v1, 0x1080248

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 266
    :cond_47
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x10803e0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_3b
.end method

.method public handleStopMarquee()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 532
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 533
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 534
    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    .line 535
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 536
    :cond_13
    return-void
.end method

.method public isControllerShowing()Z
    .registers 2

    .prologue
    .line 735
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mVisibleLayout:Z

    return v0
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 731
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsPlaying:Z

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 448
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 451
    const/4 v0, 0x3

    if-ne p1, v0, :cond_f

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_f

    .line 452
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->startControllerAnimation()V

    .line 455
    :cond_f
    const/16 v0, 0x18

    if-ne p1, v0, :cond_13

    .line 459
    :cond_13
    const/16 v0, 0x19

    if-ne p1, v0, :cond_17

    .line 462
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 468
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mBoxInMaxFMRadio:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 469
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 470
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 471
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->stopMarguee()V

    .line 472
    return-void
.end method

.method public onResume()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 489
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMaxFMRadio:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMinFMControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHeightDifference:I

    .line 493
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 494
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 495
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mCurrentFreq:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mCurrentChannel:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->generateTitleText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, newTitleText:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 501
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isMaxLayout:Z

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 505
    :goto_3b
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.fm.player_lock.info"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->sendBroadcastAfterBooting(Landroid/content/Intent;)V

    .line 507
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isTopLayout:Z

    if-eqz v1, :cond_56

    .line 508
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHeightDifference:I

    neg-int v1, v1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setMaxLayout(I)V

    .line 512
    :goto_4f
    return-void

    .line 502
    :cond_50
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_3b

    .line 510
    :cond_56
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHeightDifference:I

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setMaxLayout(I)V

    goto :goto_4f
.end method

.method public sendBroadcastAfterBooting(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 739
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 740
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 744
    :cond_f
    return-void
.end method

.method public sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V
    .registers 4
    .parameter "v"
    .parameter "intent"

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 748
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 752
    :cond_f
    return-void
.end method

.method public setBottomLayout()V
    .registers 5

    .prologue
    const/16 v3, 0x50

    .line 552
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isTopLayout:Z

    .line 553
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMaxFMRadio:Landroid/widget/FrameLayout;

    const v2, 0x10803cf

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 554
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMinFMControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 555
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 556
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMinFMControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 558
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 559
    .restart local v0       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 560
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 561
    return-void
.end method

.method public setControllerVisibility(ZZ)V
    .registers 6
    .parameter "bIsVisible"
    .parameter "isMusicWidgetShowed"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 711
    if-nez p1, :cond_1c

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mIsMoving:Z

    .line 712
    if-eqz p1, :cond_1e

    .line 713
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mWasShowed:Z

    if-eqz v0, :cond_1b

    .line 714
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mVisibleLayout:Z

    if-nez v0, :cond_18

    .line 715
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 716
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mVisibleLayout:Z

    .line 718
    :cond_18
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->addMinTimer()V

    .line 728
    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    move v0, v2

    .line 711
    goto :goto_5

    .line 721
    :cond_1e
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mWasShowed:Z

    .line 722
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mVisibleLayout:Z

    if-eqz v0, :cond_2c

    .line 723
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 724
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mVisibleLayout:Z

    .line 726
    :cond_2c
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->removeMinTimer()V

    goto :goto_1b
.end method

.method public setScreenOff()V
    .registers 2

    .prologue
    .line 519
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mScreenOn:Z

    .line 520
    return-void
.end method

.method public setScreenOn()V
    .registers 2

    .prologue
    .line 515
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mScreenOn:Z

    .line 516
    return-void
.end method

.method public setTopLayout()V
    .registers 5

    .prologue
    const/16 v3, 0x30

    .line 539
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isTopLayout:Z

    .line 540
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMaxFMRadio:Landroid/widget/FrameLayout;

    const v2, 0x10803d0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 542
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMinFMControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 543
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 544
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMinFMControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 546
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 547
    .restart local v0       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 548
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 549
    return-void
.end method

.method public startControllerAnimation()V
    .registers 2

    .prologue
    .line 693
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->removeMinTimer()V

    .line 694
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isMaxLayout:Z

    if-eqz v0, :cond_b

    .line 695
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setMinLayout()V

    .line 703
    :goto_a
    return-void

    .line 697
    :cond_b
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isTopLayout:Z

    if-eqz v0, :cond_16

    .line 698
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHeightDifference:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setMaxLayout(I)V

    goto :goto_a

    .line 700
    :cond_16
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHeightDifference:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setMaxLayout(I)V

    goto :goto_a
.end method

.method public stopMarguee()V
    .registers 5

    .prologue
    const/16 v2, 0x12c4

    .line 524
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 525
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 526
    :cond_f
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 527
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 528
    return-void
.end method

.method public updateFMPlayer(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "freq"
    .parameter "chname"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 567
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 568
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 569
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->generateTitleText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 573
    .local v0, newTitleText:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mScreenOn:Z

    if-nez v1, :cond_3c

    .line 575
    const-string v0, ""

    .line 576
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 579
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 580
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 581
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 592
    :goto_35
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMAppImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 593
    return-void

    .line 584
    :cond_3c
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 587
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 588
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isMaxLayout:Z

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_35

    .line 589
    :cond_5a
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mFMInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_35
.end method
