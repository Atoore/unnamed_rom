.class Lcom/android/internal/policy/impl/KeyguardViewMediator$2;
.super Landroid/os/Handler;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .registers 2
    .parameter

    .prologue
    .line 991
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 994
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_68

    .line 1035
    :goto_7
    return-void

    .line 996
    :pswitch_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleTimeout(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$900(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)V

    goto :goto_7

    .line 999
    :pswitch_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleShow()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_7

    .line 1002
    :pswitch_16
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleHide()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_7

    .line 1005
    :pswitch_1c
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleReset()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_7

    .line 1008
    :pswitch_22
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleVerifyUnlock()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_7

    .line 1011
    :pswitch_28
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleNotifyScreenOff()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1400(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_7

    .line 1014
    :pswitch_2e
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleNotifyScreenOn()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_7

    .line 1017
    :pswitch_34
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleWakeWhenReady(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1600(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)V

    goto :goto_7

    .line 1020
    :pswitch_3c
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_47

    move v1, v2

    :goto_43
    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleKeyguardDone(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1700(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)V

    goto :goto_7

    :cond_47
    move v1, v3

    goto :goto_43

    .line 1023
    :pswitch_49
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleKeyguardDoneDrawing()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1800(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_7

    .line 1026
    :pswitch_4f
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->keyguardDone(Z)V

    goto :goto_7

    .line 1029
    :pswitch_55
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_60

    move v1, v2

    :goto_5c
    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleSetHidden(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$1900(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)V

    goto :goto_7

    :cond_60
    move v1, v3

    goto :goto_5c

    .line 1032
    :pswitch_62
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    #calls: Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguard()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    goto :goto_7

    .line 994
    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_8
        :pswitch_10
        :pswitch_16
        :pswitch_1c
        :pswitch_22
        :pswitch_28
        :pswitch_2e
        :pswitch_34
        :pswitch_3c
        :pswitch_49
        :pswitch_4f
        :pswitch_55
        :pswitch_62
    .end packed-switch
.end method
