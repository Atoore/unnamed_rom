.class final Lcom/sec/android/provider/logsprovider/LogsReceiver$1;
.super Landroid/os/Handler;
.source "LogsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/provider/logsprovider/LogsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 56
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_2e

    .line 90
    :goto_5
    :pswitch_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 91
    return-void

    .line 58
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    .line 59
    .local v0, context:Landroid/content/Context;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/sec/android/provider/logsprovider/LogsReceiver$1$1;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/provider/logsprovider/LogsReceiver$1$1;-><init>(Lcom/sec/android/provider/logsprovider/LogsReceiver$1;Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 64
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_5

    .line 80
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #thread:Ljava/lang/Thread;
    :pswitch_1b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;

    .line 81
    .local v1, info:Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/sec/android/provider/logsprovider/LogsReceiver$1$3;

    invoke-direct {v3, p0, v1}, Lcom/sec/android/provider/logsprovider/LogsReceiver$1$3;-><init>(Lcom/sec/android/provider/logsprovider/LogsReceiver$1;Lcom/sec/android/provider/logsprovider/LogsReceiver$AccountInfo;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 86
    .restart local v2       #thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_5

    .line 56
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
        :pswitch_1b
    .end packed-switch
.end method
