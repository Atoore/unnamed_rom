.class public Lcom/android/internal/policy/impl/PasswordUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "PasswordUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PasswordUnlockScreen$EncryptServiceListener;,
        Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;
    }
.end annotation


# static fields
.field private static final ERROR_MESSAGE_TIMEOUT:J = 0x7d0L

.field private static final MAINLAYOUT_INDEX:I = 0x0

.field private static final MINIMUM_PASSWORD_LENGTH_BEFORE_REPORT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PasswordUnlockScreen"

.field private static final TIMEOUT_AFTER_VALID_PWD:I = 0x124f80

.field private static mIsInDeadlineCountDown:Z


# instance fields
.field private mBatchData:Z

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mContext:Landroid/content/Context;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCreationHardKeyboardHidden:I

.field private mCreationOrientation:I

.field private mCryptImage:Landroid/widget/ImageView;

.field private mCryptImageSwapper:Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;

.field private mCurrDevice:Ljava/lang/String;

.field private mCurrDeviceCnt:I

.field private mDoCryptVolume:Z

.field private mEmergencyCallButton:Landroid/widget/Button;

.field final mEncryptHandler:Landroid/os/Handler;

.field private mEncryptListener:Lcom/android/internal/policy/impl/PasswordUnlockScreen$EncryptServiceListener;

.field mEncryptService:Landroid/os/storage/IEncryptService;

.field private mFillView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mIsRecoveryMode:Z

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mPasswordLockscreenWallpaper:Landroid/widget/RelativeLayout;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressBarLayout:Landroid/widget/RelativeLayout;

.field private mProgressBarText:Landroid/widget/TextView;

.field private mRamBoot:Z

.field private mTitle:Landroid/widget/TextView;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field passwordChangeNeeded:Z

.field private r:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 111
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsInDeadlineCountDown:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .registers 14
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 86
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordLockscreenWallpaper:Landroid/widget/RelativeLayout;

    .line 95
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEncryptService:Landroid/os/storage/IEncryptService;

    .line 102
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->passwordChangeNeeded:Z

    .line 104
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mHandler:Landroid/os/Handler;

    .line 106
    new-instance v5, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->r:Ljava/lang/Runnable;

    .line 118
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mRamBoot:Z

    .line 125
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mDoCryptVolume:Z

    .line 126
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEncryptListener:Lcom/android/internal/policy/impl/PasswordUnlockScreen$EncryptServiceListener;

    .line 127
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCurrDevice:Ljava/lang/String;

    .line 128
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCurrDeviceCnt:I

    .line 129
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mBatchData:Z

    .line 313
    new-instance v5, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEncryptHandler:Landroid/os/Handler;

    .line 141
    iget v5, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationHardKeyboardHidden:I

    .line 142
    iget v5, p2, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationOrientation:I

    .line 143
    iput-object p4, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 144
    iput-object p5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 145
    iput-object p3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mConfiguration:Landroid/content/res/Configuration;

    .line 148
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 149
    .local v2, layoutInflater:Landroid/view/LayoutInflater;
    iget v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationOrientation:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_19e

    .line 150
    const v5, 0x1090037

    const/4 v6, 0x1

    invoke-virtual {v2, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 156
    :goto_5b
    const v5, 0x10201ef

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordLockscreenWallpaper:Landroid/widget/RelativeLayout;

    .line 157
    new-instance v5, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    invoke-direct {v5, p1}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    .line 159
    const-string v5, "ram"

    const-string v6, "encryption.bootmode"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mRamBoot:Z

    .line 160
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mRamBoot:Z

    if-eqz v5, :cond_1a7

    .line 161
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->setVisibility(I)V

    .line 162
    const v5, 0x106000c

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->setBackgroundResource(I)V

    .line 167
    :goto_8c
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordLockscreenWallpaper:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 169
    invoke-virtual {p3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v3

    .line 170
    .local v3, quality:I
    const/high16 v5, 0x4

    if-eq v5, v3, :cond_a0

    const/high16 v5, 0x5

    if-ne v5, v3, :cond_1af

    :cond_a0
    const/4 v5, 0x1

    move v1, v5

    .line 173
    .local v1, isAlpha:Z
    :goto_a2
    const v5, 0x1020161

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    .line 174
    const v5, 0x10201f1

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    .line 175
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->showCursorController(Z)V

    .line 176
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 177
    const v5, 0x10201da

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    .line 178
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 180
    const v5, 0x10201f0

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mTitle:Landroid/widget/TextView;

    .line 183
    const v5, 0x10201f5

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mProgressBar:Landroid/widget/ProgressBar;

    .line 184
    const v5, 0x10201f4

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mProgressBarText:Landroid/widget/TextView;

    .line 185
    const v5, 0x10201f3

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCryptImage:Landroid/widget/ImageView;

    .line 186
    const v5, 0x10201f2

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mProgressBarLayout:Landroid/widget/RelativeLayout;

    .line 187
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mProgressBarLayout:Landroid/widget/RelativeLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 188
    const v5, 0x10201f6

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mFillView:Landroid/view/View;

    .line 192
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->checkDevicePasswordExpired()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->passwordChangeNeeded:Z

    .line 195
    iput-object p1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mContext:Landroid/content/Context;

    .line 198
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 202
    new-instance v5, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-direct {v5, p1, v6, p0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 203
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    if-eqz v1, :cond_1b3

    const/4 v6, 0x0

    :goto_13c
    invoke-virtual {v5, v6}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 206
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iget v6, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationHardKeyboardHidden:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1b5

    const/4 v6, 0x4

    :goto_147
    invoke-virtual {v5, v6}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setVisibility(I)V

    .line 208
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 212
    if-eqz v1, :cond_1b7

    .line 213
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 218
    :goto_15a
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v6

    if-eqz v6, :cond_1c1

    const v6, 0x1070017

    :goto_167
    invoke-virtual {v5, v6}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setVibratePattern(I)V

    .line 222
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mRamBoot:Z

    if-eqz v5, :cond_19d

    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isLockPasswordEnabled()Z

    move-result v5

    if-nez v5, :cond_19d

    .line 223
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->setUIForBatchData()V

    .line 224
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->removePasswordUI()V

    .line 226
    :try_start_17a
    const-string v5, "onetimeboot"

    const-string v6, "process"

    invoke-static {v5, v6}, Landroid/deviceencryption/DeviceEncryptionManager;->setFileCryptProperty(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v5, "encrypt"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IEncryptService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IEncryptService;

    move-result-object v0

    .line 228
    .local v0, instencsve:Landroid/os/storage/IEncryptService;
    if-eqz v0, :cond_1c3

    .line 229
    invoke-interface {v0}, Landroid/os/storage/IEncryptService;->processBatchData()V

    .line 230
    new-instance v5, Lcom/android/internal/policy/impl/PasswordUnlockScreen$EncryptServiceListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$EncryptServiceListener;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEncryptListener:Lcom/android/internal/policy/impl/PasswordUnlockScreen$EncryptServiceListener;

    .line 231
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEncryptListener:Lcom/android/internal/policy/impl/PasswordUnlockScreen$EncryptServiceListener;

    invoke-interface {v0, v5}, Landroid/os/storage/IEncryptService;->registerListener(Landroid/os/storage/IEncryptServiceListener;)V
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_17a .. :try_end_19d} :catch_1cb

    .line 240
    .end local v0           #instencsve:Landroid/os/storage/IEncryptService;
    :cond_19d
    :goto_19d
    return-void

    .line 152
    .end local v1           #isAlpha:Z
    .end local v3           #quality:I
    .restart local p2
    :cond_19e
    const v5, 0x1090036

    const/4 v6, 0x1

    invoke-virtual {v2, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_5b

    .line 164
    .end local p2
    :cond_1a7
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->setVisibility(I)V

    goto/16 :goto_8c

    .line 170
    .restart local v3       #quality:I
    :cond_1af
    const/4 v5, 0x0

    move v1, v5

    goto/16 :goto_a2

    .line 203
    .restart local v1       #isAlpha:Z
    :cond_1b3
    const/4 v6, 0x1

    goto :goto_13c

    .line 206
    :cond_1b5
    const/4 v6, 0x0

    goto :goto_147

    .line 215
    :cond_1b7
    iget-object v5, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto :goto_15a

    .line 218
    :cond_1c1
    const/4 v6, 0x0

    goto :goto_167

    .line 234
    .restart local v0       #instencsve:Landroid/os/storage/IEncryptService;
    :cond_1c3
    :try_start_1c3
    const-string v5, "PasswordUnlockScreen"

    const-string v6, "IEncryptService instance is null!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ca
    .catch Ljava/lang/Exception; {:try_start_1c3 .. :try_end_1ca} :catch_1cb

    goto :goto_19d

    .line 235
    .end local v0           #instencsve:Landroid/os/storage/IEncryptService;
    :catch_1cb
    move-exception v5

    move-object v4, v5

    .line 236
    .local v4, rex:Ljava/lang/Exception;
    const-string v5, "PasswordUnlockScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IEncryptService exception  is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19d
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCurrDevice:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCurrDevice:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCurrDeviceCnt:I

    return v0
.end method

.method static synthetic access$1108(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCurrDeviceCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCurrDeviceCnt:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mProgressBarText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/widget/PasswordEntryKeyboardView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    return-object v0
.end method

.method static synthetic access$1702(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    sput-boolean p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsInDeadlineCountDown:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCryptImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mBatchData:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mBatchData:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->removePasswordUI()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCryptImageSwapper:Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;)Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCryptImageSwapper:Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mProgressBarLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mFillView:Landroid/view/View;

    return-object v0
.end method

.method private handleAttemptLockout(J)V
    .registers 11
    .parameter "elapsedRealtimeDeadline"

    .prologue
    const/4 v1, 0x0

    .line 622
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 623
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setEnabled(Z)V

    .line 626
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 627
    .local v6, elapsedRealtime:J
    new-instance v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$3;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;JJ)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 647
    return-void
.end method

.method private removePasswordUI()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 244
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 246
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->setFocusableInTouchMode(Z)V

    .line 247
    return-void
.end method

.method private setUIForBatchData()V
    .registers 8

    .prologue
    const v4, 0x10404cf

    const v3, 0x10404c9

    const/4 v2, 0x0

    const-string v6, "dbdata"

    const-string v5, "COMPLETE"

    .line 251
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setEnabled(Z)V

    .line 252
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 255
    const-string v1, "policy"

    invoke-static {v1}, Landroid/deviceencryption/DeviceEncryptionManager;->getFileCryptProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, policy:Ljava/lang/String;
    const-string v1, "PasswordUnlockScreen"

    const-string v2, "DEVENC remove callback "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->r:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 262
    if-eqz v0, :cond_33

    const-string v1, "internal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_3c

    .line 263
    :cond_33
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mTitle:Landroid/widget/TextView;

    const v2, 0x10404ca

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 278
    :goto_3b
    return-void

    .line 264
    :cond_3c
    const-string v1, "COMPLETE"

    const-string v1, "data"

    invoke-static {v1}, Landroid/deviceencryption/DeviceEncryptionManager;->getFileCryptProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 266
    const/4 v1, 0x1

    const-string v2, "dbdata"

    invoke-static {v6}, Landroid/deviceencryption/DeviceEncryptionManager;->isTargetToEncrypt(Ljava/lang/String;)Z

    move-result v2

    if-ne v1, v2, :cond_6d

    .line 267
    const-string v1, "COMPLETE"

    const-string v1, "dbdata"

    invoke-static {v6}, Landroid/deviceencryption/DeviceEncryptionManager;->getFileCryptProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 268
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3b

    .line 270
    :cond_67
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3b

    .line 273
    :cond_6d
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3b

    .line 277
    :cond_73
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3b
.end method

.method private verifyPasswordAndUnlock()V
    .registers 22

    .prologue
    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 472
    .local v5, entry:Ljava/lang/String;
    const-string v17, "true"

    const-string v18, "ro.wtldatapassword"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mDoCryptVolume:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2c

    .line 473
    const-string v17, "PETER"

    const-string v18, "verifyPasswordAndUnlock called again after crypt"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :goto_2b
    return-void

    .line 477
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v8

    .line 480
    .local v8, isConfirmed:Z
    const/4 v6, 0x0

    .line 483
    .local v6, failedAttempts:I
    if-eqz v8, :cond_264

    .line 485
    sget-object v17, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string v18, "true"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1c0

    .line 486
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mRamBoot:Z

    move/from16 v17, v0

    if-eqz v17, :cond_aa

    .line 487
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mDoCryptVolume:Z

    .line 488
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->setUIForBatchData()V

    .line 529
    :cond_59
    :goto_59
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mDoCryptVolume:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9e

    .line 534
    :try_start_61
    const-string v17, "onetimeboot"

    const-string v18, "process"

    invoke-static/range {v17 .. v18}, Landroid/deviceencryption/DeviceEncryptionManager;->setFileCryptProperty(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const-string v17, "encrypt"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/os/storage/IEncryptService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IEncryptService;

    move-result-object v7

    .line 536
    .local v7, instencsve:Landroid/os/storage/IEncryptService;
    if-eqz v7, :cond_1b7

    .line 537
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mRamBoot:Z

    move/from16 v17, v0

    if-eqz v17, :cond_18c

    .line 538
    invoke-interface {v7}, Landroid/os/storage/IEncryptService;->processBatchData()V

    .line 539
    new-instance v17, Lcom/android/internal/policy/impl/PasswordUnlockScreen$EncryptServiceListener;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$EncryptServiceListener;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEncryptListener:Lcom/android/internal/policy/impl/PasswordUnlockScreen$EncryptServiceListener;

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEncryptListener:Lcom/android/internal/policy/impl/PasswordUnlockScreen$EncryptServiceListener;

    move-object/from16 v17, v0

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/os/storage/IEncryptService;->registerListener(Landroid/os/storage/IEncryptServiceListener;)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_9e} :catch_196

    .line 617
    .end local v7           #instencsve:Landroid/os/storage/IEncryptService;
    :cond_9e
    :goto_9e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2b

    .line 492
    :cond_aa
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->passwordChangeNeeded:Z

    move/from16 v17, v0

    if-eqz v17, :cond_139

    .line 493
    const-string v17, "PasswordUnlockScreen"

    const-string v18, "password change needed"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v10

    .line 495
    .local v10, mDPM:Landroid/app/admin/DevicePolicyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v15

    .line 496
    .local v15, quality:I
    const/16 v17, 0x0

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v13

    .line 497
    .local v13, minLength:I
    invoke-virtual {v10, v15}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v12

    .line 499
    .local v12, maxLength:I
    new-instance v9, Landroid/content/Intent;

    const-string v17, "android.app.action.CHANGE_DEVICE_PASSWORD"

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 501
    .local v9, it:Landroid/content/Intent;
    const-string v17, "lockscreen.password_type"

    move-object v0, v9

    move-object/from16 v1, v17

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 502
    const-string v17, "lockscreen.password_min"

    move-object v0, v9

    move-object/from16 v1, v17

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 503
    const-string v17, "lockscreen.password_max"

    move-object v0, v9

    move-object/from16 v1, v17

    move v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 505
    const-string v17, "lockscreen.password_old"

    move-object v0, v9

    move-object/from16 v1, v17

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    const-string v17, "confirm_credentials"

    const/16 v18, 0x0

    move-object v0, v9

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 507
    const/high16 v17, 0x1000

    move-object v0, v9

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 508
    const/high16 v17, 0x40

    move-object v0, v9

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 509
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 513
    .end local v9           #it:Landroid/content/Intent;
    .end local v10           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v12           #maxLength:I
    .end local v13           #minLength:I
    .end local v15           #quality:I
    :cond_139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    .line 518
    const-string v14, ""

    .line 520
    .local v14, onetimeboot:Ljava/lang/String;
    const-string v17, "onetimeboot"

    invoke-static/range {v17 .. v17}, Landroid/deviceencryption/DeviceEncryptionManager;->getFileCryptProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 521
    const-string v17, "PETER"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onetimeboot :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const-string v17, "init"

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_59

    .line 524
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mDoCryptVolume:Z

    .line 525
    const-string v17, "PETER"

    const-string v18, "init > process"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_59

    .line 542
    .end local v14           #onetimeboot:Ljava/lang/String;
    .restart local v7       #instencsve:Landroid/os/storage/IEncryptService;
    :cond_18c
    :try_start_18c
    const-string v17, "internal"

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/os/storage/IEncryptService;->mountVolume(Ljava/lang/String;)I
    :try_end_194
    .catch Ljava/lang/Exception; {:try_start_18c .. :try_end_194} :catch_196

    goto/16 :goto_9e

    .line 547
    .end local v7           #instencsve:Landroid/os/storage/IEncryptService;
    :catch_196
    move-exception v17

    move-object/from16 v16, v17

    .line 548
    .local v16, rex:Ljava/lang/Exception;
    const-string v17, "PasswordUnlockScreen"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "IEncryptService exception  is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9e

    .line 546
    .end local v16           #rex:Ljava/lang/Exception;
    .restart local v7       #instencsve:Landroid/os/storage/IEncryptService;
    :cond_1b7
    :try_start_1b7
    const-string v17, "PasswordUnlockScreen"

    const-string v18, "IEncryptService instance is null!!"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1be
    .catch Ljava/lang/Exception; {:try_start_1b7 .. :try_end_1be} :catch_196

    goto/16 :goto_9e

    .line 554
    .end local v7           #instencsve:Landroid/os/storage/IEncryptService;
    :cond_1c0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->passwordChangeNeeded:Z

    move/from16 v17, v0

    if-eqz v17, :cond_24e

    .line 555
    const-string v17, "PasswordUnlockScreen"

    const-string v18, "password change needed"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v10

    .line 558
    .restart local v10       #mDPM:Landroid/app/admin/DevicePolicyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v15

    .line 559
    .restart local v15       #quality:I
    const/16 v17, 0x0

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v13

    .line 560
    .restart local v13       #minLength:I
    invoke-virtual {v10, v15}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v12

    .line 562
    .restart local v12       #maxLength:I
    new-instance v9, Landroid/content/Intent;

    const-string v17, "android.app.action.CHANGE_DEVICE_PASSWORD"

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 564
    .restart local v9       #it:Landroid/content/Intent;
    const-string v17, "lockscreen.password_type"

    move-object v0, v9

    move-object/from16 v1, v17

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 565
    const-string v17, "lockscreen.password_min"

    move-object v0, v9

    move-object/from16 v1, v17

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 566
    const-string v17, "lockscreen.password_max"

    move-object v0, v9

    move-object/from16 v1, v17

    move v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 567
    const-string v17, "confirm_credentials"

    const/16 v18, 0x0

    move-object v0, v9

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 568
    const/high16 v17, 0x1000

    move-object v0, v9

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 569
    const/high16 v17, 0x40

    move-object v0, v9

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 570
    const/high16 v17, 0x80

    move-object v0, v9

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 571
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 575
    .end local v9           #it:Landroid/content/Intent;
    .end local v10           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v12           #maxLength:I
    .end local v13           #minLength:I
    .end local v15           #quality:I
    :cond_24e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    goto/16 :goto_9e

    .line 578
    :cond_264
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_9e

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportFailedUnlockAttempt()V

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v11

    .line 586
    .local v11, max:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v6

    .line 588
    if-lez v11, :cond_2a3

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts()I

    move-result v6

    .line 592
    :cond_2a3
    rem-int/lit8 v17, v6, 0x5

    if-nez v17, :cond_2ca

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->r:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 598
    const/16 v17, 0x1

    sput-boolean v17, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsInDeadlineCountDown:Z

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v3

    .line 600
    .local v3, deadline:J
    move-object/from16 v0, p0

    move-wide v1, v3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->handleAttemptLockout(J)V

    .line 612
    .end local v3           #deadline:J
    :cond_2ca
    if-nez v8, :cond_9e

    sget-boolean v17, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsInDeadlineCountDown:Z

    if-nez v17, :cond_9e

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mTitle:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const v18, 0x104032a

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(I)V

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->r:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x7d0

    invoke-virtual/range {v17 .. v20}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_9e
.end method


# virtual methods
.method public cleanUp()V
    .registers 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 458
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->cleanUp()V

    .line 459
    return-void
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 428
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 658
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 659
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 660
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationOrientation:I

    if-ne v1, v2, :cond_17

    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationHardKeyboardHidden:I

    if-eq v1, v2, :cond_1c

    .line 662
    :cond_17
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 664
    :cond_1c
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_9

    .line 463
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    .line 465
    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 466
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 669
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 670
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationOrientation:I

    if-ne v0, v1, :cond_f

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCreationHardKeyboardHidden:I

    if-eq v0, v1, :cond_14

    .line 672
    :cond_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 674
    :cond_14
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 683
    if-nez p2, :cond_11

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mIsRecoveryMode:Z

    if-nez v0, :cond_11

    .line 684
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_f

    .line 685
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->verifyPasswordAndUnlock()V

    .line 687
    :cond_f
    const/4 v0, 0x1

    .line 689
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 653
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyboardChange(Z)V
    .registers 4
    .parameter "isKeyboardOpen"

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    if-eqz p1, :cond_9

    const/4 v1, 0x4

    :goto_5
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setVisibility(I)V

    .line 679
    return-void

    .line 678
    :cond_9
    const/4 v1, 0x0

    goto :goto_5
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 434
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .registers 4
    .parameter "newState"

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 694
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .registers 4
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 698
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 702
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 438
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->onResume()V

    .line 440
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 442
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 445
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 446
    .local v0, deadline:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_27

    .line 447
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->handleAttemptLockout(J)V

    .line 451
    :cond_27
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mBatchData:Z

    if-eqz v2, :cond_33

    .line 452
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const v3, 0x124f80

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 453
    :cond_33
    return-void
.end method

.method public onRingerModeChanged(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 706
    return-void
.end method

.method public onTimeChanged()V
    .registers 1

    .prologue
    .line 710
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .parameter "hasWindowFocus"

    .prologue
    .line 715
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 716
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 717
    return-void
.end method
