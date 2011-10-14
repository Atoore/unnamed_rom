.class Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl$NotifyHandler;
.super Landroid/os/Handler;
.source "AreaMailNotificationControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;


# direct methods
.method private constructor <init>(Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;)V
    .registers 2
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl$NotifyHandler;->this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 461
    invoke-direct {p0, p1}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl$NotifyHandler;-><init>(Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 465
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_26

    .line 487
    :goto_5
    return-void

    .line 471
    :pswitch_6
    const/4 v1, 0x1

    .line 472
    .local v1, result:Z
    :try_start_7
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_c

    .line 473
    const/4 v1, 0x0

    .line 477
    :cond_c
    iget-object v2, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl$NotifyHandler;->this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;

    #getter for: Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mListener:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;
    invoke-static {v2}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->access$500(Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;)Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;->onComplete(Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_16

    goto :goto_5

    .line 478
    :catch_16
    move-exception v2

    move-object v0, v2

    .line 480
    .local v0, e:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl$NotifyHandler;->this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;

    const/4 v3, 0x0

    #setter for: Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->mListener:Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;
    invoke-static {v2, v3}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;->access$502(Lcom/nttdocomo/android/areamail/service/internal/AreaMailNotificationControl;Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;)Lcom/nttdocomo/android/areamail/service/aidl/IAreaMailNotificationListener;

    .line 481
    const-string v2, "areamail.service"

    const-string v3, "NotifyHandler.handleMessage:Listner not exist"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 465
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
