.class Landroid/media/AudioService$3;
.super Landroid/telephony/PhoneStateListener;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;)V
    .registers 2
    .parameter

    .prologue
    .line 2609
    iput-object p1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 10
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x2

    const-string v5, "AudioFocus_For_Phone_Ring_And_Calls"

    .line 2612
    if-ne p1, v0, :cond_28

    .line 2614
    invoke-static {}, Landroid/media/AudioService;->access$5600()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2615
    :try_start_c
    iget-object v2, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x1

    #setter for: Landroid/media/AudioService;->mIsRinging:Z
    invoke-static {v2, v4}, Landroid/media/AudioService;->access$5702(Landroid/media/AudioService;Z)Z

    .line 2616
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_25

    .line 2617
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    invoke-virtual {v0, v1}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v6

    .line 2618
    .local v6, ringVolume:I
    if-ltz v6, :cond_24

    .line 2619
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const-string v2, "AudioFocus_For_Phone_Ring_And_Calls"

    move v2, v1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioService;->requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I

    .line 2646
    .end local v6           #ringVolume:I
    :cond_24
    :goto_24
    return-void

    .line 2616
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1

    .line 2625
    :cond_28
    if-ne p1, v1, :cond_43

    .line 2627
    invoke-static {}, Landroid/media/AudioService;->access$5600()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2628
    :try_start_2f
    iget-object v2, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v4, 0x0

    #setter for: Landroid/media/AudioService;->mIsRinging:Z
    invoke-static {v2, v4}, Landroid/media/AudioService;->access$5702(Landroid/media/AudioService;Z)Z

    .line 2629
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_40

    .line 2630
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const-string v2, "AudioFocus_For_Phone_Ring_And_Calls"

    move v2, v1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioService;->requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I

    goto :goto_24

    .line 2629
    :catchall_40
    move-exception v1

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v1

    .line 2634
    :cond_43
    if-nez p1, :cond_24

    .line 2636
    invoke-static {}, Landroid/media/AudioService;->access$5600()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2637
    :try_start_4a
    iget-object v1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x0

    #setter for: Landroid/media/AudioService;->mIsRinging:Z
    invoke-static {v1, v2}, Landroid/media/AudioService;->access$5702(Landroid/media/AudioService;Z)Z

    .line 2638
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_68

    .line 2639
    const-string v0, "SGH-I927"

    const-string v1, "SGH-I777"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 2640
    const-wide/16 v0, 0xfa0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 2644
    :goto_60
    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const-string v1, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {v0, v3, v5}, Landroid/media/AudioService;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I

    goto :goto_24

    .line 2638
    :catchall_68
    move-exception v1

    :try_start_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v1

    .line 2642
    :cond_6b
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_60
.end method
