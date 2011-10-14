.class public Lcom/android/internal/policy/impl/PukUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "PukUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$AirplaneModeChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PukUnlockScreen$2;,
        Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;,
        Lcom/android/internal/policy/impl/PukUnlockScreen$CheckSimPuk;,
        Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;
    }
.end annotation


# static fields
.field private static final DIGITS:[C = null

.field private static final DIGIT_PRESS_WAKE_MILLIS:I = 0x1388

.field static final EVENT_SET_COMPLETE:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "PukUnlockScreen"


# instance fields
.field private NewPin:Ljava/lang/String;

.field private mBackSpaceButton:Landroid/view/View;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private final mCreatedWithKeyboardOpen:Z

.field private mCreationOrientation:I

.field private mEmergencyCallButton:Landroid/widget/TextView;

.field private mEnteredDigits:I

.field private final mEnteredPin:[I

.field private mHeaderText:Landroid/widget/TextView;

.field private mKeyboardHidden:I

.field private mLockinfoText:Landroid/widget/TextView;

.field private mOkButton:Landroid/widget/TextView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPinText:Landroid/widget/TextView;

.field private mPuk:Ljava/lang/String;

.field mPukHandler:Landroid/os/Handler;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mStatus:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

.field mToast:Landroid/widget/Toast;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private num_of_retry:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 100
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/policy/impl/PukUnlockScreen;->DIGITS:[C

    return-void

    :array_a
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 9
    .parameter "context"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockPatternUtils"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 126
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 91
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_74

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredPin:[I

    .line 92
    iput v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    .line 94
    iput-object v3, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 109
    sget-object v0, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->REQUIRE_PUK:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    .line 116
    iput v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->num_of_retry:I

    .line 122
    iput-object v3, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPukHandler:Landroid/os/Handler;

    .line 127
    iput-object p2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 128
    iput-object p3, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 129
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyboardOpen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCreatedWithKeyboardOpen:Z

    .line 130
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPukHandler:Landroid/os/Handler;

    .line 131
    iput-object p1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mContext:Landroid/content/Context;

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCreationOrientation:I

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mKeyboardHidden:I

    .line 138
    iget v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mKeyboardHidden:I

    if-ne v0, v2, :cond_63

    .line 140
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090038

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 150
    :goto_56
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->getSimLockInfoResult()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->num_of_retry:I

    .line 152
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->initView()V

    .line 153
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->updateView()V

    .line 155
    return-void

    .line 142
    :cond_63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090039

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 143
    new-instance v0, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;

    invoke-direct {v0, p0, v3}, Lcom/android/internal/policy/impl/PukUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/PukUnlockScreen;Lcom/android/internal/policy/impl/PukUnlockScreen$1;)V

    goto :goto_56

    .line 91
    nop

    :array_74
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PukUnlockScreen;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->NewPin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/PukUnlockScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/PukUnlockScreen;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PukUnlockScreen;->reportDigit(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PukUnlockScreen;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PukUnlockScreen;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/PukUnlockScreen;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/PukUnlockScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->setLockInfoText()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/PukUnlockScreen;Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;)Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/PukUnlockScreen;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    return-object v0
.end method

.method private checkPUK()V
    .registers 3

    .prologue
    .line 399
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 401
    new-instance v0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPuk:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/PukUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/PukUnlockScreen;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->start()V

    .line 424
    return-void
.end method

.method private getSimLockInfoResult()I
    .registers 5

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 160
    .local v0, result:I
    :try_start_1
    const-string v1, "phoneext"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyExt;->getSimPukRetry()I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_28

    move-result v0

    .line 164
    :goto_f
    const-string v1, "PukUnlockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimLockInfoResult(): num_of_retry is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return v0

    .line 162
    :catch_28
    move-exception v1

    goto :goto_f
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .registers 5

    .prologue
    const/4 v3, 0x4

    .line 353
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_3c

    .line 354
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 355
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x1040338

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 358
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 359
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 361
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 365
    :cond_3c
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private reportDigit(I)V
    .registers 5
    .parameter "digit"

    .prologue
    .line 455
    iget v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    if-nez v0, :cond_b

    .line 456
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    :cond_b
    iget v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_12

    .line 463
    :goto_11
    return-void

    .line 461
    :cond_12
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredPin:[I

    iget v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    aput p1, v0, v1

    goto :goto_11
.end method

.method private setLockInfoText()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 244
    iget v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->num_of_retry:I

    if-ne v0, v3, :cond_21

    .line 245
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mLockinfoText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10400d8

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->num_of_retry:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    :goto_20
    return-void

    .line 247
    :cond_21
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mLockinfoText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10400d7

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->num_of_retry:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_20
.end method


# virtual methods
.method public cleanUp()V
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 273
    return-void
.end method

.method initView()V
    .registers 4

    .prologue
    const-string v2, "test"

    .line 169
    const-string v0, "test"

    const-string v0, "initView"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v0, "PukUnlockScreen"

    const-string v1, "initView()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const v0, 0x10201f9

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    .line 172
    const v0, 0x10201ff

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mLockinfoText:Landroid/widget/TextView;

    .line 173
    const v0, 0x10201fc

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    .line 174
    const v0, 0x10201fd

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    .line 175
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    const v0, 0x10201da

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEmergencyCallButton:Landroid/widget/TextView;

    .line 178
    const v0, 0x10201e0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    .line 180
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x10400cc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 181
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->setLockInfoText()V

    .line 183
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 185
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEmergencyCallButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerConfigurationChangeCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ConfigurationChangeCallback;)V

    .line 190
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerAirplaneCallbacks(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$AirplaneModeChangeCallback;)V

    .line 192
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->setFocusableInTouchMode(Z)V

    .line 194
    const-string v0, "test"

    const-string v0, "initView - end"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 252
    const/4 v0, 0x1

    return v0
.end method

.method public onAirplaneModeChanged(Z)V
    .registers 3
    .parameter "on"

    .prologue
    .line 503
    if-eqz p1, :cond_c

    .line 504
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimPinUnlocked()V

    .line 505
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 507
    :cond_c
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 490
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 491
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->updateConfiguration()V

    .line 492
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 11
    .parameter "v"

    .prologue
    const v8, 0x10400cb

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v4, 0x0

    const-string v5, ""

    .line 277
    const-string v2, "test"

    const-string v3, "onClick"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    if-ne p1, v2, :cond_2f

    .line 279
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 280
    .local v0, digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 281
    .local v1, len:I
    if-lez v1, :cond_29

    .line 282
    sub-int v2, v1, v6

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 283
    iget v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    sub-int/2addr v2, v6

    iput v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    .line 285
    :cond_29
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 350
    .end local v0           #digits:Landroid/text/Editable;
    .end local v1           #len:I
    :cond_2e
    :goto_2e
    return-void

    .line 286
    :cond_2f
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEmergencyCallButton:Landroid/widget/TextView;

    if-ne p1, v2, :cond_3e

    .line 287
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 288
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    goto :goto_2e

    .line 289
    :cond_3e
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    if-ne p1, v2, :cond_2e

    .line 290
    sget-object v2, Lcom/android/internal/policy/impl/PukUnlockScreen$2;->$SwitchMap$com$android$internal$policy$impl$PukUnlockScreen$SimLockState:[I

    iget-object v3, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_f6

    goto :goto_2e

    .line 293
    :pswitch_50
    iget v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_70

    .line 295
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v3, 0x10400d0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 296
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->setLockInfoText()V

    .line 297
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iput v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    .line 299
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_2e

    .line 302
    :cond_70
    sget-object v2, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    .line 303
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPuk:Ljava/lang/String;

    .line 304
    iput v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    .line 305
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->updateView()V

    goto :goto_2e

    .line 309
    :pswitch_86
    iget v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    if-ge v2, v7, :cond_a1

    .line 311
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 312
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->setLockInfoText()V

    .line 313
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iput v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    .line 315
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_2e

    .line 319
    :cond_a1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->NewPin:Ljava/lang/String;

    .line 320
    sget-object v2, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->VERIFY_NEW_PIN:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    .line 321
    iput v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    .line 322
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->updateView()V

    goto/16 :goto_2e

    .line 328
    :pswitch_b8
    iget v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    if-ge v2, v7, :cond_d4

    .line 330
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 331
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->setLockInfoText()V

    .line 332
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iput v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    .line 334
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto/16 :goto_2e

    .line 338
    :cond_d4
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->NewPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 339
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->checkPUK()V

    goto/16 :goto_2e

    .line 342
    :cond_eb
    sget-object v2, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->VERIFY_NEW_PIN_FAILED:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    .line 343
    iput v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    .line 344
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->updateView()V

    goto/16 :goto_2e

    .line 290
    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_50
        :pswitch_86
        :pswitch_b8
        :pswitch_b8
    .end packed-switch
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 497
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 498
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->updateConfiguration()V

    .line 499
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 428
    const/4 v1, 0x4

    if-ne p1, v1, :cond_b

    .line 429
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    move v1, v2

    .line 451
    :goto_a
    return v1

    .line 433
    :cond_b
    sget-object v1, Lcom/android/internal/policy/impl/PukUnlockScreen;->DIGITS:[C

    invoke-virtual {p2, v1}, Landroid/view/KeyEvent;->getMatch([C)C

    move-result v0

    .line 434
    .local v0, match:C
    if-eqz v0, :cond_1c

    .line 435
    const/16 v1, 0x30

    sub-int v1, v0, v1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/PukUnlockScreen;->reportDigit(I)V

    move v1, v2

    .line 436
    goto :goto_a

    .line 438
    :cond_1c
    const/16 v1, 0x43

    if-ne p1, v1, :cond_30

    .line 439
    iget v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    if-lez v1, :cond_2e

    .line 440
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v1, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 441
    iget v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    :cond_2e
    move v1, v2

    .line 443
    goto :goto_a

    .line 446
    :cond_30
    const/16 v1, 0x42

    if-ne p1, v1, :cond_36

    move v1, v2

    .line 448
    goto :goto_a

    .line 451
    :cond_36
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public onKeyboardChange(Z)V
    .registers 4
    .parameter "isKeyboardOpen"

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 469
    .local v0, newConfig:Landroid/content/res/Configuration;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCreatedWithKeyboardOpen:Z

    if-eq p1, v1, :cond_11

    .line 470
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 472
    :cond_11
    return-void
.end method

.method public onOrientationChange(Z)V
    .registers 2
    .parameter "inPortrait"

    .prologue
    .line 465
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 258
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 263
    sget-object v0, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->REQUIRE_PUK:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    .line 264
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x10400cc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 265
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->setLockInfoText()V

    .line 266
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mEnteredDigits:I

    .line 268
    return-void
.end method

.method updateConfiguration()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 475
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 476
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCreationOrientation:I

    if-eq v2, v3, :cond_15

    .line 477
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 486
    :cond_14
    :goto_14
    return-void

    .line 478
    :cond_15
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mKeyboardHidden:I

    if-eq v2, v3, :cond_14

    .line 479
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mKeyboardHidden:I

    .line 480
    iget v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mKeyboardHidden:I

    if-ne v2, v4, :cond_34

    move v0, v4

    .line 481
    .local v0, isKeyboardOpen:Z
    :goto_24
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v2

    if-eqz v2, :cond_14

    if-eqz v0, :cond_14

    .line 482
    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_14

    .line 480
    .end local v0           #isKeyboardOpen:Z
    :cond_34
    const/4 v2, 0x0

    move v0, v2

    goto :goto_24
.end method

.method updateView()V
    .registers 4

    .prologue
    .line 198
    const-string v1, "test"

    const-string v2, "updateView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 201
    .local v0, context:Landroid/content/Context;
    const-string v1, "PukUnlockScreen"

    const-string v2, "updateView()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->getSimLockInfoResult()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->num_of_retry:I

    .line 213
    sget-object v1, Lcom/android/internal/policy/impl/PukUnlockScreen$2;->$SwitchMap$com$android$internal$policy$impl$PukUnlockScreen$SimLockState:[I

    iget-object v2, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_62

    .line 238
    :goto_25
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    return-void

    .line 215
    :pswitch_2d
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v2, 0x10400cc

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 216
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->setLockInfoText()V

    goto :goto_25

    .line 220
    :pswitch_39
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v2, 0x10400cd

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 221
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->setLockInfoText()V

    goto :goto_25

    .line 225
    :pswitch_45
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v2, 0x10400ce

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 226
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->setLockInfoText()V

    goto :goto_25

    .line 230
    :pswitch_51
    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v2, 0x10400cf

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 231
    sget-object v1, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    iput-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen;->mStatus:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    .line 232
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->setLockInfoText()V

    goto :goto_25

    .line 213
    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_39
        :pswitch_45
        :pswitch_51
    .end packed-switch
.end method
