.class Lcom/android/internal/telephony/sip/SipPhone$SipCall;
.super Lcom/android/internal/telephony/sip/SipCallBase;
.source "SipPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/sip/SipPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipCall"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/sip/SipPhone;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/sip/SipPhone;)V
    .registers 2
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-direct {p0}, Lcom/android/internal/telephony/sip/SipCallBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 362
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)Landroid/net/rtp/AudioGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/sip/SipPhone$SipCall;Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 362
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->add(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V

    return-void
.end method

.method private add(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V
    .registers 4
    .parameter "conn"

    .prologue
    .line 536
    invoke-virtual {p1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getCall()Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v0

    .line 537
    .local v0, call:Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    if-ne v0, p0, :cond_7

    .line 542
    :goto_6
    return-void

    .line 538
    :cond_7
    if-eqz v0, :cond_e

    iget-object v1, v0, Lcom/android/internal/telephony/sip/SipCallBase;->connections:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 540
    :cond_e
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipCallBase;->connections:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 541
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->changeOwner(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V

    goto :goto_6
.end method

.method private convertDtmf(C)I
    .registers 6
    .parameter "c"

    .prologue
    .line 551
    const/16 v1, 0x30

    sub-int v0, p1, v1

    .line 552
    .local v0, code:I
    if-ltz v0, :cond_a

    const/16 v1, 0x9

    if-le v0, v1, :cond_38

    .line 553
    :cond_a
    sparse-switch p1, :sswitch_data_3a

    .line 561
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid DTMF char: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 554
    :sswitch_26
    const/16 v1, 0xa

    .line 565
    :goto_28
    return v1

    .line 555
    :sswitch_29
    const/16 v1, 0xb

    goto :goto_28

    .line 556
    :sswitch_2c
    const/16 v1, 0xc

    goto :goto_28

    .line 557
    :sswitch_2f
    const/16 v1, 0xd

    goto :goto_28

    .line 558
    :sswitch_32
    const/16 v1, 0xe

    goto :goto_28

    .line 559
    :sswitch_35
    const/16 v1, 0xf

    goto :goto_28

    :cond_38
    move v1, v0

    .line 565
    goto :goto_28

    .line 553
    :sswitch_data_3a
    .sparse-switch
        0x23 -> :sswitch_29
        0x2a -> :sswitch_26
        0x41 -> :sswitch_2c
        0x42 -> :sswitch_2f
        0x43 -> :sswitch_32
        0x44 -> :sswitch_35
    .end sparse-switch
.end method

.method private getAudioGroup()Landroid/net/rtp/AudioGroup;
    .registers 3

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipCallBase;->connections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 615
    .end local p0
    :goto_9
    return-object v0

    .restart local p0
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipCallBase;->connections:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v0

    goto :goto_9
.end method

.method private isSpeakerOn()Z
    .registers 3

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #getter for: Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/telephony/sip/SipPhone;->access$400(Lcom/android/internal/telephony/sip/SipPhone;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method private takeOver(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V
    .registers 5
    .parameter "that"

    .prologue
    .line 378
    iget-object v2, p1, Lcom/android/internal/telephony/sip/SipCallBase;->connections:Ljava/util/List;

    iput-object v2, p0, Lcom/android/internal/telephony/sip/SipCallBase;->connections:Ljava/util/List;

    .line 379
    iget-object v2, p1, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    iput-object v2, p0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    .line 380
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipCallBase;->connections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 381
    .local v0, c:Lcom/android/internal/telephony/Connection;
    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->changeOwner(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V

    goto :goto_e

    .line 383
    :cond_20
    return-void
.end method


# virtual methods
.method acceptCall()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #getter for: Lcom/android/internal/telephony/sip/SipPhone;->ringingCall:Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    invoke-static {v0}, Lcom/android/internal/telephony/sip/SipPhone;->access$300(Lcom/android/internal/telephony/sip/SipPhone;)Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    move-result-object v0

    if-eq p0, v0, :cond_10

    .line 460
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "acceptCall() in a non-ringing call"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipCallBase;->connections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_21

    .line 463
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "acceptCall() in a conf call"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_21
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipCallBase;->connections:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->acceptCall()V

    .line 466
    return-void
.end method

.method dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .registers 11
    .parameter "originalNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    const-string v8, "@"

    .line 399
    move-object v2, p1

    .line 400
    .local v2, calleeSipUri:Ljava/lang/String;
    const-string v4, "@"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_49

    .line 401
    iget-object v4, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #getter for: Lcom/android/internal/telephony/sip/SipPhone;->mProfile:Landroid/net/sip/SipProfile;
    invoke-static {v4}, Lcom/android/internal/telephony/sip/SipPhone;->access$100(Lcom/android/internal/telephony/sip/SipPhone;)Landroid/net/sip/SipProfile;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #getter for: Lcom/android/internal/telephony/sip/SipPhone;->mProfile:Landroid/net/sip/SipProfile;
    invoke-static {v6}, Lcom/android/internal/telephony/sip/SipPhone;->access$100(Lcom/android/internal/telephony/sip/SipPhone;)Landroid/net/sip/SipProfile;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "@"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 406
    :cond_49
    :try_start_49
    new-instance v4, Landroid/net/sip/SipProfile$Builder;

    invoke-direct {v4, v2}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    move-result-object v1

    .line 408
    .local v1, callee:Landroid/net/sip/SipProfile;
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    iget-object v4, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-direct {v0, v4, p0, v1, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$SipCall;Landroid/net/sip/SipProfile;Ljava/lang/String;)V

    .line 410
    .local v0, c:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->dial()V

    .line 411
    iget-object v4, p0, Lcom/android/internal/telephony/sip/SipCallBase;->connections:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    sget-object v4, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V
    :try_end_66
    .catch Ljava/text/ParseException; {:try_start_49 .. :try_end_66} :catch_67

    .line 413
    return-object v0

    .line 414
    .end local v0           #c:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;
    .end local v1           #callee:Landroid/net/sip/SipProfile;
    :catch_67
    move-exception v4

    move-object v3, v4

    .line 415
    .local v3, e:Ljava/text/ParseException;
    new-instance v4, Landroid/net/sip/SipException;

    const-string v5, "dial"

    invoke-direct {v4, v5, v3}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getConnections()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 392
    const-class v0, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v0

    .line 394
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/sip/SipCallBase;->connections:Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 395
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getMute()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 513
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipCallBase;->connections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    .end local p0
    :goto_a
    return v0

    .restart local p0
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipCallBase;->connections:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getMute()Z

    move-result v0

    goto :goto_a
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .registers 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    return-object v0
.end method

.method public hangup()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const-string v4, "Call"

    const-string v4, ": "

    const-string v4, " on phone "

    .line 421
    const-class v4, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v4

    .line 422
    :try_start_9
    iget-object v5, p0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 423
    const-string v5, "Call"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hang up call: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " on phone "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 426
    const/4 v2, 0x0

    .line 427
    .local v2, excp:Lcom/android/internal/telephony/CallStateException;
    iget-object v5, p0, Lcom/android/internal/telephony/sip/SipCallBase;->connections:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_51
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;
    :try_end_5d
    .catchall {:try_start_9 .. :try_end_5d} :catchall_67

    .line 429
    .local v0, c:Lcom/android/internal/telephony/Connection;
    :try_start_5d
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_67
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_51

    .line 430
    :catch_61
    move-exception v1

    .line 431
    .local v1, e:Lcom/android/internal/telephony/CallStateException;
    move-object v2, v1

    goto :goto_51

    .line 434
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v1           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_64
    if-eqz v2, :cond_9e

    :try_start_66
    throw v2

    .line 439
    .end local v2           #excp:Lcom/android/internal/telephony/CallStateException;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_67
    move-exception v5

    monitor-exit v4
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_67

    throw v5

    .line 436
    :cond_6a
    :try_start_6a
    const-string v5, "Call"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hang up dead call: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " on phone "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_9e
    monitor-exit v4
    :try_end_9f
    .catchall {:try_start_6a .. :try_end_9f} :catchall_67

    .line 440
    return-void
.end method

.method hold()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 492
    sget-object v2, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 493
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipCallBase;->connections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .local v0, c:Lcom/android/internal/telephony/Connection;
    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->hold()V

    goto :goto_b

    .line 494
    :cond_1d
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setAudioGroupMode()V

    .line 495
    return-void
.end method

.method initIncomingCall(Landroid/net/sip/SipAudioCall;Z)V
    .registers 7
    .parameter "sipAudioCall"
    .parameter "makeCallWait"

    .prologue
    .line 443
    invoke-virtual {p1}, Landroid/net/sip/SipAudioCall;->getPeerProfile()Landroid/net/sip/SipProfile;

    move-result-object v1

    .line 444
    .local v1, callee:Landroid/net/sip/SipProfile;
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-direct {v0, v3, p0, v1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;-><init>(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/sip/SipPhone$SipCall;Landroid/net/sip/SipProfile;)V

    .line 445
    .local v0, c:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipCallBase;->connections:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    if-eqz p2, :cond_21

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    move-object v2, v3

    .line 448
    .local v2, newState:Lcom/android/internal/telephony/Call$State;
    :goto_15
    invoke-virtual {v0, p1, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->initIncomingCall(Landroid/net/sip/SipAudioCall;Lcom/android/internal/telephony/Call$State;)V

    .line 450
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 451
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #calls: Lcom/android/internal/telephony/sip/SipPhone;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V
    invoke-static {v3, v0}, Lcom/android/internal/telephony/sip/SipPhone;->access$200(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/Connection;)V

    .line 452
    return-void

    .line 447
    .end local v2           #newState:Lcom/android/internal/telephony/Call$State;
    :cond_21
    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    move-object v2, v3

    goto :goto_15
.end method

.method public isVideoCall()Z
    .registers 2

    .prologue
    .line 619
    const/4 v0, 0x0

    return v0
.end method

.method merge(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V
    .registers 12
    .parameter "that"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 519
    invoke-direct {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v2

    .line 523
    .local v2, audioGroup:Landroid/net/rtp/AudioGroup;
    iget-object v8, p1, Lcom/android/internal/telephony/sip/SipCallBase;->connections:Ljava/util/List;

    iget-object v9, p1, Lcom/android/internal/telephony/sip/SipCallBase;->connections:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Lcom/android/internal/telephony/Connection;

    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/internal/telephony/Connection;

    .line 525
    .local v4, cc:[Lcom/android/internal/telephony/Connection;
    move-object v1, v4

    .local v1, arr$:[Lcom/android/internal/telephony/Connection;
    array-length v7, v1

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_17
    if-ge v6, v7, :cond_30

    aget-object v3, v1, v6

    .line 526
    .local v3, c:Lcom/android/internal/telephony/Connection;
    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    move-object v5, v0

    .line 527
    .local v5, conn:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->add(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V

    .line 528
    invoke-virtual {v5}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_2d

    .line 529
    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->unhold(Landroid/net/rtp/AudioGroup;)V

    .line 525
    :cond_2d
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 532
    .end local v3           #c:Lcom/android/internal/telephony/Connection;
    .end local v5           #conn:Lcom/android/internal/telephony/sip/SipPhone$SipConnection;
    :cond_30
    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p1, v8}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 533
    return-void
.end method

.method onConnectionEnded(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V
    .registers 8
    .parameter "conn"

    .prologue
    const-string v5, "Call"

    .line 596
    iget-object v3, p0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_6f

    .line 597
    const/4 v0, 0x1

    .line 598
    .local v0, allConnectionsDisconnected:Z
    const-string v3, "Call"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---check connections: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/sip/SipCallBase;->connections:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipCallBase;->connections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 601
    .local v1, c:Lcom/android/internal/telephony/Connection;
    const-string v3, "Call"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_2d

    .line 604
    const/4 v0, 0x0

    .line 608
    .end local v1           #c:Lcom/android/internal/telephony/Connection;
    :cond_68
    if-eqz v0, :cond_6f

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 610
    .end local v0           #allConnectionsDisconnected:Z
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_6f
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    #calls: Lcom/android/internal/telephony/sip/SipPhone;->notifyDisconnectP(Lcom/android/internal/telephony/Connection;)V
    invoke-static {v3, p1}, Lcom/android/internal/telephony/sip/SipPhone;->access$500(Lcom/android/internal/telephony/sip/SipPhone;Lcom/android/internal/telephony/Connection;)V

    .line 611
    return-void
.end method

.method onConnectionStateChanged(Lcom/android/internal/telephony/sip/SipPhone$SipConnection;)V
    .registers 4
    .parameter "conn"

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_d

    .line 590
    invoke-virtual {p1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 592
    :cond_d
    return-void
.end method

.method rejectCall()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->hangup()V

    .line 456
    return-void
.end method

.method reset()V
    .registers 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipCallBase;->connections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 365
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 366
    return-void
.end method

.method sendDtmf(C)V
    .registers 4
    .parameter "c"

    .prologue
    .line 545
    invoke-direct {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v0

    .line 546
    .local v0, audioGroup:Landroid/net/rtp/AudioGroup;
    if-nez v0, :cond_7

    .line 548
    :goto_6
    return-void

    .line 547
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->convertDtmf(C)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/rtp/AudioGroup;->sendDtmf(I)V

    goto :goto_6
.end method

.method setAudioGroupMode()V
    .registers 9

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 474
    invoke-direct {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v0

    .line 475
    .local v0, audioGroup:Landroid/net/rtp/AudioGroup;
    if-nez v0, :cond_a

    .line 489
    :goto_9
    return-void

    .line 476
    :cond_a
    invoke-virtual {v0}, Landroid/net/rtp/AudioGroup;->getMode()I

    move-result v1

    .line 477
    .local v1, mode:I
    iget-object v2, p0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_35

    .line 478
    invoke-virtual {v0, v6}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    .line 486
    :goto_17
    const-string v2, "Call"

    const-string v3, "audioGroup mode change: %d --> %d"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0}, Landroid/net/rtp/AudioGroup;->getMode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 479
    :cond_35
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getMute()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 480
    invoke-virtual {v0, v7}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    goto :goto_17

    .line 481
    :cond_3f
    invoke-direct {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->isSpeakerOn()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 482
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    goto :goto_17

    .line 484
    :cond_4a
    invoke-virtual {v0, v4}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    goto :goto_17
.end method

.method setMute(Z)V
    .registers 5
    .parameter "muted"

    .prologue
    .line 507
    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipCallBase;->connections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 508
    .local v0, c:Lcom/android/internal/telephony/Connection;
    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->setMute(Z)V

    goto :goto_6

    .line 510
    :cond_18
    return-void
.end method

.method protected setState(Lcom/android/internal/telephony/Call$State;)V
    .registers 5
    .parameter "newState"

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    if-eq v0, p1, :cond_67

    .line 571
    const-string v0, "Call"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+***+ call state changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": on phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipCallBase;->connections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_68

    .line 576
    iput-object p1, p0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    .line 577
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone;->startRingbackTone()V

    .line 581
    :cond_5b
    :goto_5b
    iput-object p1, p0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    .line 582
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone;->updatePhoneState()V

    .line 583
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone;->notifyPreciseCallStateChanged()V

    .line 585
    :cond_67
    return-void

    .line 578
    :cond_68
    iget-object v0, p0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_5b

    .line 579
    iget-object v0, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone;->stopRingbackTone()V

    goto :goto_5b
.end method

.method switchWith(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V
    .registers 5
    .parameter "that"

    .prologue
    .line 369
    const-class v1, Lcom/android/internal/telephony/sip/SipPhone;

    monitor-enter v1

    .line 370
    :try_start_3
    new-instance v0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;

    iget-object v2, p0, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->this$0:Lcom/android/internal/telephony/sip/SipPhone;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;-><init>(Lcom/android/internal/telephony/sip/SipPhone;)V

    .line 371
    .local v0, tmp:Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->takeOver(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V

    .line 372
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->takeOver(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V

    .line 373
    invoke-direct {p1, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->takeOver(Lcom/android/internal/telephony/sip/SipPhone$SipCall;)V

    .line 374
    monitor-exit v1

    .line 375
    return-void

    .line 374
    .end local v0           #tmp:Lcom/android/internal/telephony/sip/SipPhone$SipCall;
    :catchall_15
    move-exception v2

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v2
.end method

.method unhold()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 498
    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setState(Lcom/android/internal/telephony/Call$State;)V

    .line 499
    new-instance v0, Landroid/net/rtp/AudioGroup;

    invoke-direct {v0}, Landroid/net/rtp/AudioGroup;-><init>()V

    .line 500
    .local v0, audioGroup:Landroid/net/rtp/AudioGroup;
    iget-object v3, p0, Lcom/android/internal/telephony/sip/SipCallBase;->connections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 501
    .local v1, c:Lcom/android/internal/telephony/Connection;
    check-cast v1, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;

    .end local v1           #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/sip/SipPhone$SipConnection;->unhold(Landroid/net/rtp/AudioGroup;)V

    goto :goto_10

    .line 503
    :cond_22
    invoke-virtual {p0}, Lcom/android/internal/telephony/sip/SipPhone$SipCall;->setAudioGroupMode()V

    .line 504
    return-void
.end method
