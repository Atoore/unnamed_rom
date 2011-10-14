.class Lcom/nttdocomo/android/areamail/service/AreaMailNotificationListener$2;
.super Landroid/os/Handler;
.source "AreaMailNotificationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/android/areamail/service/AreaMailNotificationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nttdocomo/android/areamail/service/AreaMailNotificationListener;


# direct methods
.method constructor <init>(Lcom/nttdocomo/android/areamail/service/AreaMailNotificationListener;)V
    .registers 2
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/nttdocomo/android/areamail/service/AreaMailNotificationListener$2;->this$0:Lcom/nttdocomo/android/areamail/service/AreaMailNotificationListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 54
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    .line 59
    :goto_5
    return-void

    .line 56
    :pswitch_6
    iget-object v0, p0, Lcom/nttdocomo/android/areamail/service/AreaMailNotificationListener$2;->this$0:Lcom/nttdocomo/android/areamail/service/AreaMailNotificationListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    :goto_d
    invoke-virtual {v0, v1}, Lcom/nttdocomo/android/areamail/service/AreaMailNotificationListener;->onComplete(Z)V

    goto :goto_5

    :cond_11
    const/4 v1, 0x0

    goto :goto_d

    .line 54
    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
