.class Lcom/android/settings/wifi/WifiDirectSettings$7;
.super Ljava/lang/Object;
.source "WifiDirectSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiDirectSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiDirectSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiDirectSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/settings/wifi/WifiDirectSettings$7;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 384
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$7;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$200(Lcom/android/settings/wifi/WifiDirectSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disconnectWifiDirectPeer(Ljava/lang/String;)Z

    .line 385
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$7;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$400(Lcom/android/settings/wifi/WifiDirectSettings;)Lcom/android/settings/ProgressCategory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 386
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$7;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$200(Lcom/android/settings/wifi/WifiDirectSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/net/wifi/WifiManager;->setDeviceDiscoveryEnabled(ZZ)Z

    .line 387
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$7;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$200(Lcom/android/settings/wifi/WifiDirectSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setDeviceDiscoveryEnabled(ZZ)Z

    .line 388
    const-string v0, "WifiDirectSettings"

    const-string v1, "disconnect all"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return-void
.end method
