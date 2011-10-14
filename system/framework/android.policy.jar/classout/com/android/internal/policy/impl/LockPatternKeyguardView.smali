.class public Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.super Lcom/android/internal/policy/impl/KeyguardViewBase;
.source "LockPatternKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;,
        Lcom/android/internal/policy/impl/LockPatternKeyguardView$FastBitmapDrawable;,
        Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;,
        Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;,
        Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
    }
.end annotation


# static fields
.field static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final DB_KEY_DRIVING_MODE_ON:Ljava/lang/String; = "driving_mode_on"

.field private static final DEBUG:Z = false

.field static final DEBUG_CONFIGURATION:Z = false

.field private static final DEVICE_LOCKSCREEN_ACTION:Ljava/lang/String; = "android.intent.action.DEVICE_LOCKSCREEN_ACTION"

.field private static final EMERGENCY_CALL_TIMEOUT:I = 0x2710

.field private static final KEYGUARD_DISPLAY_TIMEOUT_DELAY_DEFAULT:I = 0x7530

.field private static final KEYGUARD_LOCK_AFTER_DELAY_DEFAULT:I = 0x493e0

.field private static final TAG:Ljava/lang/String; = "LockPatternKeyguardView"

.field private static mKeyguardShow:Z

.field private static recoveryDisabled:Z

.field private static recoveryScreen:Z


# instance fields
.field private final FIX_GOOGLE_ISSUE:Z

.field private GLASSLOCK_MODE:Z

.field private bootComplete:Z

.field filter:Landroid/content/IntentFilter;

.field private isFirstTimeOff:Z

.field private isInactivityTimeoutExpired:Z

.field private lastAttemptDialog:Landroid/app/AlertDialog;

.field private lockScreenShown:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mCurrentUnlockMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field private mEnableFallback:Z

.field private mForgotPattern:Z

.field private mInactivityTimeout:J

.field private mIsVerifyUnlockOnly:Z

.field mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreen:Landroid/view/View;

.field private mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mRequiresSim:Z

.field private mScreenOn:Z

.field private mTimer:Landroid/os/CountDownTimer;

.field private mUnlockScreen:Landroid/view/View;

.field private mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private final mWindowController:Lcom/android/internal/policy/impl/KeyguardWindowController;

.field private unLockscreen_should_shown:Z

.field private wipeDataDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 110
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardShow:Z

    .line 113
    sput-boolean v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->recoveryScreen:Z

    .line 231
    sput-boolean v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->recoveryDisabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;)V
    .registers 11
    .parameter "context"
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"
    .parameter "controller"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 255
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;-><init>(Landroid/content/Context;)V

    .line 108
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    .line 109
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    .line 117
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isFirstTimeOff:Z

    .line 119
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->unLockscreen_should_shown:Z

    .line 120
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->lockScreenShown:Z

    .line 121
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTimer:Landroid/os/CountDownTimer;

    .line 122
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->bootComplete:Z

    .line 203
    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    .line 217
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    .line 225
    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Unknown:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mCurrentUnlockMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 639
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->FIX_GOOGLE_ISSUE:Z

    .line 763
    new-instance v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$2;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 1362
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->GLASSLOCK_MODE:Z

    .line 257
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    .line 258
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    .line 260
    const-string v2, "keyguard.no_require_sim"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRequiresSim:Z

    .line 263
    iput-object p2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 264
    iput-object p3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 265
    iput-object p4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowController:Lcom/android/internal/policy/impl/KeyguardWindowController;

    .line 268
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isInactivityTimeoutExpired:Z

    .line 271
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getInitialMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    .line 274
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBootCompleted()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->bootComplete:Z

    .line 278
    new-instance v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$1;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 484
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->setFocusableInTouchMode(Z)V

    .line 485
    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->setDescendantFocusability(I)V

    .line 489
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createLockScreen()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    .line 490
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->addView(Landroid/view/View;)V

    .line 491
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v0

    .line 495
    .local v0, unlockMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createUnlockScreenFor(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    .line 496
    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 498
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->maybeEnableFallback(Landroid/content/Context;)V

    .line 500
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->addView(Landroid/view/View;)V

    .line 504
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wipe_data_dialog"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_d6

    move v1, v4

    .line 505
    .local v1, wipeData:Z
    :goto_94
    const-string v2, "LockPatternKeyguardView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIALOG GET wipeData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    if-eqz v1, :cond_b1

    .line 507
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showWipeDialog(I)V

    .line 511
    :cond_b1
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V

    .line 515
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->filter:Landroid/content/IntentFilter;

    .line 516
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->filter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DEVICE_LOCKSCREEN_ACTION"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 517
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 518
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mAlarmManager:Landroid/app/AlarmManager;

    .line 521
    return-void

    .end local v1           #wipeData:Z
    :cond_d6
    move v1, v5

    .line 504
    goto :goto_94
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->recreateScreens()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showWipeDialog(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showAlmostAtAccountLoginDialog()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showLastAttemptDialog(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showRecovery()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showTimeoutDialog()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->unLockscreen_should_shown:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->lastAttemptDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->wipeDataDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stuckOnLockScreenBecauseSimMissing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 89
    sput-boolean p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardShow:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isInactivityTimeoutExpired:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isInactivityTimeoutExpired:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isFirstTimeOff:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->lockScreenShown:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    return p1
.end method

.method private getInitialMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
    .registers 5

    .prologue
    .line 1096
    const-string v1, "ram"

    const-string v2, "encryption.bootmode"

    const-string v3, "normal"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1097
    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    .line 1108
    :goto_12
    return-object v1

    .line 1099
    :cond_13
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 1101
    .local v0, simState:Lcom/android/internal/telephony/IccCard$State;
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stuckOnLockScreenBecauseSimMissing()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1102
    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    goto :goto_12

    .line 1103
    :cond_22
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1105
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_35

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isInactivityTimeoutExpired:Z

    if-nez v1, :cond_35

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    goto :goto_12

    .line 1106
    :cond_35
    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    goto :goto_12

    .line 1108
    :cond_38
    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    goto :goto_12
.end method

.method private getTimeOutValue()J
    .registers 14

    .prologue
    const/4 v12, 0x3

    .line 644
    iget-object v9, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "screen_off_timeout"

    const/16 v11, 0x7530

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    int-to-long v2, v9

    .line 648
    .local v2, displayTimeout:J
    iget-object v9, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v7

    .line 651
    .local v7, policyTimeout:J
    iget-object v9, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_screen_lock_after_timeout"

    const v11, 0x493e0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    int-to-long v4, v9

    .line 654
    .local v4, lockAfterTimeout:J
    const-wide/16 v0, 0x0

    .line 656
    .local v0, _value:J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_5f

    .line 657
    sub-long v9, v7, v2

    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 665
    :goto_39
    new-instance v6, Landroid/content/ComponentName;

    const-string v9, "com.android.email"

    const-string v10, "com.android.email.SecurityPolicy$PolicyAdmin"

    invoke-direct {v6, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    .local v6, mDeviceAdminComponentName:Landroid/content/ComponentName;
    iget-object v9, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v9

    if-nez v9, :cond_5e

    .line 668
    iget-object v9, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "sc_to_rsn"

    invoke-static {v9, v10, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eq v9, v12, :cond_5e

    .line 669
    const-wide/16 v0, 0x0

    .line 675
    :cond_5e
    return-wide v0

    .line 659
    .end local v6           #mDeviceAdminComponentName:Landroid/content/ComponentName;
    :cond_5f
    move-wide v0, v4

    goto :goto_39
.end method

.method private getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    .registers 7

    .prologue
    .line 1142
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    .line 1145
    .local v2, simState:Lcom/android/internal/telephony/IccCard$State;
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v3, :cond_d

    .line 1146
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 1175
    .local v0, currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :goto_c
    return-object v0

    .line 1147
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_d
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v3, :cond_14

    .line 1148
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_c

    .line 1149
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_14
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isRecoverLockEnabled()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1150
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Recover:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_c

    .line 1151
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_1f
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isPcwLockEnabled()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1152
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pcw:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_c

    .line 1154
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_2a
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    .line 1155
    .local v1, mode:I
    sparse-switch v1, :sswitch_data_6c

    .line 1172
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown unlock mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1159
    :sswitch_4c
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 1160
    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_c

    .line 1164
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :sswitch_4f
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z

    if-nez v3, :cond_5b

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 1165
    :cond_5b
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Account:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_c

    .line 1166
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_5e
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isPhoneLock()Z

    move-result v3

    if-eqz v3, :cond_69

    .line 1167
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->PhonelockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_c

    .line 1169
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_69
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 1170
    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_c

    .line 1155
    :sswitch_data_6c
    .sparse-switch
        0x0 -> :sswitch_4f
        0x10000 -> :sswitch_4f
        0x20000 -> :sswitch_4c
        0x40000 -> :sswitch_4c
        0x50000 -> :sswitch_4c
    .end sparse-switch
.end method

.method private isFacelock()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1366
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_face_recognition"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1367
    .local v0, faceRecognitionValue:I
    const-string v1, "LockPatternKeyguardView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Face RecongnitionValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    if-eqz v0, :cond_29

    .line 1369
    const/4 v1, 0x1

    .line 1370
    :goto_28
    return v1

    :cond_29
    move v1, v4

    goto :goto_28
.end method

.method private isSecure()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 903
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v1

    .line 904
    .local v1, unlockMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    const/4 v0, 0x0

    .line 905
    .local v0, secure:Z
    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->$SwitchMap$com$android$internal$policy$impl$LockPatternKeyguardView$UnlockMode:[I

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_64

    .line 929
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown unlock mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 907
    :pswitch_2b
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v0

    .line 931
    :goto_31
    return v0

    .line 911
    :pswitch_32
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isPhoneLock()Z

    move-result v0

    .line 912
    goto :goto_31

    .line 914
    :pswitch_39
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v3, :cond_45

    move v0, v5

    .line 915
    :goto_44
    goto :goto_31

    :cond_45
    move v0, v4

    .line 914
    goto :goto_44

    .line 917
    :pswitch_47
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v3, :cond_53

    move v0, v5

    .line 918
    :goto_52
    goto :goto_31

    :cond_53
    move v0, v4

    .line 917
    goto :goto_52

    .line 920
    :pswitch_55
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isPcwLockEnabled()Z

    move-result v0

    .line 923
    :pswitch_5b
    const/4 v0, 0x1

    .line 924
    goto :goto_31

    .line 926
    :pswitch_5d
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v0

    .line 927
    goto :goto_31

    .line 905
    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_32
        :pswitch_39
        :pswitch_47
        :pswitch_55
        :pswitch_5b
        :pswitch_5b
        :pswitch_5d
    .end packed-switch
.end method

.method private maybeEnableFallback(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 577
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/accounts/AccountManager;Lcom/android/internal/policy/impl/LockPatternKeyguardView$1;)V

    .line 578
    .local v0, accountAnalyzer:Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->start()V

    .line 579
    return-void
.end method

.method private recreateLockScreen()V
    .registers 3

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    .line 779
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 781
    :cond_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    .line 782
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    .line 784
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createLockScreen()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    .line 785
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 786
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->addView(Landroid/view/View;)V

    .line 787
    return-void
.end method

.method private recreateScreens()V
    .registers 2

    .prologue
    .line 804
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->recreateLockScreen()V

    .line 805
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->recreateUnlockScreen()V

    .line 806
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V

    .line 807
    return-void
.end method

.method private recreateUnlockScreen()V
    .registers 4

    .prologue
    .line 790
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_f

    .line 791
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 793
    :cond_f
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    .line 794
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    .line 796
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v0

    .line 797
    .local v0, unlockMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createUnlockScreenFor(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    .line 798
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 799
    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 800
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->addView(Landroid/view/View;)V

    .line 801
    return-void
.end method

.method private showAlmostAtAccountLoginDialog()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x4

    .line 1281
    const/16 v2, 0x1e

    .line 1282
    .local v2, timeoutInSeconds:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v4, 0x104033a

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0xf

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1288
    .local v1, message:Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, v9}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1293
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1294
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10d0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_61

    .line 1296
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v8, v8}, Landroid/view/Window;->setFlags(II)V

    .line 1300
    :cond_61
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1301
    return-void
.end method

.method private showLastAttemptDialog(Z)V
    .registers 6
    .parameter "recovery"

    .prologue
    const/4 v3, 0x4

    .line 1178
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1180
    .local v0, lastAttempt:Landroid/app/AlertDialog$Builder;
    if-eqz p1, :cond_4e

    .line 1181
    const v1, 0x10404bc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1185
    :goto_10
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1186
    const v1, 0x10404b8

    new-instance v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1192
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->lastAttemptDialog:Landroid/app/AlertDialog;

    .line 1193
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->lastAttemptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1194
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10d0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_48

    .line 1195
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->lastAttemptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 1199
    :cond_48
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->lastAttemptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1200
    return-void

    .line 1183
    :cond_4e
    const v1, 0x10404bd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_10
.end method

.method private showRecovery()V
    .registers 6

    .prologue
    const-string v4, "LockPatternKeyguardView"

    .line 812
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_Recovery_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 813
    .local v0, bRecovery:Z
    if-eqz v0, :cond_5c

    .line 814
    const-string v1, "LockPatternKeyguardView"

    const-string v1, "Success to set LOCK_RECOVERY_ENABLED"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :goto_18
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_27

    .line 819
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 821
    :cond_27
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    .line 822
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    .line 824
    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Recover:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createUnlockScreenFor(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    .line 825
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 826
    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Recover:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 827
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->addView(Landroid/view/View;)V

    .line 829
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v1, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreen;->onResume()V

    .line 830
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->requestLayout()V

    .line 832
    const-string v1, "LockPatternKeyguardView"

    const-string v1, "showRecovery"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    return-void

    .line 816
    :cond_5c
    const-string v1, "LockPatternKeyguardView"

    const-string v1, "Failed to set LOCK_RECOVERY_ENABLED"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method private showTimeoutDialog()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x4

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1249
    const/16 v2, 0x1e

    .line 1250
    .local v2, timeoutInSeconds:I
    const/4 v1, 0x0

    .line 1252
    .local v1, message:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq v3, v4, :cond_14

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne v3, v4, :cond_6e

    .line 1254
    :cond_14
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v4, 0x10404ab

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1265
    :goto_31
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, v10}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1270
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1271
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10d0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_6a

    .line 1273
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v9, v9}, Landroid/view/Window;->setFlags(II)V

    .line 1277
    :cond_6a
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1278
    return-void

    .line 1259
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_6e
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const v4, 0x1040339

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_31
.end method

.method private showWipeDialog(I)V
    .registers 6
    .parameter "call"

    .prologue
    const/4 v3, 0x4

    .line 1203
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1204
    .local v0, wipeData:Landroid/app/AlertDialog$Builder;
    const v1, 0x10404b7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1205
    const/4 v1, 0x1

    if-ne v1, p1, :cond_55

    .line 1206
    const v1, 0x10404b9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1209
    :cond_17
    :goto_17
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1210
    const v1, 0x10404b8

    new-instance v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1236
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->wipeDataDialog:Landroid/app/AlertDialog;

    .line 1237
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->wipeDataDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 1238
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10d0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 1240
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->wipeDataDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 1244
    :cond_4f
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->wipeDataDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1245
    return-void

    .line 1207
    :cond_55
    if-nez p1, :cond_17

    .line 1208
    const v1, 0x10404bb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_17
.end method

.method private startTimer()V
    .registers 8

    .prologue
    const-string v5, "LockPatternKeyguardView"

    .line 745
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getTimeOutValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mInactivityTimeout:J

    .line 748
    const-string v1, "LockPatternKeyguardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MaxInactivityTime]startTimer: mInactivityTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mInactivityTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-wide v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mInactivityTimeout:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_68

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->lockScreenShown:Z

    if-nez v1, :cond_68

    .line 751
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isInactivityTimeoutExpired:Z

    .line 752
    const-string v1, "LockPatternKeyguardView"

    const-string v1, "[MaxInactivityTime]startTimer: isInactivityTimeoutExpired is set to true"

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->recreateLockScreen()V

    .line 754
    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V

    .line 755
    const-string v1, "LockPatternKeyguardView"

    const-string v1, "[MaxInactivityTime]startTimer: updateScreen(Lock) is called"

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DEVICE_LOCKSCREEN_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 758
    .local v0, intentDevicelock:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mPendingIntent:Landroid/app/PendingIntent;

    .line 759
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mInactivityTimeout:J

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 761
    .end local v0           #intentDevicelock:Landroid/content/Intent;
    :cond_68
    return-void
.end method

.method private stuckOnLockScreenBecauseSimMissing()Z
    .registers 3

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRequiresSim:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V
    .registers 8
    .parameter "mode"

    .prologue
    .line 939
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    .line 943
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne p1, v3, :cond_11

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mCurrentUnlockMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v4

    if-eq v3, v4, :cond_11

    .line 944
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->recreateUnlockScreen()V

    .line 947
    :cond_11
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne p1, v3, :cond_7d

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    move-object v1, v3

    .line 948
    .local v1, goneScreen:Landroid/view/View;
    :goto_18
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne p1, v3, :cond_81

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    move-object v2, v3

    .line 952
    .local v2, visibleScreen:Landroid/view/View;
    :goto_1f
    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mWindowController:Lcom/android/internal/policy/impl/KeyguardWindowController;

    move-object v0, v2

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    move-object v3, v0

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreen;->needsInput()Z

    move-result v3

    invoke-interface {v4, v3}, Lcom/android/internal/policy/impl/KeyguardWindowController;->setNeedsInput(Z)V

    .line 959
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    if-eqz v3, :cond_4a

    .line 960
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3d

    .line 961
    move-object v0, v1

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    move-object v3, v0

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 963
    :cond_3d
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_4a

    .line 964
    move-object v0, v2

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    move-object v3, v0

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreen;->onResume()V

    .line 968
    :cond_4a
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 969
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 970
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->requestLayout()V

    .line 972
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v3

    if-nez v3, :cond_85

    .line 973
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keyguard screen must be able to take focus when shown "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 947
    .end local v1           #goneScreen:Landroid/view/View;
    .end local v2           #visibleScreen:Landroid/view/View;
    :cond_7d
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    move-object v1, v3

    goto :goto_18

    .line 948
    .restart local v1       #goneScreen:Landroid/view/View;
    :cond_81
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    move-object v2, v3

    goto :goto_1f

    .line 976
    .restart local v2       #visibleScreen:Landroid/view/View;
    :cond_85
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 880
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 881
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 882
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    .line 883
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    .line 884
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 885
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreen;->cleanUp()V

    .line 886
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeView(Landroid/view/View;)V

    .line 890
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_36

    .line 891
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 892
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 895
    :cond_36
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->filter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_3c

    .line 896
    iput-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->filter:Landroid/content/IntentFilter;

    .line 900
    :cond_3c
    return-void
.end method

.method createLockScreen()Landroid/view/View;
    .registers 7

    .prologue
    .line 979
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isFacelock()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 980
    new-instance v0, Lcom/android/internal/policy/impl/FaceLockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/FaceLockScreen;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 993
    :goto_13
    return-object v0

    .line 985
    :cond_14
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->GLASSLOCK_MODE:Z

    if-eqz v0, :cond_28

    .line 986
    new-instance v0, Lcom/android/internal/policy/impl/GlassLockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/GlassLockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    goto :goto_13

    .line 993
    :cond_28
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/LockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    goto :goto_13
.end method

.method createUnlockScreenFor(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;
    .registers 10
    .parameter "unlockMode"

    .prologue
    .line 1003
    const/4 v1, 0x0

    .line 1004
    .local v1, unlockView:Landroid/view/View;
    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v2, :cond_23

    .line 1005
    new-instance v0, Lcom/android/internal/policy/impl/PatternUnlockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/PatternUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;I)V

    .line 1014
    .local v0, view:Lcom/android/internal/policy/impl/PatternUnlockScreen;
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setEnableFallback(Z)V

    .line 1015
    move-object v1, v0

    .line 1085
    .end local v0           #view:Lcom/android/internal/policy/impl/PatternUnlockScreen;
    .restart local v1       #unlockView:Landroid/view/View;
    :goto_20
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mCurrentUnlockMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 1086
    return-object v1

    .line 1016
    :cond_23
    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->PhonelockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v2, :cond_35

    .line 1017
    new-instance v1, Lcom/android/internal/policy/impl/PhoneLockScreen;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/policy/impl/PhoneLockScreen;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .restart local v1       #unlockView:Landroid/view/View;
    goto :goto_20

    .line 1022
    :cond_35
    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v2, :cond_49

    .line 1023
    new-instance v1, Lcom/android/internal/policy/impl/SimUnlockScreen;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/policy/impl/SimUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    .restart local v1       #unlockView:Landroid/view/View;
    goto :goto_20

    .line 1031
    :cond_49
    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v2, :cond_5b

    .line 1032
    new-instance v1, Lcom/android/internal/policy/impl/PukUnlockScreen;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/policy/impl/PukUnlockScreen;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    .restart local v1       #unlockView:Landroid/view/View;
    goto :goto_20

    .line 1039
    :cond_5b
    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Account:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v2, :cond_7f

    .line 1041
    :try_start_5f
    new-instance v1, Lcom/android/internal/policy/impl/AccountUnlockScreen;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/policy/impl/AccountUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    :try_end_6e
    .catch Ljava/lang/IllegalStateException; {:try_start_5f .. :try_end_6e} :catch_6f

    .restart local v1       #unlockView:Landroid/view/View;
    goto :goto_20

    .line 1047
    .end local v1           #unlockView:Landroid/view/View;
    :catch_6f
    move-exception v2

    move-object v7, v2

    .line 1048
    .local v7, e:Ljava/lang/IllegalStateException;
    const-string v2, "LockPatternKeyguardView"

    const-string v3, "Couldn\'t instantiate AccountUnlockScreen (IAccountsService isn\'t available)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->createUnlockScreenFor(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;

    move-result-object v1

    .line 1061
    .restart local v1       #unlockView:Landroid/view/View;
    goto :goto_20

    .line 1062
    .end local v7           #e:Ljava/lang/IllegalStateException;
    :cond_7f
    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v2, :cond_93

    .line 1063
    new-instance v1, Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .restart local v1       #unlockView:Landroid/view/View;
    goto :goto_20

    .line 1069
    :cond_93
    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pcw:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v2, :cond_a6

    .line 1070
    new-instance v1, Lcom/android/internal/policy/impl/PcwUnlockScreen;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/policy/impl/PcwUnlockScreen;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .restart local v1       #unlockView:Landroid/view/View;
    goto/16 :goto_20

    .line 1075
    :cond_a6
    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Recover:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne p1, v2, :cond_bb

    .line 1076
    new-instance v1, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;

    .end local v1           #unlockView:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .restart local v1       #unlockView:Landroid/view/View;
    goto/16 :goto_20

    .line 1083
    :cond_bb
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown unlock mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter "canvas"

    .prologue
    .line 590
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 591
    return-void
.end method

.method public onScreenTurnedOff()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const-string v3, "LockPatternKeyguardView"

    .line 602
    const-string v1, "LockPatternKeyguardView"

    const-string v1, "onScreenTurnedOff()"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const-string v1, "LockPatternKeyguardView"

    const-string v1, "[MaxInactivityTime]onScreenTurnedOff: Entry"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_21

    .line 607
    const-string v1, "LockPatternKeyguardView"

    const-string v1, "[MaxInactivityTime]onScreenTurnedOff: cancelled timer"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 610
    :cond_21
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->bootComplete:Z

    if-eqz v1, :cond_55

    .line 611
    const-string v1, "LockPatternKeyguardView"

    const-string v1, "[MaxInactivityTime]onScreenTurnedOff: bootComplete is true"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->startTimer()V

    .line 618
    :goto_2f
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    .line 619
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z

    .line 620
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne v1, v2, :cond_5d

    .line 621
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    instance-of v1, v1, Lcom/android/internal/policy/impl/GlassLockScreen;

    if-eqz v1, :cond_4d

    .line 622
    const-string v1, "LockPatternKeyguardView"

    const-string v1, "mLockScreen instanceof GlassLockScreen"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v0, Lcom/android/internal/policy/impl/GlassLockScreen;

    .line 624
    .local v0, glassLock:Lcom/android/internal/policy/impl/GlassLockScreen;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreen;->setScreenOff()V

    .line 626
    .end local v0           #glassLock:Lcom/android/internal/policy/impl/GlassLockScreen;
    :cond_4d
    iget-object p0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    .end local p0
    check-cast p0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {p0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    .line 630
    :goto_54
    return-void

    .line 614
    .restart local p0
    :cond_55
    const-string v1, "LockPatternKeyguardView"

    const-string v1, "[MaxInactivityTime]onScreenTurnedOff: bootComplete is false"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 628
    :cond_5d
    iget-object p0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    .end local p0
    check-cast p0, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {p0}, Lcom/android/internal/policy/impl/KeyguardScreen;->onPause()V

    goto :goto_54
.end method

.method public onScreenTurnedOn()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const-string v8, "LockPatternKeyguardView"

    .line 683
    const-string v3, "LockPatternKeyguardView"

    const-string v3, "onScreenTurnedOn()"

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const-string v3, "LockPatternKeyguardView"

    const-string v3, "[MaxInactivityTime]onScreenTurnedOn: Entry"

    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_21

    .line 688
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 689
    :cond_21
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isFirstTimeOff:Z

    if-eqz v3, :cond_35

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->bootComplete:Z

    if-eqz v3, :cond_35

    .line 690
    const-string v3, "LockPatternKeyguardView"

    const-string v3, "[MaxInactivityTime]onScreenTurnedOn: startTimer is called"

    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->startTimer()V

    .line 692
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isFirstTimeOff:Z

    .line 696
    :cond_35
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mScreenOn:Z

    .line 699
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->unLockscreen_should_shown:Z

    if-eqz v3, :cond_a0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 700
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->recreateUnlockScreen()V

    .line 701
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V

    .line 715
    :cond_49
    :goto_49
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne v3, v4, :cond_bb

    .line 716
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    instance-of v3, v3, Lcom/android/internal/policy/impl/GlassLockScreen;

    if-eqz v3, :cond_63

    .line 717
    const-string v3, "LockPatternKeyguardView"

    const-string v3, "mLockScreen instanceof GlassLockScreen"

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v1, Lcom/android/internal/policy/impl/GlassLockScreen;

    .line 719
    .local v1, glassLock:Lcom/android/internal/policy/impl/GlassLockScreen;
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlassLockScreen;->setScreenOn()V

    .line 721
    .end local v1           #glassLock:Lcom/android/internal/policy/impl/GlassLockScreen;
    :cond_63
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockScreen:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreen;->onResume()V

    .line 726
    :goto_6a
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_on"

    invoke-static {v3, v4, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 727
    .local v0, drivingMode:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_unlock_screen_contents"

    invoke-static {v3, v4, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 730
    .local v2, unlockDrivingMode:I
    if-ne v0, v7, :cond_9d

    if-ne v2, v7, :cond_9d

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-eq v3, v7, :cond_9d

    .line 732
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isBootCompleted()Z

    move-result v3

    if-eqz v3, :cond_c3

    .line 733
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/UnlockTextToSpeech;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/UnlockTextToSpeech;

    .line 738
    :cond_9d
    :goto_9d
    sput-boolean v7, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardShow:Z

    .line 740
    return-void

    .line 706
    .end local v0           #drivingMode:I
    .end local v2           #unlockDrivingMode:I
    :cond_a0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getTimeOutValue()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mInactivityTimeout:J

    .line 708
    iget-wide v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mInactivityTimeout:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_49

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->bootComplete:Z

    if-eqz v3, :cond_49

    .line 709
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->recreateLockScreen()V

    .line 710
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V

    goto :goto_49

    .line 723
    :cond_bb
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;

    check-cast v3, Lcom/android/internal/policy/impl/KeyguardScreen;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreen;->onResume()V

    goto :goto_6a

    .line 735
    .restart local v0       #drivingMode:I
    .restart local v2       #unlockDrivingMode:I
    :cond_c3
    const-string v3, "LockPatternKeyguardView"

    const-string v3, "Phone is not boot completed. so can\'t start tts"

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9d
.end method

.method public reset()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 595
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    .line 596
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z

    .line 597
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getInitialMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V

    .line 598
    return-void
.end method

.method public verifyUnlock()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 862
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z

    move-result v0

    if-nez v0, :cond_f

    .line 864
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    .line 874
    :goto_e
    return-void

    .line 865
    :cond_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq v0, v1, :cond_30

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq v0, v1, :cond_30

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq v0, v1, :cond_30

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->PhonelockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-eq v0, v1, :cond_30

    .line 868
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    goto :goto_e

    .line 871
    :cond_30
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    .line 872
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V

    goto :goto_e
.end method

.method public wakeWhenReadyTq(I)V
    .registers 4
    .parameter "keyCode"

    .prologue
    .line 839
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1d

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne v0, v1, :cond_1d

    .line 841
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V

    .line 842
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    .line 858
    :goto_1c
    return-void

    .line 845
    :cond_1d
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    goto :goto_1c
.end method
