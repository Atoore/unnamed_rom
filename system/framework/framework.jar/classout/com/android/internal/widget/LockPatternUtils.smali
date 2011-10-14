.class public Lcom/android/internal/widget/LockPatternUtils;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# static fields
.field public static final FAILED_ATTEMPTS_BEFORE_RESET:I = 0x14

.field public static final FAILED_ATTEMPTS_BEFORE_TIMEOUT:I = 0x5

.field public static final FAILED_ATTEMPT_COUNTDOWN_INTERVAL_MS:J = 0x3e8L

.field public static final FAILED_ATTEMPT_TIMEOUT_MS:J = 0x7530L

.field private static final LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockoutattemptdeadline"

.field private static final LOCKOUT_PERMANENT_KEY:Ljava/lang/String; = "lockscreen.lockedoutpermanently"

.field private static final LOCK_PASSWORD_FILE:Ljava/lang/String; = "password.key"

.field private static final LOCK_PASSWORD_HISTORY_FILE:Ljava/lang/String; = "password_history.key"

.field private static final LOCK_PASSWORD_SALT_KEY:Ljava/lang/String; = "lockscreen.password_salt"

.field private static final LOCK_PATTERN_FILE:Ljava/lang/String; = "gesture.key"

.field private static final LOCK_RECOVERY_PASSWORD_FILE:Ljava/lang/String; = "recovery_password.key"

.field public static final MIN_LOCK_PATTERN_SIZE:I = 0x4

.field public static final MIN_PATTERN_REGISTER_FAIL:I = 0x3

.field public static final PASSWORD_TYPE_KEY:Ljava/lang/String; = "lockscreen.password_type"

.field private static final PATTERN_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.patterneverchosen"

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field private static final TAG:Ljava/lang/String; = "LockPatternUtils"

.field private static mIsPhonelock:Z

.field private static mPatternActivated:Z

.field private static final sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final sHaveNonZeroPasswordHistoryFile:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final sHaveNonZeroRecoveryPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sLockPasswordFilename:Ljava/lang/String;

.field private static sLockPasswordHistoryFilename:Ljava/lang/String;

.field private static sLockPatternFilename:Ljava/lang/String;

.field private static sLockRecoveryPasswordFilename:Ljava/lang/String;

.field private static sPasswordObserver:Landroid/os/FileObserver;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mNotifyPwdChanges:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 133
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 134
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 135
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordHistoryFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 136
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroRecoveryPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .parameter "context"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-boolean v5, p0, Lcom/android/internal/widget/LockPatternUtils;->mNotifyPwdChanges:Z

    .line 157
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    .line 161
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    if-nez v2, :cond_e9

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/system/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, dataSystemDirectory:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gesture.key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "password.key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "password_history.key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordHistoryFilename:Ljava/lang/String;

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "recovery_password.key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockRecoveryPasswordFilename:Ljava/lang/String;

    .line 170
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-lez v3, :cond_ea

    move v3, v5

    :goto_99
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 171
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-lez v3, :cond_ec

    move v3, v5

    :goto_ae
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 172
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordHistoryFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordHistoryFilename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-lez v3, :cond_ee

    move v3, v5

    :goto_c3
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 173
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroRecoveryPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/internal/widget/LockPatternUtils;->sLockRecoveryPasswordFilename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-lez v3, :cond_f0

    move v3, v5

    :goto_d8
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 175
    const/16 v1, 0x388

    .line 177
    .local v1, fileObserverMask:I
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils$1;-><init>(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;I)V

    sput-object v2, Lcom/android/internal/widget/LockPatternUtils;->sPasswordObserver:Landroid/os/FileObserver;

    .line 194
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sPasswordObserver:Landroid/os/FileObserver;

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .line 196
    .end local v0           #dataSystemDirectory:Ljava/lang/String;
    .end local v1           #fileObserverMask:I
    :cond_e9
    return-void

    .restart local v0       #dataSystemDirectory:Ljava/lang/String;
    :cond_ea
    move v3, v6

    .line 170
    goto :goto_99

    :cond_ec
    move v3, v6

    .line 171
    goto :goto_ae

    :cond_ee
    move v3, v6

    .line 172
    goto :goto_c3

    :cond_f0
    move v3, v6

    .line 173
    goto :goto_d8
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordHistoryFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordHistoryFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sLockRecoveryPasswordFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroRecoveryPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static computePasswordComplexChars(Ljava/lang/String;)I
    .registers 5
    .parameter "password"

    .prologue
    .line 615
    const/4 v0, 0x0

    .line 616
    .local v0, countComplex:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 617
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    if-ge v1, v2, :cond_17

    .line 618
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_14

    .line 619
    add-int/lit8 v0, v0, 0x1

    .line 617
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 622
    :cond_17
    return v0
.end method

.method public static computePasswordHasSymbol(Ljava/lang/String;)Z
    .registers 4
    .parameter "password"

    .prologue
    .line 626
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 627
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_20

    .line 628
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 630
    const/4 v2, 0x1

    .line 633
    :goto_1c
    return v2

    .line 627
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 633
    :cond_20
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method public static computePasswordQuality(Ljava/lang/String;)I
    .registers 6
    .parameter "password"

    .prologue
    .line 586
    const/4 v0, 0x0

    .line 587
    .local v0, hasDigit:Z
    const/4 v1, 0x0

    .line 588
    .local v1, hasNonDigit:Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 589
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v3, :cond_19

    .line 590
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 591
    const/4 v0, 0x1

    .line 589
    :goto_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 593
    :cond_17
    const/4 v1, 0x1

    goto :goto_14

    .line 597
    :cond_19
    if-eqz v1, :cond_20

    if-eqz v0, :cond_20

    .line 598
    const/high16 v4, 0x5

    .line 606
    :goto_1f
    return v4

    .line 600
    :cond_20
    if-eqz v1, :cond_25

    .line 601
    const/high16 v4, 0x4

    goto :goto_1f

    .line 603
    :cond_25
    if-eqz v0, :cond_2a

    .line 604
    const/high16 v4, 0x2

    goto :goto_1f

    .line 606
    :cond_2a
    const/4 v4, 0x0

    goto :goto_1f
.end method

.method private generateRecoveryPassword()Ljava/lang/String;
    .registers 7

    .prologue
    .line 803
    const-string v3, "lockscreen.password_type"

    const-wide/32 v4, 0x20000

    invoke-direct {p0, v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 813
    .local v0, passwordPolicy:J
    invoke-static {}, Lcom/android/internal/widget/RandomString;->randomstring()Ljava/lang/String;

    move-result-object v2

    .line 815
    .local v2, ret:Ljava/lang/String;
    return-object v2
.end method

.method private getBoolean(Ljava/lang/String;)Z
    .registers 7
    .parameter "secureSettingKey"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v4, "true"

    .line 1223
    const-string/jumbo v1, "true"

    const-string/jumbo v1, "ro.wtldatapassword"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1224
    invoke-static {p1}, Landroid/deviceencryption/DeviceEncryptionManager;->getFileCryptProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1226
    .local v0, ret:Ljava/lang/String;
    if-eqz v0, :cond_23

    .line 1227
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1232
    .end local v0           #ret:Ljava/lang/String;
    :goto_22
    return v1

    .restart local v0       #ret:Ljava/lang/String;
    :cond_23
    move v1, v2

    .line 1229
    goto :goto_22

    .line 1232
    .end local v0           #ret:Ljava/lang/String;
    :cond_25
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v3, v1, :cond_2f

    move v1, v3

    goto :goto_22

    :cond_2f
    move v1, v2

    goto :goto_22
.end method

.method private getLong(Ljava/lang/String;J)J
    .registers 10
    .parameter "secureSettingKey"
    .parameter "def"

    .prologue
    .line 1254
    const-string/jumbo v4, "true"

    const-string/jumbo v5, "ro.wtldatapassword"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1255
    invoke-static {p1}, Landroid/deviceencryption/DeviceEncryptionManager;->getFileCryptProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1257
    .local v3, val:Ljava/lang/String;
    if-eqz v3, :cond_1f

    .line 1261
    :try_start_16
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_19} :catch_1c

    move-result-wide v1

    .local v1, ret:J
    :goto_1a
    move-wide v4, v1

    .line 1271
    .end local v1           #ret:J
    .end local v3           #val:Ljava/lang/String;
    :goto_1b
    return-wide v4

    .line 1262
    .restart local v3       #val:Ljava/lang/String;
    :catch_1c
    move-exception v0

    .line 1263
    .local v0, e:Ljava/lang/NumberFormatException;
    move-wide v1, p2

    .restart local v1       #ret:J
    goto :goto_1a

    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #ret:J
    :cond_1f
    move-wide v4, p2

    .line 1268
    goto :goto_1b

    .line 1271
    .end local v3           #val:Ljava/lang/String;
    :cond_21
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4, p1, p2, p3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    goto :goto_1b
.end method

.method private getSalt()Ljava/lang/String;
    .registers 8

    .prologue
    const-wide/16 v4, 0x0

    const-string v6, "lockscreen.password_salt"

    .line 1035
    const-string v3, "lockscreen.password_salt"

    invoke-direct {p0, v6, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1036
    .local v1, salt:J
    cmp-long v3, v1, v4

    if-nez v3, :cond_24

    .line 1038
    :try_start_e
    const-string v3, "SHA1PRNG"

    invoke-static {v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    .line 1039
    const-string v3, "lockscreen.password_salt"

    invoke-direct {p0, v3, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1040
    const-string v3, "LockPatternUtils"

    const-string v4, "Initialized lock password salt"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e .. :try_end_24} :catch_29

    .line 1046
    :cond_24
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1041
    :catch_29
    move-exception v3

    move-object v0, v3

    .line 1043
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Couldn\'t get SecureRandom number"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private isSimplePassword(Ljava/lang/String;)Z
    .registers 12
    .parameter "pw"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1429
    const/4 v4, 0x0

    .local v4, sameCnt:I
    const/4 v2, 0x0

    .local v2, bigCnt:I
    const/4 v5, 0x0

    .line 1430
    .local v5, smallCnt:I
    const/4 v0, 0x3

    .line 1431
    .local v0, PASSWORD_COMPARE_COUNT:I
    if-nez p1, :cond_a

    move v6, v9

    .line 1462
    :goto_9
    return v6

    .line 1432
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1433
    .local v1, b:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v8

    if-ge v3, v6, :cond_5d

    .line 1434
    aget-byte v6, v1, v3

    add-int/lit8 v7, v3, 0x1

    aget-byte v7, v1, v7

    if-ne v6, v7, :cond_29

    .line 1435
    add-int/lit8 v4, v4, 0x1

    .line 1436
    if-ge v2, v0, :cond_23

    .line 1437
    const/4 v2, 0x0

    .line 1438
    :cond_23
    if-ge v5, v0, :cond_26

    .line 1439
    const/4 v5, 0x0

    .line 1433
    :cond_26
    :goto_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1441
    :cond_29
    aget-byte v6, v1, v3

    add-int/lit8 v7, v3, 0x1

    aget-byte v7, v1, v7

    if-le v6, v7, :cond_47

    .line 1442
    if-ge v4, v0, :cond_34

    .line 1443
    const/4 v4, 0x0

    .line 1444
    :cond_34
    if-ge v5, v0, :cond_37

    .line 1445
    const/4 v5, 0x0

    .line 1446
    :cond_37
    aget-byte v6, v1, v3

    add-int/lit8 v7, v3, 0x1

    aget-byte v7, v1, v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ne v6, v8, :cond_26

    .line 1447
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 1450
    :cond_47
    if-ge v4, v0, :cond_4a

    .line 1451
    const/4 v4, 0x0

    .line 1452
    :cond_4a
    if-ge v2, v0, :cond_4d

    .line 1453
    const/4 v2, 0x0

    .line 1454
    :cond_4d
    aget-byte v6, v1, v3

    add-int/lit8 v7, v3, 0x1

    aget-byte v7, v1, v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ne v6, v8, :cond_26

    .line 1455
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 1459
    :cond_5d
    if-ge v4, v0, :cond_63

    if-ge v2, v0, :cond_63

    if-lt v5, v0, :cond_65

    :cond_63
    move v6, v8

    .line 1460
    goto :goto_9

    :cond_65
    move v6, v9

    .line 1462
    goto :goto_9
.end method

.method private static patternToHash(Ljava/util/List;)[B
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 1015
    .local p0, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_4

    .line 1016
    const/4 v7, 0x0

    .line 1030
    :goto_3
    return-object v7

    .line 1019
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 1020
    .local v5, patternSize:I
    new-array v6, v5, [B

    .line 1021
    .local v6, res:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-ge v2, v5, :cond_24

    .line 1022
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1023
    .local v0, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    .line 1021
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1026
    .end local v0           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_24
    :try_start_24
    const-string v7, "SHA-1"

    invoke-static {v7}, Landroid/security/MessageDigest;->getInstance(Ljava/lang/String;)Landroid/security/MessageDigest;

    move-result-object v3

    .line 1027
    .local v3, md:Landroid/security/MessageDigest;
    invoke-virtual {v3, v6}, Landroid/security/MessageDigest;->digest([B)[B
    :try_end_2d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_24 .. :try_end_2d} :catch_30

    move-result-object v1

    .local v1, hash:[B
    move-object v7, v1

    .line 1028
    goto :goto_3

    .line 1029
    .end local v1           #hash:[B
    .end local v3           #md:Landroid/security/MessageDigest;
    :catch_30
    move-exception v7

    move-object v4, v7

    .local v4, nsa:Ljava/security/NoSuchAlgorithmException;
    move-object v7, v6

    .line 1030
    goto :goto_3
.end method

.method public static patternToString(Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 994
    .local p0, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_5

    .line 995
    const-string v4, ""

    .line 1004
    :goto_4
    return-object v4

    .line 997
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 999
    .local v2, patternSize:I
    new-array v3, v2, [B

    .line 1000
    .local v3, res:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v2, :cond_25

    .line 1001
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1002
    .local v0, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 1000
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1004
    .end local v0           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_25
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_4
.end method

.method private setBoolean(Ljava/lang/String;Z)V
    .registers 7
    .parameter "secureSettingKey"
    .parameter "enabled"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string/jumbo v3, "true"

    .line 1238
    const-string/jumbo v0, "true"

    const-string/jumbo v0, "ro.wtldatapassword"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1239
    if-ne p2, v1, :cond_25

    .line 1240
    const-string/jumbo v0, "true"

    invoke-static {p1, v3}, Landroid/deviceencryption/DeviceEncryptionManager;->setFileCryptProperty(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    :goto_1d
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p2, :cond_2b

    :goto_21
    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1251
    :goto_24
    return-void

    .line 1242
    :cond_25
    const-string v0, "false"

    invoke-static {p1, v0}, Landroid/deviceencryption/DeviceEncryptionManager;->setFileCryptProperty(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    :cond_2b
    move v1, v2

    .line 1245
    goto :goto_21

    .line 1248
    :cond_2d
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p2, :cond_35

    :goto_31
    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_24

    :cond_35
    move v1, v2

    goto :goto_31
.end method

.method private setLong(Ljava/lang/String;J)V
    .registers 6
    .parameter "secureSettingKey"
    .parameter "value"

    .prologue
    .line 1276
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ro.wtldatapassword"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1277
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/deviceencryption/DeviceEncryptionManager;->setFileCryptProperty(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1283
    :goto_1c
    return-void

    .line 1281
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_1c
.end method

.method public static stringToPattern(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .parameter "string"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 978
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 980
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 981
    .local v1, bytes:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    array-length v4, v1

    if-ge v2, v4, :cond_1c

    .line 982
    aget-byte v0, v1, v2

    .line 983
    .local v0, b:B
    div-int/lit8 v4, v0, 0x3

    rem-int/lit8 v5, v0, 0x3

    invoke-static {v4, v5}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 981
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 985
    .end local v0           #b:B
    :cond_1c
    return-object v3
.end method

.method private static toHex([B)Ljava/lang/String;
    .registers 7
    .parameter "ary"

    .prologue
    const-string v5, "0123456789ABCDEF"

    .line 1074
    const-string v0, "0123456789ABCDEF"

    .line 1075
    .local v0, hex:Ljava/lang/String;
    const-string v2, ""

    .line 1076
    .local v2, ret:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    array-length v3, p0

    if-ge v1, v3, :cond_45

    .line 1077
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v4, p0, v1

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1078
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v4, p0, v1

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1076
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1080
    :cond_45
    return-object v2
.end method


# virtual methods
.method public checkDevicePasswordExpired()Z
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 251
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpires(Landroid/content/ComponentName;)I

    move-result v0

    .line 252
    .local v0, checkExpires:I
    if-gtz v0, :cond_f

    move v7, v9

    .line 297
    :goto_e
    return v7

    .line 254
    :cond_f
    const/4 v4, 0x0

    .line 257
    .local v4, pwd:Ljava/lang/String;
    :try_start_10
    new-instance v5, Ljava/io/RandomAccessFile;

    sget-object v7, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string/jumbo v8, "r"

    invoke-direct {v5, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .local v5, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v6, v7, [B

    .line 259
    .local v6, stored:[B
    const/4 v7, 0x0

    array-length v8, v6

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    .line 260
    .local v2, got:I
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 261
    if-gtz v2, :cond_2e

    move v7, v10

    .line 262
    goto :goto_e

    .line 265
    :cond_2e
    invoke-static {v6}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_31} :catch_36
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_31} :catch_3a

    move-result-object v4

    .line 271
    if-nez v4, :cond_3e

    move v7, v9

    .line 272
    goto :goto_e

    .line 266
    .end local v2           #got:I
    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .end local v6           #stored:[B
    :catch_36
    move-exception v7

    move-object v1, v7

    .local v1, fnfe:Ljava/io/FileNotFoundException;
    move v7, v10

    .line 267
    goto :goto_e

    .line 268
    .end local v1           #fnfe:Ljava/io/FileNotFoundException;
    :catch_3a
    move-exception v7

    move-object v3, v7

    .local v3, ioe:Ljava/io/IOException;
    move v7, v10

    .line 269
    goto :goto_e

    .line 297
    .end local v3           #ioe:Ljava/io/IOException;
    .restart local v2       #got:I
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #stored:[B
    :cond_3e
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/admin/DevicePolicyManager;->isActivePasswordExpired()Z

    move-result v7

    goto :goto_e
.end method

.method public checkPassword(Ljava/lang/String;)Z
    .registers 11
    .parameter "password"

    .prologue
    const/4 v8, 0x1

    .line 380
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isDeviceEncryptionEnabled()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 381
    invoke-static {p1}, Landroid/deviceencryption/DeviceEncryptionManager;->checkPassword(Ljava/lang/String;)Z

    move-result v6

    .line 398
    :cond_b
    :goto_b
    return v6

    .line 383
    :cond_c
    const/4 v3, 0x0

    .line 386
    .local v3, raf:Ljava/io/RandomAccessFile;
    :try_start_d
    new-instance v4, Ljava/io/RandomAccessFile;

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string/jumbo v7, "r"

    invoke-direct {v4, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_52
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_17} :catch_40
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_17} :catch_49

    .line 387
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .local v4, raf:Ljava/io/RandomAccessFile;
    :try_start_17
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v5, v6, [B

    .line 388
    .local v5, stored:[B
    const/4 v6, 0x0

    array-length v7, v5

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 389
    .local v1, got:I
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_61
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_27} :catch_68
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_27} :catch_64

    .line 390
    if-gtz v1, :cond_30

    .line 400
    if-eqz v4, :cond_2e

    .line 402
    :try_start_2b
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_5f

    :cond_2e
    :goto_2e
    move v6, v8

    .line 391
    goto :goto_b

    .line 394
    :cond_30
    :try_start_30
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_61
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_37} :catch_68
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_37} :catch_64

    move-result v6

    .line 400
    if-eqz v4, :cond_b

    .line 402
    :try_start_3a
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_b

    .line 403
    :catch_3e
    move-exception v7

    goto :goto_b

    .line 395
    .end local v1           #got:I
    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .end local v5           #stored:[B
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    :catch_40
    move-exception v6

    move-object v0, v6

    .line 400
    .local v0, fnfe:Ljava/io/FileNotFoundException;
    :goto_42
    if-eqz v3, :cond_47

    .line 402
    :try_start_44
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_59

    :cond_47
    :goto_47
    move v6, v8

    .line 396
    goto :goto_b

    .line 397
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_49
    move-exception v6

    move-object v2, v6

    .line 400
    .local v2, ioe:Ljava/io/IOException;
    :goto_4b
    if-eqz v3, :cond_50

    .line 402
    :try_start_4d
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_5b

    :cond_50
    :goto_50
    move v6, v8

    .line 398
    goto :goto_b

    .line 400
    .end local v2           #ioe:Ljava/io/IOException;
    :catchall_52
    move-exception v6

    :goto_53
    if-eqz v3, :cond_58

    .line 402
    :try_start_55
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_5d

    .line 400
    :cond_58
    :goto_58
    throw v6

    .line 403
    .restart local v0       #fnfe:Ljava/io/FileNotFoundException;
    :catch_59
    move-exception v6

    goto :goto_47

    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v2       #ioe:Ljava/io/IOException;
    :catch_5b
    move-exception v6

    goto :goto_50

    .end local v2           #ioe:Ljava/io/IOException;
    :catch_5d
    move-exception v7

    goto :goto_58

    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v1       #got:I
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    .restart local v5       #stored:[B
    :catch_5f
    move-exception v6

    goto :goto_2e

    .line 400
    .end local v1           #got:I
    .end local v5           #stored:[B
    :catchall_61
    move-exception v6

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_53

    .line 397
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_64
    move-exception v6

    move-object v2, v6

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_4b

    .line 395
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #raf:Ljava/io/RandomAccessFile;
    :catch_68
    move-exception v6

    move-object v0, v6

    move-object v3, v4

    .end local v4           #raf:Ljava/io/RandomAccessFile;
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    goto :goto_42
.end method

.method public checkPattern(Ljava/util/List;)Z
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v7, 0x1

    .line 355
    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    sget-object v5, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    const-string/jumbo v6, "r"

    invoke-direct {v3, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .local v3, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    long-to-int v5, v5

    new-array v4, v5, [B

    .line 357
    .local v4, stored:[B
    const/4 v5, 0x0

    array-length v6, v4

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 358
    .local v1, got:I
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 359
    if-gtz v1, :cond_1f

    move v5, v7

    .line 367
    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :goto_1e
    return v5

    .line 363
    .restart local v1       #got:I
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #stored:[B
    :cond_1f
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_26} :catch_28
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_26} :catch_2c

    move-result v5

    goto :goto_1e

    .line 364
    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :catch_28
    move-exception v5

    move-object v0, v5

    .local v0, fnfe:Ljava/io/FileNotFoundException;
    move v5, v7

    .line 365
    goto :goto_1e

    .line 366
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_2c
    move-exception v5

    move-object v2, v5

    .local v2, ioe:Ljava/io/IOException;
    move v5, v7

    .line 367
    goto :goto_1e
.end method

.method public checkPcwPassword(Ljava/lang/String;)Z
    .registers 11
    .parameter "password"

    .prologue
    const/4 v7, 0x0

    const-string v8, "LockPatternUtils"

    .line 1371
    if-nez p1, :cond_7

    move v4, v7

    .line 1393
    :goto_6
    return v4

    .line 1374
    :cond_7
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "lock_pcw_password"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1375
    .local v2, savedPassword:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1377
    .local v0, base64:Ljava/lang/String;
    const-string v4, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "savedPassword = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " input password = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    :try_start_33
    const-string v4, "SHA-1"

    invoke-static {v4}, Landroid/security/MessageDigest;->getInstance(Ljava/lang/String;)Landroid/security/MessageDigest;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 1381
    .local v3, sha1:[B
    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 1383
    const-string v4, "LockPatternUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sha1 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , base64 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_33 .. :try_end_69} :catch_6f

    .line 1388
    .end local v3           #sha1:[B
    :goto_69
    if-eqz v2, :cond_6d

    if-nez v0, :cond_79

    :cond_6d
    move v4, v7

    .line 1389
    goto :goto_6

    .line 1384
    :catch_6f
    move-exception v4

    move-object v1, v4

    .line 1385
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const-string v4, "LockPatternUtils"

    const-string v4, "Failed to encode string because of missing algorithm: SHA-1"

    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 1390
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :cond_79
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_81

    .line 1391
    const/4 v4, 0x1

    goto :goto_6

    :cond_81
    move v4, v7

    .line 1393
    goto :goto_6
.end method

.method public clearLock()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 493
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    iget-boolean v5, p0, Lcom/android/internal/widget/LockPatternUtils;->mNotifyPwdChanges:Z

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIZZ)V

    .line 495
    const/high16 v0, 0x1

    invoke-virtual {p0, v6, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    .line 496
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 497
    invoke-virtual {p0, v6}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 498
    const-string v0, "lockscreen.password_type"

    const-wide/32 v1, 0x10000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 499
    return-void
.end method

.method public clearLock(Z)V
    .registers 3
    .parameter "notifyChange"

    .prologue
    .line 503
    if-eqz p1, :cond_6

    .line 504
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->clearLock()V

    .line 510
    :goto_5
    return-void

    .line 506
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mNotifyPwdChanges:Z

    .line 507
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->clearLock()V

    .line 508
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mNotifyPwdChanges:Z

    goto :goto_5
.end method

.method public clearLockByForce()V
    .registers 3

    .prologue
    .line 1407
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isOKtoRemoveKEY()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 1408
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->removeKeyByForce()V

    .line 1409
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->clearLock()V

    .line 1411
    :cond_d
    return-void
.end method

.method public clearPasswordLock()V
    .registers 4

    .prologue
    .line 520
    const/4 v0, 0x0

    const/high16 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    .line 522
    const-string v0, "lockscreen.password_type"

    const-wide/32 v1, 0x10000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 523
    return-void
.end method

.method public clearPatternLock()V
    .registers 4

    .prologue
    .line 528
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 529
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 531
    const-string v0, "lockscreen.password_type"

    const-wide/32 v1, 0x10000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 532
    return-void
.end method

.method public getActivePasswordQuality()I
    .registers 3

    .prologue
    .line 463
    const/4 v0, 0x0

    .line 464
    .local v0, activePasswordQuality:I
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    sparse-switch v1, :sswitch_data_2e

    .line 486
    :cond_8
    :goto_8
    return v0

    .line 466
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 467
    const/high16 v0, 0x1

    goto :goto_8

    .line 471
    :sswitch_12
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 472
    const/high16 v0, 0x2

    goto :goto_8

    .line 476
    :sswitch_1b
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 477
    const/high16 v0, 0x4

    goto :goto_8

    .line 481
    :sswitch_24
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 482
    const/high16 v0, 0x5

    goto :goto_8

    .line 464
    nop

    :sswitch_data_2e
    .sparse-switch
        0x10000 -> :sswitch_9
        0x20000 -> :sswitch_12
        0x40000 -> :sswitch_1b
        0x50000 -> :sswitch_24
    .end sparse-switch
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .registers 5

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_22

    .line 144
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 146
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_22

    .line 147
    const-string v0, "LockPatternUtils"

    const-string v1, "Can\'t get DevicePolicyManagerService: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    :cond_22
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getKeyguardStoredPasswordQuality()I
    .registers 8

    .prologue
    const-wide/32 v4, 0x10000

    const-string v6, "lockscreen.password_type"

    .line 956
    const-string/jumbo v2, "ram"

    const-string v3, "encryption.bootmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 957
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isLockPasswordEnabled()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 958
    const/high16 v2, 0x5

    .line 968
    :goto_1c
    return v2

    .line 960
    :cond_1d
    const-string v2, "lockscreen.password_type"

    invoke-direct {p0, v6, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 961
    .local v0, type:J
    cmp-long v2, v0, v4

    if-gtz v2, :cond_2a

    .line 962
    const-wide/32 v0, 0x50000

    .line 964
    :cond_2a
    long-to-int v2, v0

    goto :goto_1c

    .line 968
    .end local v0           #type:J
    :cond_2c
    const-string v2, "lockscreen.password_type"

    invoke-direct {p0, v6, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v2, v2

    goto :goto_1c
.end method

.method public getLockoutAttemptDeadline()J
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    .line 1167
    const-string v4, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v4, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1168
    .local v0, deadline:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1169
    .local v2, now:J
    cmp-long v4, v0, v2

    if-ltz v4, :cond_17

    const-wide/16 v4, 0x7530

    add-long/2addr v4, v2

    cmp-long v4, v0, v4

    if-lez v4, :cond_19

    :cond_17
    move-wide v4, v6

    .line 1172
    :goto_18
    return-wide v4

    :cond_19
    move-wide v4, v0

    goto :goto_18
.end method

.method public getMinPasswordComplexChars()I
    .registers 3

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMinPasswordComplexChars(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getNextAlarm()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1214
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "next_alarm_formatted"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1216
    .local v0, nextAlarm:Ljava/lang/String;
    if-eqz v0, :cond_11

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1217
    :cond_11
    const/4 v1, 0x0

    .line 1219
    :goto_12
    return-object v1

    :cond_13
    move-object v1, v0

    goto :goto_12
.end method

.method public getPassword()Ljava/lang/String;
    .registers 11

    .prologue
    .line 303
    const/4 v4, 0x0

    .line 304
    .local v4, pwd:Ljava/lang/String;
    const/4 v5, 0x0

    .line 307
    .local v5, raf:Ljava/io/RandomAccessFile;
    :try_start_2
    new-instance v6, Ljava/io/RandomAccessFile;

    sget-object v8, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string/jumbo v9, "r"

    invoke-direct {v6, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_55
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_c} :catch_32
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_4a

    .line 308
    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .local v6, raf:Ljava/io/RandomAccessFile;
    :try_start_c
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v7, v8, [B

    .line 309
    .local v7, stored:[B
    const/4 v8, 0x0

    array-length v9, v7

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    .line 310
    .local v2, got:I
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_62
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_1c} :catch_6d
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1c} :catch_69
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1c} :catch_65

    .line 311
    if-gtz v2, :cond_26

    .line 312
    const/4 v8, 0x0

    .line 323
    if-eqz v6, :cond_24

    .line 325
    :try_start_21
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_5e

    :cond_24
    :goto_24
    move-object v5, v6

    .line 330
    .end local v2           #got:I
    .end local v6           #raf:Ljava/io/RandomAccessFile;
    .end local v7           #stored:[B
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    :goto_25
    return-object v8

    .line 315
    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #got:I
    .restart local v6       #raf:Ljava/io/RandomAccessFile;
    .restart local v7       #stored:[B
    :cond_26
    :try_start_26
    invoke-static {v7}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_62
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_29} :catch_6d
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_69
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_65

    move-result-object v4

    .line 323
    if-eqz v6, :cond_2f

    .line 325
    :try_start_2c
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_60

    :cond_2f
    :goto_2f
    move-object v5, v6

    .end local v2           #got:I
    .end local v6           #raf:Ljava/io/RandomAccessFile;
    .end local v7           #stored:[B
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    :cond_30
    :goto_30
    move-object v8, v4

    .line 330
    goto :goto_25

    .line 316
    :catch_32
    move-exception v8

    move-object v1, v8

    .line 317
    .local v1, fnfe:Ljava/io/FileNotFoundException;
    :goto_34
    :try_start_34
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_55

    .line 323
    if-eqz v5, :cond_30

    .line 325
    :try_start_39
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_30

    .line 326
    .end local v1           #fnfe:Ljava/io/FileNotFoundException;
    :catch_3d
    move-exception v8

    goto :goto_30

    .line 318
    :catch_3f
    move-exception v8

    move-object v3, v8

    .line 319
    .local v3, ioe:Ljava/io/IOException;
    :goto_41
    :try_start_41
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_55

    .line 323
    if-eqz v5, :cond_30

    .line 325
    :try_start_46
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_3d

    goto :goto_30

    .line 320
    .end local v3           #ioe:Ljava/io/IOException;
    :catch_4a
    move-exception v8

    move-object v0, v8

    .line 321
    .local v0, e:Ljava/lang/Exception;
    :goto_4c
    :try_start_4c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_55

    .line 323
    if-eqz v5, :cond_30

    .line 325
    :try_start_51
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_3d

    goto :goto_30

    .line 323
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_55
    move-exception v8

    :goto_56
    if-eqz v5, :cond_5b

    .line 325
    :try_start_58
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    .line 323
    :cond_5b
    :goto_5b
    throw v8

    .line 326
    :catch_5c
    move-exception v9

    goto :goto_5b

    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .restart local v2       #got:I
    .restart local v6       #raf:Ljava/io/RandomAccessFile;
    .restart local v7       #stored:[B
    :catch_5e
    move-exception v9

    goto :goto_24

    :catch_60
    move-exception v8

    goto :goto_2f

    .line 323
    .end local v2           #got:I
    .end local v7           #stored:[B
    :catchall_62
    move-exception v8

    move-object v5, v6

    .end local v6           #raf:Ljava/io/RandomAccessFile;
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    goto :goto_56

    .line 320
    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #raf:Ljava/io/RandomAccessFile;
    :catch_65
    move-exception v8

    move-object v0, v8

    move-object v5, v6

    .end local v6           #raf:Ljava/io/RandomAccessFile;
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    goto :goto_4c

    .line 318
    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #raf:Ljava/io/RandomAccessFile;
    :catch_69
    move-exception v8

    move-object v3, v8

    move-object v5, v6

    .end local v6           #raf:Ljava/io/RandomAccessFile;
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    goto :goto_41

    .line 316
    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .restart local v6       #raf:Ljava/io/RandomAccessFile;
    :catch_6d
    move-exception v8

    move-object v1, v8

    move-object v5, v6

    .end local v6           #raf:Ljava/io/RandomAccessFile;
    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    goto :goto_34
.end method

.method public getPasswordHistorySize()I
    .registers 8

    .prologue
    .line 819
    const/4 v3, 0x0

    .line 821
    .local v3, res:I
    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    sget-object v5, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string/jumbo v6, "r"

    invoke-direct {v2, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    .local v2, raf:Ljava/io/RandomAccessFile;
    :goto_b
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_14

    .line 824
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 827
    :cond_14
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_17} :catch_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_17} :catch_1f

    .line 829
    add-int/lit8 v3, v3, -0x1

    move v4, v3

    .line 833
    .end local v2           #raf:Ljava/io/RandomAccessFile;
    .end local v3           #res:I
    .local v4, res:I
    :goto_1a
    return v4

    .line 830
    .end local v4           #res:I
    .restart local v3       #res:I
    :catch_1b
    move-exception v5

    move-object v0, v5

    .local v0, fnfe:Ljava/io/FileNotFoundException;
    move v4, v3

    .line 831
    .end local v3           #res:I
    .restart local v4       #res:I
    goto :goto_1a

    .line 832
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    .end local v4           #res:I
    .restart local v3       #res:I
    :catch_1f
    move-exception v5

    move-object v1, v5

    .local v1, ioe:Ljava/io/IOException;
    move v4, v3

    .line 833
    .end local v3           #res:I
    .restart local v4       #res:I
    goto :goto_1a
.end method

.method public getPhonePassword()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1339
    new-instance v0, Lcom/android/internal/util/NVStore;

    invoke-direct {v0}, Lcom/android/internal/util/NVStore;-><init>()V

    .line 1340
    .local v0, nv:Lcom/android/internal/util/NVStore;
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetPhPWD()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRecoveryPassword()Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    const-string/jumbo v11, "password"

    .line 726
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-nez v0, :cond_60

    .line 729
    const/4 v7, 0x0

    .line 730
    .local v7, recoveryPassword:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string/jumbo v3, "password"

    aput-object v11, v2, v9

    const-string/jumbo v3, "set_date IS NULL"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 738
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_37

    .line 739
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_33

    .line 740
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 741
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 743
    :cond_33
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 744
    const/4 v6, 0x0

    .line 749
    :cond_37
    if-nez v7, :cond_5e

    .line 750
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->generateRecoveryPassword()Ljava/lang/String;

    move-result-object v7

    .line 754
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->removeRecoveryPasswords()V

    .line 757
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 758
    .local v8, values:Landroid/content/ContentValues;
    const-string/jumbo v0, "password"

    invoke-virtual {v8, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const-string/jumbo v0, "set_date"

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v8, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 762
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .end local v8           #values:Landroid/content/ContentValues;
    :cond_5e
    move-object v0, v7

    .line 768
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #recoveryPassword:Ljava/lang/String;
    :goto_5f
    return-object v0

    :cond_60
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->generateRecoveryPassword()Ljava/lang/String;

    move-result-object v0

    goto :goto_5f
.end method

.method public getRequestedMinimumPasswordLength()I
    .registers 3

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordQuality()I
    .registers 3

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public invalidateRecoveryPassword()V
    .registers 2

    .prologue
    .line 792
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    .line 793
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->removeRecoveryPasswords()V

    .line 795
    :cond_9
    return-void
.end method

.method public isDevicePasswordSimple()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1424
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "is_smpw_key"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_e

    move v0, v3

    :goto_d
    return v0

    :cond_e
    move v0, v2

    goto :goto_d
.end method

.method public isLockPasswordEnabled()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 1089
    const-string/jumbo v2, "ram"

    const-string v3, "encryption.bootmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    move v2, v5

    .line 1100
    :goto_11
    return v2

    .line 1092
    :cond_12
    const-string v2, "lockscreen.password_type"

    const-wide/16 v3, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1094
    .local v0, mode:J
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isDeviceEncryptionEnabled()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1095
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isLockPasswordEnabled()Z

    move-result v2

    goto :goto_11

    .line 1100
    :cond_25
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v2

    if-eqz v2, :cond_42

    const-wide/32 v2, 0x40000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_40

    const-wide/32 v2, 0x20000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_40

    const-wide/32 v2, 0x50000

    cmp-long v2, v0, v2

    if-nez v2, :cond_42

    :cond_40
    move v2, v5

    goto :goto_11

    :cond_42
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public isLockPatternEnabled()Z
    .registers 5

    .prologue
    const-wide/32 v2, 0x10000

    .line 1110
    const-string v0, "lock_pattern_autolock"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "lockscreen.password_type"

    invoke-direct {p0, v0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public isMobileTrackerEnabled()Z
    .registers 3

    .prologue
    .line 1365
    new-instance v0, Lcom/android/internal/util/NVStore;

    invoke-direct {v0}, Lcom/android/internal/util/NVStore;-><init>()V

    .line 1366
    .local v0, nv:Lcom/android/internal/util/NVStore;
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetMTStatus()Z

    move-result v1

    return v1
.end method

.method public isPatternEverChosen()Z
    .registers 2

    .prologue
    .line 455
    const-string v0, "lockscreen.patterneverchosen"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPcwLockEnabled()Z
    .registers 4

    .prologue
    .line 1185
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "lock_pcw_enabled"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1187
    .local v0, state:Ljava/lang/String;
    if-eqz v0, :cond_14

    const-string v1, "20"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1188
    const/4 v1, 0x1

    .line 1190
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public isPermanentlyLocked()Z
    .registers 2

    .prologue
    .line 1181
    const-string v0, "lockscreen.lockedoutpermanently"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPhoneLock()Z
    .registers 3

    .prologue
    .line 1345
    new-instance v0, Lcom/android/internal/util/NVStore;

    invoke-direct {v0}, Lcom/android/internal/util/NVStore;-><init>()V

    .line 1346
    .local v0, nv:Lcom/android/internal/util/NVStore;
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->IsPhLockeEnabled()Z

    move-result v1

    return v1
.end method

.method public isRecoverLockEnabled()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1194
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_Recovery_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_e

    move v0, v3

    :goto_d
    return v0

    :cond_e
    move v0, v2

    goto :goto_d
.end method

.method public isSecure()Z
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1286
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v5

    int-to-long v2, v5

    .line 1287
    .local v2, mode:J
    const-wide/32 v5, 0x10000

    cmp-long v5, v2, v5

    if-nez v5, :cond_43

    move v1, v8

    .line 1288
    .local v1, isPattern:Z
    :goto_f
    const-wide/32 v5, 0x20000

    cmp-long v5, v2, v5

    if-eqz v5, :cond_24

    const-wide/32 v5, 0x40000

    cmp-long v5, v2, v5

    if-eqz v5, :cond_24

    const-wide/32 v5, 0x50000

    cmp-long v5, v2, v5

    if-nez v5, :cond_45

    :cond_24
    move v0, v8

    .line 1291
    .local v0, isPassword:Z
    :goto_25
    if-eqz v1, :cond_33

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v5

    if-nez v5, :cond_41

    :cond_33
    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v5

    if-nez v5, :cond_41

    :cond_3b
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isPcwLockEnabled()Z

    move-result v5

    if-eqz v5, :cond_47

    :cond_41
    move v4, v8

    .line 1294
    .local v4, secure:Z
    :goto_42
    return v4

    .end local v0           #isPassword:Z
    .end local v1           #isPattern:Z
    .end local v4           #secure:Z
    :cond_43
    move v1, v7

    .line 1287
    goto :goto_f

    .restart local v1       #isPattern:Z
    :cond_45
    move v0, v7

    .line 1288
    goto :goto_25

    .restart local v0       #isPassword:Z
    :cond_47
    move v4, v7

    .line 1291
    goto :goto_42
.end method

.method public isTactileFeedbackEnabled()Z
    .registers 2

    .prologue
    .line 1140
    const-string v0, "lock_pattern_tactile_feedback_enabled"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVisiblePatternEnabled()Z
    .registers 2

    .prologue
    .line 1126
    const-string v0, "lock_pattern_visible_pattern"

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public passwordToHash(Ljava/lang/String;)[B
    .registers 11
    .parameter "password"

    .prologue
    .line 1057
    if-nez p1, :cond_4

    .line 1058
    const/4 v6, 0x0

    .line 1070
    :goto_3
    return-object v6

    .line 1060
    :cond_4
    const/4 v0, 0x0

    .line 1061
    .local v0, algo:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1063
    .local v2, hashed:[B
    :try_start_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getSalt()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 1064
    .local v4, saltedPassword:[B
    const-string v0, "SHA-1"

    invoke-static {v0}, Landroid/security/MessageDigest;->getInstance(Ljava/lang/String;)Landroid/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 1065
    .local v5, sha1:[B
    const-string v0, "MD5"

    invoke-static {v0}, Landroid/security/MessageDigest;->getInstance(Ljava/lang/String;)Landroid/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 1066
    .local v3, md5:[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B
    :try_end_4f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_4f} :catch_52

    move-result-object v2

    .end local v3           #md5:[B
    .end local v4           #saltedPassword:[B
    .end local v5           #sha1:[B
    :goto_50
    move-object v6, v2

    .line 1070
    goto :goto_3

    .line 1067
    :catch_52
    move-exception v6

    move-object v1, v6

    .line 1068
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const-string v6, "LockPatternUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to encode string because of missing algorithm: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50
.end method

.method public removeRecoveryPasswords()V
    .registers 5

    .prologue
    .line 778
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-nez v0, :cond_15

    .line 779
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "set_date IS NULL"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 785
    :cond_15
    return-void
.end method

.method public reportFailedPasswordAttempt()V
    .registers 2

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->reportFailedPasswordAttempt()V

    .line 340
    return-void
.end method

.method public reportPhoneUnlocked()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1351
    sput-boolean v1, Lcom/android/internal/widget/LockPatternUtils;->mIsPhonelock:Z

    .line 1352
    sput-boolean v1, Lcom/android/internal/widget/LockPatternUtils;->mPatternActivated:Z

    .line 1355
    new-instance v0, Lcom/android/internal/util/NVStore;

    invoke-direct {v0}, Lcom/android/internal/util/NVStore;-><init>()V

    .line 1356
    .local v0, nv:Lcom/android/internal/util/NVStore;
    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->GetMTStatus()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Lcom/android/internal/util/NVStore;->IsPhLockeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1357
    const-string v1, "0"

    sget-object v2, Lcom/android/internal/util/NVStore$datatype;->PHLOCK_STATE:Lcom/android/internal/util/NVStore$datatype;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/NVStore;->writedata(Ljava/lang/String;Lcom/android/internal/util/NVStore$datatype;)V

    .line 1358
    :cond_1d
    return-void
.end method

.method public reportSuccessfulPasswordAttempt()V
    .registers 2

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulPasswordAttempt()V

    .line 344
    return-void
.end method

.method public resumeCall()Z
    .registers 3

    .prologue
    .line 1325
    const-string/jumbo v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1327
    .local v0, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_16

    :try_start_d
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_15

    move-result v1

    if-eqz v1, :cond_16

    .line 1328
    const/4 v1, 0x1

    .line 1333
    :goto_14
    return v1

    .line 1330
    :catch_15
    move-exception v1

    .line 1333
    :cond_16
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public saveLockPassword(Ljava/lang/String;I)V
    .registers 23
    .parameter "password"
    .parameter "quality"

    .prologue
    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    move-object v6, v0

    const-string v7, "is_smpw_key"

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->isSimplePassword(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_27

    const/4 v8, 0x1

    :goto_e
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 648
    const-string/jumbo v6, "xAx"

    const-string v7, " saveLockPassword :: setting!! "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    if-eqz p1, :cond_29

    .line 658
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v6

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;ZI)V

    .line 717
    :cond_26
    :goto_26
    return-void

    .line 647
    :cond_27
    const/4 v8, 0x0

    goto :goto_e

    .line 664
    :cond_29
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isDeviceEncryptionEnabled()Z

    move-result v6

    if-eqz v6, :cond_32

    .line 665
    invoke-static/range {p1 .. p1}, Landroid/deviceencryption/DeviceEncryptionManager;->saveLockPassword(Ljava/lang/String;)Z

    .line 668
    :cond_32
    const/16 v18, 0x0

    .line 672
    .local v18, raf:Ljava/io/RandomAccessFile;
    :try_start_34
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v16

    .line 674
    .local v16, hash:[B
    new-instance v19, Ljava/io/RandomAccessFile;

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string/jumbo v7, "rw"

    move-object/from16 v0, v19

    move-object v1, v6

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_34 .. :try_end_46} :catchall_10c
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_46} :catch_112
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_46} :catch_10e

    .line 676
    .end local v18           #raf:Ljava/io/RandomAccessFile;
    .local v19, raf:Ljava/io/RandomAccessFile;
    if-nez p1, :cond_85

    .line 677
    const-wide/16 v9, 0x0

    :try_start_4a
    move-object/from16 v0, v19

    move-wide v1, v9

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 681
    :goto_50
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->close()V

    .line 682
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    .line 683
    .local v4, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_f0

    .line 684
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v5

    .line 685
    .local v5, computedQuality:I
    const-string v6, "lockscreen.password_type"

    int-to-long v9, v5

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 686
    if-eqz v5, :cond_bc

    .line 688
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordComplexChars(Ljava/lang/String;)I

    move-result v7

    .line 689
    .local v7, countComplex:I
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordHasSymbol(Ljava/lang/String;)Z

    move-result v8

    .line 690
    .local v8, hasSymbol:Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/LockPatternUtils;->mNotifyPwdChanges:Z

    move v9, v0

    invoke-virtual/range {v4 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIZZ)V
    :try_end_7d
    .catchall {:try_start_4a .. :try_end_7d} :catchall_fe
    .catch Ljava/io/FileNotFoundException; {:try_start_4a .. :try_end_7d} :catch_94
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_7d} :catch_ca

    .line 710
    .end local v5           #computedQuality:I
    .end local v7           #countComplex:I
    .end local v8           #hasSymbol:Z
    :goto_7d
    if-eqz v19, :cond_82

    .line 712
    :try_start_7f
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_109

    :cond_82
    :goto_82
    move-object/from16 v18, v19

    .line 716
    .end local v19           #raf:Ljava/io/RandomAccessFile;
    .restart local v18       #raf:Ljava/io/RandomAccessFile;
    goto :goto_26

    .line 679
    .end local v4           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v18           #raf:Ljava/io/RandomAccessFile;
    .restart local v19       #raf:Ljava/io/RandomAccessFile;
    :cond_85
    const/4 v6, 0x0

    :try_start_86
    move-object/from16 v0, v16

    array-length v0, v0

    move v7, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_93
    .catchall {:try_start_86 .. :try_end_93} :catchall_fe
    .catch Ljava/io/FileNotFoundException; {:try_start_86 .. :try_end_93} :catch_94
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_93} :catch_ca

    goto :goto_50

    .line 703
    :catch_94
    move-exception v6

    move-object v15, v6

    move-object/from16 v18, v19

    .line 705
    .end local v16           #hash:[B
    .end local v19           #raf:Ljava/io/RandomAccessFile;
    .local v15, fnfe:Ljava/io/FileNotFoundException;
    .restart local v18       #raf:Ljava/io/RandomAccessFile;
    :goto_98
    :try_start_98
    const-string v6, "LockPatternUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to save lock pattern to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catchall {:try_start_98 .. :try_end_b2} :catchall_10c

    .line 710
    if-eqz v18, :cond_26

    .line 712
    :try_start_b4
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b7} :catch_b9

    goto/16 :goto_26

    .line 713
    .end local v15           #fnfe:Ljava/io/FileNotFoundException;
    :catch_b9
    move-exception v6

    goto/16 :goto_26

    .line 695
    .end local v18           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v5       #computedQuality:I
    .restart local v16       #hash:[B
    .restart local v19       #raf:Ljava/io/RandomAccessFile;
    :cond_bc
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :try_start_c0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/LockPatternUtils;->mNotifyPwdChanges:Z

    move v14, v0

    move-object v9, v4

    invoke-virtual/range {v9 .. v14}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIZZ)V
    :try_end_c9
    .catchall {:try_start_c0 .. :try_end_c9} :catchall_fe
    .catch Ljava/io/FileNotFoundException; {:try_start_c0 .. :try_end_c9} :catch_94
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c9} :catch_ca

    goto :goto_7d

    .line 706
    .end local v4           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v5           #computedQuality:I
    :catch_ca
    move-exception v6

    move-object/from16 v17, v6

    move-object/from16 v18, v19

    .line 708
    .end local v16           #hash:[B
    .end local v19           #raf:Ljava/io/RandomAccessFile;
    .local v17, ioe:Ljava/io/IOException;
    .restart local v18       #raf:Ljava/io/RandomAccessFile;
    :goto_cf
    :try_start_cf
    const-string v6, "LockPatternUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to save lock pattern to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e9
    .catchall {:try_start_cf .. :try_end_e9} :catchall_10c

    .line 710
    if-eqz v18, :cond_26

    .line 712
    :try_start_eb
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_ee} :catch_b9

    goto/16 :goto_26

    .line 700
    .end local v17           #ioe:Ljava/io/IOException;
    .end local v18           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v16       #hash:[B
    .restart local v19       #raf:Ljava/io/RandomAccessFile;
    :cond_f0
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :try_start_f4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/LockPatternUtils;->mNotifyPwdChanges:Z

    move v14, v0

    move-object v9, v4

    invoke-virtual/range {v9 .. v14}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIZZ)V
    :try_end_fd
    .catchall {:try_start_f4 .. :try_end_fd} :catchall_fe
    .catch Ljava/io/FileNotFoundException; {:try_start_f4 .. :try_end_fd} :catch_94
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_fd} :catch_ca

    goto :goto_7d

    .line 710
    .end local v4           #dpm:Landroid/app/admin/DevicePolicyManager;
    :catchall_fe
    move-exception v6

    move-object/from16 v18, v19

    .end local v16           #hash:[B
    .end local v19           #raf:Ljava/io/RandomAccessFile;
    .restart local v18       #raf:Ljava/io/RandomAccessFile;
    :goto_101
    if-eqz v18, :cond_106

    .line 712
    :try_start_103
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V
    :try_end_106
    .catch Ljava/io/IOException; {:try_start_103 .. :try_end_106} :catch_107

    .line 710
    :cond_106
    :goto_106
    throw v6

    .line 713
    :catch_107
    move-exception v7

    goto :goto_106

    .end local v18           #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v16       #hash:[B
    .restart local v19       #raf:Ljava/io/RandomAccessFile;
    :catch_109
    move-exception v6

    goto/16 :goto_82

    .line 710
    .end local v4           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v16           #hash:[B
    .end local v19           #raf:Ljava/io/RandomAccessFile;
    .restart local v18       #raf:Ljava/io/RandomAccessFile;
    :catchall_10c
    move-exception v6

    goto :goto_101

    .line 706
    :catch_10e
    move-exception v6

    move-object/from16 v17, v6

    goto :goto_cf

    .line 703
    :catch_112
    move-exception v6

    move-object v15, v6

    goto :goto_98
.end method

.method public saveLockPassword(Ljava/lang/String;ZI)V
    .registers 29
    .parameter "password"
    .parameter "saveHistory"
    .parameter "quality"

    .prologue
    .line 839
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v20

    .line 841
    .local v20, hash:[B
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isDeviceEncryptionEnabled()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 843
    invoke-static/range {p1 .. p1}, Landroid/deviceencryption/DeviceEncryptionManager;->saveLockPassword(Ljava/lang/String;)Z

    .line 846
    :cond_d
    const/16 v22, 0x0

    .line 849
    .local v22, raf:Ljava/io/RandomAccessFile;
    :try_start_f
    new-instance v23, Ljava/io/RandomAccessFile;

    sget-object v7, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    const-string/jumbo v8, "rw"

    move-object/from16 v0, v23

    move-object v1, v7

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_1ba
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_1d} :catch_1c0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1d} :catch_1bc

    .line 852
    .end local v22           #raf:Ljava/io/RandomAccessFile;
    .local v23, raf:Ljava/io/RandomAccessFile;
    if-nez p1, :cond_ee

    .line 853
    const-wide/16 v10, 0x0

    :try_start_21
    move-object/from16 v0, v23

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 857
    :goto_27
    invoke-virtual/range {v23 .. v23}, Ljava/io/RandomAccessFile;->close()V

    .line 860
    if-eqz p2, :cond_bc

    .line 863
    const/16 v18, -0x1

    .line 864
    .local v18, existingPwdId:I
    invoke-static/range {v20 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v17

    .line 865
    .local v17, convertedStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "password like \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 873
    .local v16, c:Landroid/database/Cursor;
    if-eqz v16, :cond_81

    .line 874
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7c

    .line 875
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 876
    const/4 v7, 0x0

    move-object/from16 v0, v16

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 878
    :cond_7c
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 879
    const/16 v16, 0x0

    .line 884
    :cond_81
    const/4 v7, -0x1

    move/from16 v0, v18

    move v1, v7

    if-ne v0, v1, :cond_125

    .line 885
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 886
    .local v24, values:Landroid/content/ContentValues;
    const-string/jumbo v7, "password"

    move-object/from16 v0, v24

    move-object v1, v7

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    const-string/jumbo v7, "set_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v8, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v24

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 910
    .end local v16           #c:Landroid/database/Cursor;
    .end local v17           #convertedStr:Ljava/lang/String;
    .end local v18           #existingPwdId:I
    .end local v24           #values:Landroid/content/ContentValues;
    :cond_bc
    :goto_bc
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v5

    .line 911
    .local v5, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_1a6

    .line 912
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v6

    .line 913
    .local v6, computedQuality:I
    const-string v7, "lockscreen.password_type"

    int-to-long v10, v6

    move-object/from16 v0, p0

    move-object v1, v7

    move-wide v2, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 914
    if-eqz v6, :cond_18e

    .line 916
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordComplexChars(Ljava/lang/String;)I

    move-result v8

    .line 917
    .local v8, countComplex:I
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordHasSymbol(Ljava/lang/String;)Z

    move-result v9

    .line 918
    .local v9, hasSymbol:Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/LockPatternUtils;->mNotifyPwdChanges:Z

    move v10, v0

    invoke-virtual/range {v5 .. v10}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIZZ)V
    :try_end_e6
    .catchall {:try_start_21 .. :try_end_e6} :catchall_19d
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_e6} :catch_fe
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_e6} :catch_168

    .line 938
    .end local v6           #computedQuality:I
    .end local v8           #countComplex:I
    .end local v9           #hasSymbol:Z
    :goto_e6
    if-eqz v23, :cond_eb

    .line 940
    :try_start_e8
    invoke-virtual/range {v23 .. v23}, Ljava/io/RandomAccessFile;->close()V
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_eb} :catch_1b7

    :cond_eb
    :goto_eb
    move-object/from16 v22, v23

    .line 945
    .end local v5           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v23           #raf:Ljava/io/RandomAccessFile;
    .restart local v22       #raf:Ljava/io/RandomAccessFile;
    :cond_ed
    :goto_ed
    return-void

    .line 855
    .end local v22           #raf:Ljava/io/RandomAccessFile;
    .restart local v23       #raf:Ljava/io/RandomAccessFile;
    :cond_ee
    const/4 v7, 0x0

    :try_start_ef
    move-object/from16 v0, v20

    array-length v0, v0

    move v8, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    move v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_fc
    .catchall {:try_start_ef .. :try_end_fc} :catchall_19d
    .catch Ljava/io/FileNotFoundException; {:try_start_ef .. :try_end_fc} :catch_fe
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_fc} :catch_168

    goto/16 :goto_27

    .line 931
    :catch_fe
    move-exception v7

    move-object/from16 v19, v7

    move-object/from16 v22, v23

    .line 933
    .end local v23           #raf:Ljava/io/RandomAccessFile;
    .local v19, fnfe:Ljava/io/FileNotFoundException;
    .restart local v22       #raf:Ljava/io/RandomAccessFile;
    :goto_103
    :try_start_103
    const-string v7, "LockPatternUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to save lock pattern to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11d
    .catchall {:try_start_103 .. :try_end_11d} :catchall_1ba

    .line 938
    if-eqz v22, :cond_ed

    .line 940
    :try_start_11f
    invoke-virtual/range {v22 .. v22}, Ljava/io/RandomAccessFile;->close()V
    :try_end_122
    .catch Ljava/io/IOException; {:try_start_11f .. :try_end_122} :catch_123

    goto :goto_ed

    .line 941
    .end local v19           #fnfe:Ljava/io/FileNotFoundException;
    :catch_123
    move-exception v7

    goto :goto_ed

    .line 895
    .end local v22           #raf:Ljava/io/RandomAccessFile;
    .restart local v16       #c:Landroid/database/Cursor;
    .restart local v17       #convertedStr:Ljava/lang/String;
    .restart local v18       #existingPwdId:I
    .restart local v23       #raf:Ljava/io/RandomAccessFile;
    :cond_125
    :try_start_125
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 896
    .restart local v24       #values:Landroid/content/ContentValues;
    const-string/jumbo v7, "password"

    move-object/from16 v0, v24

    move-object v1, v7

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    const-string/jumbo v7, "set_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    long-to-int v8, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v24

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide v10, v0

    invoke-static {v8, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v24

    move-object v3, v9

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_166
    .catchall {:try_start_125 .. :try_end_166} :catchall_19d
    .catch Ljava/io/FileNotFoundException; {:try_start_125 .. :try_end_166} :catch_fe
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_166} :catch_168

    goto/16 :goto_bc

    .line 934
    .end local v16           #c:Landroid/database/Cursor;
    .end local v17           #convertedStr:Ljava/lang/String;
    .end local v18           #existingPwdId:I
    .end local v24           #values:Landroid/content/ContentValues;
    :catch_168
    move-exception v7

    move-object/from16 v21, v7

    move-object/from16 v22, v23

    .line 936
    .end local v23           #raf:Ljava/io/RandomAccessFile;
    .local v21, ioe:Ljava/io/IOException;
    .restart local v22       #raf:Ljava/io/RandomAccessFile;
    :goto_16d
    :try_start_16d
    const-string v7, "LockPatternUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to save lock pattern to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/internal/widget/LockPatternUtils;->sLockPasswordFilename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_187
    .catchall {:try_start_16d .. :try_end_187} :catchall_1ba

    .line 938
    if-eqz v22, :cond_ed

    .line 940
    :try_start_189
    invoke-virtual/range {v22 .. v22}, Ljava/io/RandomAccessFile;->close()V
    :try_end_18c
    .catch Ljava/io/IOException; {:try_start_189 .. :try_end_18c} :catch_123

    goto/16 :goto_ed

    .line 923
    .end local v21           #ioe:Ljava/io/IOException;
    .end local v22           #raf:Ljava/io/RandomAccessFile;
    .restart local v5       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v6       #computedQuality:I
    .restart local v23       #raf:Ljava/io/RandomAccessFile;
    :cond_18e
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :try_start_192
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/LockPatternUtils;->mNotifyPwdChanges:Z

    move v15, v0

    move-object v10, v5

    invoke-virtual/range {v10 .. v15}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIZZ)V
    :try_end_19b
    .catchall {:try_start_192 .. :try_end_19b} :catchall_19d
    .catch Ljava/io/FileNotFoundException; {:try_start_192 .. :try_end_19b} :catch_fe
    .catch Ljava/io/IOException; {:try_start_192 .. :try_end_19b} :catch_168

    goto/16 :goto_e6

    .line 938
    .end local v5           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v6           #computedQuality:I
    :catchall_19d
    move-exception v7

    move-object/from16 v22, v23

    .end local v23           #raf:Ljava/io/RandomAccessFile;
    .restart local v22       #raf:Ljava/io/RandomAccessFile;
    :goto_1a0
    if-eqz v22, :cond_1a5

    .line 940
    :try_start_1a2
    invoke-virtual/range {v22 .. v22}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1a5
    .catch Ljava/io/IOException; {:try_start_1a2 .. :try_end_1a5} :catch_1b5

    .line 938
    :cond_1a5
    :goto_1a5
    throw v7

    .line 928
    .end local v22           #raf:Ljava/io/RandomAccessFile;
    .restart local v5       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v23       #raf:Ljava/io/RandomAccessFile;
    :cond_1a6
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :try_start_1aa
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/LockPatternUtils;->mNotifyPwdChanges:Z

    move v15, v0

    move-object v10, v5

    invoke-virtual/range {v10 .. v15}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIZZ)V
    :try_end_1b3
    .catchall {:try_start_1aa .. :try_end_1b3} :catchall_19d
    .catch Ljava/io/FileNotFoundException; {:try_start_1aa .. :try_end_1b3} :catch_fe
    .catch Ljava/io/IOException; {:try_start_1aa .. :try_end_1b3} :catch_168

    goto/16 :goto_e6

    .line 941
    .end local v5           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v23           #raf:Ljava/io/RandomAccessFile;
    .restart local v22       #raf:Ljava/io/RandomAccessFile;
    :catch_1b5
    move-exception v8

    goto :goto_1a5

    .end local v22           #raf:Ljava/io/RandomAccessFile;
    .restart local v5       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v23       #raf:Ljava/io/RandomAccessFile;
    :catch_1b7
    move-exception v7

    goto/16 :goto_eb

    .line 938
    .end local v5           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v23           #raf:Ljava/io/RandomAccessFile;
    .restart local v22       #raf:Ljava/io/RandomAccessFile;
    :catchall_1ba
    move-exception v7

    goto :goto_1a0

    .line 934
    :catch_1bc
    move-exception v7

    move-object/from16 v21, v7

    goto :goto_16d

    .line 931
    :catch_1c0
    move-exception v7

    move-object/from16 v19, v7

    goto/16 :goto_103
.end method

.method public saveLockPasswordByForce(Ljava/lang/String;I)V
    .registers 5
    .parameter "password"
    .parameter "quality"

    .prologue
    .line 1400
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isOKtoRemoveKEY()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 1401
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->clearLockByForce()V

    .line 1402
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    .line 1404
    :cond_d
    return-void
.end method

.method public saveLockPattern(Ljava/util/List;)V
    .registers 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v3, 0x0

    const-string v11, "Unable to save lock pattern to "

    const-string v10, "LockPatternUtils"

    .line 540
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "is_smpw_key"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 541
    const-string/jumbo v1, "xAx"

    const-string v2, "Pattern Enabled. So resetting!! "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v7

    .line 546
    .local v7, hash:[B
    if-eqz p1, :cond_1e

    .line 547
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/deviceencryption/DeviceEncryptionManager;->saveLockPassword(Ljava/lang/String;)Z

    .line 554
    :cond_1e
    :try_start_1e
    new-instance v9, Ljava/io/RandomAccessFile;

    sget-object v1, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    const-string/jumbo v2, "rw"

    invoke-direct {v9, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    .local v9, raf:Ljava/io/RandomAccessFile;
    if-nez p1, :cond_5b

    .line 557
    const-wide/16 v1, 0x0

    invoke-virtual {v9, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 561
    :goto_2f
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V

    .line 562
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    .line 563
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 564
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_7e

    .line 565
    const-string v1, "lockscreen.patterneverchosen"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 566
    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 567
    const/high16 v1, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/android/internal/widget/LockPatternUtils;->mNotifyPwdChanges:Z

    invoke-virtual/range {v0 .. v5}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIZZ)V

    .line 580
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v9           #raf:Ljava/io/RandomAccessFile;
    :goto_5a
    return-void

    .line 559
    .restart local v9       #raf:Ljava/io/RandomAccessFile;
    :cond_5b
    const/4 v1, 0x0

    array-length v2, v7

    invoke-virtual {v9, v7, v1, v2}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_60
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_60} :catch_61
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_60} :catch_88

    goto :goto_2f

    .line 573
    .end local v9           #raf:Ljava/io/RandomAccessFile;
    :catch_61
    move-exception v1

    move-object v6, v1

    .line 575
    .local v6, fnfe:Ljava/io/FileNotFoundException;
    const-string v1, "LockPatternUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to save lock pattern to "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 570
    .end local v6           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v0       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v9       #raf:Ljava/io/RandomAccessFile;
    :cond_7e
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_82
    iget-boolean v5, p0, Lcom/android/internal/widget/LockPatternUtils;->mNotifyPwdChanges:Z

    invoke-virtual/range {v0 .. v5}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIZZ)V
    :try_end_87
    .catch Ljava/io/FileNotFoundException; {:try_start_82 .. :try_end_87} :catch_61
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_87} :catch_88

    goto :goto_5a

    .line 576
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v9           #raf:Ljava/io/RandomAccessFile;
    :catch_88
    move-exception v1

    move-object v8, v1

    .line 578
    .local v8, ioe:Ljava/io/IOException;
    const-string v1, "LockPatternUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to save lock pattern to "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/widget/LockPatternUtils;->sLockPatternFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a
.end method

.method public savedPasswordExists()Z
    .registers 3

    .prologue
    .line 423
    const-string/jumbo v0, "ram"

    const-string v1, "encryption.bootmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 424
    const/4 v0, 0x1

    .line 426
    :goto_10
    return v0

    :cond_11
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    goto :goto_10
.end method

.method public savedPasswordHistoryExists()Z
    .registers 2

    .prologue
    .line 436
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPasswordHistoryFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public savedPatternExists()Z
    .registers 2

    .prologue
    .line 414
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroPatternFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public savedRecoveryPasswordExists()Z
    .registers 2

    .prologue
    .line 444
    sget-object v0, Lcom/android/internal/widget/LockPatternUtils;->sHaveNonZeroRecoveryPasswordFile:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public setLockPatternEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 1119
    const-string v0, "lock_pattern_autolock"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1120
    return-void
.end method

.method public setLockoutAttemptDeadline()J
    .registers 7

    .prologue
    .line 1156
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long v0, v2, v4

    .line 1157
    .local v0, deadline:J
    const-string v2, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    .line 1158
    return-wide v0
.end method

.method public setPermanentlyLocked(Z)V
    .registers 3
    .parameter "locked"

    .prologue
    .line 1206
    const-string v0, "lockscreen.lockedoutpermanently"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1207
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 1147
    const-string v0, "lock_pattern_tactile_feedback_enabled"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1148
    return-void
.end method

.method public setVisiblePatternEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 1133
    const-string v0, "lock_pattern_visible_pattern"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    .line 1134
    return-void
.end method

.method public updateEmergencyCallButtonState(Landroid/widget/Button;)V
    .registers 8
    .parameter "button"

    .prologue
    const/4 v5, 0x0

    .line 1303
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    .line 1305
    .local v1, newState:I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_19

    .line 1307
    const v3, 0x1040328

    .line 1308
    .local v3, textId:I
    const v2, 0x1080084

    .line 1309
    .local v2, phoneCallIcon:I
    invoke-virtual {p1, v2, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1315
    .end local v2           #phoneCallIcon:I
    :goto_15
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(I)V

    .line 1316
    return-void

    .line 1311
    .end local v3           #textId:I
    :cond_19
    const v3, 0x1040327

    .line 1312
    .restart local v3       #textId:I
    const v0, 0x10801b2

    .line 1313
    .local v0, emergencyIcon:I
    invoke-virtual {p1, v0, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_15
.end method

.method public verifyPasswordHistory(Ljava/lang/String;)Z
    .registers 15
    .parameter "pwd"

    .prologue
    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x1

    .line 219
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistory(Landroid/content/ComponentName;)I

    move-result v7

    .line 220
    .local v7, checkHistory:I
    if-gtz v7, :cond_f

    move v0, v11

    .line 247
    :goto_e
    return v0

    .line 223
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v10

    .line 224
    .local v10, hash:[B
    invoke-static {v10}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v8

    .line 226
    .local v8, convertedStr:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v12

    const-string/jumbo v3, "password"

    aput-object v3, v2, v11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set_date IS NOT NULL ORDER BY set_date DESC LIMIT "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 235
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_5f

    .line 236
    :cond_46
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 237
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 238
    .local v9, existingPwd:Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 240
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v12

    .line 241
    goto :goto_e

    .line 244
    .end local v9           #existingPwd:Ljava/lang/String;
    :cond_5b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 245
    const/4 v6, 0x0

    :cond_5f
    move v0, v11

    .line 247
    goto :goto_e
.end method
