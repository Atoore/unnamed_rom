.class Lcom/android/server/sip/SipService$1;
.super Landroid/content/BroadcastReceiver;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sip/SipService;


# direct methods
.method constructor <init>(Lcom/android/server/sip/SipService;)V
    .registers 2
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/server/sip/SipService$1;->this$0:Lcom/android/server/sip/SipService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 126
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 128
    const-string/jumbo v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 130
    .local v1, state:I
    iget-object v2, p0, Lcom/android/server/sip/SipService$1;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v2

    .line 131
    packed-switch v1, :pswitch_data_40

    .line 141
    :cond_1a
    :goto_1a
    :pswitch_1a
    :try_start_1a
    monitor-exit v2

    .line 143
    .end local v1           #state:I
    :cond_1b
    return-void

    .line 133
    .restart local v1       #state:I
    :pswitch_1c
    iget-object v3, p0, Lcom/android/server/sip/SipService$1;->this$0:Lcom/android/server/sip/SipService;

    const/4 v4, 0x1

    #setter for: Lcom/android/server/sip/SipService;->mWifiEnabled:Z
    invoke-static {v3, v4}, Lcom/android/server/sip/SipService;->access$102(Lcom/android/server/sip/SipService;Z)Z

    .line 134
    iget-object v3, p0, Lcom/android/server/sip/SipService$1;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->anyOpenedToReceiveCalls()Z
    invoke-static {v3}, Lcom/android/server/sip/SipService;->access$200(Lcom/android/server/sip/SipService;)Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lcom/android/server/sip/SipService$1;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->grabWifiLock()V
    invoke-static {v3}, Lcom/android/server/sip/SipService;->access$300(Lcom/android/server/sip/SipService;)V

    goto :goto_1a

    .line 141
    :catchall_30
    move-exception v3

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_1a .. :try_end_32} :catchall_30

    throw v3

    .line 137
    :pswitch_33
    :try_start_33
    iget-object v3, p0, Lcom/android/server/sip/SipService$1;->this$0:Lcom/android/server/sip/SipService;

    const/4 v4, 0x0

    #setter for: Lcom/android/server/sip/SipService;->mWifiEnabled:Z
    invoke-static {v3, v4}, Lcom/android/server/sip/SipService;->access$102(Lcom/android/server/sip/SipService;Z)Z

    .line 138
    iget-object v3, p0, Lcom/android/server/sip/SipService$1;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->releaseWifiLock()V
    invoke-static {v3}, Lcom/android/server/sip/SipService;->access$400(Lcom/android/server/sip/SipService;)V
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_30

    goto :goto_1a

    .line 131
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_33
        :pswitch_1a
        :pswitch_1c
    .end packed-switch
.end method
