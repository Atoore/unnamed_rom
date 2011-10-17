.class Lcom/android/settings/wifi/WifiDirectSettings$5;
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
    .line 337
    iput-object p1, p0, Lcom/android/settings/wifi/WifiDirectSettings$5;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 339
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$5;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$200(Lcom/android/settings/wifi/WifiDirectSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 340
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$5;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$200(Lcom/android/settings/wifi/WifiDirectSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setSupplicantAutoScan(Z)Z

    .line 345
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$5;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$200(Lcom/android/settings/wifi/WifiDirectSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$5;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$200(Lcom/android/settings/wifi/WifiDirectSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isDirectInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$5;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$300(Lcom/android/settings/wifi/WifiDirectSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 348
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$5;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$200(Lcom/android/settings/wifi/WifiDirectSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isDirectConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$5;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$200(Lcom/android/settings/wifi/WifiDirectSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/net/wifi/WifiManager;->setDeviceDiscoveryEnabled(ZZ)Z

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$5;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$400(Lcom/android/settings/wifi/WifiDirectSettings;)Lcom/android/settings/ProgressCategory;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 356
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$5;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$500(Lcom/android/settings/wifi/WifiDirectSettings;)Lcom/android/settings/wifi/WifiDirectSettings$Scanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->resume()V

    .line 357
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$5;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$600(Lcom/android/settings/wifi/WifiDirectSettings;)V

    .line 362
    :goto_0
    const-string v0, "WifiDirectSettings"

    const-string v1, "Disconnect AP, and continue Wi-Fi Direct"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return-void

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$5;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$300(Lcom/android/settings/wifi/WifiDirectSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 360
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$5;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$700(Lcom/android/settings/wifi/WifiDirectSettings;)Landroid/preference/Preference;

    move-result-object v0

    const v1, 0x7f08017d

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method
