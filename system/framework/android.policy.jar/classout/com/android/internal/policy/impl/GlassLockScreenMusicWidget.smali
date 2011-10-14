.class public Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;
.super Landroid/widget/RelativeLayout;
.source "GlassLockScreenMusicWidget.java"


# static fields
.field private static final MUSICHUB_FF_DOWN_ACTION:Ljava/lang/String; = "com.samsung.music.musicservicecommand.ff.down"

.field private static final MUSICHUB_FF_UP_ACTION:Ljava/lang/String; = "com.samsung.music.musicservicecommand.ff.up"

.field private static final MUSICHUB_MEDIA_INFO:Ljava/lang/String; = "com.samsung.music.musicservicecommand.mediainfo"

.field private static final MUSICHUB_NEXT:Ljava/lang/String; = "com.samsung.music.musicservicecommand.next"

.field private static final MUSICHUB_ON:I = 0x2

.field private static final MUSICHUB_PREVIOUS:Ljava/lang/String; = "com.samsung.music.musicservicecommand.previous"

.field private static final MUSICHUB_REW_DOWN_ACTION:Ljava/lang/String; = "com.samsung.music.musicservicecommand.rew.down"

.field private static final MUSICHUB_REW_UP_ACTION:Ljava/lang/String; = "com.samsung.music.musicservicecommand.rew.up"

.field private static final MUSICHUB_TOGGLEPAUSE:Ljava/lang/String; = "com.samsung.music.musicservicecommand.togglepause"

.field private static final MUSICPLAYER_CHECK_PLAY_STATUS:Ljava/lang/String; = "com.android.music.musicservicecommand.checkplaystatus"

.field private static final MUSICPLAYER_FF_DOWN_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.ff.down"

.field private static final MUSICPLAYER_FF_UP_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.ff.up"

.field private static final MUSICPLAYER_MEDIA_INFO:Ljava/lang/String; = "com.android.music.musicservicecommand.mediainfo"

.field private static final MUSICPLAYER_NEXT:Ljava/lang/String; = "com.android.music.musicservicecommand.next"

.field private static final MUSICPLAYER_ON:I = 0x1

.field private static final MUSICPLAYER_PREVIOUS:Ljava/lang/String; = "com.android.music.musicservicecommand.previous"

.field private static final MUSICPLAYER_REW_DOWN_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.rew.down"

.field private static final MUSICPLAYER_REW_UP_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.rew.up"

.field private static final MUSICPLAYER_TOGGLEPAUSE:Ljava/lang/String; = "com.android.music.musicservicecommand.togglepause"

.field private static final SOUND_TOUCH_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GlassLockScreenMusicWidget"


# instance fields
.field private final DEBUG:Z

.field private final MSG_MEDIA_UPDATE:I

.field private final SHINK_ANIMATION_START:I

.field private final STOP_MARQUEE:I

.field private final STOP_MARQUEE_DELAY:I

.field private final STREAMING_MEDIA_UPDATE:I

.field private currentAlbumID:Ljava/lang/String;

.field private currentArtist:Ljava/lang/String;

.field private currentTitle:Ljava/lang/String;

.field private isMaxLayout:Z

.field private isTopLayout:Z

.field private mAlbumArtBitmap:Landroid/graphics/Bitmap;

.field private mAlbumArtWithImage:Landroid/widget/ImageView;

.field private mBeforeButton:Landroid/widget/ImageButton;

.field private mBoxInMaxMusicController:Landroid/widget/LinearLayout;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mFFLongPressed:Z

.field private mGlassLockScreen:Lcom/android/internal/policy/impl/GlassLockScreen;

.field private mHandler:Landroid/os/Handler;

.field private mHeightDifference:I

.field private mIsMoving:Z

.field private mIsPlaying:Z

.field private mMainLayout:Landroid/widget/RelativeLayout;

.field private mMaxMusicController:Landroid/widget/FrameLayout;

.field private mMediaUri:Landroid/net/Uri;

.field private mMinMusicControllerHandle:Landroid/widget/LinearLayout;

.field private mMusicInfoTextInMax:Landroid/widget/TextView;

.field private mMusicInfoTextInMin:Landroid/widget/TextView;

.field private mNextButton:Landroid/widget/ImageButton;

.field private mPauseButton:Landroid/widget/ImageButton;

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
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 159
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 53
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->DEBUG:Z

    .line 80
    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 89
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    .line 92
    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mGlassLockScreen:Lcom/android/internal/policy/impl/GlassLockScreen;

    .line 95
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mScreenOn:Z

    .line 96
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsMoving:Z

    .line 97
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    .line 98
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsPlaying:Z

    .line 99
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mWasShowed:Z

    .line 101
    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentTitle:Ljava/lang/String;

    .line 102
    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentArtist:Ljava/lang/String;

    .line 103
    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentAlbumID:Ljava/lang/String;

    .line 109
    const/16 v2, 0x12c1

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->SHINK_ANIMATION_START:I

    .line 110
    const/16 v2, 0x12c2

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->MSG_MEDIA_UPDATE:I

    .line 111
    const/16 v2, 0x12c3

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->STREAMING_MEDIA_UPDATE:I

    .line 112
    const/16 v2, 0x12c4

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->STOP_MARQUEE:I

    .line 114
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->STOP_MARQUEE_DELAY:I

    .line 120
    iput v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I

    .line 124
    new-instance v2, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$1;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    .line 161
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 162
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mContentResolver:Landroid/content/ContentResolver;

    .line 165
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 166
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x1090080

    invoke-virtual {v1, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 168
    const v2, 0x1020296

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 170
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 171
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.android.music.musicservicecommand.mediainfo"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string v2, "com.samsung.music.musicservicecommand.mediainfo"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    new-instance v2, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 250
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 252
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setFocusable(Z)V

    .line 253
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setFocusableInTouchMode(Z)V

    .line 254
    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setDescendantFocusability(I)V

    .line 257
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->init()V

    .line 258
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/GlassLockScreen;)V
    .registers 5
    .parameter "context"
    .parameter "callback"
    .parameter "updateMonitor"
    .parameter "glassLockScreen"

    .prologue
    .line 153
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 154
    iput-object p4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mGlassLockScreen:Lcom/android/internal/policy/impl/GlassLockScreen;

    .line 155
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMinLayout()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMaxLayout(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mFFLongPressed:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mFFLongPressed:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->removeMinTimer()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->addMinTimer()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mREWLongPressed:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mREWLongPressed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mServiceNumber:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->resetMinTimer()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;III)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startTranslateAnimation(III)V

    return-void
.end method

.method private addMinTimer()V
    .registers 5

    .prologue
    .line 1097
    const-string v1, "GlassLockScreenMusicWidget"

    const-string v2, "addMinTimer()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    if-eqz v1, :cond_1a

    .line 1099
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x12c1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1100
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xdac

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1102
    .end local v0           #msg:Landroid/os/Message;
    :cond_1a
    return-void
.end method

.method private init()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    const-string v4, "GlassLockScreenMusicWidget"

    .line 325
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v0, "Controller Initiation Running!!"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const v0, 0x102029b

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    .line 329
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 330
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 332
    const v0, 0x10202a0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    .line 333
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 334
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 338
    const v0, 0x1020297

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    .line 339
    const v0, 0x1020299

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    .line 340
    const v0, 0x1020298

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    .line 341
    const v0, 0x102029a

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    .line 344
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setSoundEffectsEnabled(Z)V

    .line 345
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$3;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    new-instance v0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$4;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 446
    const v0, 0x102029f

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mNextButton:Landroid/widget/ImageButton;

    .line 447
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mNextButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$5;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 466
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mNextButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$6;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$6;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mNextButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$7;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$7;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 548
    const v0, 0x102029d

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBeforeButton:Landroid/widget/ImageButton;

    .line 549
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBeforeButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$8;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$8;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 568
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBeforeButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$9;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$9;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBeforeButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$10;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$10;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 653
    const v0, 0x102029e

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPauseButton:Landroid/widget/ImageButton;

    .line 654
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPauseButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$11;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$11;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 670
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v0, "at init() send broadcast"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.checkplaystatus"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/content/Intent;)V

    .line 672
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->resetMinTimer()V

    .line 673
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 674
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    .line 675
    return-void
.end method

.method private removeMinTimer()V
    .registers 4

    .prologue
    const/16 v2, 0x12c1

    .line 1091
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "removeMinTimer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1093
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1094
    :cond_16
    return-void
.end method

.method private resetMinTimer()V
    .registers 3

    .prologue
    .line 1105
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "resetMinTimer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->removeMinTimer()V

    .line 1107
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->addMinTimer()V

    .line 1108
    return-void
.end method

.method private setMaxLayout(I)V
    .registers 7
    .parameter "value"

    .prologue
    const/16 v4, 0x190

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 999
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "setMaxLayout()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsMoving:Z

    if-eqz v0, :cond_10

    .line 1033
    :goto_f
    return-void

    .line 1005
    :cond_10
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    .line 1008
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mGlassLockScreen:Lcom/android/internal/policy/impl/GlassLockScreen;

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1009
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mGlassLockScreen:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/GlassLockScreen;->maxMusicControllerUpdate(Z)V

    .line 1013
    :cond_21
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1015
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1016
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1019
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    if-eqz v0, :cond_51

    .line 1020
    invoke-direct {p0, p1, v2, v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startTranslateAnimation(III)V

    .line 1026
    :goto_38
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1027
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1028
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1029
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 1032
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->resetMinTimer()V

    goto :goto_f

    .line 1022
    :cond_51
    invoke-direct {p0, p1, v2, v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startTranslateAnimation(III)V

    goto :goto_38
.end method

.method private setMinLayout()V
    .registers 8

    .prologue
    const/16 v4, 0xc8

    const/4 v3, 0x0

    const-string v6, "musicplayer.from"

    const-string v5, "lockscreen"

    const-string v2, "GlassLockScreenMusicWidget"

    .line 1036
    const-string v1, "GlassLockScreenMusicWidget"

    const-string v1, "setMinLayout()"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsMoving:Z

    if-eqz v1, :cond_15

    .line 1087
    :goto_14
    return-void

    .line 1042
    :cond_15
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    .line 1044
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mFFLongPressed:Z

    if-eqz v1, :cond_3b

    .line 1045
    const-string v1, "GlassLockScreenMusicWidget"

    const-string v1, "soo nextbutton1 braodcast up action becuase musicpanel is paused"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mFFLongPressed:Z

    .line 1047
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.ff.up"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1048
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1049
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1052
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3b
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mREWLongPressed:Z

    if-eqz v1, :cond_5f

    .line 1053
    const-string v1, "GlassLockScreenMusicWidget"

    const-string v1, "soo beforebutton1 braodcast up action becuase musicpanel is paused"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mREWLongPressed:Z

    .line 1055
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.rew.up"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1056
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1057
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBeforeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1061
    .end local v0           #intent:Landroid/content/Intent;
    :cond_5f
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mGlassLockScreen:Lcom/android/internal/policy/impl/GlassLockScreen;

    if-eqz v1, :cond_68

    .line 1062
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mGlassLockScreen:Lcom/android/internal/policy/impl/GlassLockScreen;

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/GlassLockScreen;->maxMusicControllerUpdate(Z)V

    .line 1066
    :cond_68
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1068
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1069
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1070
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 1074
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_93

    .line 1075
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    .line 1078
    :cond_93
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    if-eqz v1, :cond_b0

    .line 1079
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    neg-int v1, v1

    invoke-direct {p0, v3, v1, v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startTranslateAnimation(III)V

    .line 1084
    :goto_9d
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1085
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1086
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_14

    .line 1081
    :cond_b0
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    invoke-direct {p0, v3, v1, v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startTranslateAnimation(III)V

    goto :goto_9d
.end method

.method private startTranslateAnimation(III)V
    .registers 8
    .parameter "x"
    .parameter "y"
    .parameter "duration"

    .prologue
    const/4 v3, 0x0

    .line 981
    const-string v1, "GlassLockScreenMusicWidget"

    const-string v2, "startTranslateAnimation()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsMoving:Z

    if-eqz v1, :cond_d

    .line 990
    :goto_c
    return-void

    .line 985
    :cond_d
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 986
    .local v0, animation:Landroid/view/animation/Animation;
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 987
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 988
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 989
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_c
.end method


# virtual methods
.method public cleanUp()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 679
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 680
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 681
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 683
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 684
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->stopMarguee()V

    .line 685
    return-void
.end method

.method public displayingMaxLayout()Z
    .registers 2

    .prologue
    .line 994
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    return v0
.end method

.method protected handleMediaUpdate(IILandroid/net/Uri;)V
    .registers 10
    .parameter "isPlaying"
    .parameter "isStop"
    .parameter "mediaUri"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 263
    const-string v2, "GlassLockScreenMusicWidget"

    const-string v3, "handleMediaUpdate !!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    if-nez p3, :cond_c

    .line 287
    :goto_b
    return-void

    .line 266
    :cond_c
    if-ne p1, v4, :cond_28

    move v0, v4

    .line 267
    .local v0, bIsPlaying:Z
    :goto_f
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsPlaying:Z

    .line 268
    if-ne p2, v4, :cond_2a

    move v1, v4

    .line 270
    .local v1, bIsStop:Z
    :goto_14
    if-eqz v0, :cond_1d

    .line 271
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 272
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    .line 275
    :cond_1d
    if-eqz v1, :cond_2c

    .line 276
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 277
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    goto :goto_b

    .end local v0           #bIsPlaying:Z
    .end local v1           #bIsStop:Z
    :cond_28
    move v0, v5

    .line 266
    goto :goto_f

    .restart local v0       #bIsPlaying:Z
    :cond_2a
    move v1, v5

    .line 268
    goto :goto_14

    .line 281
    .restart local v1       #bIsStop:Z
    :cond_2c
    if-eqz v0, :cond_3a

    .line 282
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v3, 0x108041c

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 286
    :goto_36
    invoke-virtual {p0, p3}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->updateMediaPlayer(Landroid/net/Uri;)V

    goto :goto_b

    .line 284
    :cond_3a
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v3, 0x108041d

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_36
.end method

.method protected handleMediaUpdate(IILjava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "isPlaying"
    .parameter "hostType"
    .parameter "title"
    .parameter "artist"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "TAG"

    .line 289
    const-string v2, "GlassLockScreenMusicWidget"

    const-string v3, "handleMediaUpdate 11!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    if-eqz p3, :cond_f

    if-nez p4, :cond_10

    .line 320
    :cond_f
    :goto_f
    return-void

    .line 294
    :cond_10
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentTitle:Ljava/lang/String;

    .line 295
    iput-object p4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentArtist:Ljava/lang/String;

    .line 297
    if-ne p1, v5, :cond_30

    move v0, v5

    .line 298
    .local v0, bIsPlaying:Z
    :goto_17
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsPlaying:Z

    .line 299
    if-nez p2, :cond_32

    move v1, v5

    .line 301
    .local v1, bIsStop:Z
    :goto_1c
    if-eqz v0, :cond_25

    .line 302
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 303
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    .line 306
    :cond_25
    if-eqz v1, :cond_34

    .line 307
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 308
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    goto :goto_f

    .end local v0           #bIsPlaying:Z
    .end local v1           #bIsStop:Z
    :cond_30
    move v0, v4

    .line 297
    goto :goto_17

    .restart local v0       #bIsPlaying:Z
    :cond_32
    move v1, v4

    .line 299
    goto :goto_1c

    .line 312
    .restart local v1       #bIsStop:Z
    :cond_34
    if-eqz v0, :cond_49

    .line 313
    const-string v2, "TAG"

    const-string v2, "pause"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v3, 0x108041c

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 319
    :goto_45
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->updateMediaPlayer(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 316
    :cond_49
    const-string v2, "TAG"

    const-string v2, "play"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mPauseButton:Landroid/widget/ImageButton;

    const v3, 0x108041d

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_45
.end method

.method public handleStopMarquee()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 789
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "handleStopMarquee()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    .line 791
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 792
    :cond_11
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    if-eqz v0, :cond_1a

    .line 793
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 794
    :cond_1a
    return-void
.end method

.method public isControllerShowing()Z
    .registers 2

    .prologue
    .line 1150
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    return v0
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 1146
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsPlaying:Z

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-string v1, "GlassLockScreenMusicWidget"

    .line 688
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 690
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v0, "onKeyDown at GlasslockScreenMusic()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1f

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1f

    .line 692
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->startControllerAnimation()V

    .line 693
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v0, "startControllerAnimation()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_1f
    const/16 v0, 0x18

    if-ne p1, v0, :cond_2a

    .line 696
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v0, "KEYCODE_VOLUME_UP()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_2a
    const/16 v0, 0x19

    if-ne p1, v0, :cond_35

    .line 700
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v0, "KEYCODE_VOLUME_DOWN()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_35
    const/16 v0, 0x17

    if-ne p1, v0, :cond_43

    .line 704
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v0, "KEYCODE_DPAD_CENTER() removeMinTimer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->removeMinTimer()V

    .line 708
    :cond_43
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const-string v5, "musicplayer.from"

    const-string v4, "lockscreen"

    const-string v3, "GlassLockScreenMusicWidget"

    .line 712
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 713
    const-string v1, "GlassLockScreenMusicWidget"

    const-string v1, "soo onKeyup at GlasslockScreenMusic()"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    const/16 v1, 0x17

    if-ne p1, v1, :cond_60

    .line 715
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->addMinTimer()V

    .line 716
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mFFLongPressed:Z

    if-eqz v1, :cond_3c

    .line 717
    const-string v1, "GlassLockScreenMusicWidget"

    const-string v1, "nextbutton braodcast up action becuase musicpanel is paused"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mFFLongPressed:Z

    .line 719
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.ff.up"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 720
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 724
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3c
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mREWLongPressed:Z

    if-eqz v1, :cond_60

    .line 725
    const-string v1, "GlassLockScreenMusicWidget"

    const-string v1, "beforebutton braodcast up action becuase musicpanel is paused"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mREWLongPressed:Z

    .line 727
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.rew.up"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 728
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 729
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBeforeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 733
    .end local v0           #intent:Landroid/content/Intent;
    :cond_60
    return v2
.end method

.method public onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 737
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mBoxInMaxMusicController:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 740
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 741
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 742
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->stopMarguee()V

    .line 743
    return-void
.end method

.method public onResume()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "GlassLockScreenMusicWidget"

    .line 746
    const-string v1, "GlassLockScreenMusicWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume() isTopLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isMaxLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    .line 748
    const-string v1, "GlassLockScreenMusicWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHeightDifference = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 752
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentArtist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, newTitleText:Ljava/lang/CharSequence;
    const-string v1, "GlassLockScreenMusicWidget"

    const-string v1, "onResume()show"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 757
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 758
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 759
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    if-eqz v1, :cond_ac

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 763
    :goto_97
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand.checkplaystatus"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->sendBroadcastAfterBooting(Landroid/content/Intent;)V

    .line 765
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    if-eqz v1, :cond_b2

    .line 766
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    neg-int v1, v1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMaxLayout(I)V

    .line 770
    :goto_ab
    return-void

    .line 760
    :cond_ac
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_97

    .line 768
    :cond_b2
    iget v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMaxLayout(I)V

    goto :goto_ab
.end method

.method public sendBroadcastAfterBooting(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1155
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1159
    :goto_f
    return-void

    .line 1157
    :cond_10
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "Phone is not boot completed. so can\'t broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public sendBroadcastAfterBooting(Landroid/view/View;Landroid/content/Intent;)V
    .registers 5
    .parameter "v"
    .parameter "intent"

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1163
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1167
    :goto_f
    return-void

    .line 1165
    :cond_10
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "Phone is not boot completed. so can\'t broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public setBottomLayout()V
    .registers 5

    .prologue
    const/16 v3, 0x50

    .line 810
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    .line 811
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    const v2, 0x10803cf

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 812
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 813
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 814
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 816
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 817
    .restart local v0       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 818
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 819
    return-void
.end method

.method public setControllerVisibility(ZZ)V
    .registers 8
    .parameter "bIsVisible"
    .parameter "isMusicWidgetShowed"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1125
    const-string v0, "GlassLockScreenMusicWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setControllerVisibility() : bIsVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mVisibleLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    if-nez p1, :cond_40

    move v0, v4

    :goto_29
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mIsMoving:Z

    .line 1127
    if-eqz p1, :cond_42

    .line 1128
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mWasShowed:Z

    if-eqz v0, :cond_3f

    .line 1129
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    if-nez v0, :cond_3c

    .line 1130
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1131
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    .line 1133
    :cond_3c
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->addMinTimer()V

    .line 1143
    :cond_3f
    :goto_3f
    return-void

    :cond_40
    move v0, v3

    .line 1126
    goto :goto_29

    .line 1136
    :cond_42
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mWasShowed:Z

    .line 1137
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    if-eqz v0, :cond_50

    .line 1138
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1139
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    .line 1141
    :cond_50
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->removeMinTimer()V

    goto :goto_3f
.end method

.method public setScreenOff()V
    .registers 2

    .prologue
    .line 777
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mScreenOn:Z

    .line 778
    return-void
.end method

.method public setScreenOn()V
    .registers 2

    .prologue
    .line 773
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mScreenOn:Z

    .line 774
    return-void
.end method

.method public setTopLayout()V
    .registers 5

    .prologue
    const/16 v3, 0x30

    .line 797
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    .line 798
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMaxMusicController:Landroid/widget/FrameLayout;

    const v2, 0x10803d0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 800
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 801
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 802
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMinMusicControllerHandle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 804
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0           #lp:Landroid/widget/FrameLayout$LayoutParams;
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 805
    .restart local v0       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 806
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 807
    return-void
.end method

.method public startControllerAnimation()V
    .registers 3

    .prologue
    .line 1111
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "startControllerAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->removeMinTimer()V

    .line 1113
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    if-eqz v0, :cond_12

    .line 1114
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMinLayout()V

    .line 1122
    :goto_11
    return-void

    .line 1116
    :cond_12
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isTopLayout:Z

    if-eqz v0, :cond_1d

    .line 1117
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    neg-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMaxLayout(I)V

    goto :goto_11

    .line 1119
    :cond_1d
    iget v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHeightDifference:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setMaxLayout(I)V

    goto :goto_11
.end method

.method public stopMarguee()V
    .registers 5

    .prologue
    const/16 v3, 0x12c4

    .line 781
    const-string v1, "GlassLockScreenMusicWidget"

    const-string v2, "stopMarguee()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 783
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 784
    :cond_16
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 785
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 786
    return-void
.end method

.method public updateMediaPlayer(Landroid/net/Uri;)V
    .registers 15
    .parameter "mediaUri"

    .prologue
    .line 823
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "updateMediaPlayer()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 825
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "mediaUri is same return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_16
    :goto_16
    return-void

    .line 828
    :cond_17
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMediaUri:Landroid/net/Uri;

    .line 830
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 833
    .local v10, mCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_1af

    .line 834
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_119

    .line 835
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 837
    :try_start_2f
    const-string v0, "title"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentTitle:Ljava/lang/String;

    .line 839
    const-string v0, "artist"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentArtist:Ljava/lang/String;

    .line 841
    const-string v0, "album_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentAlbumID:Ljava/lang/String;
    :try_end_53
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_53} :catch_10b

    .line 852
    :goto_53
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentArtist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 857
    .local v12, newTitleText:Ljava/lang/CharSequence;
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mScreenOn:Z

    if-nez v0, :cond_127

    .line 859
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "updateMediaPlayer() hide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const-string v12, ""

    .line 861
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 862
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 863
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 864
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 865
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 878
    :goto_99
    const-string v0, "GlassLockScreenMusicWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMediaPlayer() newTitleText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_fe

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://media/external/audio/albumart/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentAlbumID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 885
    .local v6, currentAlbumArtURI:Landroid/net/Uri;
    const/4 v11, 0x0

    .line 886
    .local v11, mInputStream:Ljava/io/InputStream;
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    .line 887
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 888
    .local v9, mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x1

    iput v0, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 889
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iput v0, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 890
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    iput v0, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 892
    :try_start_ec
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_f1
    .catch Ljava/io/FileNotFoundException; {:try_start_ec .. :try_end_f1} :catch_151

    move-result-object v11

    .line 897
    :goto_f2
    if-eqz v11, :cond_fe

    .line 898
    const/4 v0, 0x0

    invoke-static {v11, v0, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    .line 901
    :try_start_fb
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_fe} :catch_15b

    .line 909
    .end local v6           #currentAlbumArtURI:Landroid/net/Uri;
    .end local v9           #mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v11           #mInputStream:Ljava/io/InputStream;
    :cond_fe
    :goto_fe
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_164

    .line 911
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_16

    .line 843
    .end local v12           #newTitleText:Ljava/lang/CharSequence;
    :catch_10b
    move-exception v0

    move-object v8, v0

    .line 844
    .local v8, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 845
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "Can\'t get String from Cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_53

    .line 848
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    :cond_119
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentTitle:Ljava/lang/String;

    .line 849
    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentArtist:Ljava/lang/String;

    .line 850
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentAlbumID:Ljava/lang/String;

    goto/16 :goto_53

    .line 868
    .restart local v12       #newTitleText:Ljava/lang/CharSequence;
    :cond_127
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "updateMediaPlayer() show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 870
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 871
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 872
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    if-eqz v0, :cond_149

    .line 873
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_99

    .line 875
    :cond_149
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_99

    .line 893
    .restart local v6       #currentAlbumArtURI:Landroid/net/Uri;
    .restart local v9       #mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .restart local v11       #mInputStream:Ljava/io/InputStream;
    :catch_151
    move-exception v0

    move-object v8, v0

    .line 895
    .local v8, e:Ljava/io/FileNotFoundException;
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "Album Art doesn\'t exit."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f2

    .line 902
    .end local v8           #e:Ljava/io/FileNotFoundException;
    :catch_15b
    move-exception v8

    .line 903
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "GlassLockScreenMusicWidget"

    const-string v1, "mInputStream.close() Failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fe

    .line 912
    .end local v6           #currentAlbumArtURI:Landroid/net/Uri;
    .end local v8           #e:Ljava/lang/Exception;
    .end local v9           #mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v11           #mInputStream:Ljava/io/InputStream;
    :cond_164
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_16

    .line 914
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->currentAlbumID:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    rem-int/lit8 v7, v0, 0x5

    .line 915
    .local v7, defaultimageNum:I
    packed-switch v7, :pswitch_data_1ba

    .line 937
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    const v1, 0x10803d4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_16

    .line 917
    :pswitch_17d
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    const v1, 0x10803d4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_16

    .line 921
    :pswitch_187
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    const v1, 0x10803d5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_16

    .line 925
    :pswitch_191
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    const v1, 0x10803d6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_16

    .line 929
    :pswitch_19b
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    const v1, 0x10803d7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_16

    .line 933
    :pswitch_1a5
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    const v1, 0x10803d8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_16

    .line 944
    .end local v7           #defaultimageNum:I
    .end local v12           #newTitleText:Ljava/lang/CharSequence;
    :cond_1af
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 945
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mVisibleLayout:Z

    goto/16 :goto_16

    .line 915
    :pswitch_data_1ba
    .packed-switch 0x0
        :pswitch_17d
        :pswitch_187
        :pswitch_191
        :pswitch_19b
        :pswitch_1a5
    .end packed-switch
.end method

.method public updateMediaPlayer(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "title"
    .parameter "artist"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "GlassLockScreenMusicWidget"

    .line 952
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 953
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 954
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 957
    .local v0, newTitleText:Ljava/lang/CharSequence;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mScreenOn:Z

    if-nez v1, :cond_52

    .line 958
    const-string v1, "GlassLockScreenMusicWidget"

    const-string v1, "updateMediaPlayer()hide"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    const-string v0, ""

    .line 960
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 961
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 962
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 963
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 964
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 976
    :goto_4b
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mAlbumArtWithImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 977
    return-void

    .line 966
    :cond_52
    const-string v1, "GlassLockScreenMusicWidget"

    const-string v1, "updateMediaPlayer()show"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 968
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 969
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 970
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isMaxLayout:Z

    if-eqz v1, :cond_72

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMax:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_4b

    .line 971
    :cond_72
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->mMusicInfoTextInMin:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_4b
.end method
