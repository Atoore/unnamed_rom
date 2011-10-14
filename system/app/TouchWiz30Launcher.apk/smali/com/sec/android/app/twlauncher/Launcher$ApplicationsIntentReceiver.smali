.class Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationsIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 5812
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5812
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const-string v7, "Launcher.LauncherModel"

    .line 5815
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 5816
    .local v1, action:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 5817
    .local v3, packageName:Ljava/lang/String;
    const-string v5, "android.intent.extra.REPLACING"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 5820
    .local v4, replacing:Z
    const-string v5, "Launcher.LauncherModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "application intent received: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", replacing="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5822
    const-string v5, "Launcher.LauncherModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  --> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5825
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 5826
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5827
    if-nez v4, :cond_2

    .line 5828
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v5, v3}, Lcom/sec/android/app/twlauncher/Launcher;->access$4500(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V

    .line 5830
    const-string v5, "Launcher.LauncherModel"

    const-string v5, "  --> remove package"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5832
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$4600(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 5833
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$4600(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5, v6, v3}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->removePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 5841
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$4700(Lcom/sec/android/app/twlauncher/Launcher;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    if-nez v5, :cond_4

    .line 5846
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->access$3300()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5, v6, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->removePackage(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V

    .line 5865
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$3500(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v5

    if-ne v5, v9, :cond_2

    .line 5866
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$3500(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->setSortMethod(I)V

    .line 5874
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$3500(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/MenuManager;->resetMaxPageIndexAndMaxCellIndex()V

    .line 5968
    :cond_3
    :goto_1
    return-void

    .line 5853
    :cond_4
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->access$3300()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5, v6, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->removePackageUi(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;

    move-result-object v2

    .line 5855
    .local v2, packageInfo:Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;
    if-eqz v2, :cond_1

    .line 5856
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$4700(Lcom/sec/android/app/twlauncher/Launcher;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver$1;

    invoke-direct {v6, p0, v2}, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver$1;-><init>(Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 5877
    .end local v2           #packageInfo:Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;
    :cond_5
    if-nez v4, :cond_9

    .line 5879
    const-string v5, "Launcher.LauncherModel"

    const-string v5, "  --> add package"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5881
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$4700(Lcom/sec/android/app/twlauncher/Launcher;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    if-nez v5, :cond_8

    .line 5886
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$4600(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 5887
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$4600(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5, v6, v3}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->addPackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 5889
    :cond_6
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->access$3300()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5, v6, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->addPackage(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V

    .line 5891
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$3500(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v5

    if-ne v5, v9, :cond_7

    .line 5892
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$3500(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->setSortMethod(I)V

    .line 5949
    :cond_7
    :goto_2
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$3500(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v5

    if-ne v5, v9, :cond_3

    .line 5950
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$3500(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->setSortMethod(I)V

    goto :goto_1

    .line 5910
    :cond_8
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$4700(Lcom/sec/android/app/twlauncher/Launcher;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver$2;

    invoke-direct {v6, p0, v3}, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver$2;-><init>(Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_2

    .line 5920
    :cond_9
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5, v3}, Lcom/sec/android/app/twlauncher/Launcher;->removeVLPPackage(Ljava/lang/String;)V

    .line 5925
    const-string v5, "Launcher.LauncherModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  --> update package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5927
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$4700(Lcom/sec/android/app/twlauncher/Launcher;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    if-nez v5, :cond_b

    .line 5932
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$4600(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 5933
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$4600(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5, v6, v3}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 5936
    :cond_a
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->access$3300()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5, v6, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->updatePackage(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V

    .line 5937
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v5, v3}, Lcom/sec/android/app/twlauncher/Launcher;->access$4900(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V

    goto :goto_2

    .line 5941
    :cond_b
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/Launcher;->access$4700(Lcom/sec/android/app/twlauncher/Launcher;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver$3;

    invoke-direct {v6, p0, v3}, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver$3;-><init>(Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_2

    .line 5956
    :cond_c
    const-string v0, "com.android.stk"

    .line 5957
    .local v0, STKPackageName:Ljava/lang/String;
    const-string v5, "com.android.stk"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 5958
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->access$3300()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5, v6, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->removePackage(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V

    .line 5963
    :cond_d
    const-string v5, "Launcher.LauncherModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  --> sync package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5966
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->access$3300()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher$ApplicationsIntentReceiver;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5, v6, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->syncPackage(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
