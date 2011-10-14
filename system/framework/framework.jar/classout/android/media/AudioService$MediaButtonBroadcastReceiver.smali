.class Landroid/media/AudioService$MediaButtonBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaButtonBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .registers 2
    .parameter

    .prologue
    .line 2926
    iput-object p1, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2926
    invoke-direct {p0, p1}, Landroid/media/AudioService$MediaButtonBroadcastReceiver;-><init>(Landroid/media/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v7, "android.intent.action.MEDIA_BUTTON"

    .line 2929
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2930
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 2965
    :cond_e
    :goto_e
    return-void

    .line 2933
    :cond_f
    const-string v6, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/view/KeyEvent;

    .line 2934
    .local v2, event:Landroid/view/KeyEvent;
    if-eqz v2, :cond_e

    .line 2938
    invoke-static {}, Landroid/media/AudioService;->access$5600()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 2939
    const/4 v3, 0x0

    .line 2941
    .local v3, isIdle:Z
    :try_start_1f
    const-string/jumbo v7, "phone"

    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 2942
    .local v4, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v4, :cond_30

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_60
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2f} :catch_63

    move-result v3

    .line 2946
    .end local v4           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_30
    :goto_30
    :try_start_30
    iget-object v7, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mIsRinging:Z
    invoke-static {v7}, Landroid/media/AudioService;->access$5700(Landroid/media/AudioService;)Z

    move-result v7

    if-nez v7, :cond_5e

    iget-object v7, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-virtual {v7}, Landroid/media/AudioService;->getMode()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_5e

    iget-object v7, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-virtual {v7}, Landroid/media/AudioService;->getMode()I

    move-result v7

    const/4 v8, 0x5

    if-eq v7, v8, :cond_5e

    iget-object v7, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-virtual {v7}, Landroid/media/AudioService;->getMode()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_5e

    iget-object v7, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-virtual {v7}, Landroid/media/AudioService;->getMode()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_5e

    if-nez v3, :cond_6d

    .line 2949
    :cond_5e
    monitor-exit v6

    goto :goto_e

    .line 2951
    :catchall_60
    move-exception v7

    monitor-exit v6
    :try_end_62
    .catchall {:try_start_30 .. :try_end_62} :catchall_60

    throw v7

    .line 2943
    :catch_63
    move-exception v7

    move-object v1, v7

    .line 2944
    .local v1, e:Landroid/os/RemoteException;
    :try_start_65
    const-string v7, "AudioService"

    const-string v8, "Couldn\'t connect to phone service"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30

    .line 2951
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_6d
    monitor-exit v6
    :try_end_6e
    .catchall {:try_start_65 .. :try_end_6e} :catchall_60

    .line 2952
    iget-object v6, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;
    invoke-static {v6}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)Ljava/util/Stack;

    move-result-object v7

    monitor-enter v7

    .line 2953
    :try_start_75
    iget-object v6, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;
    invoke-static {v6}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)Ljava/util/Stack;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Stack;->empty()Z

    move-result v6

    if-nez v6, :cond_a7

    .line 2955
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2956
    .local v5, targetedIntent:Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2957
    iget-object v6, p0, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;
    invoke-static {v6}, Landroid/media/AudioService;->access$6000(Landroid/media/AudioService;)Ljava/util/Stack;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v6, v6, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2959
    invoke-virtual {p0}, Landroid/media/AudioService$MediaButtonBroadcastReceiver;->abortBroadcast()V

    .line 2961
    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2963
    .end local v5           #targetedIntent:Landroid/content/Intent;
    :cond_a7
    monitor-exit v7

    goto/16 :goto_e

    :catchall_aa
    move-exception v6

    monitor-exit v7
    :try_end_ac
    .catchall {:try_start_75 .. :try_end_ac} :catchall_aa

    throw v6
.end method
