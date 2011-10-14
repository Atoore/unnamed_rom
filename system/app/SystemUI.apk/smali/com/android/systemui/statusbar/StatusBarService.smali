.class public Lcom/android/systemui/statusbar/StatusBarService;
.super Landroid/app/Service;
.source "StatusBarService.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/StatusBarService$MyTicker;,
        Lcom/android/systemui/statusbar/StatusBarService$Launcher;,
        Lcom/android/systemui/statusbar/StatusBarService$H;,
        Lcom/android/systemui/statusbar/StatusBarService$ExpandedDialog;,
        Lcom/android/systemui/statusbar/StatusBarService$BrightNessContentObserver;
    }
.end annotation


# instance fields
.field mAbsPos:[I

.field mAnimAccel:F

.field mAnimLastTime:J

.field mAnimVel:F

.field mAnimY:F

.field mAnimating:Z

.field mAnimatingReveal:Z

.field mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mBrightNessContentObs:Lcom/android/systemui/statusbar/StatusBarService$BrightNessContentObserver;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallOnGoingView:Lcom/android/systemui/statusbar/CallOnGoingView;

.field mClearButton:Landroid/widget/TextView;

.field private mClearButtonListener:Landroid/view/View$OnClickListener;

.field mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

.field mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field mCurAnimationTime:J

.field mDateView:Lcom/android/systemui/statusbar/DateView;

.field mDisabled:I

.field mDisplay:Landroid/view/Display;

.field mDisplayHeight:F

.field mEdgeBorder:I

.field mExpanded:Z

.field mExpandedContents:Landroid/view/View;

.field mExpandedDialog:Landroid/app/Dialog;

.field mExpandedParams:Landroid/view/WindowManager$LayoutParams;

.field mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

.field mExpandedVisible:Z

.field mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

.field mIconPolicy:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

.field mIconSize:I

.field mIcons:Landroid/widget/LinearLayout;

.field private mIsAutoBrightNess:Z

.field private mIsBrightNessMode:I

.field private mIsStatusBarBrightNess:Z

.field mLatest:Lcom/android/systemui/statusbar/NotificationData;

.field mLatestItems:Landroid/widget/LinearLayout;

.field mLatestTitle:Landroid/widget/TextView;

.field mMiniCon:Landroid/widget/LinearLayout;

.field mMiniConData:Lcom/android/systemui/statusbar/NotificationData;

.field mNoNotificationsTitle:Landroid/widget/TextView;

.field mNotificationIcons:Lcom/android/systemui/statusbar/IconMerger;

.field mNotificationLinearLayout:Landroid/view/View;

.field mOngoing:Lcom/android/systemui/statusbar/NotificationData;

.field mOngoingItems:Landroid/widget/LinearLayout;

.field mOngoingTitle:Landroid/widget/TextView;

.field private mPanelSlightlyVisible:Z

.field mPixelFormat:I

.field mPositionTmp:[I

.field private mPropFactor:Ljava/lang/Float;

.field mQueueLock:Ljava/lang/Object;

.field mScrollView:Landroid/widget/ScrollView;

.field mStartTracing:Ljava/lang/Runnable;

.field mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

.field mStatusIcons:Landroid/widget/LinearLayout;

.field mStopTracing:Ljava/lang/Runnable;

.field private mTicker:Lcom/android/systemui/statusbar/Ticker;

.field private mTickerView:Landroid/view/View;

.field private mTicking:Z

.field mTracking:Z

.field mTrackingParams:Landroid/view/WindowManager$LayoutParams;

.field mTrackingPosition:I

.field mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field mViewDelta:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 99
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 124
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIsBrightNessMode:I

    .line 126
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$BrightNessContentObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$BrightNessContentObserver;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBrightNessContentObs:Lcom/android/systemui/statusbar/StatusBarService$BrightNessContentObserver;

    .line 151
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;-><init>(Lcom/android/systemui/statusbar/StatusBarService;Lcom/android/systemui/statusbar/StatusBarService$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    .line 152
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mQueueLock:Ljava/lang/Object;

    .line 172
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    .line 176
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    .line 180
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPositionTmp:[I

    .line 212
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    .line 214
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAbsPos:[I

    .line 217
    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    .line 220
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mMiniConData:Lcom/android/systemui/statusbar/NotificationData;

    .line 872
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$1;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 1674
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$3;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButtonListener:Landroid/view/View$OnClickListener;

    .line 1685
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$4;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1739
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$5;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStartTracing:Ljava/lang/Runnable;

    .line 1749
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarService$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarService$6;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStopTracing:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/StatusBarService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIsAutoBrightNess:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/StatusBarService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->checkAutoBrightNess()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/StatusBarService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIsStatusBarBrightNess:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/StatusBarService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIsBrightNessMode:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/StatusBarService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/StatusBarService;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTickerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/StatusBarService;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/StatusBarService;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/StatusBarService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->updatePropFactorValue()V

    return-void
.end method

.method private checkAutoBrightNess()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1775
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private checkMinMax(I)I
    .locals 2
    .parameter "brightNess"

    .prologue
    .line 1780
    move v0, p1

    .line 1781
    .local v0, checkBrightNess:I
    const/16 v1, 0x1e

    if-le v1, v0, :cond_1

    .line 1782
    const/16 v0, 0x1e

    .line 1787
    :cond_0
    :goto_0
    return v0

    .line 1783
    :cond_1
    const/16 v1, 0xff

    if-ge v1, v0, :cond_0

    .line 1784
    const/16 v0, 0xff

    goto :goto_0
.end method

.method private chooseIconIndex(ZZI)I
    .locals 4
    .parameter "isMiniCon"
    .parameter "isOngoing"
    .parameter "viewIndex"

    .prologue
    .line 602
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 603
    .local v0, latestSize:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v1

    .line 605
    .local v1, ongoingSize:I
    if-eqz p1, :cond_0

    .line 606
    add-int v2, v0, v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mMiniConData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v3

    sub-int/2addr v3, p3

    add-int/2addr v2, v3

    .line 610
    :goto_0
    return v2

    .line 607
    :cond_0
    if-eqz p2, :cond_1

    .line 608
    sub-int v2, v1, p3

    add-int/2addr v2, v0

    goto :goto_0

    .line 610
    :cond_1
    sub-int v2, v0, p3

    goto :goto_0
.end method

.method private doBrightNess(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter

    .prologue
    .line 1795
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPropFactor:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->checkMinMax(I)I

    move-result v0

    .line 1797
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1800
    :try_start_0
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 1802
    if-eqz v1, :cond_0

    .line 1803
    invoke-interface {v1, v0}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1807
    :cond_0
    :goto_0
    return-void

    .line 1805
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 1366
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1367
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz p2, :cond_0

    .line 1368
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1370
    :cond_0
    return-object v0
.end method

.method private makeExpandedVisible()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 882
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-eqz v0, :cond_1

    .line 899
    :cond_0
    :goto_0
    return-void

    .line 885
    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    .line 886
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/StatusBarService;->visibilityChanged(Z)V

    .line 888
    const/16 v0, -0x2710

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 889
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 890
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 891
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 892
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandedView;->requestFocus(I)Z

    .line 893
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/TrackingView;->setVisibility(I)V

    .line 894
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandedView;->setVisibility(I)V

    .line 896
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z

    if-nez v0, :cond_0

    .line 897
    const/high16 v0, 0x10a

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/statusbar/StatusBarService;->setDateViewVisibility(ZI)V

    goto :goto_0
.end method

.method private makeStatusBarView(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x0

    const v11, 0x7f0a0025

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 326
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 328
    .local v4, res:Landroid/content/res/Resources;
    const v7, 0x1050005

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIconSize:I

    .line 330
    const v7, 0x7f030006

    invoke-static {p1, v7, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandedView;

    .line 332
    .local v1, expanded:Lcom/android/systemui/statusbar/ExpandedView;
    iput-object p0, v1, Lcom/android/systemui/statusbar/ExpandedView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    .line 334
    const v7, 0x7f030004

    invoke-static {p1, v7, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/StatusBarView;

    .line 335
    .local v5, sb:Lcom/android/systemui/statusbar/StatusBarView;
    iput-object p0, v5, Lcom/android/systemui/statusbar/StatusBarView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    .line 338
    const/4 v7, -0x3

    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPixelFormat:I

    .line 339
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/StatusBarView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 340
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPixelFormat:I

    .line 344
    :cond_0
    iput-object v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    .line 345
    const v7, 0x7f0a0017

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 346
    const v7, 0x7f0a0016

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/IconMerger;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationIcons:Lcom/android/systemui/statusbar/IconMerger;

    .line 347
    const v7, 0x7f0a0015

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    .line 348
    const v7, 0x7f0a0019

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTickerView:Landroid/view/View;

    .line 349
    const v7, 0x7f0a001e

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/DateView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDateView:Lcom/android/systemui/statusbar/DateView;

    .line 351
    new-instance v7, Lcom/android/systemui/statusbar/StatusBarService$ExpandedDialog;

    invoke-direct {v7, p0, p1}, Lcom/android/systemui/statusbar/StatusBarService$ExpandedDialog;-><init>(Lcom/android/systemui/statusbar/StatusBarService;Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    .line 352
    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    .line 353
    invoke-virtual {v1, v11}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContents:Landroid/view/View;

    .line 354
    const v7, 0x7f0a0027

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    .line 355
    const v7, 0x7f0a0028

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingItems:Landroid/widget/LinearLayout;

    .line 356
    const v7, 0x7f0a0029

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    .line 357
    const v7, 0x7f0a002a

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestItems:Landroid/widget/LinearLayout;

    .line 358
    const v7, 0x7f0a0026

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    .line 359
    const v7, 0x7f0a0023

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/TextView;

    .line 360
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    const v7, 0x7f0a0024

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ScrollView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mScrollView:Landroid/widget/ScrollView;

    .line 362
    invoke-virtual {v1, v11}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationLinearLayout:Landroid/view/View;

    .line 364
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    invoke-virtual {v7, v10}, Lcom/android/systemui/statusbar/ExpandedView;->setVisibility(I)V

    .line 365
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 366
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 368
    new-instance v7, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;

    invoke-direct {v7, p0, p1, v5}, Lcom/android/systemui/statusbar/StatusBarService$MyTicker;-><init>(Lcom/android/systemui/statusbar/StatusBarService;Landroid/content/Context;Lcom/android/systemui/statusbar/StatusBarView;)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    .line 370
    const v7, 0x7f0a001b

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/TickerView;

    .line 371
    .local v6, tickerView:Lcom/android/systemui/statusbar/TickerView;
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    iput-object v7, v6, Lcom/android/systemui/statusbar/TickerView;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    .line 373
    const v7, 0x7f030009

    invoke-static {p1, v7, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/TrackingView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    .line 374
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    iput-object p0, v7, Lcom/android/systemui/statusbar/TrackingView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    .line 375
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    const v8, 0x7f0a002f

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/TrackingView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/CloseDragHandle;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    .line 376
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    iput-object p0, v7, Lcom/android/systemui/statusbar/CloseDragHandle;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    .line 378
    const/high16 v7, 0x7f07

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEdgeBorder:I

    .line 381
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->setAreThereNotifications()V

    .line 382
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDateView:Lcom/android/systemui/statusbar/DateView;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/DateView;->setVisibility(I)V

    .line 385
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 386
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 387
    const-string v7, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 388
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 389
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 392
    const v7, 0x7f030003

    invoke-static {p1, v7, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/quickpanel/QuickSettingsView;

    .line 394
    .local v3, qsv:Lcom/android/systemui/statusbar/quickpanel/QuickSettingsView;
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    invoke-virtual {v7, v3, v12}, Lcom/android/systemui/statusbar/ExpandedView;->addView(Landroid/view/View;I)V

    .line 398
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mMiniCon:Landroid/widget/LinearLayout;

    .line 399
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mMiniCon:Landroid/widget/LinearLayout;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 400
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    invoke-virtual {v7, v11}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mMiniCon:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 404
    const v7, 0x7f030005

    invoke-static {p1, v7, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/CallOnGoingView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCallOnGoingView:Lcom/android/systemui/statusbar/CallOnGoingView;

    .line 405
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCallOnGoingView:Lcom/android/systemui/statusbar/CallOnGoingView;

    iput-object p0, v7, Lcom/android/systemui/statusbar/CallOnGoingView;->mService:Lcom/android/systemui/statusbar/StatusBarService;

    .line 407
    return-void
.end method

.method private setAreThereNotifications()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 769
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData;->hasVisibleItems()Z

    move-result v1

    .line 770
    .local v1, ongoing:Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData;->hasVisibleItems()Z

    move-result v0

    .line 773
    .local v0, latest:Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData;->hasClearableItems()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 774
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 779
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 780
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    move v3, v4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 782
    if-nez v1, :cond_0

    if-eqz v0, :cond_4

    .line 783
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 787
    :goto_3
    return-void

    .line 776
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v3, v5

    .line 779
    goto :goto_1

    :cond_3
    move v3, v5

    .line 780
    goto :goto_2

    .line 785
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method private tick(Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 1
    .parameter "n"

    .prologue
    .line 1298
    iget-object v0, p1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1299
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_0

    .line 1301
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/Ticker;->addEntry(Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 1304
    :cond_0
    return-void
.end method

.method private updatePropFactorValue()V
    .locals 2

    .prologue
    .line 1771
    const/high16 v0, 0x437f

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->floatValue()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPropFactor:Ljava/lang/Float;

    .line 1772
    return-void
.end method


# virtual methods
.method public addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 5
    .parameter "slot"
    .parameter "index"
    .parameter "viewIndex"
    .parameter "icon"

    .prologue
    .line 440
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 441
    .local v0, view:Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 442
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIconSize:I

    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIconSize:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, p3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 443
    return-void
.end method

.method public addNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 4
    .parameter "key"
    .parameter "notification"

    .prologue
    .line 463
    const/4 v1, 0x1

    .line 464
    .local v1, shouldTick:Z
    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 465
    const/4 v1, 0x0

    .line 466
    const-string v2, "StatusBarService"

    const-string v3, "Notification has fullScreenIntent; sending fullScreenIntent"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :try_start_0
    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/StatusBarService;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v0

    .line 474
    .local v0, iconView:Lcom/android/systemui/statusbar/StatusBarIconView;
    if-nez v0, :cond_1

    .line 483
    :goto_1
    return-void

    .line 476
    :cond_1
    if-eqz v1, :cond_2

    .line 477
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/StatusBarService;->tick(Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 481
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->setAreThereNotifications()V

    .line 482
    const/16 v2, -0x2710

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    goto :goto_1

    .line 469
    .end local v0           #iconView:Lcom/android/systemui/statusbar/StatusBarIconView;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 686
    invoke-virtual {p2}, Lcom/android/internal/statusbar/StatusBarNotification;->isOngoing()Z

    move-result v7

    .line 689
    invoke-virtual {p2}, Lcom/android/internal/statusbar/StatusBarNotification;->isMiniCon()Z

    move-result v8

    .line 690
    if-eqz v8, :cond_0

    .line 691
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mMiniConData:Lcom/android/systemui/statusbar/NotificationData;

    .line 692
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mMiniCon:Landroid/widget/LinearLayout;

    move-object v9, v1

    .line 703
    :goto_0
    invoke-virtual {p0, p2, v9}, Lcom/android/systemui/statusbar/StatusBarService;->makeNotificationView(Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/ViewGroup;)[Landroid/view/View;

    move-result-object v1

    .line 704
    if-nez v1, :cond_2

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/StatusBarService;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    .line 707
    const/4 v0, 0x0

    .line 737
    :goto_1
    return-object v0

    .line 695
    :cond_0
    if-eqz v7, :cond_1

    .line 696
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    .line 697
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingItems:Landroid/widget/LinearLayout;

    move-object v9, v1

    goto :goto_0

    .line 699
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    .line 700
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestItems:Landroid/widget/LinearLayout;

    move-object v9, v1

    goto :goto_0

    .line 709
    :cond_2
    const/4 v2, 0x0

    aget-object v3, v1, v2

    .line 710
    const/4 v2, 0x1

    aget-object v4, v1, v2

    .line 711
    const/4 v2, 0x2

    aget-object v5, v1, v2

    .line 713
    new-instance v6, Lcom/android/systemui/statusbar/StatusBarIconView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, p0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 715
    new-instance v1, Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v10, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v10, v10, Landroid/app/Notification;->icon:I

    iget-object v11, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v11, v11, Landroid/app/Notification;->iconLevel:I

    iget-object v12, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v12, v12, Landroid/app/Notification;->number:I

    invoke-direct {v1, v2, v10, v11, v12}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;III)V

    .line 717
    invoke-virtual {v6, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Coulding create icon: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/StatusBarService;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    .line 719
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move-object v1, p1

    move-object v2, p2

    .line 722
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/NotificationData;->add(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/statusbar/StatusBarIconView;)I

    move-result v0

    .line 724
    if-eqz v8, :cond_4

    .line 727
    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 728
    invoke-virtual {v9, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 729
    const-string v1, "StatusBarService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADD:MiniCon-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->twQuickPanelEvent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :goto_2
    invoke-direct {p0, v8, v7, v0}, Lcom/android/systemui/statusbar/StatusBarService;->chooseIconIndex(ZZI)I

    move-result v0

    .line 736
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationIcons:Lcom/android/systemui/statusbar/IconMerger;

    invoke-virtual {v1, v6, v0}, Lcom/android/systemui/statusbar/IconMerger;->addView(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    move-object v0, v6

    .line 737
    goto/16 :goto_1

    .line 731
    :cond_4
    invoke-virtual {v9, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_2
.end method

.method protected addStatusBarView()V
    .locals 8

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 411
    .local v6, res:Landroid/content/res/Resources;
    const v1, 0x1050004

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 413
    .local v2, height:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    .line 414
    .local v7, view:Lcom/android/systemui/statusbar/StatusBarView;
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x7d0

    const/16 v4, 0x48

    const/4 v5, 0x2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 421
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x37

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 422
    const-string v1, "StatusBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 423
    const v1, 0x103006d

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 430
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/StatusBarView;->setVisibility(I)V

    .line 432
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    invoke-virtual {v1, v7, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 433
    return-void
.end method

.method public animateCollapse()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 924
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-nez v0, :cond_0

    .line 939
    :goto_0
    return-void

    .line 929
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    if-eqz v0, :cond_1

    .line 930
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    float-to-int v0, v0

    .line 936
    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    .line 937
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->prepareTracking(IZ)V

    .line 938
    const/high16 v1, -0x3b06

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/StatusBarService;->performFling(IFZ)V

    goto :goto_0

    .line 932
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sub-int/2addr v0, v2

    goto :goto_1
.end method

.method public animateExpand()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 903
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 912
    :cond_0
    :goto_0
    return-void

    .line 906
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-nez v0, :cond_0

    .line 910
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/StatusBarService;->prepareTracking(IZ)V

    .line 911
    const/high16 v0, 0x44fa

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->performFling(IFZ)V

    goto :goto_0
.end method

.method public disable(I)V
    .locals 2
    .parameter

    .prologue
    .line 794
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    .line 795
    xor-int/2addr v0, p1

    .line 796
    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    .line 798
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 799
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 801
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->animateCollapse()V

    .line 804
    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_4

    .line 805
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_3

    .line 807
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z

    if-eqz v0, :cond_2

    .line 808
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/Ticker;->halt()V

    .line 824
    :cond_1
    :goto_0
    return-void

    .line 810
    :cond_2
    const/4 v0, 0x0

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->setNotificationIconVisibility(ZI)V

    goto :goto_0

    .line 814
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-nez v0, :cond_1

    .line 815
    const/4 v0, 0x1

    const/high16 v1, 0x10a

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->setNotificationIconVisibility(ZI)V

    goto :goto_0

    .line 818
    :cond_4
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 819
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z

    if-eqz v0, :cond_1

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_1

    .line 821
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicker:Lcom/android/systemui/statusbar/Ticker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/Ticker;->halt()V

    goto :goto_0
.end method

.method doAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 987
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 990
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->incrementAnim()V

    .line 992
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 994
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    .line 995
    const/16 v0, -0x2711

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 996
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->performExpand()V

    .line 1010
    :cond_0
    :goto_0
    return-void

    .line 998
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 1000
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    .line 1001
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 1002
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->performCollapse()V

    goto :goto_0

    .line 1005
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 1006
    iget-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    .line 1007
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method doRevealAnimation()V
    .locals 5

    .prologue
    .line 1032
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/CloseDragHandle;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/StatusBarView;->getHeight()I

    move-result v2

    add-int v0, v1, v2

    .line 1033
    .local v0, h:I
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 1034
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->incrementAnim()V

    .line 1035
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 1036
    int-to-float v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    .line 1037
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 1045
    :cond_0
    :goto_0
    return-void

    .line 1039
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 1040
    iget-wide v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    .line 1041
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/StatusBarService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/StatusBarService$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v0, "  mDisplayHeight="

    .line 1379
    const-string v0, "android.permission.DUMP"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump StatusBar from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1429
    :goto_0
    return-void

    .line 1387
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1388
    :try_start_0
    const-string v1, "Current Status Bar state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mExpanded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mExpandedVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTicking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTicking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTracking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTracking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAnimating="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAnimY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAnimVel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAnimAccel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurAnimationTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAnimLastTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimLastTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplayHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAnimatingReveal="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mViewDelta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mViewDelta:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplayHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mExpandedParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mExpandedView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mExpandedDialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTrackingParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTrackingView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mOngoingTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mOngoingItems: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingItems:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLatestTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLatestItems: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestItems:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNoNotificationsTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCloseView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mTickerView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTickerView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mScrollView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scroll "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNotificationLinearLayout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationLinearLayout:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1417
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1421
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    new-instance v1, Lcom/android/systemui/statusbar/StatusBarService$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/StatusBarService$2;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1417
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method getExpandedHeight()I
    .locals 2

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/CloseDragHandle;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public grabScreen(IIJ)Landroid/graphics/Bitmap;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v9, 0x4000

    const/high16 v8, -0x8000

    const/4 v7, 0x0

    .line 829
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarView;->getMeasuredWidth()I

    move-result v0

    .line 830
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarView;->getMeasuredHeight()I

    move-result v1

    .line 832
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 833
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 835
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-static {p1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {p2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/statusbar/StatusBarView;->measure(II)V

    .line 836
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/StatusBarView;->getMeasuredWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/StatusBarView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v4, v7, v7, v5, v6}, Lcom/android/systemui/statusbar/StatusBarView;->layout(IIII)V

    .line 837
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/StatusBarView;->draw(Landroid/graphics/Canvas;)V

    .line 838
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->measure(II)V

    .line 839
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarView;->getMeasuredWidth()I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v7, v7, v1, v3}, Lcom/android/systemui/statusbar/StatusBarView;->layout(IIII)V

    .line 841
    return-object v2
.end method

.method handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V
    .locals 7
    .parameter "key"
    .parameter "n"
    .parameter "message"

    .prologue
    .line 1313
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarService;->removeNotification(Landroid/os/IBinder;)V

    .line 1315
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    iget v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    iget v4, p2, Lcom/android/internal/statusbar/StatusBarNotification;->uid:I

    iget v5, p2, Lcom/android/internal/statusbar/StatusBarNotification;->initialPid:I

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1319
    :goto_0
    return-void

    .line 1316
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public hideCallOnGoingView()V
    .locals 2

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCallOnGoingView:Lcom/android/systemui/statusbar/CallOnGoingView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->removeView(Landroid/view/View;)V

    .line 1766
    return-void
.end method

.method incrementAnim()V
    .locals 7

    .prologue
    .line 1019
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1020
    iget-wide v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimLastTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a

    div-float/2addr v2, v3

    .line 1021
    iget v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    .line 1022
    iget v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    .line 1023
    iget v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    .line 1024
    mul-float v6, v4, v2

    add-float/2addr v3, v6

    const/high16 v6, 0x3f00

    mul-float/2addr v6, v5

    mul-float/2addr v6, v2

    mul-float/2addr v6, v2

    add-float/2addr v3, v6

    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    .line 1025
    mul-float/2addr v2, v5

    add-float/2addr v2, v4

    iput v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    .line 1026
    iput-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimLastTime:J

    .line 1029
    return-void
.end method

.method interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter

    .prologue
    const/high16 v4, 0x4316

    const/4 v3, 0x0

    const/16 v8, 0x7d0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1142
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    move v0, v7

    .line 1242
    :goto_0
    return v0

    .line 1146
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarView;->getHeight()I

    move-result v0

    .line 1147
    mul-int/lit8 v1, v0, 0x2

    .line 1148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_7

    .line 1149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    .line 1150
    const-string v3, "StatusBarService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DOWN:Y-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-nez v3, :cond_5

    .line 1153
    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mViewDelta:I

    .line 1158
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-nez v0, :cond_1

    if-lt v2, v1, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sub-int/2addr v0, v1

    if-le v2, v0, :cond_3

    .line 1164
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 1165
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEdgeBorder:I

    .line 1166
    if-lt v0, v1, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    sub-int v1, v3, v1

    if-ge v0, v1, :cond_3

    .line 1167
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-nez v0, :cond_6

    move v0, v6

    :goto_2
    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/StatusBarService;->prepareTracking(IZ)V

    .line 1168
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1172
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIsStatusBarBrightNess:Z

    if-eqz v0, :cond_4

    .line 1173
    iput v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIsBrightNessMode:I

    .line 1174
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIsAutoBrightNess:Z

    if-nez v0, :cond_4

    .line 1175
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/StatusBarService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    :goto_3
    move v0, v7

    .line 1242
    goto/16 :goto_0

    .line 1155
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAbsPos:[I

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/TrackingView;->getLocationOnScreen([I)V

    .line 1156
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAbsPos:[I

    aget v0, v0, v6

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/TrackingView;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mViewDelta:I

    goto :goto_1

    :cond_6
    move v0, v7

    .line 1167
    goto :goto_2

    .line 1180
    :cond_7
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTracking:Z

    if-eqz v1, :cond_4

    .line 1181
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1182
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/CloseDragHandle;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 1183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 1184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    .line 1185
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    if-eqz v2, :cond_8

    if-ge v1, v0, :cond_8

    .line 1187
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIsStatusBarBrightNess:Z

    if-eqz v0, :cond_4

    .line 1188
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIsBrightNessMode:I

    if-ne v0, v6, :cond_4

    .line 1189
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarService;->doBrightNess(Landroid/view/MotionEvent;)V

    move v0, v7

    .line 1190
    goto/16 :goto_0

    .line 1196
    :cond_8
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIsStatusBarBrightNess:Z

    if-eqz v0, :cond_a

    .line 1197
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIsAutoBrightNess:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/StatusBarService$H;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1198
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeMessages(I)V

    .line 1200
    :cond_9
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIsBrightNessMode:I

    if-ne v0, v6, :cond_a

    .line 1201
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIsBrightNessMode:I

    .line 1206
    :cond_a
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    .line 1207
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mViewDelta:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    goto :goto_3

    .line 1209
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v6, :cond_4

    .line 1210
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1211
    const-string v0, "StatusBarService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UP:Y-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 1214
    cmpg-float v1, v0, v3

    if-gez v1, :cond_10

    move v1, v6

    .line 1216
    :goto_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 1217
    cmpg-float v3, v2, v3

    if-gez v3, :cond_c

    .line 1218
    neg-float v2, v2

    .line 1220
    :cond_c
    cmpl-float v3, v2, v4

    if-lez v3, :cond_d

    move v2, v4

    .line 1224
    :cond_d
    float-to-double v3, v0

    float-to-double v5, v2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 1225
    if-eqz v1, :cond_e

    .line 1226
    neg-float v0, v0

    .line 1230
    :cond_e
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIsStatusBarBrightNess:Z

    if-eqz v1, :cond_4

    .line 1231
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/StatusBarService$H;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1232
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeMessages(I)V

    .line 1234
    :cond_f
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIsBrightNessMode:I

    if-nez v1, :cond_4

    .line 1235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1, v0, v7}, Lcom/android/systemui/statusbar/StatusBarService;->performFling(IFZ)V

    goto/16 :goto_3

    :cond_10
    move v1, v7

    .line 1214
    goto :goto_4
.end method

.method makeNotificationView(Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/ViewGroup;)[Landroid/view/View;
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 616
    iget-object v2, p1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    .line 617
    iget-object v8, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 618
    if-nez v8, :cond_0

    move-object v1, v10

    .line 656
    :goto_0
    return-object v1

    .line 623
    :cond_0
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 624
    const v3, 0x7f030008

    invoke-virtual {v1, v3, p2, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 627
    const v1, 0x7f0a002d

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v7, v0

    .line 628
    const/high16 v1, 0x6

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 629
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 630
    iget-object v3, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 631
    if-eqz v3, :cond_1

    .line 632
    new-instance v1, Lcom/android/systemui/statusbar/StatusBarService$Launcher;

    iget-object v4, p1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    iget v6, p1, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/StatusBarService$Launcher;-><init>(Lcom/android/systemui/statusbar/StatusBarService;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 639
    :cond_1
    :try_start_0
    invoke-virtual {v8, p0, v7}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    move-object v1, v10

    .line 644
    :goto_1
    if-nez v2, :cond_2

    .line 645
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 646
    const-string v3, "StatusBarService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "couldn\'t inflate view for notification "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v10

    .line 647
    goto :goto_0

    .line 641
    :catch_0
    move-exception v1

    move-object v2, v10

    .line 642
    goto :goto_1

    .line 650
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/StatusBarService;->updateThemeForNotificationView(Landroid/content/res/Resources;Landroid/view/View;)V

    .line 652
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 653
    invoke-virtual {v9, v12}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 656
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    aput-object v9, v1, v11

    aput-object v7, v1, v12

    const/4 v3, 0x2

    aput-object v2, v1, v3

    goto/16 :goto_0
.end method

.method onBarViewAttached()V
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 1438
    const/4 v0, -0x3

    .line 1439
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/TrackingView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1440
    if-eqz v2, :cond_0

    .line 1441
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    move v5, v0

    .line 1444
    :goto_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7de

    const v4, 0x20300

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1453
    const/16 v1, 0x37

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1454
    const-string v1, "TrackingView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1455
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1456
    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    .line 1458
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1459
    return-void

    :cond_0
    move v5, v0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 319
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 11

    .prologue
    .line 250
    const-string v7, "window"

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/StatusBarService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    .line 251
    invoke-direct {p0, p0}, Lcom/android/systemui/statusbar/StatusBarService;->makeStatusBarView(Landroid/content/Context;)V

    .line 254
    new-instance v3, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v3}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    .line 255
    .local v3, iconList:Lcom/android/internal/statusbar/StatusBarIconList;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v4, notificationKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v5, notifications:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarNotification;>;"
    new-instance v7, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-direct {v7, p0, v3}, Lcom/android/systemui/statusbar/CommandQueue;-><init>(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;Lcom/android/internal/statusbar/StatusBarIconList;)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 258
    const-string v7, "statusbar"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 261
    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-interface {v7, v8, v3, v4, v5}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/statusbar/StatusBarIconList;->size()I

    move-result v0

    .line 268
    .local v0, N:I
    const/4 v6, 0x0

    .line 269
    .local v6, viewIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 270
    invoke-virtual {v3, v1}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v2

    .line 271
    .local v2, icon:Lcom/android/internal/statusbar/StatusBarIcon;
    if-eqz v2, :cond_0

    .line 272
    invoke-virtual {v3, v1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlot(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v1, v6, v2}, Lcom/android/systemui/statusbar/StatusBarService;->addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 273
    add-int/lit8 v6, v6, 0x1

    .line 269
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 278
    .end local v2           #icon:Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 279
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v0, v7, :cond_2

    .line 280
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    .line 281
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/statusbar/StatusBarService;->addNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 284
    :cond_2
    const-string v7, "StatusBarService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Notification list length mismatch: keys="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " notifications="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->addStatusBarView()V

    .line 292
    new-instance v7, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIconPolicy:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    .line 298
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060001

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIsStatusBarBrightNess:Z

    .line 299
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIsStatusBarBrightNess:Z

    if-eqz v7, :cond_4

    .line 300
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->checkAutoBrightNess()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIsAutoBrightNess:Z

    .line 301
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "screen_brightness_mode"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBrightNessContentObs:Lcom/android/systemui/statusbar/StatusBarService$BrightNessContentObserver;

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 304
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->updatePropFactorValue()V

    .line 307
    :cond_4
    return-void

    .line 262
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v6           #viewIndex:I
    :catch_0
    move-exception v7

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 312
    return-void
.end method

.method onTrackingViewAttached()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 1467
    const/4 v0, -0x3

    .line 1469
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 1470
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1471
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1472
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getExpandedHeight()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1473
    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1474
    neg-int v1, v1

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    .line 1475
    const/16 v1, 0x7de

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1476
    const/16 v1, 0x1328

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1481
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1482
    const/16 v1, 0x37

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1483
    const-string v1, "StatusBarExpanded"

    invoke-virtual {v2, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1484
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1485
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setFormat(I)V

    .line 1486
    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    .line 1488
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 1489
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1492
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1493
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1494
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandedView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1501
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/StatusBarView;->setVisibility(I)V

    .line 1502
    return-void
.end method

.method performCollapse()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 962
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-nez v0, :cond_1

    .line 984
    :cond_0
    :goto_0
    return-void

    .line 965
    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    .line 966
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/StatusBarService;->visibilityChanged(Z)V

    .line 967
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 968
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 969
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 970
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/TrackingView;->setVisibility(I)V

    .line 971
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandedView;->setVisibility(I)V

    .line 973
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 974
    const/4 v0, 0x1

    const/high16 v1, 0x10a

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->setNotificationIconVisibility(ZI)V

    .line 976
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDateView:Lcom/android/systemui/statusbar/DateView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DateView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 977
    const v0, 0x10a0001

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/statusbar/StatusBarService;->setDateViewVisibility(ZI)V

    .line 980
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 983
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    goto :goto_0
.end method

.method performExpand()V
    .locals 1

    .prologue
    .line 943
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 955
    :cond_0
    :goto_0
    return-void

    .line 946
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-nez v0, :cond_0

    .line 950
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    .line 951
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->makeExpandedVisible()V

    .line 952
    const/16 v0, -0x2711

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    goto :goto_0
.end method

.method performFling(IFZ)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x44fa

    const/high16 v1, 0x4348

    const/high16 v5, -0x3b06

    const/high16 v4, -0x3cb8

    const/4 v3, 0x0

    .line 1077
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    .line 1078
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplayHeight:F

    .line 1080
    int-to-float v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    .line 1081
    iput p2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    .line 1085
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpanded:Z

    if-eqz v0, :cond_3

    .line 1086
    if-nez p3, :cond_2

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_0

    int-to-float v0, p1

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplayHeight:F

    const/high16 v2, 0x41c8

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    cmpl-float v0, p2, v4

    if-lez v0, :cond_2

    .line 1091
    :cond_0
    iput v6, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    .line 1092
    cmpg-float v0, p2, v3

    if-gez v0, :cond_1

    .line 1093
    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    .line 1126
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1127
    iput-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimLastTime:J

    .line 1128
    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    .line 1129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    .line 1130
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeMessages(I)V

    .line 1131
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeMessages(I)V

    .line 1132
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1133
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->stopTracking()V

    .line 1134
    return-void

    .line 1098
    :cond_2
    iput v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    .line 1099
    cmpl-float v0, p2, v3

    if-lez v0, :cond_1

    .line 1100
    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    goto :goto_0

    .line 1104
    :cond_3
    if-nez p3, :cond_4

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_4

    int-to-float v0, p1

    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplayHeight:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    cmpl-float v0, p2, v4

    if-lez v0, :cond_5

    .line 1109
    :cond_4
    iput v6, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    .line 1110
    cmpg-float v0, p2, v3

    if-gez v0, :cond_1

    .line 1111
    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    goto :goto_0

    .line 1117
    :cond_5
    iput v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    .line 1118
    cmpl-float v0, p2, v3

    if-lez v0, :cond_1

    .line 1119
    iput v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    goto :goto_0
.end method

.method prepareTracking(IZ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x3e9

    const/16 v1, 0x3e8

    const/4 v4, 0x1

    .line 1048
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTracking:Z

    .line 1049
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1050
    if-eqz p2, :cond_0

    .line 1051
    const/high16 v0, 0x44fa

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimAccel:F

    .line 1052
    const/high16 v0, 0x4348

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimVel:F

    .line 1053
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    .line 1054
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimY:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 1055
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    .line 1056
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimatingReveal:Z

    .line 1057
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeMessages(I)V

    .line 1058
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeMessages(I)V

    .line 1059
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1060
    iput-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimLastTime:J

    .line 1061
    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    .line 1062
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    .line 1063
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/StatusBarService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCurAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1065
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->makeExpandedVisible()V

    .line 1074
    :goto_0
    return-void

    .line 1068
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    if-eqz v0, :cond_1

    .line 1069
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mAnimating:Z

    .line 1070
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mHandler:Lcom/android/systemui/statusbar/StatusBarService$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService$H;->removeMessages(I)V

    .line 1072
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mViewDelta:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    goto :goto_0
.end method

.method reloadResources()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1828
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1829
    if-nez v1, :cond_1

    .line 1830
    const-string v0, "StatusBarService"

    const-string v1, "[Theme] Cannot get Resources object, skip updating theme."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    :cond_0
    :goto_0
    return-void

    .line 1839
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    if-eqz v0, :cond_5

    .line 1841
    const v0, 0x106003e

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 1842
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDateView:Lcom/android/systemui/statusbar/DateView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDateView:Lcom/android/systemui/statusbar/DateView;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1843
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDateView:Lcom/android/systemui/statusbar/DateView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/DateView;->setTextColor(I)V

    .line 1845
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    const v3, 0x7f0a001c

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1846
    if-eqz v0, :cond_3

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 1847
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1849
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    const v3, 0x7f0a001d

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1850
    if-eqz v0, :cond_4

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 1851
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1853
    :cond_4
    const v0, 0x106003f

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 1854
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mIcons:Landroid/widget/LinearLayout;

    const v3, 0x7f0a0018

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1855
    if-eqz v0, :cond_5

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_5

    .line 1856
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1859
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    move v2, v5

    .line 1861
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 1862
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1863
    if-eqz v0, :cond_6

    instance-of v3, v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v3, :cond_6

    .line 1864
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 1866
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIcon()Z

    .line 1861
    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 1871
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    if-eqz v0, :cond_a

    .line 1873
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v2, v5

    .line 1874
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 1875
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/NotificationData;->getEntryAt(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Landroid/os/IBinder;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1874
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1877
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 1878
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/NotificationData;->findEntry(Landroid/os/IBinder;)I

    move-result v0

    .line 1879
    if-ltz v0, :cond_9

    .line 1880
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/NotificationData;->getEntryAt(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 1881
    if-eqz v0, :cond_9

    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    instance-of v3, v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v3, :cond_9

    .line 1883
    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIcon()Z

    .line 1884
    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Landroid/os/IBinder;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/StatusBarService;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    .line 1885
    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Landroid/os/IBinder;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/statusbar/StatusBarService;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    goto :goto_3

    .line 1893
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    if-eqz v0, :cond_c

    move v0, v5

    .line 1895
    :goto_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v2

    if-ge v0, v2, :cond_c

    .line 1896
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/NotificationData;->getEntryAt(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    .line 1897
    if-eqz v2, :cond_b

    iget-object v3, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    instance-of v3, v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v3, :cond_b

    .line 1899
    iget-object v3, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIcon()Z

    .line 1900
    iget-object v3, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Landroid/os/IBinder;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/StatusBarService;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    .line 1901
    iget-object v3, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Landroid/os/IBinder;

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/StatusBarService;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 1895
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1906
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationIcons:Lcom/android/systemui/statusbar/IconMerger;

    if-eqz v0, :cond_d

    .line 1908
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationIcons:Lcom/android/systemui/statusbar/IconMerger;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1909
    if-eqz v0, :cond_d

    instance-of v2, v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v2, :cond_d

    .line 1910
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateIcon()Z

    .line 1913
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    if-eqz v0, :cond_11

    .line 1914
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1915
    if-eqz v0, :cond_e

    instance-of v0, v0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingsView;

    if-eqz v0, :cond_e

    .line 1917
    const v0, 0x7f030003

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/quickpanel/QuickSettingsView;

    .line 1919
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/ExpandedView;->removeViewAt(I)V

    .line 1920
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    invoke-virtual {v2, v0, v5}, Lcom/android/systemui/statusbar/ExpandedView;->addView(Landroid/view/View;I)V

    .line 1924
    :cond_e
    const v0, 0x7f0200ac

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1925
    const v0, 0x7f050002

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 1927
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    const v4, 0x7f0a0021

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1928
    if-eqz v0, :cond_f

    instance-of v4, v0, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_f

    .line 1929
    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1931
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    const v2, 0x7f0a0022

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1932
    if-eqz v0, :cond_10

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_10

    .line 1933
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1936
    :cond_10
    const v0, 0x7f0200ad

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1937
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    const v3, 0x7f0a002b

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1938
    if-eqz v0, :cond_11

    instance-of v3, v0, Landroid/widget/ImageView;

    if-eqz v3, :cond_11

    .line 1939
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1942
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/TextView;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/TextView;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_12

    .line 1943
    const v0, 0x7f020001

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1944
    const v2, 0x7f050003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 1946
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1947
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1950
    :cond_12
    const v0, 0x7f020026

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1951
    const/high16 v2, 0x7f05

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 1954
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    instance-of v3, v3, Landroid/widget/TextView;

    if-eqz v3, :cond_18

    .line 1956
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    .line 1957
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1958
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1959
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1962
    :goto_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    instance-of v4, v4, Landroid/widget/TextView;

    if-eqz v4, :cond_13

    .line 1964
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1965
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1966
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1969
    :cond_13
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    instance-of v4, v4, Landroid/widget/TextView;

    if-eqz v4, :cond_14

    .line 1971
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1972
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v5, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1973
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1976
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mScrollView:Landroid/widget/ScrollView;

    instance-of v0, v0, Landroid/widget/ScrollView;

    if-eqz v0, :cond_16

    .line 1978
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1979
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_15

    .line 1980
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1982
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3, v0}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 1983
    invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 1985
    :cond_15
    const v0, 0x7f0a0024

    invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->setId(I)V

    .line 1986
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1987
    invoke-virtual {v2, v5}, Landroid/widget/ScrollView;->setVerticalFadingEdgeEnabled(Z)V

    .line 1988
    invoke-virtual {v2, v5}, Landroid/widget/ScrollView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 1989
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    .line 1990
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1991
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarService;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 1992
    iget-object v4, p0, Lcom/android/systemui/statusbar/StatusBarService;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1993
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1994
    iput-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mScrollView:Landroid/widget/ScrollView;

    .line 1997
    :cond_16
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    if-eqz v0, :cond_17

    .line 1999
    const v0, 0x7f0200a8

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2000
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    const v3, 0x7f0a002e

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/TrackingView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2001
    if-eqz v2, :cond_17

    .line 2002
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2005
    :cond_17
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    if-eqz v0, :cond_0

    .line 2007
    const v0, 0x7f0200aa

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2008
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    const v2, 0x7f0a0030

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/CloseDragHandle;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 2009
    if-eqz p0, :cond_0

    instance-of v1, p0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 2010
    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_18
    move v3, v5

    goto/16 :goto_5
.end method

.method public removeIcon(Ljava/lang/String;II)V
    .locals 1
    .parameter "slot"
    .parameter "index"
    .parameter "viewIndex"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 460
    return-void
.end method

.method public removeNotification(Landroid/os/IBinder;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 586
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/StatusBarService;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    move-result-object v0

    .line 588
    .local v0, old:Lcom/android/internal/statusbar/StatusBarNotification;
    if-eqz v0, :cond_0

    .line 595
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarService;->setAreThereNotifications()V

    .line 596
    const/16 v1, -0x2710

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 598
    :cond_0
    return-void
.end method

.method removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;
    .locals 4
    .parameter

    .prologue
    const-string v3, "StatusBarService"

    .line 741
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->remove(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 742
    if-nez v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->remove(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 744
    if-nez v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mMiniConData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->remove(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 747
    if-nez v0, :cond_0

    .line 748
    const-string v0, "StatusBarService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeNotification for unknown key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const/4 v0, 0x0

    .line 765
    :goto_0
    return-object v0

    .line 755
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v1}, Lcom/android/internal/statusbar/StatusBarNotification;->isMiniCon()Z

    move-result v1

    if-nez v1, :cond_1

    .line 756
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 763
    :goto_1
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 765
    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    goto :goto_0

    .line 758
    :cond_1
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 759
    const-string v1, "StatusBarService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REMOVE:MiniCon-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v2, v2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->twQuickPanelEvent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method setDateViewVisibility(ZI)V
    .locals 2
    .parameter "visible"
    .parameter "anim"

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDateView:Lcom/android/systemui/statusbar/DateView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DateView;->setUpdates(Z)V

    .line 1506
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDateView:Lcom/android/systemui/statusbar/DateView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DateView;->setVisibility(I)V

    .line 1507
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDateView:Lcom/android/systemui/statusbar/DateView;

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/systemui/statusbar/StatusBarService;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DateView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1508
    return-void

    .line 1506
    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method setNotificationIconVisibility(ZI)V
    .locals 4
    .parameter "visible"
    .parameter "anim"

    .prologue
    .line 1511
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationIcons:Lcom/android/systemui/statusbar/IconMerger;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/IconMerger;->getVisibility()I

    move-result v0

    .line 1512
    .local v0, old:I
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    move v1, v2

    .line 1513
    .local v1, v:I
    :goto_0
    if-eq v0, v1, :cond_0

    .line 1514
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationIcons:Lcom/android/systemui/statusbar/IconMerger;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/IconMerger;->setVisibility(I)V

    .line 1515
    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNotificationIcons:Lcom/android/systemui/statusbar/IconMerger;

    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/StatusBarService;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/IconMerger;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1517
    :cond_0
    return-void

    .line 1512
    .end local v1           #v:I
    :cond_1
    const/4 v2, 0x4

    move v1, v2

    goto :goto_0
.end method

.method public showCallOnGoingView()V
    .locals 2

    .prologue
    .line 1759
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCallOnGoingView:Lcom/android/systemui/statusbar/CallOnGoingView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1760
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCallOnGoingView:Lcom/android/systemui/statusbar/CallOnGoingView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarView;->addView(Landroid/view/View;)V

    .line 1762
    :cond_0
    return-void
.end method

.method stopTracking()V
    .locals 1

    .prologue
    .line 1013
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTracking:Z

    .line 1014
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1015
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1016
    return-void
.end method

.method updateExpandedHeight()V
    .locals 2

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedView:Lcom/android/systemui/statusbar/ExpandedView;

    if-eqz v0, :cond_0

    .line 1614
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getExpandedHeight()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1615
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1617
    :cond_0
    return-void
.end method

.method updateExpandedViewPos(I)V
    .locals 13
    .parameter "expandedPosition"

    .prologue
    const/16 v12, -0x2710

    const/4 v11, 0x1

    .line 1527
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusBarView:Lcom/android/systemui/statusbar/StatusBarView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/StatusBarView;->getHeight()I

    move-result v3

    .line 1528
    .local v3, h:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 1532
    .local v2, disph:I
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedVisible:Z

    if-nez v8, :cond_2

    .line 1533
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    if-eqz v8, :cond_0

    .line 1534
    neg-int v8, v2

    iput v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    .line 1535
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v8, :cond_0

    .line 1536
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iget v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1537
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8, v9, v10}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1540
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v8, :cond_1

    .line 1541
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    neg-int v9, v2

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1542
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1606
    :cond_1
    :goto_0
    return-void

    .line 1549
    :cond_2
    const/16 v8, -0x2711

    if-ne p1, v8, :cond_6

    .line 1550
    move v6, v3

    .line 1563
    .local v6, pos:I
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v6, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    .line 1564
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    sub-int v9, v2, v3

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1565
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8, v9, v10}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1567
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v8, :cond_1

    .line 1568
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mCloseView:Lcom/android/systemui/statusbar/CloseDragHandle;

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPositionTmp:[I

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/CloseDragHandle;->getLocationInWindow([I)V

    .line 1569
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPositionTmp:[I

    aget v0, v8, v11

    .line 1571
    .local v0, closePos:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContents:Landroid/view/View;

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPositionTmp:[I

    invoke-virtual {v8, v9}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1572
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPositionTmp:[I

    aget v8, v8, v11

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedContents:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int v1, v8, v9

    .line 1574
    .local v1, contentsBottom:I
    if-eq p1, v12, :cond_1

    .line 1575
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/TrackingView;->getHeight()I

    move-result v9

    add-int/2addr v9, v6

    iget-object v10, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v10, v0

    sub-int/2addr v9, v10

    sub-int/2addr v9, v1

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1577
    move v4, v3

    .line 1578
    .local v4, max:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    if-le v8, v4, :cond_3

    .line 1579
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1581
    :cond_3
    iget v5, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    .line 1582
    .local v5, min:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ge v8, v5, :cond_4

    .line 1583
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1586
    :cond_4
    iget v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingView:Lcom/android/systemui/statusbar/TrackingView;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/TrackingView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    if-le v8, v3, :cond_9

    move v7, v11

    .line 1587
    .local v7, visible:Z
    :goto_2
    if-nez v7, :cond_5

    .line 1590
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    neg-int v9, v2

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1592
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/StatusBarService;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1595
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/StatusBarService;->visibilityChanged(Z)V

    goto/16 :goto_0

    .line 1552
    .end local v0           #closePos:I
    .end local v1           #contentsBottom:I
    .end local v4           #max:I
    .end local v5           #min:I
    .end local v6           #pos:I
    .end local v7           #visible:Z
    :cond_6
    if-ne p1, v12, :cond_7

    .line 1553
    iget v6, p0, Lcom/android/systemui/statusbar/StatusBarService;->mTrackingPosition:I

    .restart local v6       #pos:I
    goto/16 :goto_1

    .line 1556
    .end local v6           #pos:I
    :cond_7
    if-gt p1, v2, :cond_8

    .line 1557
    move v6, p1

    .line 1561
    .restart local v6       #pos:I
    :goto_3
    sub-int v8, v2, v3

    sub-int/2addr v6, v8

    goto/16 :goto_1

    .line 1559
    .end local v6           #pos:I
    :cond_8
    move v6, v2

    .restart local v6       #pos:I
    goto :goto_3

    .line 1586
    .restart local v0       #closePos:I
    .restart local v1       #contentsBottom:I
    .restart local v4       #max:I
    .restart local v5       #min:I
    :cond_9
    const/4 v8, 0x0

    move v7, v8

    goto :goto_2
.end method

.method public updateIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 2
    .parameter "slot"
    .parameter "index"
    .parameter "viewIndex"
    .parameter "old"
    .parameter "icon"

    .prologue
    .line 451
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 452
    .local v0, view:Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p5}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 453
    return-void
.end method

.method public updateNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 18
    .parameter "key"
    .parameter "notification"

    .prologue
    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->findEntry(Landroid/os/IBinder;)I

    move-result v15

    .line 488
    .local v15, oldIndex:I
    if-ltz v15, :cond_1

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoing:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v16, v0

    .line 505
    .local v16, oldList:Lcom/android/systemui/statusbar/NotificationData;
    :goto_0
    move-object/from16 v0, v16

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->getEntryAt(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v14

    .line 506
    .local v14, oldEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    move-object v0, v14

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    move-object/from16 v17, v0

    .line 507
    .local v17, oldNotification:Lcom/android/internal/statusbar/StatusBarNotification;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v4, v0

    iget-object v13, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 509
    .local v13, oldContentView:Landroid/widget/RemoteViews;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v4, v0

    iget-object v10, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 523
    .local v10, contentView:Landroid/widget/RemoteViews;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v4, v0

    iget-wide v4, v4, Landroid/app/Notification;->when:J

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v6, v0

    iget-wide v6, v6, Landroid/app/Notification;->when:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/statusbar/StatusBarNotification;->isOngoing()Z

    move-result v4

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/statusbar/StatusBarNotification;->isOngoing()Z

    move-result v5

    if-ne v4, v5, :cond_7

    iget-object v4, v14, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    if-eqz v4, :cond_7

    if-eqz v10, :cond_7

    if-eqz v13, :cond_7

    invoke-virtual {v10}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v13}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v13}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v13}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v4

    invoke-virtual {v10}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    if-ne v4, v5, :cond_7

    .line 532
    move-object/from16 v0, p2

    move-object v1, v14

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    .line 536
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/statusbar/StatusBarNotification;->isMiniCon()Z

    move-result v4

    if-nez v4, :cond_4

    .line 537
    iget-object v4, v14, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    .line 546
    :goto_1
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v4, v0

    iget-object v6, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 547
    .local v6, contentIntent:Landroid/app/PendingIntent;
    if-eqz v6, :cond_0

    .line 548
    iget-object v11, v14, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    new-instance v4, Lcom/android/systemui/statusbar/StatusBarService$Launcher;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    move v9, v0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/statusbar/StatusBarService$Launcher;-><init>(Lcom/android/systemui/statusbar/StatusBarService;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v11, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 552
    :cond_0
    new-instance v12, Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v5, v0

    iget v5, v5, Landroid/app/Notification;->icon:I

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v6, v0

    .end local v6           #contentIntent:Landroid/app/PendingIntent;
    iget v6, v6, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v7, v0

    iget v7, v7, Landroid/app/Notification;->number:I

    invoke-direct {v12, v4, v5, v6, v7}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;III)V

    .line 555
    .local v12, ic:Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v4, v14, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v4, v12}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 556
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t update icon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarService;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    .end local v10           #contentView:Landroid/widget/RemoteViews;
    .end local v12           #ic:Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v13           #oldContentView:Landroid/widget/RemoteViews;
    .end local v14           #oldEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v16           #oldList:Lcom/android/systemui/statusbar/NotificationData;
    .end local v17           #oldNotification:Lcom/android/internal/statusbar/StatusBarNotification;
    :goto_2
    return-void

    .line 491
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->findEntry(Landroid/os/IBinder;)I

    move-result v15

    .line 493
    if-ltz v15, :cond_2

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mLatest:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v16, v0

    .restart local v16       #oldList:Lcom/android/systemui/statusbar/NotificationData;
    goto/16 :goto_0

    .line 496
    .end local v16           #oldList:Lcom/android/systemui/statusbar/NotificationData;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mMiniConData:Lcom/android/systemui/statusbar/NotificationData;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->findEntry(Landroid/os/IBinder;)I

    move-result v15

    .line 497
    if-gez v15, :cond_3

    .line 498
    const-string v4, "StatusBarService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateNotification for unknown key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 501
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarService;->mMiniConData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v16, v0

    .restart local v16       #oldList:Lcom/android/systemui/statusbar/NotificationData;
    goto/16 :goto_0

    .line 541
    .restart local v10       #contentView:Landroid/widget/RemoteViews;
    .restart local v13       #oldContentView:Landroid/widget/RemoteViews;
    .restart local v14       #oldEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v17       #oldNotification:Lcom/android/internal/statusbar/StatusBarNotification;
    :cond_4
    :try_start_1
    iget-object v4, v14, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    .line 542
    const-string v4, "StatusBarService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UPDATE:MiniCon-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v6, v0

    iget v6, v6, Landroid/app/Notification;->twQuickPanelEvent:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 560
    :catch_0
    move-exception v4

    move-object v11, v4

    .line 562
    .local v11, e:Ljava/lang/RuntimeException;
    const-string v4, "StatusBarService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t reapply views for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 563
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/StatusBarService;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    .line 564
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/StatusBarService;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 573
    .end local v11           #e:Ljava/lang/RuntimeException;
    :cond_5
    :goto_3
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v4, v0

    iget-object v4, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_6

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object v4, v0

    iget-object v4, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v5, v14, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v5, v5, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 576
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->tick(Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 580
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/StatusBarService;->setAreThereNotifications()V

    .line 581
    const/16 v4, -0x2710

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    goto/16 :goto_2

    .line 568
    :cond_7
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/StatusBarService;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    .line 569
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/StatusBarService;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    goto :goto_3
.end method

.method updateResources()V
    .locals 3

    .prologue
    .line 1714
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1716
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mClearButton:Landroid/widget/TextView;

    const v2, 0x7f080001

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1717
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mOngoingTitle:Landroid/widget/TextView;

    const v2, 0x7f080003

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1718
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mLatestTitle:Landroid/widget/TextView;

    const v2, 0x7f080004

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1719
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mNoNotificationsTitle:Landroid/widget/TextView;

    const v2, 0x7f080002

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/StatusBarService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1721
    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mEdgeBorder:I

    .line 1724
    return-void
.end method

.method public updateTheme()V
    .locals 2

    .prologue
    .line 1815
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mDisabled:I

    .line 1816
    .local v0, oldDisabled:I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->disable(I)V

    .line 1818
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarService;->reloadResources()V

    .line 1821
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->disable(I)V

    .line 1824
    return-void
.end method

.method updateThemeForNotificationView(Landroid/content/res/Resources;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const v1, 0x1060041

    .line 663
    const v0, 0x1020016

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 664
    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 666
    check-cast p0, Landroid/widget/TextView;

    const v0, 0x1060040

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 669
    :cond_0
    const v0, 0x1020042

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 670
    if-eqz p0, :cond_1

    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 672
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 675
    :cond_1
    const v0, 0x102005d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 676
    if-eqz p0, :cond_2

    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 678
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 680
    :cond_2
    return-void
.end method

.method vibrate()V
    .locals 2

    .prologue
    .line 1735
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    .line 1736
    const-wide/16 v0, 0xfa

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1737
    return-void
.end method

.method public viewInfo(Landroid/view/View;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const-string v2, ","

    .line 1374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method visibilityChanged(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 1627
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPanelSlightlyVisible:Z

    if-eq v0, p1, :cond_0

    .line 1628
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarService;->mPanelSlightlyVisible:Z

    .line 1630
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1635
    :cond_0
    :goto_0
    return-void

    .line 1631
    :catch_0
    move-exception v0

    goto :goto_0
.end method
