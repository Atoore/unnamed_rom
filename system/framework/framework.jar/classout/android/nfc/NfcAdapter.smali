.class public final Landroid/nfc/NfcAdapter;
.super Ljava/lang/Object;
.source "NfcAdapter.java"


# static fields
.field public static final ACTION_ADAPTER_STATE_CHANGE:Ljava/lang/String; = "android.nfc.action.ADAPTER_STATE_CHANGE"

.field public static final ACTION_LLCP_LINK_STATE_CHANGED:Ljava/lang/String; = "android.nfc.action.LLCP_LINK_STATE_CHANGED"

.field public static final ACTION_NDEF_DISCOVERED:Ljava/lang/String; = "android.nfc.action.NDEF_DISCOVERED"

.field public static final ACTION_TAG_DISCOVERED:Ljava/lang/String; = "android.nfc.action.TAG_DISCOVERED"

.field public static final ACTION_TAG_LEFT_FIELD:Ljava/lang/String; = "android.nfc.action.TAG_LOST"

.field public static final ACTION_TECH_DISCOVERED:Ljava/lang/String; = "android.nfc.action.TECH_DISCOVERED"

.field private static final DISCOVERY_MODE_CARD_EMULATION:I = 0x2

.field private static final DISCOVERY_MODE_NFCIP1:I = 0x1

.field private static final DISCOVERY_MODE_TAG_READER:I = 0x0

.field public static final EXTRA_ID:Ljava/lang/String; = "android.nfc.extra.ID"

.field public static final EXTRA_LLCP_LINK_STATE_CHANGED:Ljava/lang/String; = "android.nfc.extra.LLCP_LINK_STATE"

.field public static final EXTRA_NDEF_MESSAGES:Ljava/lang/String; = "android.nfc.extra.NDEF_MESSAGES"

.field public static final EXTRA_NEW_BOOLEAN_STATE:Ljava/lang/String; = "android.nfc.isEnabled"

.field public static final EXTRA_TAG:Ljava/lang/String; = "android.nfc.extra.TAG"

.field public static final LLCP_LINK_STATE_ACTIVATED:I = 0x0

.field public static final LLCP_LINK_STATE_DEACTIVATED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NFC"

.field private static sIsInitialized:Z

.field private static sService:Landroid/nfc/INfcAdapter;

.field private static sTagService:Landroid/nfc/INfcTag;


# instance fields
.field mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

.field mForegroundNdefPushListener:Landroid/app/OnActivityPausedListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 240
    const/4 v0, 0x0

    sput-boolean v0, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    new-instance v0, Landroid/nfc/NfcAdapter$1;

    invoke-direct {v0, p0}, Landroid/nfc/NfcAdapter$1;-><init>(Landroid/nfc/NfcAdapter;)V

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    .line 600
    new-instance v0, Landroid/nfc/NfcAdapter$2;

    invoke-direct {v0, p0}, Landroid/nfc/NfcAdapter$2;-><init>(Landroid/nfc/NfcAdapter;)V

    iput-object v0, p0, Landroid/nfc/NfcAdapter;->mForegroundNdefPushListener:Landroid/app/OnActivityPausedListener;

    .line 341
    invoke-static {}, Landroid/nfc/NfcAdapter;->setupService()Landroid/nfc/INfcAdapter;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 342
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 344
    :cond_1d
    return-void
.end method

.method public static getDefaultAdapter()Landroid/nfc/NfcAdapter;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 335
    const-string v0, "NFC"

    const-string v1, "WARNING: NfcAdapter.getDefaultAdapter() is deprecated, use NfcAdapter.getDefaultAdapter(Context) instead"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    new-instance v0, Landroid/nfc/NfcAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/nfc/NfcAdapter;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    .registers 3
    .parameter "context"

    .prologue
    .line 321
    const-string/jumbo v1, "nfc"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcManager;

    .line 322
    .local v0, manager:Landroid/nfc/NfcManager;
    invoke-virtual {v0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v1

    return-object v1
.end method

.method private static getServiceInterface()Landroid/nfc/INfcAdapter;
    .registers 2

    .prologue
    .line 297
    const-string/jumbo v1, "nfc"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 298
    .local v0, b:Landroid/os/IBinder;
    if-nez v0, :cond_b

    .line 299
    const/4 v1, 0x0

    .line 301
    :goto_a
    return-object v1

    :cond_b
    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v1

    goto :goto_a
.end method

.method private static hasNfcFeature()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "NFC"

    .line 255
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 256
    .local v1, pm:Landroid/content/pm/IPackageManager;
    if-nez v1, :cond_12

    .line 257
    const-string v2, "NFC"

    const-string v2, "Cannot get package manager, assuming no NFC feature"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 264
    :goto_11
    return v2

    .line 261
    :cond_12
    :try_start_12
    const-string v2, "android.hardware.nfc"

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_19

    move-result v2

    goto :goto_11

    .line 262
    :catch_19
    move-exception v2

    move-object v0, v2

    .line 263
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NFC"

    const-string v2, "Package manager query failed, assuming no NFC feature"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    .line 264
    goto :goto_11
.end method

.method private static declared-synchronized setupService()Landroid/nfc/INfcAdapter;
    .registers 5

    .prologue
    const/4 v4, 0x0

    const-string v1, "NFC"

    .line 271
    const-class v1, Landroid/nfc/NfcAdapter;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_7
    sput-boolean v2, Landroid/nfc/NfcAdapter;->sIsInitialized:Z

    .line 274
    invoke-static {}, Landroid/nfc/NfcAdapter;->hasNfcFeature()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 275
    const-string v2, "NFC"

    const-string/jumbo v3, "this device does not have NFC support"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_43

    move-object v2, v4

    .line 291
    :goto_18
    monitor-exit v1

    return-object v2

    .line 279
    :cond_1a
    :try_start_1a
    invoke-static {}, Landroid/nfc/NfcAdapter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    .line 280
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    if-nez v2, :cond_2d

    .line 281
    const-string v2, "NFC"

    const-string v3, "could not retrieve NFC service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_43

    move-object v2, v4

    .line 282
    goto :goto_18

    .line 285
    :cond_2d
    :try_start_2d
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v2}, Landroid/nfc/INfcAdapter;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_43
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_35} :catch_38

    .line 291
    :try_start_35
    sget-object v2, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    goto :goto_18

    .line 286
    :catch_38
    move-exception v2

    move-object v0, v2

    .line 287
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NFC"

    const-string v3, "could not retrieve NFC Tag service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_35 .. :try_end_41} :catchall_43

    move-object v2, v4

    .line 288
    goto :goto_18

    .line 271
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_43
    move-exception v2

    monitor-exit v1

    throw v2
.end method


# virtual methods
.method public attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .registers 6
    .parameter "e"

    .prologue
    const-string v3, "NFC"

    .line 369
    const-string v2, "NFC"

    const-string v2, "NFC service dead - attempting to recover"

    invoke-static {v3, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    invoke-static {}, Landroid/nfc/NfcAdapter;->getServiceInterface()Landroid/nfc/INfcAdapter;

    move-result-object v1

    .line 371
    .local v1, service:Landroid/nfc/INfcAdapter;
    if-nez v1, :cond_17

    .line 372
    const-string v2, "NFC"

    const-string v2, "could not retrieve NFC service during service recovery"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :goto_16
    return-void

    .line 379
    :cond_17
    sput-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    .line 381
    :try_start_19
    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v2

    sput-object v2, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1f} :catch_20

    goto :goto_16

    .line 382
    :catch_20
    move-exception v2

    move-object v0, v2

    .line 383
    .local v0, ee:Landroid/os/RemoteException;
    const-string v2, "NFC"

    const-string v2, "could not retrieve NFC tag service during service recovery"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method public disable()Z
    .registers 3

    .prologue
    .line 440
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->disable()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 443
    :goto_6
    return v1

    .line 441
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 442
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 443
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public disableForegroundDispatch(Landroid/app/Activity;)V
    .registers 4
    .parameter "activity"

    .prologue
    .line 518
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->unregisterOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V

    .line 520
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatchInternal(Landroid/app/Activity;Z)V

    .line 521
    return-void
.end method

.method disableForegroundDispatchInternal(Landroid/app/Activity;Z)V
    .registers 6
    .parameter "activity"
    .parameter "force"

    .prologue
    .line 532
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/nfc/INfcAdapter;->disableForegroundDispatch(Landroid/content/ComponentName;)V

    .line 533
    if-nez p2, :cond_1e

    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 534
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You must disable forgeground dispatching while your activity is still resumed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_19

    .line 537
    :catch_19
    move-exception v1

    move-object v0, v1

    .line 538
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 540
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1e
    return-void
.end method

.method public disableForegroundNdefPush(Landroid/app/Activity;)V
    .registers 4
    .parameter "activity"

    .prologue
    .line 595
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    iget-object v1, p0, Landroid/nfc/NfcAdapter;->mForegroundNdefPushListener:Landroid/app/OnActivityPausedListener;

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->unregisterOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V

    .line 597
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/nfc/NfcAdapter;->disableForegroundNdefPushInternal(Landroid/app/Activity;Z)V

    .line 598
    return-void
.end method

.method disableForegroundNdefPushInternal(Landroid/app/Activity;Z)V
    .registers 6
    .parameter "activity"
    .parameter "force"

    .prologue
    .line 609
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/nfc/INfcAdapter;->disableForegroundNdefPush(Landroid/content/ComponentName;)V

    .line 610
    if-nez p2, :cond_1e

    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 611
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "You must disable forgeground NDEF push while your activity is still resumed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_19

    .line 614
    :catch_19
    move-exception v1

    move-object v0, v1

    .line 615
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 617
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1e
    return-void
.end method

.method public enable()Z
    .registers 3

    .prologue
    .line 421
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->enable()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 424
    :goto_6
    return v1

    .line 422
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 423
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 424
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V
    .registers 10
    .parameter "activity"
    .parameter "intent"
    .parameter "filters"
    .parameter "techLists"

    .prologue
    .line 482
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 483
    :cond_4
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 485
    :cond_a
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v3

    if-nez v3, :cond_18

    .line 486
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Foregorund dispatching can only be enabled when your activity is resumed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 490
    :cond_18
    const/4 v1, 0x0

    .line 491
    .local v1, parcel:Landroid/nfc/TechListParcel;
    if-eqz p4, :cond_24

    :try_start_1b
    array-length v3, p4

    if-lez v3, :cond_24

    .line 492
    new-instance v2, Landroid/nfc/TechListParcel;

    invoke-direct {v2, p4}, Landroid/nfc/TechListParcel;-><init>([[Ljava/lang/String;)V

    .end local v1           #parcel:Landroid/nfc/TechListParcel;
    .local v2, parcel:Landroid/nfc/TechListParcel;
    move-object v1, v2

    .line 494
    .end local v2           #parcel:Landroid/nfc/TechListParcel;
    .restart local v1       #parcel:Landroid/nfc/TechListParcel;
    :cond_24
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v3

    iget-object v4, p0, Landroid/nfc/NfcAdapter;->mForegroundDispatchListener:Landroid/app/OnActivityPausedListener;

    invoke-virtual {v3, p1, v4}, Landroid/app/ActivityThread;->registerOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V

    .line 496
    sget-object v3, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {v3, v4, p2, p3, v1}, Landroid/nfc/INfcAdapter;->enableForegroundDispatch(Landroid/content/ComponentName;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_36} :catch_37

    .line 501
    :goto_36
    return-void

    .line 498
    :catch_37
    move-exception v3

    move-object v0, v3

    .line 499
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_36
.end method

.method public enableForegroundNdefPush(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V
    .registers 6
    .parameter "activity"
    .parameter "msg"

    .prologue
    .line 563
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 564
    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 566
    :cond_a
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-nez v1, :cond_18

    .line 567
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Foregorund NDEF push can only be enabled when your activity is resumed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 571
    :cond_18
    :try_start_18
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/NfcAdapter;->mForegroundNdefPushListener:Landroid/app/OnActivityPausedListener;

    invoke-virtual {v1, p1, v2}, Landroid/app/ActivityThread;->registerOnActivityPausedListener(Landroid/app/Activity;Landroid/app/OnActivityPausedListener;)V

    .line 573
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/nfc/INfcAdapter;->enableForegroundNdefPush(Landroid/content/ComponentName;Landroid/nfc/NdefMessage;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_2a} :catch_2b

    .line 577
    :goto_2a
    return-void

    .line 574
    :catch_2b
    move-exception v1

    move-object v0, v1

    .line 575
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_2a
.end method

.method public getLocalNdefMessage()Landroid/nfc/NdefMessage;
    .registers 3

    .prologue
    .line 654
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->localGet()Landroid/nfc/NdefMessage;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 657
    :goto_6
    return-object v1

    .line 655
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 656
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 657
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getNfcAdapterExtrasInterface()Landroid/nfc/INfcAdapterExtras;
    .registers 3

    .prologue
    .line 666
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->getNfcAdapterExtrasInterface()Landroid/nfc/INfcAdapterExtras;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 669
    :goto_6
    return-object v1

    .line 667
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 668
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 669
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getService()Landroid/nfc/INfcAdapter;
    .registers 2

    .prologue
    .line 351
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    .line 352
    sget-object v0, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    return-object v0
.end method

.method public getTagService()Landroid/nfc/INfcTag;
    .registers 2

    .prologue
    .line 360
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    .line 361
    sget-object v0, Landroid/nfc/NfcAdapter;->sTagService:Landroid/nfc/INfcTag;

    return-object v0
.end method

.method public isEnabled()Z
    .registers 3

    .prologue
    .line 403
    :try_start_0
    invoke-static {}, Landroid/nfc/NfcAdapter;->setupService()Landroid/nfc/INfcAdapter;

    .line 404
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->isEnabled()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    move-result v1

    .line 407
    :goto_9
    return v1

    .line 405
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 406
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 407
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public setLocalNdefMessage(Landroid/nfc/NdefMessage;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 639
    :try_start_0
    sget-object v1, Landroid/nfc/NfcAdapter;->sService:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->localSet(Landroid/nfc/NdefMessage;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 643
    :goto_5
    return-void

    .line 640
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 641
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    goto :goto_5
.end method
