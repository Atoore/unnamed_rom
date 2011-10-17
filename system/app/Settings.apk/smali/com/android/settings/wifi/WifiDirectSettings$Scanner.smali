.class Lcom/android/settings/wifi/WifiDirectSettings$Scanner;
.super Landroid/os/Handler;
.source "WifiDirectSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiDirectSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scanner"
.end annotation


# instance fields
.field private mRetry:I

.field final synthetic this$0:Lcom/android/settings/wifi/WifiDirectSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/WifiDirectSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 648
    iput-object p1, p0, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 649
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->mRetry:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/WifiDirectSettings;Lcom/android/settings/wifi/WifiDirectSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 648
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;-><init>(Lcom/android/settings/wifi/WifiDirectSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "message"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v1, "WifiDirectSettings"

    .line 665
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$200(Lcom/android/settings/wifi/WifiDirectSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isDirectInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 690
    :goto_0
    return-void

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$200(Lcom/android/settings/wifi/WifiDirectSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isDirectConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 669
    const-string v0, "WifiDirectSettings"

    const-string v0, "handleMessage: setDeviceDiscoveryEnabled +++ : Direct Disconnected. : "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$200(Lcom/android/settings/wifi/WifiDirectSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/net/wifi/WifiManager;->setDeviceDiscoveryEnabled(ZZ)Z

    .line 671
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$200(Lcom/android/settings/wifi/WifiDirectSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/net/wifi/WifiManager;->setDeviceDiscoveryEnabled(ZZ)Z

    .line 673
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$400(Lcom/android/settings/wifi/WifiDirectSettings;)Lcom/android/settings/ProgressCategory;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 680
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$200(Lcom/android/settings/wifi/WifiDirectSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScanActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 681
    iput v2, p0, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->mRetry:I

    .line 689
    :cond_1
    const-wide/16 v0, 0x2ee0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 675
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$400(Lcom/android/settings/wifi/WifiDirectSettings;)Lcom/android/settings/ProgressCategory;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 676
    const-string v0, "WifiDirectSettings"

    const-string v0, "   +++ handleMessage: setDeviceDiscoveryEnabled +++ : Direct Connected. : "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 682
    :cond_3
    iget v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->mRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->mRetry:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 683
    iput v2, p0, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->mRetry:I

    .line 684
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    const v1, 0x7f08015a

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method pause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 658
    iput v1, p0, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->mRetry:I

    .line 659
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->this$0:Lcom/android/settings/wifi/WifiDirectSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectSettings;->access$400(Lcom/android/settings/wifi/WifiDirectSettings;)Lcom/android/settings/ProgressCategory;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 660
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->removeMessages(I)V

    .line 661
    return-void
.end method

.method resume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 652
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 653
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiDirectSettings$Scanner;->sendEmptyMessage(I)Z

    .line 655
    :cond_0
    return-void
.end method
