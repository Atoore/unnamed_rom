.class public Landroid/deviceencryption/DeviceEncryptionManager;
.super Ljava/lang/Object;
.source "DeviceEncryptionManager.java"


# static fields
.field public static final CRYPT_ACTIVITY_POPUP_TYPE_AFTER_FORMAT:I = 0x20

.field public static final CRYPT_ACTIVITY_POPUP_TYPE_AFTER_REBOOT:I = 0x40

.field public static final CRYPT_ACTIVITY_POPUP_TYPE_AFTER_REINSERT:I = 0x60

.field public static final CRYPT_ACTIVITY_POPUP_TYPE_ENABLE_POLICY:I = 0x2

.field public static final CRYPT_ACTIVITY_POPUP_TYPE_ERROR:I = 0x10

.field public static final CRYPT_ACTIVITY_POPUP_TYPE_FIRST_STORAGE:I = 0x0

.field public static final CRYPT_ACTIVITY_POPUP_TYPE_SECOND_STORAGE:I = 0x1

.field public static final DECRYPT:I = 0x0

.field public static final ECRYPT_ACTIVITY_POPUP_INTENT_NAME:Ljava/lang/String; = "encyprt_activity_popuptype"

.field public static final ECRYPT_ACTIVITY_POPUP_TYPE_NOTI_ERR_BATCH:I = 0x40

.field public static final ECRYPT_ACTIVITY_POPUP_TYPE_NOTI_ERR_MAPPING:I = 0x50

.field public static final ECRYPT_ACTIVITY_POPUP_TYPE_SHARED_BIT:I = 0x8

.field public static final ENCRYPT:I = 0x1

.field public static final ENCRYPT_ACTION:Ljava/lang/String; = "com.sec.android.app.encrypt.action.ENCRYPT"

.field private static final ENCRYPT_NOTAPPLIED:Ljava/lang/String; = "NULL"

.field public static final ENCRYPT_POLICY_CHANAGED:Ljava/lang/String; = "com.sec.android.app.encrypt.action.POLICY_CHANGED"

.field public static final EXTERNAL:Ljava/lang/String; = "external"

.field public static final EXTERNAL_STORAGE:I = 0x0

.field public static final EXT_POLICY_STATUS_BIT_ENC:I = 0x4

.field public static final EXT_STATUS_BIT_COMP:I = 0x1

.field public static final EXT_STATUS_BIT_DECB:I = 0x2

.field public static final EXT_STATUS_BIT_ENCB:I = 0x3

.field public static final EXT_STATUS_BIT_NULL:I = 0x0

.field public static final INTERNAL:Ljava/lang/String; = "internal"

.field public static final INTERNAL_EXTERNAL:Ljava/lang/String; = "internal:external"

.field public static final INTERNAL_STORAGE:I = 0x1

.field private static final LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object; = null

.field private static final NORMAL_PASSWORD:I = 0x0

.field public static final POLICY_APPLIED:Ljava/lang/String; = "com.sec.android.app.encrypt.action.POLICY_APPLIED"

.field private static final RECOVERY_PASSWORD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DeviceEncryption"

.field public static final WHOLE_STORAGE:I = 0x2

.field private static final debug:Z

.field public static final enabled:Ljava/lang/String;

.field private static isFirstboot:Z

.field private static mMntSvc:Landroid/os/storage/IMountService;

.field public static m_InstEncSvc:Landroid/os/storage/IEncryptService;

.field public static final supportFileLevelEncryption:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const-string v3, "false"

    .line 23
    const-string/jumbo v0, "ro.secdevenc"

    const-string v1, "false"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "ro.file_level_encryption"

    const-string v1, "false"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/deviceencryption/DeviceEncryptionManager;->supportFileLevelEncryption:Ljava/lang/String;

    .line 36
    new-instance v0, Landroid/deviceencryption/DeviceEncryptionManager$1;

    invoke-direct {v0}, Landroid/deviceencryption/DeviceEncryptionManager$1;-><init>()V

    sput-object v0, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    .line 74
    sput-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    .line 79
    const/4 v0, 0x1

    sput-boolean v0, Landroid/deviceencryption/DeviceEncryptionManager;->isFirstboot:Z

    .line 87
    sput-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->mMntSvc:Landroid/os/storage/IMountService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Landroid/deviceencryption/DeviceEncryptionManager;->mContext:Landroid/content/Context;

    .line 97
    return-void
.end method

.method public static checkPassword(Ljava/lang/String;)Z
    .registers 7
    .parameter "password"

    .prologue
    const/4 v4, 0x0

    const-string v5, "DeviceEncryption"

    .line 274
    sget-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    move v2, v4

    .line 307
    :goto_f
    return v2

    .line 276
    :cond_10
    if-eqz p0, :cond_19

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1b

    :cond_19
    move v2, v4

    .line 277
    goto :goto_f

    .line 280
    :cond_1b
    const/4 v1, 0x0

    .line 281
    .local v1, ret:Z
    sget-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    monitor-enter v2

    .line 282
    const/4 v3, 0x0

    :try_start_20
    invoke-static {p0, v3}, Landroid/deviceencryption/DeviceEncryptionManager;->verifyPassword(Ljava/lang/String;I)Z

    move-result v1

    .line 283
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_42

    .line 287
    if-eqz v1, :cond_40

    .line 291
    :try_start_27
    sget-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    if-nez v2, :cond_37

    .line 292
    const-string v2, "encrypt"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IEncryptService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IEncryptService;

    move-result-object v2

    sput-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    .line 295
    :cond_37
    sget-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    if-eqz v2, :cond_45

    .line 296
    sget-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    invoke-interface {v2, p0}, Landroid/os/storage/IEncryptService;->setPassword(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_40} :catch_4d

    :cond_40
    :goto_40
    move v2, v1

    .line 307
    goto :goto_f

    .line 283
    :catchall_42
    move-exception v3

    :try_start_43
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v3

    .line 298
    :cond_45
    :try_start_45
    const-string v2, "DeviceEncryption"

    const-string v3, "checkPassword : IEncryptService instance is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4c} :catch_4d

    goto :goto_40

    .line 300
    :catch_4d
    move-exception v2

    move-object v0, v2

    .line 302
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DeviceEncryption"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " checkPassword : exception =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40
.end method

.method public static getAppliedStatusForExternal()Z
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const-string/jumbo v10, "true"

    const-string v8, "false"

    .line 525
    sget-object v5, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v6, "true"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    move v5, v7

    .line 579
    :goto_13
    return v5

    .line 527
    :cond_14
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getExternalStorageStatus()Z

    move-result v5

    if-ne v5, v7, :cond_88

    .line 528
    const/4 v4, 0x0

    .line 529
    .local v4, exSDStatus:Ljava/lang/String;
    const/4 v3, 0x0

    .line 530
    .local v3, exSDPath:Ljava/lang/String;
    const/4 v2, 0x0

    .line 539
    .local v2, exSDEncryptStatus:Ljava/lang/String;
    :try_start_1d
    sget-object v5, Landroid/deviceencryption/DeviceEncryptionManager;->mMntSvc:Landroid/os/storage/IMountService;

    if-nez v5, :cond_2e

    .line 540
    const-string/jumbo v5, "mount"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v5

    sput-object v5, Landroid/deviceencryption/DeviceEncryptionManager;->mMntSvc:Landroid/os/storage/IMountService;

    .line 542
    :cond_2e
    sget-object v5, Landroid/deviceencryption/DeviceEncryptionManager;->mMntSvc:Landroid/os/storage/IMountService;

    if-nez v5, :cond_34

    move v5, v7

    .line 544
    goto :goto_13

    .line 546
    :cond_34
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .line 549
    sget-object v5, Landroid/deviceencryption/DeviceEncryptionManager;->mMntSvc:Landroid/os/storage/IMountService;

    invoke-interface {v5, v3}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_41} :catch_70

    move-result-object v4

    .line 557
    const-string/jumbo v5, "mounted"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_88

    .line 558
    const-string/jumbo v5, "true"

    const-string/jumbo v5, "ro.sec_ecryptfs_enabled"

    const-string v6, "false"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_74

    .line 559
    const-string/jumbo v5, "sys.encryption.sdencryptedmount"

    const-string v6, "false"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, encryptMount:Ljava/lang/String;
    const-string v5, "false"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_88

    move v5, v9

    .line 561
    goto :goto_13

    .line 552
    .end local v0           #encryptMount:Ljava/lang/String;
    :catch_70
    move-exception v5

    move-object v1, v5

    .local v1, ex:Ljava/lang/Exception;
    move v5, v7

    .line 554
    goto :goto_13

    .line 565
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_74
    :try_start_74
    sget-object v5, Landroid/deviceencryption/DeviceEncryptionManager;->mMntSvc:Landroid/os/storage/IMountService;

    invoke-interface {v5, v3}, Landroid/os/storage/IMountService;->getEncryptedStatus(Ljava/lang/String;)Ljava/lang/String;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_79} :catch_84

    move-result-object v2

    .line 571
    const-string v5, "NULL"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_88

    move v5, v9

    .line 573
    goto :goto_13

    .line 566
    :catch_84
    move-exception v5

    move-object v1, v5

    .restart local v1       #ex:Ljava/lang/Exception;
    move v5, v7

    .line 568
    goto :goto_13

    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #exSDEncryptStatus:Ljava/lang/String;
    .end local v3           #exSDPath:Ljava/lang/String;
    .end local v4           #exSDStatus:Ljava/lang/String;
    :cond_88
    move v5, v7

    .line 579
    goto :goto_13
.end method

.method public static getAppliedStatusForInternal()Z
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 505
    sget-object v0, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v2

    .line 513
    :goto_d
    return v0

    .line 507
    :cond_e
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getInternalStorageStatus()Z

    move-result v0

    if-ne v0, v2, :cond_24

    .line 508
    const-string v0, "NULL"

    const-string v1, "data"

    invoke-static {v1}, Landroid/deviceencryption/DeviceEncryptionManager;->getCryptBatchStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 509
    const/4 v0, 0x0

    goto :goto_d

    :cond_24
    move v0, v2

    .line 513
    goto :goto_d
.end method

.method private static native getBatchStatus(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getCryptBatchStatus(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "label"

    .prologue
    .line 410
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x0

    .line 421
    :goto_c
    return-object v1

    .line 416
    :cond_d
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    monitor-enter v1

    .line 417
    :try_start_10
    invoke-static {p0}, Landroid/deviceencryption/DeviceEncryptionManager;->getBatchStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, propertyBuffer:Ljava/lang/String;
    monitor-exit v1

    move-object v1, v0

    .line 421
    goto :goto_c

    .line 418
    .end local v0           #propertyBuffer:Ljava/lang/String;
    :catchall_17
    move-exception v2

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw v2
.end method

.method public static getExternalStorageStatus()Z
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 233
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    move v1, v3

    .line 244
    :goto_e
    return v1

    .line 235
    :cond_f
    const-string/jumbo v1, "policy"

    invoke-static {v1}, Landroid/deviceencryption/DeviceEncryptionManager;->getFileCryptProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, appliedPolicy:Ljava/lang/String;
    if-nez v0, :cond_1a

    move v1, v3

    .line 238
    goto :goto_e

    .line 241
    :cond_1a
    const-string v1, "external"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v1, v4, :cond_24

    move v1, v4

    .line 242
    goto :goto_e

    :cond_24
    move v1, v3

    .line 244
    goto :goto_e
.end method

.method public static getFileCryptProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "label"

    .prologue
    .line 426
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x0

    .line 437
    :goto_c
    return-object v1

    .line 432
    :cond_d
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    monitor-enter v1

    .line 433
    :try_start_10
    invoke-static {p0}, Landroid/deviceencryption/DeviceEncryptionManager;->getFileProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, propertyBuffer:Ljava/lang/String;
    monitor-exit v1

    move-object v1, v0

    .line 437
    goto :goto_c

    .line 434
    .end local v0           #propertyBuffer:Ljava/lang/String;
    :catchall_17
    move-exception v2

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw v2
.end method

.method private static native getFileProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native getFipsMode()Z
.end method

.method public static getInternalStorageStatus()Z
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 211
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    move v1, v3

    .line 222
    :goto_e
    return v1

    .line 213
    :cond_f
    const-string/jumbo v1, "policy"

    invoke-static {v1}, Landroid/deviceencryption/DeviceEncryptionManager;->getFileCryptProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, appliedPolicy:Ljava/lang/String;
    if-nez v0, :cond_1a

    move v1, v3

    .line 216
    goto :goto_e

    .line 219
    :cond_1a
    const-string v1, "internal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v1, v4, :cond_24

    move v1, v4

    .line 220
    goto :goto_e

    :cond_24
    move v1, v3

    .line 222
    goto :goto_e
.end method

.method public static getSaltFilePath()Ljava/lang/String;
    .registers 1

    .prologue
    .line 455
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getSaltPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native getSaltPath()Ljava/lang/String;
.end method

.method public static inFipsMode()Z
    .registers 1

    .prologue
    .line 100
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getFipsMode()Z

    move-result v0

    return v0
.end method

.method public static isDeviceEncryptionEnabled()Z
    .registers 2

    .prologue
    .line 257
    sget-object v0, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static native isEncryptTarget(Ljava/lang/String;)I
.end method

.method public static isFileEncryptionEnabled()Z
    .registers 2

    .prologue
    .line 270
    sget-object v0, Landroid/deviceencryption/DeviceEncryptionManager;->supportFileLevelEncryption:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLockPasswordEnabled()Z
    .registers 3

    .prologue
    .line 378
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x0

    .line 388
    :goto_c
    return v1

    .line 379
    :cond_d
    const/4 v0, 0x0

    .line 382
    .local v0, ret:Z
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    monitor-enter v1

    .line 383
    :try_start_11
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isPasswordEnabled()Z

    move-result v0

    .line 384
    monitor-exit v1

    move v1, v0

    .line 388
    goto :goto_c

    .line 384
    :catchall_18
    move-exception v2

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_18

    throw v2
.end method

.method public static isOKtoRemoveKEY()Z
    .registers 3

    .prologue
    .line 468
    const/4 v0, 0x0

    .line 470
    .local v0, ret:I
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    monitor-enter v1

    .line 471
    :try_start_4
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isOktoRemoveEDKP()I

    move-result v0

    .line 472
    monitor-exit v1

    .line 474
    if-nez v0, :cond_10

    const/4 v1, 0x0

    .line 475
    :goto_c
    return v1

    .line 472
    :catchall_d
    move-exception v2

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v2

    .line 475
    :cond_10
    const/4 v1, 0x1

    goto :goto_c
.end method

.method private static native isOktoRemoveEDKP()I
.end method

.method private static native isPasswordEnabled()Z
.end method

.method public static isPasswordRequired()Z
    .registers 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 371
    sget-object v0, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v3

    .line 373
    :goto_e
    return v0

    .line 372
    :cond_f
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getInternalStorageStatus()Z

    move-result v0

    if-ne v0, v2, :cond_1d

    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isLockPasswordEnabled()Z

    move-result v0

    if-ne v0, v2, :cond_1d

    move v0, v2

    goto :goto_e

    :cond_1d
    move v0, v3

    .line 373
    goto :goto_e
.end method

.method public static isTargetToEncrypt(Ljava/lang/String;)Z
    .registers 4
    .parameter "label"

    .prologue
    .line 480
    const/4 v0, 0x0

    .line 484
    .local v0, ret:I
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    monitor-enter v1

    .line 485
    :try_start_4
    invoke-static {p0}, Landroid/deviceencryption/DeviceEncryptionManager;->isEncryptTarget(Ljava/lang/String;)I

    move-result v0

    .line 486
    monitor-exit v1

    .line 490
    if-nez v0, :cond_10

    const/4 v1, 0x0

    .line 491
    :goto_c
    return v1

    .line 486
    :catchall_d
    move-exception v2

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v2

    .line 491
    :cond_10
    const/4 v1, 0x1

    goto :goto_c
.end method

.method private static native recoverPassword(Ljava/lang/String;)Z
.end method

.method private static native removeEDKP()V
.end method

.method public static removeKeyByForce()V
    .registers 2

    .prologue
    .line 459
    sget-object v0, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 464
    :goto_b
    return-void

    .line 461
    :cond_c
    sget-object v0, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    monitor-enter v0

    .line 462
    :try_start_f
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->removeEDKP()V

    .line 463
    monitor-exit v0

    goto :goto_b

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_14

    throw v1
.end method

.method public static resetPassword(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 5
    .parameter "password"
    .parameter "obj"

    .prologue
    .line 392
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x0

    .line 405
    :goto_c
    return v1

    .line 393
    :cond_d
    const/4 v0, 0x0

    .line 396
    .local v0, ret:Z
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    monitor-enter v1

    .line 397
    :try_start_11
    invoke-static {p0}, Landroid/deviceencryption/DeviceEncryptionManager;->recoverPassword(Ljava/lang/String;)Z

    move-result v0

    .line 398
    monitor-exit v1

    .line 400
    if-eqz p1, :cond_18

    :cond_18
    move v1, v0

    .line 405
    goto :goto_c

    .line 398
    :catchall_1a
    move-exception v2

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_1a

    throw v2
.end method

.method public static saveLockPassword(Ljava/lang/String;)Z
    .registers 7
    .parameter "password"

    .prologue
    const-string v2, "DeviceEncryption"

    .line 313
    sget-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const/4 v2, 0x0

    .line 337
    :goto_e
    return v2

    .line 317
    :cond_f
    const/4 v1, 0x1

    .line 320
    .local v1, result:Z
    sget-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    monitor-enter v2

    .line 322
    :try_start_13
    sget-object v3, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    if-nez v3, :cond_23

    .line 323
    const-string v3, "encrypt"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IEncryptService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IEncryptService;

    move-result-object v3

    sput-object v3, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    .line 325
    :cond_23
    sget-object v3, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    if-eqz v3, :cond_2f

    .line 326
    sget-object v3, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    invoke-interface {v3, p0}, Landroid/os/storage/IEncryptService;->setPassword(Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_58
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2c} :catch_38

    .line 336
    :goto_2c
    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_58

    move v2, v1

    .line 337
    goto :goto_e

    .line 329
    :cond_2f
    :try_start_2f
    const-string v3, "DeviceEncryption"

    const-string v4, "checkPassword : IEncryptService instance is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_58
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_36} :catch_38

    .line 330
    const/4 v1, 0x0

    goto :goto_2c

    .line 332
    :catch_38
    move-exception v3

    move-object v0, v3

    .line 333
    .local v0, e:Ljava/lang/Exception;
    :try_start_3a
    const-string v3, "DeviceEncryption"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " checkPassword : exception =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v1, 0x0

    goto :goto_2c

    .line 336
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_58
    move-exception v3

    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_3a .. :try_end_5a} :catchall_58

    throw v3
.end method

.method private static native savePassword(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public static saveRecoveryPassword(Ljava/lang/String;)Z
    .registers 7
    .parameter "newPassword"

    .prologue
    const-string v2, "DeviceEncryption"

    .line 341
    sget-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const/4 v2, 0x0

    .line 366
    :goto_e
    return v2

    .line 346
    :cond_f
    const/4 v1, 0x1

    .line 349
    .local v1, result:Z
    sget-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    monitor-enter v2

    .line 351
    :try_start_13
    sget-object v3, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    if-nez v3, :cond_23

    .line 352
    const-string v3, "encrypt"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IEncryptService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IEncryptService;

    move-result-object v3

    sput-object v3, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    .line 354
    :cond_23
    sget-object v3, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    if-eqz v3, :cond_2f

    .line 355
    sget-object v3, Landroid/deviceencryption/DeviceEncryptionManager;->m_InstEncSvc:Landroid/os/storage/IEncryptService;

    invoke-interface {v3, p0}, Landroid/os/storage/IEncryptService;->setRecoveryPassword(Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_58
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2c} :catch_38

    .line 365
    :goto_2c
    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_58

    move v2, v1

    .line 366
    goto :goto_e

    .line 358
    :cond_2f
    :try_start_2f
    const-string v3, "DeviceEncryption"

    const-string v4, "checkPassword : IEncryptService instance is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_58
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_36} :catch_38

    .line 359
    const/4 v1, 0x0

    goto :goto_2c

    .line 361
    :catch_38
    move-exception v3

    move-object v0, v3

    .line 362
    .local v0, e:Ljava/lang/Exception;
    :try_start_3a
    const-string v3, "DeviceEncryption"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " checkPassword : exception =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/4 v1, 0x0

    goto :goto_2c

    .line 365
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_58
    move-exception v3

    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_3a .. :try_end_5a} :catchall_58

    throw v3
.end method

.method private setEncryptPolicyInternal(IIZ)V
    .registers 10
    .parameter "internal"
    .parameter "external"
    .parameter "force"

    .prologue
    const/4 v5, 0x1

    .line 169
    sget-object v3, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 201
    :cond_c
    :goto_c
    return-void

    .line 171
    :cond_d
    const-string v1, ""

    .line 173
    .local v1, cmd:Ljava/lang/String;
    if-ne p1, v5, :cond_55

    if-ne p2, v5, :cond_55

    .line 174
    const-string v1, "internal:external"

    .line 181
    :cond_15
    :goto_15
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 182
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "com.sec.android.app.encrypt.action.ENCRYPT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v3, "cmd"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v3, "force"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 185
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 186
    const-string v3, "com.sec.android.app.encrypt"

    const-string v4, "com.sec.android.app.encrypt.DeviceEncryptionActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    iget-object v3, p0, Landroid/deviceencryption/DeviceEncryptionManager;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 190
    .local v0, DPM:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_47

    .line 191
    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->setEncryptionPolicyWithEncryptApp(Landroid/content/Intent;)Z

    move-result v3

    if-eq v3, v5, :cond_c

    .line 198
    :cond_47
    const-string v3, "DeviceEncryption"

    const-string/jumbo v4, "setEncryptPolicyInternal for system application"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v3, p0, Landroid/deviceencryption/DeviceEncryptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_c

    .line 175
    .end local v0           #DPM:Landroid/app/admin/DevicePolicyManager;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_55
    if-ne p1, v5, :cond_5a

    .line 176
    const-string v1, "internal"

    goto :goto_15

    .line 177
    :cond_5a
    if-ne p2, v5, :cond_15

    .line 178
    const-string v1, "external"

    goto :goto_15
.end method

.method public static setFileCryptProperty(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .parameter "label"
    .parameter "value"

    .prologue
    .line 441
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x0

    .line 451
    :goto_c
    return v1

    .line 442
    :cond_d
    const/4 v0, 0x0

    .line 447
    .local v0, ret:I
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->LOCK_SCAN_MOUNT_ACCESS:Ljava/lang/Object;

    monitor-enter v1

    .line 448
    :try_start_11
    invoke-static {p0, p1}, Landroid/deviceencryption/DeviceEncryptionManager;->setFileProperty(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 449
    monitor-exit v1

    move v1, v0

    .line 451
    goto :goto_c

    .line 449
    :catchall_18
    move-exception v2

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_18

    throw v2
.end method

.method private static native setFileProperty(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native verifyPassword(Ljava/lang/String;I)Z
.end method


# virtual methods
.method public setEncryptPolicy(II)V
    .registers 8
    .parameter "which"
    .parameter "policy"

    .prologue
    const/4 v4, 0x1

    .line 113
    sget-object v2, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 135
    :cond_c
    :goto_c
    return-void

    .line 115
    :cond_d
    const/4 v1, 0x0

    .local v1, internal:I
    const/4 v0, 0x0

    .line 117
    .local v0, external:I
    if-eq p2, v4, :cond_13

    if-nez p2, :cond_c

    .line 119
    :cond_13
    if-nez p1, :cond_22

    .line 120
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getInternalStorageStatus()Z

    move-result v2

    if-ne v2, v4, :cond_1c

    .line 121
    const/4 v1, 0x1

    .line 123
    :cond_1c
    move v0, p2

    .line 134
    :cond_1d
    :goto_1d
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Landroid/deviceencryption/DeviceEncryptionManager;->setEncryptPolicyInternal(IIZ)V

    goto :goto_c

    .line 124
    :cond_22
    if-ne p1, v4, :cond_2d

    .line 125
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getExternalStorageStatus()Z

    move-result v2

    if-ne v2, v4, :cond_2b

    .line 126
    const/4 v0, 0x1

    .line 128
    :cond_2b
    move v1, p2

    goto :goto_1d

    .line 129
    :cond_2d
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1d

    .line 130
    move v1, p2

    .line 131
    move v0, p2

    goto :goto_1d
.end method

.method public setEncryptionPolicy(II)V
    .registers 4
    .parameter "internal"
    .parameter "external"

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/deviceencryption/DeviceEncryptionManager;->setEncryptPolicyInternal(IIZ)V

    .line 147
    return-void
.end method

.method public setEncryptionPolicy(IIZ)V
    .registers 4
    .parameter "internal"
    .parameter "external"
    .parameter "force"

    .prologue
    .line 165
    invoke-direct {p0, p1, p2, p3}, Landroid/deviceencryption/DeviceEncryptionManager;->setEncryptPolicyInternal(IIZ)V

    .line 166
    return-void
.end method
