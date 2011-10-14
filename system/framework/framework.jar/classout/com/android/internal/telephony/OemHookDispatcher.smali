.class public Lcom/android/internal/telephony/OemHookDispatcher;
.super Landroid/os/Handler;
.source "OemHookDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/OemHookDispatcher$OemHookMessage;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "OemHookDispatcher"


# instance fields
.field private mAreaMailService:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

.field private mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .registers 5
    .parameter "phone"

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 35
    iput-object v2, p0, Lcom/android/internal/telephony/OemHookDispatcher;->mAreaMailService:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    .line 46
    iput-object p1, p0, Lcom/android/internal/telephony/OemHookDispatcher;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 47
    iget-object v0, p0, Lcom/android/internal/telephony/OemHookDispatcher;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/android/internal/telephony/BaseCommands;

    const/16 v1, 0x5dc

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/BaseCommands;->setOnUnsolOemHookRaw(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 48
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/telephony/OemHookDispatcher;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/android/internal/telephony/BaseCommands;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/BaseCommands;->unSetOnUnsolOemHookRaw(Landroid/os/Handler;)V

    .line 66
    return-void
.end method

.method public finfNttCbAvailable()Z
    .registers 8

    .prologue
    const-string v6, "44010"

    const-string v5, "00101"

    const-string v4, "OemHookDispatcher"

    .line 69
    const/4 v1, 0x0

    .line 72
    .local v1, svcIsAvailable:Z
    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, operator:Ljava/lang/String;
    if-nez v0, :cond_29

    .line 74
    const-string v2, "OemHookDispatcher"

    const-string v2, "[finfNttCbAvailable] Fail to get the gsm.sim.operator.numeric"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_16
    :goto_16
    if-eqz v1, :cond_28

    .line 81
    const/4 v1, 0x0

    .line 82
    const-string v2, "gsm.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    if-nez v0, :cond_53

    .line 84
    const-string v2, "OemHookDispatcher"

    const-string v2, "[finfNttCbAvailable] Fail to get the gsm.operator.numeric"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_28
    :goto_28
    return v1

    .line 76
    :cond_29
    const-string v2, "OemHookDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[finfNttCbAvailable] gsm.sim.operator.numeric : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v2, "44010"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    const-string v2, "00101"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_51
    const/4 v1, 0x1

    goto :goto_16

    .line 86
    :cond_53
    const-string v2, "OemHookDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[finfNttCbAvailable] gsm.operator.numeric : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v2, "44010"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7b

    const-string v2, "00101"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    :cond_7b
    const/4 v1, 0x1

    goto :goto_28
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const-string v4, "OemHookDispatcher"

    .line 99
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x5dc

    if-ne v2, v3, :cond_19

    .line 100
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 102
    .local v0, ar:Landroid/os/AsyncResult;
    invoke-virtual {p0}, Lcom/android/internal/telephony/OemHookDispatcher;->finfNttCbAvailable()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 103
    const-string v2, "OemHookDispatcher"

    const-string v2, "NTT CB message service is not Available"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .end local v0           #ar:Landroid/os/AsyncResult;
    :cond_19
    :goto_19
    return-void

    .line 108
    .restart local v0       #ar:Landroid/os/AsyncResult;
    :cond_1a
    new-instance v1, Lcom/android/internal/telephony/OemHookDispatcher$OemHookMessage;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/OemHookDispatcher$OemHookMessage;-><init>(Lcom/android/internal/telephony/OemHookDispatcher;[B)V

    .line 110
    .local v1, oemHookMsg:Lcom/android/internal/telephony/OemHookDispatcher$OemHookMessage;
    iget v2, v1, Lcom/android/internal/telephony/OemHookDispatcher$OemHookMessage;->what:I

    packed-switch v2, :pswitch_data_4e

    .line 124
    const-string v2, "OemHookDispatcher"

    const-string v2, "Received illegal message"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 112
    :pswitch_32
    iget-object v2, p0, Lcom/android/internal/telephony/OemHookDispatcher;->mAreaMailService:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    if-eqz v2, :cond_19

    .line 113
    iget-object v2, v1, Lcom/android/internal/telephony/OemHookDispatcher$OemHookMessage;->body:[B

    iput-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 114
    iget-object v2, p0, Lcom/android/internal/telephony/OemHookDispatcher;->mAreaMailService:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    invoke-virtual {v2, v0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->handleAreaMailMessage(Landroid/os/AsyncResult;)V

    goto :goto_19

    .line 118
    :pswitch_40
    iget-object v2, p0, Lcom/android/internal/telephony/OemHookDispatcher;->mAreaMailService:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    if-eqz v2, :cond_19

    .line 119
    iget-object v2, v1, Lcom/android/internal/telephony/OemHookDispatcher$OemHookMessage;->body:[B

    iput-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 120
    iget-object v2, p0, Lcom/android/internal/telephony/OemHookDispatcher;->mAreaMailService:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    invoke-virtual {v2, v0}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->handleEtwsNotification(Landroid/os/AsyncResult;)V

    goto :goto_19

    .line 110
    :pswitch_data_4e
    .packed-switch 0x5f4
        :pswitch_32
        :pswitch_40
    .end packed-switch
.end method

.method public setOemEventReceiver(Ljava/lang/Object;)V
    .registers 3
    .parameter "obj"

    .prologue
    .line 56
    instance-of v0, p1, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    if-eqz v0, :cond_8

    .line 57
    check-cast p1, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    .end local p1
    iput-object p1, p0, Lcom/android/internal/telephony/OemHookDispatcher;->mAreaMailService:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    .line 59
    :cond_8
    return-void
.end method
