.class Lcom/android/mms/util/DownloadManager$2;
.super Landroid/content/BroadcastReceiver;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/DownloadManager;


# direct methods
.method constructor <init>(Lcom/android/mms/util/DownloadManager;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/mms/util/DownloadManager$2;->this$0:Lcom/android/mms/util/DownloadManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v4, "Mms/DownloadManager"

    .line 95
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    const-string v2, "Mms/DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service state changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v1

    .line 101
    .local v1, state:Landroid/telephony/ServiceState;
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    .line 103
    .local v0, isRoaming:Z
    const-string v2, "Mms/DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "roaming ------> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->access$000()Lcom/android/mms/util/DownloadManager;

    move-result-object v2

    monitor-enter v2

    .line 106
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/util/DownloadManager$2;->this$0:Lcom/android/mms/util/DownloadManager;

    iget-object v4, p0, Lcom/android/mms/util/DownloadManager$2;->this$0:Lcom/android/mms/util/DownloadManager;

    invoke-static {v4}, Lcom/android/mms/util/DownloadManager;->access$200(Lcom/android/mms/util/DownloadManager;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/mms/util/DownloadManager;->getAutoDownloadState(Landroid/content/SharedPreferences;Z)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/mms/util/DownloadManager;->access$102(Lcom/android/mms/util/DownloadManager;Z)Z

    .line 108
    const-string v3, "Mms/DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAutoDownload ------> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/util/DownloadManager$2;->this$0:Lcom/android/mms/util/DownloadManager;

    invoke-static {v5}, Lcom/android/mms/util/DownloadManager;->access$100(Lcom/android/mms/util/DownloadManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    monitor-exit v2

    .line 112
    .end local v0           #isRoaming:Z
    .end local v1           #state:Landroid/telephony/ServiceState;
    :cond_0
    return-void

    .line 110
    .restart local v0       #isRoaming:Z
    .restart local v1       #state:Landroid/telephony/ServiceState;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
