.class public Lcom/android/settings/de/DeviceEncryption;
.super Ljava/lang/Object;
.source "DeviceEncryption.java"


# instance fields
.field private mContext:Landroid/app/Activity;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPhone:Landroid/preference/Preference;

.field private mPolicyChagnedListener:Landroid/content/BroadcastReceiver;

.field private mSDcard:Landroid/preference/Preference;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/de/DeviceEncryption;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 102
    new-instance v1, Lcom/android/settings/de/DeviceEncryption$1;

    invoke-direct {v1, p0}, Lcom/android/settings/de/DeviceEncryption$1;-><init>(Lcom/android/settings/de/DeviceEncryption;)V

    iput-object v1, p0, Lcom/android/settings/de/DeviceEncryption;->mPolicyChagnedListener:Landroid/content/BroadcastReceiver;

    .line 123
    new-instance v1, Lcom/android/settings/de/DeviceEncryption$2;

    invoke-direct {v1, p0}, Lcom/android/settings/de/DeviceEncryption$2;-><init>(Lcom/android/settings/de/DeviceEncryption;)V

    iput-object v1, p0, Lcom/android/settings/de/DeviceEncryption;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 50
    iput-object p1, p0, Lcom/android/settings/de/DeviceEncryption;->mContext:Landroid/app/Activity;

    .line 52
    iget-object v1, p0, Lcom/android/settings/de/DeviceEncryption;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/android/settings/de/DeviceEncryption;->mContext:Landroid/app/Activity;

    const-string v2, "storage"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/settings/de/DeviceEncryption;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 54
    iget-object v1, p0, Lcom/android/settings/de/DeviceEncryption;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/android/settings/de/DeviceEncryption;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 57
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 58
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/android/settings/de/DeviceEncryption;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/de/DeviceEncryption;->mPolicyChagnedListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 62
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/settings/de/DeviceEncryption;->mContext:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/de/DeviceEncryption;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/de/DeviceEncryption;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/de/DeviceEncryption;->resetPreference()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/android/settings/de/DeviceEncryption;->isPhoneEncrypted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/de/DeviceEncryption;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/de/DeviceEncryption;->encryptPhone()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/de/DeviceEncryption;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/de/DeviceEncryption;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/de/DeviceEncryption;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/de/DeviceEncryption;->decryptPhone()V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/android/settings/de/DeviceEncryption;->isSDcardEncrypted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/de/DeviceEncryption;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/de/DeviceEncryption;->encryptSDcard()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/de/DeviceEncryption;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/de/DeviceEncryption;->decryptSDcard()V

    return-void
.end method

.method private decryptPhone()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-static {}, Lcom/android/settings/de/DeviceEncryption;->isSDcardEncrypted()Z

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/android/settings/de/DeviceEncryption;->setPolicyProperty(ZZ)Z

    .line 133
    const-string v0, "internal"

    invoke-direct {p0, v0, v2}, Lcom/android/settings/de/DeviceEncryption;->setEncryptionStatusOfMountService(Ljava/lang/String;Z)V

    .line 134
    const-string v0, "external"

    invoke-static {}, Lcom/android/settings/de/DeviceEncryption;->isSDcardEncrypted()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/de/DeviceEncryption;->setEncryptionStatusOfMountService(Ljava/lang/String;Z)V

    .line 135
    invoke-virtual {p0, v2}, Lcom/android/settings/de/DeviceEncryption;->rebootForPhoneEncryption(Z)V

    .line 136
    return-void
.end method

.method private decryptSDcard()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 139
    invoke-static {}, Lcom/android/settings/de/DeviceEncryption;->isPhoneEncrypted()Z

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/android/settings/de/DeviceEncryption;->setPolicyProperty(ZZ)Z

    .line 140
    const-string v0, "internal"

    invoke-static {}, Lcom/android/settings/de/DeviceEncryption;->isPhoneEncrypted()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/de/DeviceEncryption;->setEncryptionStatusOfMountService(Ljava/lang/String;Z)V

    .line 141
    const-string v0, "external"

    invoke-direct {p0, v0, v2}, Lcom/android/settings/de/DeviceEncryption;->setEncryptionStatusOfMountService(Ljava/lang/String;Z)V

    .line 142
    invoke-direct {p0, v2}, Lcom/android/settings/de/DeviceEncryption;->remountSDcard(Z)Z

    .line 143
    return-void
.end method

.method private encryptPhone()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 146
    invoke-static {}, Lcom/android/settings/de/DeviceEncryption;->isSDcardEncrypted()Z

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/android/settings/de/DeviceEncryption;->setPolicyProperty(ZZ)Z

    .line 147
    const-string v0, "internal"

    invoke-direct {p0, v0, v2}, Lcom/android/settings/de/DeviceEncryption;->setEncryptionStatusOfMountService(Ljava/lang/String;Z)V

    .line 148
    const-string v0, "external"

    invoke-static {}, Lcom/android/settings/de/DeviceEncryption;->isSDcardEncrypted()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/de/DeviceEncryption;->setEncryptionStatusOfMountService(Ljava/lang/String;Z)V

    .line 149
    invoke-virtual {p0, v2}, Lcom/android/settings/de/DeviceEncryption;->rebootForPhoneEncryption(Z)V

    .line 150
    return-void
.end method

.method private encryptSDcard()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 153
    invoke-static {}, Lcom/android/settings/de/DeviceEncryption;->isPhoneEncrypted()Z

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/android/settings/de/DeviceEncryption;->setPolicyProperty(ZZ)Z

    .line 154
    const-string v0, "internal"

    invoke-static {}, Lcom/android/settings/de/DeviceEncryption;->isPhoneEncrypted()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/de/DeviceEncryption;->setEncryptionStatusOfMountService(Ljava/lang/String;Z)V

    .line 155
    const-string v0, "external"

    invoke-direct {p0, v0, v2}, Lcom/android/settings/de/DeviceEncryption;->setEncryptionStatusOfMountService(Ljava/lang/String;Z)V

    .line 156
    invoke-direct {p0, v2}, Lcom/android/settings/de/DeviceEncryption;->remountSDcard(Z)Z

    .line 157
    return-void
.end method

.method public static isB2CDeviceEncryptionFeatured()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 84
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isDeviceEncrypted()Z
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lcom/android/settings/de/DeviceEncryption;->isPhoneEncrypted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/de/DeviceEncryption;->isSDcardEncrypted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNumericPasswordEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    iget-object v0, p0, Lcom/android/settings/de/DeviceEncryption;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_0

    move v0, v1

    .line 187
    :goto_0
    return v0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/settings/de/DeviceEncryption;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v0, v1

    .line 187
    goto :goto_0

    .line 181
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 176
    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
    .end sparse-switch
.end method

.method private static isPhoneEncrypted()Z
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getInternalStorageStatus()Z

    move-result v0

    return v0
.end method

.method private isPhonePolicySet()Z
    .locals 3

    .prologue
    .line 269
    iget-object v1, p0, Lcom/android/settings/de/DeviceEncryption;->mContext:Landroid/app/Activity;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 271
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-nez v0, :cond_0

    .line 272
    const/4 v1, 0x0

    .line 275
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getRequireDeviceEncryption(Landroid/content/ComponentName;)Z

    move-result v1

    goto :goto_0
.end method

.method private static isSDcardEncrypted()Z
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getExternalStorageStatus()Z

    move-result v0

    return v0
.end method

.method private isSDcardPolicySet()Z
    .locals 3

    .prologue
    .line 279
    iget-object v1, p0, Lcom/android/settings/de/DeviceEncryption;->mContext:Landroid/app/Activity;

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 281
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-nez v0, :cond_0

    .line 282
    const/4 v1, 0x0

    .line 285
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v1

    goto :goto_0
.end method

.method private remountSDcard(Z)Z
    .locals 6
    .parameter "bEnablePolicy"

    .prologue
    .line 215
    const/4 v0, 0x1

    .line 216
    .local v0, bRet:Z
    const-string v5, "mount"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v4

    .line 218
    .local v4, mMntSvc:Landroid/os/storage/IMountService;
    if-nez v4, :cond_0

    .line 220
    const/4 v5, 0x0

    .line 241
    :goto_0
    return v5

    .line 225
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, mExternalPath:Ljava/lang/String;
    invoke-interface {v4, v3}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, extVolStat:Ljava/lang/String;
    const-string v5, "mounted"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 230
    const/4 v5, 0x1

    invoke-interface {v4, v3, v5}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;Z)V

    .line 232
    const-string v5, "encrypt"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IEncryptService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IEncryptService;

    move-result-object v1

    .line 233
    .local v1, encSvc:Landroid/os/storage/IEncryptService;
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/os/storage/IEncryptService;->mountVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #encSvc:Landroid/os/storage/IEncryptService;
    .end local v2           #extVolStat:Ljava/lang/String;
    .end local v3           #mExternalPath:Ljava/lang/String;
    :goto_1
    move v5, v0

    .line 241
    goto :goto_0

    .line 235
    .restart local v2       #extVolStat:Ljava/lang/String;
    .restart local v3       #mExternalPath:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 237
    .end local v2           #extVolStat:Ljava/lang/String;
    .end local v3           #mExternalPath:Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private resetPreference()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/settings/de/DeviceEncryption;->mPhone:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/settings/de/DeviceEncryption;->mPhone:Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/settings/de/DeviceEncryption;->setPhonePref(Landroid/preference/Preference;)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/settings/de/DeviceEncryption;->mSDcard:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/android/settings/de/DeviceEncryption;->mSDcard:Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/settings/de/DeviceEncryption;->setSDcardPref(Landroid/preference/Preference;)V

    .line 121
    :cond_1
    return-void
.end method

.method private setEncryptionStatusOfMountService(Ljava/lang/String;Z)V
    .locals 2
    .parameter "sPath2"
    .parameter "encrypt"

    .prologue
    .line 246
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 248
    .local v0, mMntSvc:Landroid/os/storage/IMountService;
    if-nez v0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    :try_start_0
    const-string v1, "internal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 256
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/os/storage/IMountService;->setEncryptionEnabled(Ljava/lang/String;Z)I

    goto :goto_0

    .line 263
    :catch_0
    move-exception v1

    goto :goto_0

    .line 257
    :cond_2
    const-string v1, "external"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/os/storage/IMountService;->setEncryptionEnabled(Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private setPhonePref(Landroid/preference/Preference;)V
    .locals 2
    .parameter "pref"

    .prologue
    const/4 v1, 0x0

    .line 289
    const-string v0, "DeviceEncryptPhone"

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 290
    const v0, 0x7f080255

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 292
    invoke-direct {p0}, Lcom/android/settings/de/DeviceEncryption;->isNumericPasswordEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 293
    const v0, 0x7f080254

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 294
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 303
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/de/DeviceEncryption;->isPhonePolicySet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 305
    const v0, 0x7f0800fe

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 308
    :cond_0
    new-instance v0, Lcom/android/settings/de/DeviceEncryption$3;

    invoke-direct {v0, p0}, Lcom/android/settings/de/DeviceEncryption$3;-><init>(Lcom/android/settings/de/DeviceEncryption;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 343
    return-void

    .line 296
    :cond_1
    invoke-static {}, Lcom/android/settings/de/DeviceEncryption;->isPhoneEncrypted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    const v0, 0x7f08024a

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 299
    :cond_2
    const v0, 0x7f080249

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private setPolicyProperty(ZZ)Z
    .locals 5
    .parameter "phoneEncrypt"
    .parameter "sdCardEncrypt"

    .prologue
    const/4 v3, 0x1

    const-string v4, "policy"

    .line 407
    const-string v2, "policy"

    invoke-static {v4}, Landroid/deviceencryption/DeviceEncryptionManager;->getFileCryptProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 410
    .local v1, policyOnTheGo:Ljava/lang/String;
    const-string v0, ""

    .line 411
    .local v0, policy:Ljava/lang/String;
    if-ne p1, v3, :cond_1

    if-ne p2, v3, :cond_1

    .line 412
    const-string v0, "internal:external"

    .line 420
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 422
    const/4 v2, 0x0

    .line 426
    :goto_1
    return v2

    .line 413
    :cond_1
    if-ne p1, v3, :cond_2

    .line 414
    const-string v0, "internal"

    goto :goto_0

    .line 415
    :cond_2
    if-ne p2, v3, :cond_0

    .line 416
    const-string v0, "external"

    goto :goto_0

    .line 425
    :cond_3
    const-string v2, "policy"

    invoke-static {v4, v0}, Landroid/deviceencryption/DeviceEncryptionManager;->setFileCryptProperty(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 426
    goto :goto_1
.end method

.method private setSDcardPref(Landroid/preference/Preference;)V
    .locals 2
    .parameter "pref"

    .prologue
    const/4 v1, 0x0

    .line 347
    const-string v0, "DeviceEncryptSDcard"

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 348
    const v0, 0x7f08024d

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 349
    invoke-direct {p0}, Lcom/android/settings/de/DeviceEncryption;->isNumericPasswordEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 350
    const v0, 0x7f080254

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 351
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 360
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/de/DeviceEncryption;->isSDcardPolicySet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 362
    const v0, 0x7f0800fe

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 365
    :cond_0
    new-instance v0, Lcom/android/settings/de/DeviceEncryption$4;

    invoke-direct {v0, p0}, Lcom/android/settings/de/DeviceEncryption$4;-><init>(Lcom/android/settings/de/DeviceEncryption;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 403
    return-void

    .line 353
    :cond_1
    invoke-static {}, Lcom/android/settings/de/DeviceEncryption;->isSDcardEncrypted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 354
    const v0, 0x7f08024f

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 356
    :cond_2
    const v0, 0x7f08024e

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/de/DeviceEncryption;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/de/DeviceEncryption;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 67
    iget-object v0, p0, Lcom/android/settings/de/DeviceEncryption;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/de/DeviceEncryption;->mPolicyChagnedListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 68
    return-void
.end method

.method public getPreferenceDeviceEncryptionPhone()Landroid/preference/Preference;
    .locals 2

    .prologue
    .line 160
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/de/DeviceEncryption;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/de/DeviceEncryption;->mPhone:Landroid/preference/Preference;

    .line 161
    iget-object v0, p0, Lcom/android/settings/de/DeviceEncryption;->mPhone:Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/settings/de/DeviceEncryption;->setPhonePref(Landroid/preference/Preference;)V

    .line 162
    iget-object v0, p0, Lcom/android/settings/de/DeviceEncryption;->mPhone:Landroid/preference/Preference;

    return-object v0
.end method

.method public getPreferenceDeviceEncryptionSDcard()Landroid/preference/Preference;
    .locals 2

    .prologue
    .line 166
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/de/DeviceEncryption;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/de/DeviceEncryption;->mSDcard:Landroid/preference/Preference;

    .line 167
    iget-object v0, p0, Lcom/android/settings/de/DeviceEncryption;->mSDcard:Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/settings/de/DeviceEncryption;->setSDcardPref(Landroid/preference/Preference;)V

    .line 168
    iget-object v0, p0, Lcom/android/settings/de/DeviceEncryption;->mSDcard:Landroid/preference/Preference;

    return-object v0
.end method

.method protected rebootForPhoneEncryption(Z)V
    .locals 4
    .parameter "encrypt"

    .prologue
    .line 193
    :try_start_0
    const-string v2, "ro.privatedatapartion"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, s_privatdata:Ljava/lang/String;
    if-eqz p1, :cond_0

    const/4 v2, 0x0

    move v0, v2

    .line 198
    .local v0, param:I
    :goto_0
    if-eqz v1, :cond_1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    iget-object v2, p0, Lcom/android/settings/de/DeviceEncryption;->mContext:Landroid/app/Activity;

    const/4 v3, 0x5

    invoke-static {v2, v0, v3}, Landroid/os/RecoverySystem;->rebootEncryptPartition(Landroid/content/Context;II)V

    .line 211
    .end local v0           #param:I
    .end local v1           #s_privatdata:Ljava/lang/String;
    :goto_1
    return-void

    .line 195
    .restart local v1       #s_privatdata:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 205
    .restart local v0       #param:I
    :cond_1
    iget-object v2, p0, Lcom/android/settings/de/DeviceEncryption;->mContext:Landroid/app/Activity;

    const/4 v3, 0x3

    invoke-static {v2, v0, v3}, Landroid/os/RecoverySystem;->rebootEncryptPartition(Landroid/content/Context;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 208
    .end local v0           #param:I
    .end local v1           #s_privatdata:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1
.end method
