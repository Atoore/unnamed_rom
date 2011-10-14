.class public Landroid/os/PowerManager;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerManager$WakeLock;
    }
.end annotation


# static fields
.field public static final ACQUIRE_CAUSES_WAKEUP:I = 0x10000000

.field public static final FULL_WAKE_LOCK:I = 0x1a

.field private static final LOCK_MASK:I = 0x3f

.field public static final ON_AFTER_RELEASE:I = 0x20000000

.field public static final PARTIAL_WAKE_LOCK:I = 0x1

.field public static final PROXIMITY_SCREEN_OFF_WAKE_LOCK:I = 0x20

.field public static final SCREEN_BRIGHT_WAKE_LOCK:I = 0xa

.field public static final SCREEN_DIM_WAKE_LOCK:I = 0x6

.field private static final SKT_DM_LOCK_MODE:Ljava/lang/String; = "persist.sys.lock_mode"

.field private static final SKT_DM_LOCK_MSG:Ljava/lang/String; = "persist.sys.lock_mode_msg"

.field private static final SKT_DM_LOCK_MSG_MAX:I = 0x5b

.field private static final TAG:Ljava/lang/String; = "PowerManager"

.field public static final WAIT_FOR_PROXIMITY_NEGATIVE:I = 0x1

.field private static final WAKE_BIT_CPU_STRONG:I = 0x1

.field private static final WAKE_BIT_CPU_WEAK:I = 0x2

.field private static final WAKE_BIT_KEYBOARD_BRIGHT:I = 0x10

.field private static final WAKE_BIT_PROXIMITY_SCREEN_OFF:I = 0x20

.field private static final WAKE_BIT_SCREEN_BRIGHT:I = 0x8

.field private static final WAKE_BIT_SCREEN_DIM:I = 0x4


# instance fields
.field mHandler:Landroid/os/Handler;

.field mService:Landroid/os/IPowerManager;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    return-void
.end method

.method public constructor <init>(Landroid/os/IPowerManager;Landroid/os/Handler;)V
    .registers 3
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    iput-object p1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    .line 568
    iput-object p2, p0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    .line 569
    return-void
.end method


# virtual methods
.method public acquireDVFSlock(II)I
    .registers 5
    .parameter "level"
    .parameter "timeMS"

    .prologue
    .line 447
    const/4 v0, -0x1

    .line 449
    .local v0, ret:I
    :try_start_1
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPowerManager;->acquireDVFSlock(II)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v0

    .line 454
    :goto_7
    return v0

    .line 451
    :catch_8
    move-exception v1

    goto :goto_7
.end method

.method public getLockState()Z
    .registers 3

    .prologue
    .line 620
    const-string/jumbo v0, "persist.sys.lock_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getPlugType()I
    .registers 3

    .prologue
    .line 431
    const/4 v0, 0x0

    .line 433
    .local v0, plugType:I
    :try_start_1
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->getPlugType()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v0

    .line 438
    :goto_7
    return v0

    .line 435
    :catch_8
    move-exception v1

    goto :goto_7
.end method

.method public getSupportedWakeLockFlags()I
    .registers 3

    .prologue
    .line 508
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->getSupportedWakeLockFlags()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 510
    :goto_6
    return v1

    .line 509
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 510
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public goToSleep(J)V
    .registers 4
    .parameter "time"

    .prologue
    .line 468
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->goToSleep(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 471
    :goto_5
    return-void

    .line 469
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public hideLocked()V
    .registers 3

    .prologue
    .line 609
    const-string/jumbo v0, "persist.sys.lock_mode"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    const-string/jumbo v0, "persist.sys.lock_mode_msg"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 613
    return-void
.end method

.method public isScreenOn()Z
    .registers 3

    .prologue
    .line 528
    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->isScreenOn()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 530
    :goto_6
    return v1

    .line 529
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 530
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    .registers 5
    .parameter "flags"
    .parameter "tag"

    .prologue
    .line 397
    if-nez p2, :cond_b

    .line 398
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "tag is null in PowerManager.newWakeLock"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_b
    new-instance v0, Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p0, p1, p2}, Landroid/os/PowerManager$WakeLock;-><init>(Landroid/os/PowerManager;ILjava/lang/String;)V

    return-object v0
.end method

.method public reboot(Ljava/lang/String;)V
    .registers 3
    .parameter "reason"

    .prologue
    .line 553
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->reboot(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 556
    :goto_5
    return-void

    .line 554
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public rebootWithIntent()V
    .registers 4

    .prologue
    const-string v2, "PowerManager"

    .line 625
    const-string v1, "PowerManager"

    const-string v1, " Connect to Powermanagerservice"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :try_start_9
    iget-object v1, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v1}, Landroid/os/IPowerManager;->rebootWithIntent()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f

    .line 631
    :goto_e
    return-void

    .line 628
    :catch_f
    move-exception v1

    move-object v0, v1

    .line 629
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "PowerManager"

    const-string v1, "RemoteException during connecting to Powermanagerservice"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public setAutoBrightnessLimit(II)V
    .registers 4
    .parameter "lowerLimit"
    .parameter "upperLimit"

    .prologue
    .line 536
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->setAutoBrightnessLimit(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 540
    :goto_5
    return-void

    .line 537
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setBacklightBrightness(I)V
    .registers 3
    .parameter "brightness"

    .prologue
    .line 483
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 486
    :goto_5
    return-void

    .line 484
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public showLocked(Ljava/lang/Boolean;Ljava/lang/String;)V
    .registers 6
    .parameter "enableUserUnlock"
    .parameter "userMsg"

    .prologue
    const-string/jumbo v2, "persist.sys.lock_mode_msg"

    .line 590
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 591
    const-string/jumbo v0, "persist.sys.lock_mode"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x5b

    if-ge v0, v1, :cond_26

    .line 594
    const-string/jumbo v0, "persist.sys.lock_mode_msg"

    invoke-static {v2, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    :goto_20
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 603
    return-void

    .line 596
    :cond_26
    const-string/jumbo v0, "persist.sys.lock_mode_msg"

    const-string v0, "Maximum length limit exceeded"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 599
    :cond_2f
    invoke-virtual {p0}, Landroid/os/PowerManager;->hideLocked()V

    goto :goto_20
.end method

.method public systemFotaReboot(Ljava/lang/String;)V
    .registers 4
    .parameter "reason"

    .prologue
    .line 653
    const-string v0, "PowerManager"

    const-string v1, " Connect to Powermanagerservice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :try_start_7
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->systemFotaReboot(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 658
    :goto_c
    return-void

    .line 656
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method public systemPowerOff()V
    .registers 3

    .prologue
    .line 644
    const-string v0, "PowerManager"

    const-string v1, " Connect to Powermanagerservice"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :try_start_7
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->systemPowerOff()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 649
    :goto_c
    return-void

    .line 647
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method public systemReboot()V
    .registers 3

    .prologue
    .line 634
    const-string v0, "PowerManager"

    const-string v1, " Connect to Powermanagerservice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :try_start_7
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->systemReboot()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 640
    :goto_c
    return-void

    .line 638
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method public systemReboot_Fota()V
    .registers 2

    .prologue
    .line 578
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->systemReboot_Fota()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 581
    :goto_5
    return-void

    .line 579
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public userActivity(JZ)V
    .registers 5
    .parameter "when"
    .parameter "noChangeLights"

    .prologue
    .line 421
    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IPowerManager;->userActivity(JZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 424
    :goto_5
    return-void

    .line 422
    :catch_6
    move-exception v0

    goto :goto_5
.end method
