.class public Lcom/android/internal/telephony/gsm/GsmConnection;
.super Lcom/android/internal/telephony/Connection;
.source "GsmConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmConnection$1;,
        Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;
    }
.end annotation


# static fields
.field static final EVENT_DTMF_DONE:I = 0x1

.field static final EVENT_NEXT_POST_DIAL:I = 0x3

.field static final EVENT_PAUSE_DONE:I = 0x2

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final PAUSE_DELAY_FIRST_MILLIS:I = 0xbb8

.field static final PAUSE_DELAY_MILLIS:I = 0xbb8

.field static final WAKE_LOCK_TIMEOUT_MILLIS:I = 0xea60


# instance fields
.field address:Ljava/lang/String;

.field als:I

.field cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

.field cnapName:Ljava/lang/String;

.field cnapNamePresentation:I

.field connectTime:J

.field connectTimeReal:J

.field createTime:J

.field dialString:Ljava/lang/String;

.field disconnectTime:J

.field disconnected:Z

.field duration:J

.field h:Landroid/os/Handler;

.field holdingStartTime:J

.field index:I

.field isFakeConnection:Z

.field isIncoming:Z

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field nextPostDialChar:I

.field numberPresentation:I

.field owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

.field parent:Lcom/android/internal/telephony/gsm/GsmCall;

.field postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

.field postDialString:Ljava/lang/String;

.field rawCause:I

.field uusInfo:Lcom/android/internal/telephony/UUSInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/DriverCall;Lcom/android/internal/telephony/gsm/GsmCallTracker;I)V
    .registers 7
    .parameter "context"
    .parameter "dc"
    .parameter "ct"
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 76
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 77
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->rawCause:I

    .line 78
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 79
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->numberPresentation:I

    .line 81
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cnapNamePresentation:I

    .line 88
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isFakeConnection:Z

    .line 92
    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->als:I

    .line 133
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->createWakeLock(Landroid/content/Context;)V

    .line 134
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->acquireWakeLock()V

    .line 136
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 137
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;-><init>(Lcom/android/internal/telephony/gsm/GsmConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    .line 139
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    .line 141
    iget-boolean v0, p2, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming:Z

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->createTime:J

    .line 161
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->numberPresentation:I

    .line 162
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 164
    iput p4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    .line 166
    const/4 v0, 0x7

    if-ne p4, v0, :cond_4d

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isFakeConnection:Z

    .line 172
    :cond_4d
    iget v0, p2, Lcom/android/internal/telephony/DriverCall;->als:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->als:I

    .line 174
    iget-object v0, p2, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 175
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0, p0, p2}, Lcom/android/internal/telephony/gsm/GsmCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    .line 176
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmCallTracker;Lcom/android/internal/telephony/gsm/GsmCall;)V
    .registers 8
    .parameter "context"
    .parameter "dialString"
    .parameter "ct"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 180
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 76
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_DISCONNECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 77
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->rawCause:I

    .line 78
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 79
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->numberPresentation:I

    .line 81
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cnapNamePresentation:I

    .line 88
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isFakeConnection:Z

    .line 92
    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->als:I

    .line 181
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->createWakeLock(Landroid/content/Context;)V

    .line 182
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->acquireWakeLock()V

    .line 184
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 185
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection$MyHandler;-><init>(Lcom/android/internal/telephony/gsm/GsmConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    .line 187
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->dialString:Ljava/lang/String;

    .line 189
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    .line 190
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    .line 192
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    .line 194
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming:Z

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cnapName:Ljava/lang/String;

    .line 197
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cnapNamePresentation:I

    .line 198
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->numberPresentation:I

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->createTime:J

    .line 202
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 203
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, v0}, Lcom/android/internal/telephony/gsm/GsmCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 204
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    return-void
.end method

.method private acquireWakeLock()V
    .registers 2

    .prologue
    .line 1021
    const-string v0, "acquireWakeLock"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 1022
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1023
    return-void
.end method

.method private createWakeLock(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 1015
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1016
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "GSM"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1017
    return-void
.end method

.method static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 211
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method private isConnectingInOrOut()Z
    .registers 3

    .prologue
    .line 965
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eq v0, v1, :cond_1c

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v0, v0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_1c

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    iget-object v0, v0, Lcom/android/internal/telephony/Call;->state:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 1036
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GSMConn] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    return-void
.end method

.method private onStartedHolding()V
    .registers 3

    .prologue
    .line 835
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->holdingStartTime:J

    .line 836
    return-void
.end method

.method private parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/gsm/GsmCall;
    .registers 5
    .parameter "state"

    .prologue
    .line 972
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmConnection$1;->$SwitchMap$com$android$internal$telephony$DriverCall$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_34

    .line 989
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal call state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 976
    :pswitch_24
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->foregroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 985
    :goto_28
    return-object v0

    .line 980
    :pswitch_29
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    goto :goto_28

    .line 985
    :pswitch_2e
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->ringingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    goto :goto_28

    .line 972
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_29
        :pswitch_2e
        :pswitch_2e
    .end packed-switch
.end method

.method private processNextPostDialChar()V
    .registers 10

    .prologue
    .line 907
    const/4 v1, 0x0

    .line 910
    .local v1, c:C
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v7, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v6, v7, :cond_8

    .line 957
    :cond_7
    :goto_7
    return-void

    .line 915
    :cond_8
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    if-eqz v6, :cond_16

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    iget v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->nextPostDialChar:I

    if-gt v6, v7, :cond_3a

    .line 917
    :cond_16
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 920
    const/4 v1, 0x0

    .line 939
    :cond_1c
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 943
    .local v4, postDialHandler:Landroid/os/Registrant;
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v3

    .local v3, notifyMessage:Landroid/os/Message;
    if-eqz v3, :cond_7

    .line 946
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 947
    .local v5, state:Lcom/android/internal/telephony/Connection$PostDialState;
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 948
    .local v0, ar:Landroid/os/AsyncResult;
    iput-object p0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 949
    iput-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 952
    iput v1, v3, Landroid/os/Message;->arg1:I

    .line 955
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_7

    .line 924
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #notifyMessage:Landroid/os/Message;
    .end local v4           #postDialHandler:Landroid/os/Registrant;
    .end local v5           #state:Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_3a
    sget-object v6, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 926
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    iget v7, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->nextPostDialChar:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->nextPostDialChar:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 928
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->processPostDialChar(C)Z

    move-result v2

    .line 930
    .local v2, isValid:Z
    if-nez v2, :cond_1c

    .line 932
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 934
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processNextPostDialChar: c="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isn\'t valid!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method private processPostDialChar(C)Z
    .registers 8
    .parameter "c"

    .prologue
    const-wide/16 v4, 0xbb8

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 844
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 845
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/CallTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    :goto_17
    move v0, v2

    .line 874
    :goto_18
    return v0

    .line 846
    :cond_19
    const/16 v0, 0x2c

    if-ne p1, v0, :cond_39

    .line 853
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->nextPostDialChar:I

    if-ne v0, v2, :cond_2d

    .line 856
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_17

    .line 863
    :cond_2d
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_17

    .line 866
    :cond_39
    const/16 v0, 0x3b

    if-ne p1, v0, :cond_43

    .line 867
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_17

    .line 868
    :cond_43
    const/16 v0, 0x4e

    if-ne p1, v0, :cond_4d

    .line 869
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_17

    .line 871
    :cond_4d
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private releaseWakeLock()V
    .registers 3

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 1028
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1029
    const-string/jumbo v1, "releaseWakeLock"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 1030
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1032
    :cond_16
    monitor-exit v0

    .line 1033
    return-void

    .line 1032
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V
    .registers 6
    .parameter "s"

    .prologue
    const/4 v3, 0x4

    .line 1000
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_1f

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne p1, v1, :cond_1f

    .line 1002
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->acquireWakeLock()V

    .line 1003
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1004
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1010
    .end local v0           #msg:Landroid/os/Message;
    :cond_1c
    :goto_1c
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 1011
    return-void

    .line 1005
    :cond_1f
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v1, v2, :cond_1c

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq p1, v1, :cond_1c

    .line 1007
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->h:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1008
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    goto :goto_1c
.end method


# virtual methods
.method public cancelPostDial()V
    .registers 2

    .prologue
    .line 421
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 422
    return-void
.end method

.method compareTo(Lcom/android/internal/telephony/DriverCall;)Z
    .registers 6
    .parameter "c"

    .prologue
    const/4 v3, 0x1

    .line 221
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming:Z

    if-nez v1, :cond_b

    iget-boolean v1, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-nez v1, :cond_b

    move v1, v3

    .line 227
    :goto_a
    return v1

    .line 226
    :cond_b
    iget-object v1, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v2, p1, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, cAddress:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming:Z

    iget-boolean v2, p1, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    if-ne v1, v2, :cond_23

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    move v1, v3

    goto :goto_a

    :cond_23
    const/4 v1, 0x0

    goto :goto_a
.end method

.method disconnectCauseFromCode(I)Lcom/android/internal/telephony/Connection$DisconnectCause;
    .registers 6
    .parameter "causeCode"

    .prologue
    .line 441
    sparse-switch p1, :sswitch_data_82

    .line 489
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v2, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 490
    .local v0, phone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 491
    .local v1, serviceState:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_30

    .line 492
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->POWER_OFF:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 513
    .end local v0           #phone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v1           #serviceState:I
    :goto_14
    return-object v2

    .line 443
    :sswitch_15
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 446
    :sswitch_18
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_ANSWER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 453
    :sswitch_1b
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 456
    :sswitch_1e
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->LIMIT_EXCEEDED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 459
    :sswitch_21
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 462
    :sswitch_24
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 465
    :sswitch_27
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 476
    :sswitch_2a
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_ACCESS_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 483
    :sswitch_2d
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_ACCESS_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 493
    .restart local v0       #phone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .restart local v1       #serviceState:I
    :cond_30
    const/4 v2, 0x1

    if-eq v1, v2, :cond_36

    const/4 v2, 0x2

    if-ne v1, v2, :cond_39

    .line 495
    :cond_36
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 496
    :cond_39
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v2, v3, :cond_48

    .line 497
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->ICC_ERROR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 498
    :cond_48
    const v2, 0xffff

    if-ne p1, v2, :cond_77

    .line 499
    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsRestricted()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 500
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 501
    :cond_5a
    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsEmergencyRestricted()Z

    move-result v2

    if-eqz v2, :cond_67

    .line 502
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 503
    :cond_67
    iget-object v2, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->rs:Lcom/android/internal/telephony/gsm/RestrictedState;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/RestrictedState;->isCsNormalRestricted()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 504
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 506
    :cond_74
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 508
    :cond_77
    const/16 v2, 0x10

    if-ne p1, v2, :cond_7e

    .line 509
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 513
    :cond_7e
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_14

    .line 441
    nop

    :sswitch_data_82
    .sparse-switch
        0x1 -> :sswitch_27
        0x11 -> :sswitch_15
        0x12 -> :sswitch_18
        0x13 -> :sswitch_18
        0x22 -> :sswitch_1b
        0x29 -> :sswitch_1b
        0x2a -> :sswitch_1b
        0x2c -> :sswitch_1b
        0x31 -> :sswitch_1b
        0x3a -> :sswitch_1b
        0x44 -> :sswitch_1e
        0x70 -> :sswitch_2a
        0xf0 -> :sswitch_21
        0xf1 -> :sswitch_24
        0x3f1 -> :sswitch_2d
    .end sparse-switch
.end method

.method disconnectCauseFromCode(II)Lcom/android/internal/telephony/Connection$DisconnectCause;
    .registers 5
    .parameter "causeCode"
    .parameter "callFailCause"

    .prologue
    .line 523
    invoke-static {}, Lcom/android/internal/telephony/NonstaticTelephonyFeature;->getInstance()Ljava/util/Map;

    move-result-object v0

    const-string v1, "CONFIG_FULL_DISCONNECT_CAUSE_LTN_TCE"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 524
    add-int/lit16 v0, p2, 0xbb8

    sparse-switch v0, :sswitch_data_e8

    .line 624
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnectCauseFromCode(I)Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    .line 647
    :goto_15
    return-object v0

    .line 526
    :sswitch_16
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 528
    :sswitch_19
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_USER_RESP:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 530
    :sswitch_1c
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_ANSWER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 532
    :sswitch_1f
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_CIRCUIT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 534
    :sswitch_22
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->TMP_FAIL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 536
    :sswitch_25
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->SWITCH_CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 538
    :sswitch_28
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_CHANNEL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 540
    :sswitch_2b
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_QOS:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 542
    :sswitch_2e
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_BEARER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 544
    :sswitch_31
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->ACM_EXCEED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 546
    :sswitch_34
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 548
    :sswitch_37
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNASSIGNED_NUM:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 550
    :sswitch_3a
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_ROUTE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 552
    :sswitch_3d
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->CHANNEL_UNACCEPT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 554
    :sswitch_40
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->OP_DETERMINED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 556
    :sswitch_43
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_REJECT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 558
    :sswitch_46
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->PRE_EMPTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 560
    :sswitch_49
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NON_SELECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 562
    :sswitch_4c
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->DESTINATION_OUT_OF:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 564
    :sswitch_4f
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUM_FORMAT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 566
    :sswitch_52
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->FACILITY_REJECT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 568
    :sswitch_55
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NET_OUT_OF:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 570
    :sswitch_58
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->ACCESS_DISCARD:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 572
    :sswitch_5b
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_RESOURCE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 574
    :sswitch_5e
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_SUBSCRIBED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 576
    :sswitch_61
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->BARRED_IN_CUG:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 578
    :sswitch_64
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->BARRER_NOT_ALLOWED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 580
    :sswitch_67
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->SERVICE_UNAVAILABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 582
    :sswitch_6a
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->BEARER_UNINPLEMENTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 584
    :sswitch_6d
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->FACILITY_UNINPLEMENTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 586
    :sswitch_70
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->RESTRICTED_DIGITAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 588
    :sswitch_73
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->SERVICE_UNINPLEMENTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 590
    :sswitch_76
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_TI:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 592
    :sswitch_79
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NOT_IN_CUG:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 594
    :sswitch_7c
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMPATIBLE_DEST:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 596
    :sswitch_7f
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_TRANSIT_NET:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 598
    :sswitch_82
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCORRECT_MSG:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 600
    :sswitch_85
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->IE_ERROR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 602
    :sswitch_88
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->MSG_TYPE_NON_EXIST:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 604
    :sswitch_8b
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->MSG_NOT_COMP:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 606
    :sswitch_8e
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->IE_NON_EXIST:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 608
    :sswitch_91
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_IE_CONTENTS:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_15

    .line 610
    :sswitch_94
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->MSG_NOT_COMP_CALL_STATE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_15

    .line 612
    :sswitch_98
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->RECOVERY_TIMER_EXPIRY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_15

    .line 614
    :sswitch_9c
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->PROTOCOL_ERROR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_15

    .line 616
    :sswitch_a0
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INTERWORKING:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_15

    .line 618
    :sswitch_a4
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NUMBER_CHANGED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_15

    .line 620
    :sswitch_a8
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->STATUS_ENQUIRY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_15

    .line 622
    :sswitch_ac
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_15

    .line 627
    :cond_b0
    invoke-static {}, Lcom/android/internal/telephony/NonstaticTelephonyFeature;->getInstance()Ljava/util/Map;

    move-result-object v0

    const-string v1, "CONFIG_FULL_DISCONNECT_CAUSE_LTN_COM"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 628
    add-int/lit16 v0, p2, 0xbb8

    sparse-switch v0, :sswitch_data_1ae

    .line 644
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnectCauseFromCode(I)Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    goto/16 :goto_15

    .line 630
    :sswitch_c7
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_15

    .line 632
    :sswitch_cb
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_USER_RESP:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_15

    .line 634
    :sswitch_cf
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_ANSWER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_15

    .line 636
    :sswitch_d3
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_CIRCUIT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_15

    .line 638
    :sswitch_d7
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_CHANNEL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_15

    .line 640
    :sswitch_db
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNASSIGNED_NUM:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_15

    .line 642
    :sswitch_df
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_15

    .line 647
    :cond_e3
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto/16 :goto_15

    .line 524
    nop

    :sswitch_data_e8
    .sparse-switch
        0xbb9 -> :sswitch_37
        0xbbb -> :sswitch_3a
        0xbbe -> :sswitch_3d
        0xbc0 -> :sswitch_40
        0xbc8 -> :sswitch_34
        0xbc9 -> :sswitch_16
        0xbca -> :sswitch_19
        0xbcb -> :sswitch_1c
        0xbcd -> :sswitch_43
        0xbce -> :sswitch_a4
        0xbd1 -> :sswitch_46
        0xbd2 -> :sswitch_49
        0xbd3 -> :sswitch_4c
        0xbd4 -> :sswitch_4f
        0xbd5 -> :sswitch_52
        0xbd6 -> :sswitch_a8
        0xbd7 -> :sswitch_ac
        0xbda -> :sswitch_1f
        0xbde -> :sswitch_55
        0xbe1 -> :sswitch_22
        0xbe2 -> :sswitch_25
        0xbe3 -> :sswitch_58
        0xbe4 -> :sswitch_28
        0xbe7 -> :sswitch_5b
        0xbe9 -> :sswitch_2b
        0xbea -> :sswitch_5e
        0xbef -> :sswitch_61
        0xbf1 -> :sswitch_64
        0xbf2 -> :sswitch_2e
        0xbf7 -> :sswitch_67
        0xbf9 -> :sswitch_6a
        0xbfc -> :sswitch_31
        0xbfd -> :sswitch_6d
        0xbfe -> :sswitch_70
        0xc07 -> :sswitch_73
        0xc09 -> :sswitch_76
        0xc0f -> :sswitch_79
        0xc10 -> :sswitch_7c
        0xc13 -> :sswitch_7f
        0xc17 -> :sswitch_82
        0xc18 -> :sswitch_85
        0xc19 -> :sswitch_88
        0xc1a -> :sswitch_8b
        0xc1b -> :sswitch_8e
        0xc1c -> :sswitch_91
        0xc1d -> :sswitch_94
        0xc1e -> :sswitch_98
        0xc27 -> :sswitch_9c
        0xc37 -> :sswitch_a0
    .end sparse-switch

    .line 628
    :sswitch_data_1ae
    .sparse-switch
        0xbb9 -> :sswitch_db
        0xbc9 -> :sswitch_c7
        0xbca -> :sswitch_cb
        0xbcb -> :sswitch_cf
        0xbd7 -> :sswitch_df
        0xbda -> :sswitch_d3
        0xbe4 -> :sswitch_d7
    .end sparse-switch
.end method

.method public dispose()V
    .registers 1

    .prologue
    .line 207
    return-void
.end method

.method fakeHoldBeforeDial()V
    .registers 3

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v0, :cond_9

    .line 793
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCall;->detach(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 796
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->backgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 797
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/gsm/GsmCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 799
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onStartedHolding()V

    .line 800
    return-void
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 899
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 900
    const-string v0, "GSM"

    const-string v1, "[GSMConn] UNEXPECTED; mPartialWakeLock is held when finalizing."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :cond_f
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    .line 903
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getCall()Lcom/android/internal/telephony/Call;
    .registers 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    return-object v0
.end method

.method public getCall()Lcom/android/internal/telephony/gsm/GsmCall;
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    return-object v0
.end method

.method public getCnapName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 247
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCnapNamePresentation()I
    .registers 3

    .prologue
    const-string v1, "SGH-I777"

    .line 254
    const-string v0, "SGH-I777"

    const-string v0, "SGH-I777"

    invoke-virtual {v1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 255
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    .line 258
    :goto_e
    return v0

    :cond_f
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cnapNamePresentation:I

    goto :goto_e
.end method

.method public getConnectTime()J
    .registers 3

    .prologue
    .line 271
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->connectTime:J

    return-wide v0
.end method

.method public getCreateTime()J
    .registers 3

    .prologue
    .line 267
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->createTime:J

    return-wide v0
.end method

.method public getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;
    .registers 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    return-object v0
.end method

.method public getDisconnectTime()J
    .registers 3

    .prologue
    .line 275
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnectTime:J

    return-wide v0
.end method

.method public getDurationMillis()J
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 279
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->connectTimeReal:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    move-wide v0, v2

    .line 284
    :goto_9
    return-wide v0

    .line 281
    :cond_a
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->duration:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    .line 282
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->connectTimeReal:J

    sub-long/2addr v0, v2

    goto :goto_9

    .line 284
    :cond_18
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->duration:J

    goto :goto_9
.end method

.method getGSMIndex()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 804
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    if-ltz v0, :cond_9

    .line 805
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 807
    :cond_9
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "GSM index not yet assigned"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHoldDurationMillis()J
    .registers 5

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_b

    .line 291
    const-wide/16 v0, 0x0

    .line 293
    :goto_a
    return-wide v0

    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->holdingStartTime:J

    sub-long/2addr v0, v2

    goto :goto_a
.end method

.method public getIncomingLine()I
    .registers 2

    .prologue
    .line 1059
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->als:I

    return v0
.end method

.method public getNumberPresentation()I
    .registers 2

    .prologue
    .line 1041
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->numberPresentation:I

    return v0
.end method

.method public getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
    .registers 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    return-object v0
.end method

.method public getRawDisconnectCause()I
    .registers 2

    .prologue
    .line 303
    iget v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->rawCause:I

    return v0
.end method

.method public getRemainingPostDialString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_1a

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_1a

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->nextPostDialChar:I

    if-gt v0, v1, :cond_1d

    .line 884
    :cond_1a
    const-string v0, ""

    .line 887
    :goto_1c
    return-object v0

    :cond_1d
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->nextPostDialChar:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .registers 2

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnected:Z

    if-eqz v0, :cond_7

    .line 313
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    .line 315
    :goto_6
    return-object v0

    :cond_7
    invoke-super {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    goto :goto_6
.end method

.method public getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .registers 2

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    return-object v0
.end method

.method public hangup()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnected:Z

    if-nez v0, :cond_a

    .line 321
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 325
    return-void

    .line 323
    :cond_a
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isFakeConnection()Z
    .registers 2

    .prologue
    .line 1052
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isFakeConnection:Z

    return v0
.end method

.method public isIncoming()Z
    .registers 2

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming:Z

    return v0
.end method

.method onConnectedInOrOut()V
    .registers 4

    .prologue
    .line 816
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->connectTime:J

    .line 817
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->connectTimeReal:J

    .line 818
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->duration:J

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConnectedInOrOut: connectTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->connectTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 826
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->isIncoming:Z

    if-nez v0, :cond_30

    .line 828
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V

    .line 830
    :cond_30
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    .line 831
    return-void
.end method

.method onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V
    .registers 6
    .parameter "cause"

    .prologue
    .line 673
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 675
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnected:Z

    if-nez v0, :cond_43

    .line 676
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->index:I

    .line 678
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnectTime:J

    .line 679
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->connectTimeReal:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->duration:J

    .line 680
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnected:Z

    .line 682
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GSMConn] onDisconnect: cause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    .line 687
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v0, :cond_43

    .line 688
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCall;->connectionDisconnected(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 691
    :cond_43
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->releaseWakeLock()V

    .line 692
    return-void
.end method

.method onHangupLocal()V
    .registers 2

    .prologue
    .line 431
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->cause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 432
    return-void
.end method

.method onRemoteDisconnect(I)V
    .registers 3
    .parameter "causeCode"

    .prologue
    .line 654
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnectCauseFromCode(I)Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 655
    return-void
.end method

.method onRemoteDisconnect(II)V
    .registers 5
    .parameter "causeCode"
    .parameter "callFailCause"

    .prologue
    .line 660
    invoke-static {}, Lcom/android/internal/telephony/NonstaticTelephonyFeature;->getInstance()Ljava/util/Map;

    move-result-object v0

    const-string v1, "CONFIG_FULL_DISCONNECT_CAUSE_LTN_TCE"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {}, Lcom/android/internal/telephony/NonstaticTelephonyFeature;->getInstance()Ljava/util/Map;

    move-result-object v0

    const-string v1, "CONFIG_FULL_DISCONNECT_CAUSE_LTN_COM"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 662
    :cond_18
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnectCauseFromCode(II)Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onDisconnect(Lcom/android/internal/telephony/Connection$DisconnectCause;)V

    .line 667
    :goto_1f
    return-void

    .line 664
    :cond_20
    iput p2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->rawCause:I

    .line 665
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->onRemoteDisconnect(I)V

    goto :goto_1f
.end method

.method public proceedAfterWaitChar()V
    .registers 4

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_21

    .line 341
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GsmConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WAIT but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :goto_20
    return-void

    .line 346
    :cond_21
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 348
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V

    goto :goto_20
.end method

.method public proceedAfterWildChar(Ljava/lang/String;)V
    .registers 6
    .parameter "str"

    .prologue
    .line 374
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v1, v2, :cond_21

    .line 375
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsmConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WILD but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :goto_20
    return-void

    .line 380
    :cond_21
    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 408
    .local v0, buf:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->nextPostDialChar:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    .line 410
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->nextPostDialChar:I

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "proceedAfterWildChar: new postDialString is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 416
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V

    goto :goto_20
.end method

.method public sendDtmf(Ljava/lang/String;)V
    .registers 5
    .parameter "str"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_27

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_27

    .line 355
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GsmConnection.sendDtmf(): Expected getPostDialState() to be COMPLETE || CANCELLED but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :goto_26
    return-void

    .line 360
    :cond_27
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 362
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    .line 363
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->nextPostDialChar:I

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "proceedAfterWildChar: new postDialString is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->postDialString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 369
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->processNextPostDialChar()V

    goto :goto_26
.end method

.method public separate()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->disconnected:Z

    if-nez v0, :cond_a

    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->owner:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->separate(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 333
    return-void

    .line 331
    :cond_a
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "disconnected"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method update(Lcom/android/internal/telephony/DriverCall;)Z
    .registers 11
    .parameter "dc"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 698
    const/4 v0, 0x0

    .line 699
    .local v0, changed:Z
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->isConnectingInOrOut()Z

    move-result v3

    .line 700
    .local v3, wasConnectingInOrOut:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_b2

    move v4, v8

    .line 702
    .local v4, wasHolding:Z
    :goto_10
    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->parentFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v1

    .line 704
    .local v1, newParent:Lcom/android/internal/telephony/gsm/GsmCall;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/internal/telephony/gsm/GsmConnection;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    .line 705
    const-string/jumbo v5, "update: phone # changed!"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 706
    iget-object v5, p1, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->address:Ljava/lang/String;

    .line 707
    const/4 v0, 0x1

    .line 744
    :cond_2b
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eq v1, v5, :cond_b5

    .line 745
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eqz v5, :cond_3d

    .line 746
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/gsm/GsmCall;->detach(Lcom/android/internal/telephony/gsm/GsmConnection;)V

    .line 749
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/gsm/GsmCall;->setVideoCall(Z)V

    .line 752
    :cond_3d
    invoke-virtual {v1, p0, p1}, Lcom/android/internal/telephony/gsm/GsmCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/DriverCall;)V

    .line 753
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    .line 754
    const/4 v0, 0x1

    .line 763
    :goto_43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update: parent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", hasNewParent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    if-eq v1, v6, :cond_c3

    move v6, v8

    :goto_60
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", wasConnectingInOrOut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", wasHolding="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isConnectingInOrOut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->isConnectingInOrOut()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", changed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmConnection;->log(Ljava/lang/String;)V

    .line 772
    if-eqz v3, :cond_a2

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->isConnectingInOrOut()Z

    move-result v5

    if-nez v5, :cond_a2

    .line 773
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onConnectedInOrOut()V

    .line 776
    :cond_a2
    if-eqz v0, :cond_b1

    if-nez v4, :cond_b1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_b1

    .line 778
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmConnection;->onStartedHolding()V

    .line 781
    :cond_b1
    return v0

    .end local v1           #newParent:Lcom/android/internal/telephony/gsm/GsmCall;
    .end local v4           #wasHolding:Z
    :cond_b2
    move v4, v7

    .line 700
    goto/16 :goto_10

    .line 757
    .restart local v1       #newParent:Lcom/android/internal/telephony/gsm/GsmCall;
    .restart local v4       #wasHolding:Z
    :cond_b5
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmConnection;->parent:Lcom/android/internal/telephony/gsm/GsmCall;

    invoke-virtual {v5, p0, p1}, Lcom/android/internal/telephony/gsm/GsmCall;->update(Lcom/android/internal/telephony/gsm/GsmConnection;Lcom/android/internal/telephony/DriverCall;)Z

    move-result v2

    .line 758
    .local v2, parentStateChange:Z
    if-nez v0, :cond_bf

    if-eqz v2, :cond_c1

    :cond_bf
    move v0, v8

    :goto_c0
    goto :goto_43

    :cond_c1
    move v0, v7

    goto :goto_c0

    .end local v2           #parentStateChange:Z
    :cond_c3
    move v6, v7

    .line 763
    goto :goto_60
.end method
