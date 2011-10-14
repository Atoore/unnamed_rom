.class public Lcom/android/mms/ui/SlideshowActivity;
.super Landroid/app/Activity;
.source "SlideshowActivity.java"

# interfaces
.implements Lorg/w3c/dom/events/EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SlideshowActivity$DrmCancelListener;,
        Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;,
        Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;
    }
.end annotation


# static fields
.field static displayDensity:F


# instance fields
.field private endX:I

.field private endY:I

.field private isAudioFocus:Z

.field private isOnCall:Z

.field private mAddContactIntent:Landroid/content/Intent;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mFirstLaunched:Z

.field private mFlick:Z

.field private mHandler:Landroid/os/Handler;

.field private final mHandlerRefresh:Landroid/os/Handler;

.field private mHasDrmMedia:Z

.field private mIsPreview:Z

.field private mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mMediaController:Lcom/android/mms/ui/MmsPlayerController;

.field private mMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mMsgOptions:Lcom/android/mms/ui/MessageOptions;

.field private mMsgUri:Landroid/net/Uri;

.field private mNoRightDrmMediaCount:I

.field private mOptionItemSelected:Z

.field private mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

.field private mShowController:Z

.field public mSlides:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation
.end field

.field private mSmilControllerStart:Ljava/lang/Runnable;

.field private mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

.field private mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

.field private mSmilPlayerStart:Ljava/lang/Runnable;

.field private mStopped:Z

.field private mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

.field private mVolumeLevel:I

.field private mWindowHasFocus:Z

.field private model:Lcom/android/mms/model/SlideshowModel;

.field private msgId:J

.field private startX:I

.field private startY:I

.field private final stateChangeObserver:Landroid/database/ContentObserver;

.field private threadId:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 152
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowActivity;->isAudioFocus:Z

    .line 165
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mFlick:Z

    .line 167
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowController:Z

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mStopped:Z

    .line 171
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPreview:Z

    .line 173
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mOptionItemSelected:Z

    .line 184
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandlerRefresh:Landroid/os/Handler;

    .line 188
    iput-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    .line 190
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mFirstLaunched:Z

    .line 192
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mWindowHasFocus:Z

    .line 194
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SlideshowActivity$1;-><init>(Lcom/android/mms/ui/SlideshowActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->stateChangeObserver:Landroid/database/ContentObserver;

    .line 204
    iput-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    .line 488
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowActivity$2;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayerStart:Ljava/lang/Runnable;

    .line 590
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowActivity$4;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilControllerStart:Ljava/lang/Runnable;

    .line 1327
    return-void
.end method

.method private SlideShowActivityRunnable(Lcom/android/mms/model/SlideshowModel;)V
    .locals 3
    .parameter "showModel"

    .prologue
    .line 496
    const-string v1, "Mms/SlideshowActivity"

    const-string v2, "SlideshowActivityRunnable"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    move-object v0, p1

    .line 499
    .local v0, model:Lcom/android/mms/model/SlideshowModel;
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowActivity$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/mms/ui/SlideshowActivity$3;-><init>(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/model/SlideshowModel;Lcom/android/mms/model/SlideshowModel;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 588
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/ViewTitleHeader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/SlideshowActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayerStart:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/SlideshowActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/SlideshowActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideshowActivity;->showMediaController(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/model/SlideshowModel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideshowActivity;->SlideShowActivityRunnable(Lcom/android/mms/model/SlideshowModel;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->releaseWakeLock()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/SlideshowActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->isOnCall:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/mms/ui/SlideshowActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideshowActivity;->isOnCall:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/SlideshowActivity;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/SlideshowActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mVolumeLevel:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/mms/ui/SlideshowActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/android/mms/ui/SlideshowActivity;->mVolumeLevel:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/SlideshowActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPreview:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->accquireWakeLock()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/SlideshowPresenter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/dom/smil/SmilPlayer;)Lcom/android/mms/dom/smil/SmilPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->initMediaController()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/MmsPlayerController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->updateControlButtons()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SlideshowActivity;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/mms/ui/SlideshowActivity;Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SlideshowActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mFirstLaunched:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/mms/ui/SlideshowActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideshowActivity;->mFirstLaunched:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->addEventListenerOfSmilDoc()V

    return-void
.end method

.method private accquireWakeLock()V
    .locals 2

    .prologue
    .line 1430
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "accquireWakeLock()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1432
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1434
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1435
    return-void
.end method

.method private addEventListenerOfSmilDoc()V
    .locals 3

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    const-string v1, "SimlDocumentEnd"

    const/4 v2, 0x0

    invoke-interface {v0, v1, p0, v2}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 688
    :cond_0
    return-void
.end method

.method private cancelAudioFocus()V
    .locals 2

    .prologue
    .line 814
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->isAudioFocus:Z

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 816
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "abandonAudioFocus"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    :cond_0
    return-void
.end method

.method private cleanDrmStorage()V
    .locals 1

    .prologue
    .line 780
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHasDrmMedia:Z

    if-eqz v0, :cond_0

    .line 781
    invoke-static {p0}, Lcom/android/mms/drm/DrmUtils;->cleanupStorage(Landroid/content/Context;)V

    .line 783
    :cond_0
    return-void
.end method

.method private createModel()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 371
    iget-wide v2, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v2, :cond_3

    .line 372
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iput-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    .line 377
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_4

    .line 378
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    .line 379
    .local v1, slideCount:I
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    .line 382
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 383
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    if-ge v2, v3, :cond_0

    .line 384
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideModel;->setDuration(I)V

    .line 386
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 387
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->isAudioFocus:Z

    .line 382
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 374
    .end local v0           #i:I
    .end local v1           #slideCount:I
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    invoke-static {p0, v2}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    goto :goto_0

    .line 391
    :cond_4
    return-void
.end method

.method private createPresenter(Lcom/android/mms/ui/SlideView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 327
    const-string v0, "SlideshowPresenter"

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v0, p0, p1, v1}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SlideshowPresenter;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    .line 329
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    iget-boolean v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPreview:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->setPreviewState(Z)V

    .line 331
    :cond_0
    return-void
.end method

.method private drawTitle()V
    .locals 6

    .prologue
    .line 648
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const-string v5, "mms"

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ViewTitleHeader;->ViewTitleHeaderCreate(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ViewTitleHeader;->setVisibility(I)V

    .line 650
    return-void
.end method

.method private exitSlideshowActivity()V
    .locals 4

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1348
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stop()V

    .line 1350
    :cond_1
    iget-wide v0, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 1351
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowActivity$8;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->markAsRead(Ljava/lang/Runnable;)V

    .line 1359
    :goto_0
    return-void

    .line 1357
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    goto :goto_0
.end method

.method private getAudioVolume()V
    .locals 3

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 478
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 481
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mVolumeLevel:I

    .line 483
    :cond_1
    const-string v0, "Mms/SlideshowActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVolumeLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mVolumeLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    return-void
.end method

.method private getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1386
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1389
    if-nez v6, :cond_2

    .line 1422
    if-eqz v6, :cond_0

    .line 1423
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v2

    .line 1426
    :cond_1
    :goto_0
    return-object v0

    .line 1393
    :cond_2
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1397
    new-instance v1, Lcom/android/mms/ui/SlideshowActivity$10;

    const/16 v0, 0xa

    const/high16 v3, 0x3f80

    const/4 v4, 0x1

    invoke-direct {v1, p0, v0, v3, v4}, Lcom/android/mms/ui/SlideshowActivity$10;-><init>(Lcom/android/mms/ui/SlideshowActivity;IFZ)V

    .line 1406
    new-instance v7, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v7, v6}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    .line 1407
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1409
    if-nez v0, :cond_3

    .line 1412
    :try_start_1
    new-instance v3, Lcom/android/mms/ui/MessageItem;

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1414
    :try_start_2
    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v3

    .line 1422
    :cond_3
    :goto_1
    if-eqz v6, :cond_1

    .line 1423
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1415
    :catch_0
    move-exception v0

    .line 1416
    :try_start_3
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "CursorIndexOutOfBoundsException in getCachedMessageItem !"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v2

    .line 1419
    goto :goto_1

    .line 1422
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1423
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 1418
    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v3

    goto :goto_1
.end method

.method private getCallState()V
    .locals 5

    .prologue
    .line 296
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 298
    .local v1, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 299
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->isOnCall:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .end local v1           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    const-string v2, "Mms/SlideshowActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOnCall="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/mms/ui/SlideshowActivity;->isOnCall:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void

    .line 300
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 302
    .local v0, e1:Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->isOnCall:Z

    .line 303
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private getDisplayDensity()V
    .locals 2

    .prologue
    .line 309
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 310
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 311
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/android/mms/ui/SlideshowActivity;->displayDensity:F

    .line 312
    return-void
.end method

.method private getHasDRMMediaNRightInSlide(Lcom/android/mms/model/SlideshowModel;)Z
    .locals 8
    .parameter "slides"

    .prologue
    .line 1253
    const/4 v0, 0x0

    .line 1254
    .local v0, hasDRMMedia:Z
    const/4 v1, 0x1

    .line 1255
    .local v1, hasRight:Z
    const/4 v5, 0x0

    .line 1256
    .local v5, result:Z
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/model/SlideModel;

    .line 1257
    .local v6, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/MediaModel;

    .line 1258
    .local v4, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1259
    const/4 v0, 0x1

    .line 1260
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->hasDrmRight()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1261
    const/4 v1, 0x0

    .line 1262
    iget v7, p0, Lcom/android/mms/ui/SlideshowActivity;->mNoRightDrmMediaCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/mms/ui/SlideshowActivity;->mNoRightDrmMediaCount:I

    goto :goto_0

    .line 1267
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #media:Lcom/android/mms/model/MediaModel;
    .end local v6           #slide:Lcom/android/mms/model/SlideModel;
    :cond_2
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHasDrmMedia:Z

    .line 1268
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    const/4 v7, 0x1

    move v5, v7

    .line 1269
    :goto_1
    return v5

    .line 1268
    :cond_3
    const/4 v7, 0x0

    move v5, v7

    goto :goto_1
.end method

.method private getLCDWakeLock()V
    .locals 3

    .prologue
    .line 315
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideshowActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 316
    .local v0, pm:Landroid/os/PowerManager;
    if-eqz v0, :cond_0

    .line 317
    const v1, 0x2000000a

    const-string v2, "MMS viewer LCD on wakelock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 320
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 323
    :cond_0
    return-void
.end method

.method private getMessageInformationFromIntent()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 342
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 343
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "msgId"

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    .line 349
    const-string v2, "thread_id"

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/SlideshowActivity;->threadId:J

    .line 355
    const-string v2, "preview"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, previewing:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "previewLaunch"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPreview:Z

    .line 362
    :goto_0
    iget-wide v2, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 363
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    .line 367
    :goto_1
    return-void

    .line 359
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPreview:Z

    goto :goto_0

    .line 365
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    goto :goto_1
.end method

.method private inflateTitleHeader()V
    .locals 2

    .prologue
    .line 468
    const v1, 0x7f08009a

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideshowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 469
    .local v0, stub:Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ViewTitleHeader;

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    .line 474
    :goto_0
    return-void

    .line 472
    :cond_0
    const v1, 0x7f0800c0

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideshowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ViewTitleHeader;

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    goto :goto_0
.end method

.method private initMediaController()V
    .locals 3

    .prologue
    .line 610
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "initMediaController()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    if-eqz v0, :cond_0

    .line 617
    :goto_0
    return-void

    .line 614
    :cond_0
    new-instance v0, Lcom/android/mms/ui/MmsPlayerController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MmsPlayerController;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    .line 615
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    new-instance v1, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;-><init>(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/dom/smil/SmilPlayer;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsPlayerController;->setMediaPlayer(Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;)V

    .line 616
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    const v1, 0x7f08009b

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideshowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsPlayerController;->setAnchorView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private isExitCase()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const-string v5, "Mms/SlideshowActivity"

    .line 725
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->isMessageExist(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 726
    :cond_0
    const-string v0, "Mms/SlideshowActivity"

    const-string v0, "mMsgUri not exist!"

    invoke-static {v5, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    .line 736
    :goto_0
    return v0

    .line 730
    :cond_1
    iget-wide v0, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-wide v0, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/SlideshowActivity;->isMessageExist(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 732
    const-string v0, "Mms/SlideshowActivity"

    const-string v0, "mMsgId not exist!"

    invoke-static {v5, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    .line 733
    goto :goto_0

    .line 736
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMessageExist(J)Z
    .locals 2
    .parameter "msgId"

    .prologue
    .line 740
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 741
    .local v0, msgUri:Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->isMessageExist(Landroid/net/Uri;)Z

    move-result v1

    return v1
.end method

.method private isMessageExist(Landroid/net/Uri;)Z
    .locals 9
    .parameter "msgUri"

    .prologue
    const/4 v2, 0x0

    .line 746
    const/4 v7, 0x0

    .line 747
    .local v7, result:Z
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 749
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v8, v7

    .line 759
    .end local v7           #result:Z
    .local v8, result:I
    :goto_0
    return v8

    .line 753
    .end local v8           #result:I
    .restart local v7       #result:Z
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 755
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 758
    const-string v0, "Mms/SlideshowActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMessageExist(),return="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v7

    .line 759
    .restart local v8       #result:I
    goto :goto_0

    .line 755
    .end local v8           #result:I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private makeModelList()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 395
    iget-wide v2, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_0

    .line 396
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->isRawAttachmentPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 399
    .local v0, size:I
    if-ne v0, v6, :cond_1

    .line 400
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    sub-int v3, v0, v6

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 401
    new-instance v1, Lcom/android/mms/model/SlideModel;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v1, v2}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 402
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v1}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 408
    .end local v0           #size:I
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    :goto_0
    return-void

    .line 404
    .restart local v0       #size:I
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    sub-int v3, v0, v6

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    goto :goto_0
.end method

.method private recoverAudioVolumeOnCall()V
    .locals 4

    .prologue
    .line 808
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->isOnCall:Z

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mVolumeLevel:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 811
    :cond_0
    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 1438
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "releaseWakeLock()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1440
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1441
    :cond_0
    return-void
.end method

.method private removeEventListenerOfSmilDoc()V
    .locals 3

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    const-string v1, "SimlDocumentEnd"

    const/4 v2, 0x0

    invoke-interface {v0, v1, p0, v2}, Lorg/w3c/dom/events/EventTarget;->removeEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 695
    :cond_0
    return-void
.end method

.method private setAudioFocus()V
    .locals 4

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->isAudioFocus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 337
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "requestAudioFocus"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_0
    return-void
.end method

.method private setAudioMuteOnCall()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 288
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->isOnCall:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 291
    :cond_0
    return-void
.end method

.method private setSubjectToView(Lcom/android/mms/ui/SlideView;)V
    .locals 6
    .parameter "view"

    .prologue
    const-string v3, "GATE"

    .line 429
    const/4 v2, 0x0

    .line 432
    .local v2, subject:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090198

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, preSubject:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    invoke-static {p0, v3}, Lcom/android/mms/model/SlideshowModel;->getSubject(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 436
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 437
    if-eqz v2, :cond_1

    .line 438
    const-string v3, "GATE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<GATE-M>MMSSUBJECT:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</GATE-M>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :cond_0
    :goto_0
    if-nez v2, :cond_2

    .line 444
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 445
    invoke-virtual {p1, v2}, Lcom/android/mms/ui/SlideView;->setSlideViewSubject(Ljava/lang/String;)V

    .line 453
    .end local v1           #preSubject:Ljava/lang/String;
    :goto_1
    return-void

    .line 440
    .restart local v1       #preSubject:Ljava/lang/String;
    :cond_1
    const-string v3, "GATE"

    const-string v4, "<GATE-M>MMSSUBJECT:NULL</GATE-M>"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 450
    .end local v1           #preSubject:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 451
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Mms/SlideshowActivity"

    const-string v4, "Cannot display the slide title."

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 447
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    .restart local v1       #preSubject:Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/mms/ui/SlideView;->setSlideViewSubject(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private showDrmGetRightsPopup(Lcom/android/mms/model/SlideshowModel;Ljava/lang/Runnable;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1273
    .line 1276
    iget v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mNoRightDrmMediaCount:I

    new-array v1, v0, [Ljava/lang/String;

    .line 1277
    iget v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mNoRightDrmMediaCount:I

    new-array v2, v0, [Ljava/lang/String;

    .line 1278
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v9

    move v5, v10

    move v6, v9

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 1279
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 1280
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1282
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->hasDrmRight()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1284
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getDrmFilePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 1285
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getDrmFileName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    .line 1286
    add-int/lit8 v0, v4, 0x1

    move v4, v9

    move v5, v10

    :goto_1
    move v6, v5

    move v5, v4

    move v4, v0

    goto :goto_0

    .line 1291
    :cond_1
    if-eqz v6, :cond_2

    if-nez v5, :cond_2

    .line 1294
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1295
    const v3, 0x7f090165

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1296
    const v3, 0x104000a

    new-instance v4, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;

    invoke-direct {v4, p0, v1, v2, p2}, Lcom/android/mms/ui/SlideshowActivity$DrmOkListener;-><init>(Lcom/android/mms/ui/SlideshowActivity;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1298
    const v1, 0x1040009

    new-instance v2, Lcom/android/mms/ui/SlideshowActivity$DrmCancelListener;

    invoke-direct {v2, p0, p2}, Lcom/android/mms/ui/SlideshowActivity$DrmCancelListener;-><init>(Lcom/android/mms/ui/SlideshowActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1299
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1301
    :cond_2
    return-void

    :cond_3
    move v0, v4

    move v4, v5

    move v5, v10

    goto :goto_1

    :cond_4
    move v0, v4

    move v4, v5

    move v5, v6

    goto :goto_1
.end method

.method private showMediaController(Z)V
    .locals 1
    .parameter "bShow"

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    if-eqz v0, :cond_0

    .line 1493
    if-eqz p1, :cond_1

    .line 1494
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerController;->show()V

    .line 1498
    :cond_0
    :goto_0
    return-void

    .line 1496
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerController;->hide()V

    goto :goto_0
.end method

.method private stopSmilPlayer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 786
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    .line 787
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 791
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mFlick:Z

    if-eqz v0, :cond_1

    .line 792
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mFlick:Z

    .line 803
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideshowActivity;->showMediaController(Z)V

    .line 805
    :cond_0
    return-void

    .line 794
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stop()V

    goto :goto_0

    .line 799
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stop()V

    goto :goto_0
.end method

.method private touchListener(IIII)V
    .locals 6
    .parameter "startTouchX"
    .parameter "endTouchX"
    .parameter "startTouchY"
    .parameter "endTouchY"

    .prologue
    const/16 v5, 0x14

    .line 1079
    const/4 v0, 0x0

    .line 1080
    .local v0, bFlicktoNext:Z
    sub-int v1, p1, p2

    .line 1081
    .local v1, movedX:I
    sub-int v2, p3, p4

    .line 1083
    .local v2, movedY:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x96

    if-le v3, v4, :cond_2

    .line 1084
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mFlick:Z

    .line 1085
    if-gez v1, :cond_1

    .line 1086
    const/4 v0, 0x1

    .line 1230
    :cond_0
    :goto_0
    return-void

    .line 1088
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1090
    :cond_2
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v5, :cond_0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v5, :cond_0

    .line 1091
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    if-eqz v3, :cond_0

    .line 1092
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsPlayerController;->show()V

    goto :goto_0
.end method

.method private updateControlButtons()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1445
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowPresenter;->getTotSlideNumber()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 1446
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowPresenter;->getCurSlideIndex()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 1447
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowPresenter;->getCurSlideIndex()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v2}, Lcom/android/mms/ui/SlideshowPresenter;->getTotSlideNumber()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v1}, Lcom/android/mms/dom/smil/SmilPlayer;->isStoppedState()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1449
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerController;->getPrevPageButton()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1456
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowPresenter;->getCurSlideIndex()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v2}, Lcom/android/mms/ui/SlideshowPresenter;->getTotSlideNumber()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 1457
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerController;->getNextPageButton()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1466
    :cond_0
    :goto_1
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowActivity$11;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 1472
    .local v0, notification:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandlerRefresh:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1473
    return-void

    .line 1451
    .end local v0           #notification:Ljava/lang/Runnable;
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerController;->getPrevPageButton()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 1453
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerController;->getPrevPageButton()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 1459
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v1}, Lcom/android/mms/dom/smil/SmilPlayer;->isStoppedState()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v1}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1460
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerController;->getNextPageButton()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1

    .line 1462
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerController;->getNextPageButton()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    .line 621
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 623
    .local v0, action:I
    iget-boolean v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mWindowHasFocus:Z

    if-nez v1, :cond_0

    .line 624
    const/4 v1, 0x1

    .line 643
    :goto_0
    return v1

    .line 626
    :cond_0
    const-string v1, "Mms/SlideshowActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchTouchEvent(),action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    packed-switch v0, :pswitch_data_0

    .line 643
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 630
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/ui/SlideshowActivity;->startX:I

    .line 631
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/ui/SlideshowActivity;->startY:I

    goto :goto_1

    .line 635
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/ui/SlideshowActivity;->endX:I

    .line 636
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/mms/ui/SlideshowActivity;->endY:I

    .line 637
    iget v1, p0, Lcom/android/mms/ui/SlideshowActivity;->startX:I

    iget v2, p0, Lcom/android/mms/ui/SlideshowActivity;->endX:I

    iget v3, p0, Lcom/android/mms/ui/SlideshowActivity;->startY:I

    iget v4, p0, Lcom/android/mms/ui/SlideshowActivity;->endY:I

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/mms/ui/SlideshowActivity;->touchListener(IIII)V

    goto :goto_1

    .line 628
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMViewTitleHeader()Lcom/android/mms/ui/ViewTitleHeader;
    .locals 1

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mViewTitleHeader:Lcom/android/mms/ui/ViewTitleHeader;

    return-object v0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 3
    .parameter "evt"

    .prologue
    .line 977
    move-object v0, p1

    .line 978
    .local v0, event:Lorg/w3c/dom/events/Event;
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/SlideshowActivity$6;-><init>(Lcom/android/mms/ui/SlideshowActivity;Lorg/w3c/dom/events/Event;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1007
    return-void
.end method

.method public declared-synchronized markAsRead(Ljava/lang/Runnable;)V
    .locals 6
    .parameter

    .prologue
    .line 1363
    monitor-enter p0

    :try_start_0
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "markAsRead()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    iget-wide v0, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1365
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1367
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1368
    const-string v2, "read"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1369
    const-string v2, "seen"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1371
    iget-wide v2, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const/16 v4, 0x80

    new-instance v5, Lcom/android/mms/ui/SlideshowActivity$9;

    invoke-direct {v5, p0, v0, v1, p1}, Lcom/android/mms/ui/SlideshowActivity$9;-><init>(Lcom/android/mms/ui/SlideshowActivity;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    invoke-static {p0, v2, v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->handleReadReportOne(Landroid/content/Context;JILjava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1382
    :goto_0
    monitor-exit p0

    return-void

    .line 1381
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1363
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1053
    const-string v0, "Mms/SlideshowActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult(),resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    const/16 v0, 0x1d

    if-ne p1, v0, :cond_1

    .line 1062
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAddContactIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 1063
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAddContactIntent:Landroid/content/Intent;

    const-string v1, "email"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1065
    if-nez v0, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAddContactIntent:Landroid/content/Intent;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1069
    :cond_0
    if-eqz v0, :cond_1

    .line 1070
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 1071
    if-eqz v0, :cond_1

    .line 1072
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->reload()V

    .line 1076
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter

    .prologue
    const-string v2, "Mms/SlideshowActivity"

    .line 1478
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1480
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1481
    const-string v0, "Mms/SlideshowActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-> SlideShowActivity -- OnConfiguration Changed to LANDSCAPE : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->showMediaController(Z)V

    .line 1489
    return-void

    .line 1483
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1484
    const-string v0, "Mms/SlideshowActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-> SlideShowActivity -- OnConfiguration Changed to PORTRAIT : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v2, 0x1

    const-string v10, "onCreate()"

    const-string v6, "mms"

    const-string v9, "Mms/SlideshowActivity"

    .line 208
    const-string v0, "Mms/SlideshowActivity"

    const-string v0, "onCreate()"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 211
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mFirstLaunched:Z

    .line 212
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SlideshowActivity;->requestWindowFeature(I)Z

    .line 213
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    .line 215
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->getAudioVolume()V

    .line 217
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->getDisplayDensity()V

    .line 219
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->getLCDWakeLock()V

    .line 221
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->getCallState()V

    .line 223
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->setAudioMuteOnCall()V

    .line 228
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 229
    const v0, 0x7f03002c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->setContentView(I)V

    .line 231
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->getMessageInformationFromIntent()V

    .line 233
    invoke-static {v2}, Lcom/android/mms/model/SlideshowModel;->setAddAttachmentSlide(Z)V

    .line 234
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/mms/model/SlideshowModel;->setCheckMessageSizeforSlide(Z)V

    .line 236
    iget-wide v0, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgUri:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const-string v3, "mms"

    invoke-direct {p0, v0, v1, v2, v6}, Lcom/android/mms/ui/SlideshowActivity;->getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 238
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    .line 285
    :goto_0
    return-void

    .line 243
    :cond_0
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v4, p0, Lcom/android/mms/ui/SlideshowActivity;->msgId:J

    const-string v2, "mms"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    .line 245
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->updateFailedFlag()V

    .line 249
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->createModel()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->setAudioFocus()V

    .line 258
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->inflateTitleHeader()V

    .line 260
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->makeModelList()V

    .line 262
    const v0, 0x7f08009b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/mms/ui/SlideView;

    .line 263
    .local v8, view:Lcom/android/mms/ui/SlideView;
    invoke-direct {p0, v8}, Lcom/android/mms/ui/SlideshowActivity;->setSubjectToView(Lcom/android/mms/ui/SlideView;)V

    .line 265
    invoke-direct {p0, v8}, Lcom/android/mms/ui/SlideshowActivity;->createPresenter(Lcom/android/mms/ui/SlideView;)V

    .line 284
    const-string v0, "Mms/SlideshowActivity"

    const-string v0, "onCreate()"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 250
    .end local v8           #view:Lcom/android/mms/ui/SlideView;
    :catch_0
    move-exception v7

    .line 251
    .local v7, e:Lcom/google/android/mms/MmsException;
    const-string v0, "Mms/SlideshowActivity"

    const-string v0, "Cannot present the slide show."

    invoke-static {v9, v0, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 1235
    packed-switch p1, :pswitch_data_0

    .line 1245
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1237
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09015e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09015f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1242
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1235
    nop

    :pswitch_data_0
    .packed-switch 0x7f080000
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 822
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 823
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    .line 824
    const-string v0, "Mms/SlideshowActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 835
    const-string v0, "Mms/SlideshowActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown(),keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    sparse-switch p1, :sswitch_data_0

    .line 870
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerController;->show()V

    .line 874
    :cond_0
    :goto_0
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 841
    :sswitch_1
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->isOnCall:Z

    if-nez v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mVolumeLevel:I

    goto :goto_0

    .line 853
    :sswitch_2
    const/4 v0, 0x1

    goto :goto_1

    .line 864
    :sswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mIsPreview:Z

    if-nez v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->pause()V

    goto :goto_0

    .line 837
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x52 -> :sswitch_3
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 879
    const-string v0, "Mms/SlideshowActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp(),keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    packed-switch p1, :pswitch_data_0

    .line 888
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 882
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->exitSlideshowActivity()V

    .line 883
    const/4 v0, 0x1

    goto :goto_0

    .line 880
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 1022
    const-string v0, "Mms/SlideshowActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptionsItemSelected(),item="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    if-eqz v0, :cond_3

    .line 1026
    iput-boolean v3, p0, Lcom/android/mms/ui/SlideshowActivity;->mOptionItemSelected:Z

    .line 1028
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->isPlayerStop(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1029
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stop()V

    .line 1034
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_2

    .line 1035
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAddContactIntent:Landroid/content/Intent;

    .line 1036
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mAddContactIntent:Landroid/content/Intent;

    const/16 v1, 0x1d

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideshowActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1038
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->optionItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 1040
    :goto_0
    return v0

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 1045
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 1046
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mOptionItemSelected:Z

    if-nez v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerController;->show()V

    .line 1049
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mOptionItemSelected:Z

    .line 1050
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const-string v3, "onPause()"

    const-string v2, "Mms/SlideshowActivity"

    .line 675
    const-string v0, "Mms/SlideshowActivity"

    const-string v0, "onPause()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 678
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->removeEventListenerOfSmilDoc()V

    .line 679
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->stateChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 680
    const-string v0, "Mms/SlideshowActivity"

    const-string v0, "onPause()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 1012
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1014
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->createOptionsMenu(Landroid/view/Menu;)V

    .line 1017
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const-string v5, "onResume()"

    const-string v4, "Mms/SlideshowActivity"

    .line 654
    const-string v0, "Mms/SlideshowActivity"

    const-string v0, "onResume()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 657
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->stateChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 659
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->addEventListenerOfSmilDoc()V

    .line 661
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mStopped:Z

    if-ne v0, v3, :cond_0

    .line 662
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowPresenter;->resetLocation()V

    .line 663
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mStopped:Z

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    if-eqz v0, :cond_1

    .line 667
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->updateControlButtons()V

    .line 670
    :cond_1
    const-string v0, "Mms/SlideshowActivity"

    const-string v0, "onResume()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 830
    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const-string v3, "onStart()"

    const-string v2, "Mms/SlideshowActivity"

    .line 699
    const-string v0, "Mms/SlideshowActivity"

    const-string v0, "onStart()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 703
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mFirstLaunched:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->getHasDRMMediaNRightInSlide(Lcom/android/mms/model/SlideshowModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    new-instance v1, Lcom/android/mms/ui/SlideshowActivity$5;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SlideshowActivity$5;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/SlideshowActivity;->showDrmGetRightsPopup(Lcom/android/mms/model/SlideshowModel;Ljava/lang/Runnable;)V

    .line 714
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->isExitCase()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 715
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    .line 722
    :goto_1
    return-void

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->SlideShowActivityRunnable(Lcom/android/mms/model/SlideshowModel;)V

    goto :goto_0

    .line 719
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->drawTitle()V

    .line 721
    const-string v0, "Mms/SlideshowActivity"

    const-string v0, "onStart()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const-string v2, "onStop()"

    const-string v1, "Mms/SlideshowActivity"

    .line 764
    const-string v0, "Mms/SlideshowActivity"

    const-string v0, "onStop()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 766
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->cancelAudioFocus()V

    .line 768
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->recoverAudioVolumeOnCall()V

    .line 769
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mStopped:Z

    .line 770
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->cleanDrmStorage()V

    .line 771
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->stopSmilPlayer()V

    .line 772
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 773
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->releaseWakeLock()V

    .line 775
    const-string v0, "Mms/SlideshowActivity"

    const-string v0, "onStop()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasFocus"

    .prologue
    .line 600
    const-string v0, "Mms/SlideshowActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged(),hasFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 602
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideshowActivity;->mWindowHasFocus:Z

    .line 603
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowController:Z

    if-nez v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilControllerStart:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 605
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mShowController:Z

    .line 607
    :cond_0
    return-void
.end method
