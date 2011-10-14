.class Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;
.super Ljava/lang/Thread;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SamsungVolumeControlThread"
.end annotation


# instance fields
.field private final DURATION_LONG_PRESS:J

.field private final DURATION_REPEAT:J

.field private mKeyCode:I

.field private mNeedToRun:Z

.field private mSleepDuration:J

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 4
    .parameter

    .prologue
    .line 3481
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3485
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->DURATION_LONG_PRESS:J

    .line 3486
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->DURATION_REPEAT:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/PhoneWindowManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3481
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method controlCallAndRingingVolume()V
    .registers 7

    .prologue
    const-string v5, "SamsungVolumeControl"

    .line 3548
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3549
    .local v1, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_25

    .line 3551
    :try_start_8
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_25

    .line 3552
    const-string v2, "SamsungVolumeControl"

    const-string v3, "in run(), now adjust call volume."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3553
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->mKeyCode:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleVolumeKey(II)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_25} :catch_26

    .line 3559
    :cond_25
    :goto_25
    return-void

    .line 3555
    :catch_26
    move-exception v2

    move-object v0, v2

    .line 3556
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "SamsungVolumeControl"

    const-string v2, "ITelephony threw RemoteException"

    invoke-static {v5, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25
.end method

.method controlFMRadioVolume()V
    .registers 4

    .prologue
    .line 3541
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->isFMPlayerActive()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 3542
    :cond_16
    const-string v0, "SamsungVolumeControl"

    const-string v1, "in run(), now adjust FM radio volume."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3543
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/16 v1, 0xa

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->mKeyCode:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleVolumeKey(II)V

    .line 3545
    :cond_26
    return-void
.end method

.method controlMusicVolume()V
    .registers 4

    .prologue
    .line 3534
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isMusicActive()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 3535
    const-string v0, "SamsungVolumeControl"

    const-string v1, "in run(), now adjust music volume."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3536
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->mKeyCode:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->handleVolumeKey(II)V

    .line 3538
    :cond_1f
    return-void
.end method

.method isFMPlayerActive()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 3567
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "FMPlayer"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/media/fmradio/FMPlayer;

    .line 3568
    .local v1, fmPlayer:Lcom/samsung/media/fmradio/FMPlayer;
    if-nez v1, :cond_18

    .line 3569
    const-string v2, "SamsungVolumeControl"

    const-string v3, "isFMPlayerActive: couldn\'t get Fmplayer reference"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 3574
    .end local v1           #fmPlayer:Lcom/samsung/media/fmradio/FMPlayer;
    :goto_17
    return v2

    .line 3572
    .restart local v1       #fmPlayer:Lcom/samsung/media/fmradio/FMPlayer;
    :cond_18
    invoke-virtual {v1}, Lcom/samsung/media/fmradio/FMPlayer;->isOn()Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1d

    move-result v2

    goto :goto_17

    .line 3573
    .end local v1           #fmPlayer:Lcom/samsung/media/fmradio/FMPlayer;
    :catch_1d
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/Exception;
    move v2, v4

    .line 3574
    goto :goto_17
.end method

.method public run()V
    .registers 6

    .prologue
    const-string v4, "SamsungVolumeControl"

    .line 3503
    const-string v0, "SamsungVolumeControl"

    const-string v0, "run() is called."

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3506
    :goto_9
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->controlMusicVolume()V

    .line 3509
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->controlFMRadioVolume()V

    .line 3512
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->controlCallAndRingingVolume()V

    .line 3515
    :try_start_12
    const-string v0, "SamsungVolumeControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in run(), sleep mSleepDuration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->mSleepDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3516
    iget-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->mSleepDuration:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_31} :catch_50

    .line 3520
    :goto_31
    monitor-enter p0

    .line 3521
    :try_start_32
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->mNeedToRun:Z

    if-nez v0, :cond_3f

    .line 3522
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_4d

    .line 3530
    const-string v0, "SamsungVolumeControl"

    const-string v0, "in run(), Now finish thread."

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3531
    return-void

    .line 3525
    :cond_3f
    :try_start_3f
    iget-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->mSleepDuration:J

    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->DURATION_LONG_PRESS:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4b

    .line 3526
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->mSleepDuration:J

    .line 3528
    :cond_4b
    monitor-exit p0

    goto :goto_9

    :catchall_4d
    move-exception v0

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_3f .. :try_end_4f} :catchall_4d

    throw v0

    .line 3517
    :catch_50
    move-exception v0

    goto :goto_31
.end method

.method public updateInfo(IZZ)V
    .registers 7
    .parameter "keyCode"
    .parameter "down"
    .parameter "canceled"

    .prologue
    .line 3489
    monitor-enter p0

    .line 3490
    :try_start_1
    const-string v0, "SamsungVolumeControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in updateInfo(), keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " down="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " canceled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3492
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->mKeyCode:I

    .line 3493
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->mNeedToRun:Z

    .line 3494
    iget-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->DURATION_LONG_PRESS:J

    iput-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->mSleepDuration:J

    .line 3496
    if-nez p3, :cond_3f

    const/16 v0, 0x18

    if-eq p1, v0, :cond_42

    const/16 v0, 0x19

    if-eq p1, v0, :cond_42

    .line 3497
    :cond_3f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$SamsungVolumeControlThread;->mNeedToRun:Z

    .line 3499
    :cond_42
    monitor-exit p0

    .line 3500
    return-void

    .line 3499
    :catchall_44
    move-exception v0

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_44

    throw v0
.end method
