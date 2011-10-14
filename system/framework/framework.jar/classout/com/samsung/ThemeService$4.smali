.class Lcom/samsung/ThemeService$4;
.super Landroid/content/BroadcastReceiver;
.source "ThemeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ThemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/ThemeService;


# direct methods
.method constructor <init>(Lcom/samsung/ThemeService;)V
    .registers 2
    .parameter

    .prologue
    .line 1447
    iput-object p1, p0, Lcom/samsung/ThemeService$4;->this$0:Lcom/samsung/ThemeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    const-string v6, "ThemeService"

    .line 1449
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1450
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 1451
    .local v2, packageName:Ljava/lang/String;
    const-string v4, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1453
    .local v3, replacing:Z
    iget-object v4, p0, Lcom/samsung/ThemeService$4;->this$0:Lcom/samsung/ThemeService;

    iget-object v5, p0, Lcom/samsung/ThemeService$4;->this$0:Lcom/samsung/ThemeService;

    #getter for: Lcom/samsung/ThemeService;->rLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v5}, Lcom/samsung/ThemeService;->access$1000(Lcom/samsung/ThemeService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    #calls: Lcom/samsung/ThemeService;->tryLock(Ljava/util/concurrent/locks/Lock;)Z
    invoke-static {v4, v5}, Lcom/samsung/ThemeService;->access$1100(Lcom/samsung/ThemeService;Ljava/util/concurrent/locks/Lock;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 1454
    const-string v4, "ThemeService"

    const-string v4, "[Theme] Timeout: Handling broadcast."

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    :goto_2c
    return-void

    .line 1458
    :cond_2d
    :try_start_2d
    iget-object v4, p0, Lcom/samsung/ThemeService$4;->this$0:Lcom/samsung/ThemeService;

    #getter for: Lcom/samsung/ThemeService;->mCurrentThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;
    invoke-static {v4}, Lcom/samsung/ThemeService;->access$1200(Lcom/samsung/ThemeService;)Lcom/samsung/ThemeService$ThemePackageInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/samsung/ThemeService$ThemePackageInfo;->extendedPackageSet:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_69

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 1461
    iget-object v4, p0, Lcom/samsung/ThemeService$4;->this$0:Lcom/samsung/ThemeService;

    #getter for: Lcom/samsung/ThemeService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/samsung/ThemeService;->access$1300(Lcom/samsung/ThemeService;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/samsung/ThemeService$4;->this$0:Lcom/samsung/ThemeService;

    #getter for: Lcom/samsung/ThemeService;->mCurrentThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;
    invoke-static {v6}, Lcom/samsung/ThemeService;->access$1200(Lcom/samsung/ThemeService;)Lcom/samsung/ThemeService$ThemePackageInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/samsung/ThemeService$ThemePackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1462
    .local v1, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/samsung/ThemeService$4;->this$0:Lcom/samsung/ThemeService;

    #getter for: Lcom/samsung/ThemeService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/samsung/ThemeService;->access$1300(Lcom/samsung/ThemeService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5f
    .catchall {:try_start_2d .. :try_end_5f} :catchall_139

    .line 1496
    iget-object v4, p0, Lcom/samsung/ThemeService$4;->this$0:Lcom/samsung/ThemeService;

    #getter for: Lcom/samsung/ThemeService;->rLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v4}, Lcom/samsung/ThemeService;->access$1000(Lcom/samsung/ThemeService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    .end local v1           #msg:Landroid/os/Message;
    :goto_65
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2c

    .line 1467
    :cond_69
    :try_start_69
    const-string v4, "com.theme.samsung."

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_6e
    .catchall {:try_start_69 .. :try_end_6e} :catchall_139

    move-result v4

    if-nez v4, :cond_78

    .line 1496
    iget-object v4, p0, Lcom/samsung/ThemeService$4;->this$0:Lcom/samsung/ThemeService;

    #getter for: Lcom/samsung/ThemeService;->rLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v4}, Lcom/samsung/ThemeService;->access$1000(Lcom/samsung/ThemeService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    goto :goto_65

    .line 1470
    :cond_78
    :try_start_78
    iget-object v4, p0, Lcom/samsung/ThemeService$4;->this$0:Lcom/samsung/ThemeService;

    #getter for: Lcom/samsung/ThemeService;->mInstalledThemeListLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/samsung/ThemeService;->access$200(Lcom/samsung/ThemeService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_7f
    .catchall {:try_start_78 .. :try_end_7f} :catchall_139

    .line 1471
    :try_start_7f
    iget-object v5, p0, Lcom/samsung/ThemeService$4;->this$0:Lcom/samsung/ThemeService;

    #getter for: Lcom/samsung/ThemeService;->mInstalledThemeListAvailable:Z
    invoke-static {v5}, Lcom/samsung/ThemeService;->access$600(Lcom/samsung/ThemeService;)Z

    move-result v5

    if-nez v5, :cond_8f

    .line 1472
    monitor-exit v4
    :try_end_88
    .catchall {:try_start_7f .. :try_end_88} :catchall_136

    .line 1496
    iget-object v4, p0, Lcom/samsung/ThemeService$4;->this$0:Lcom/samsung/ThemeService;

    #getter for: Lcom/samsung/ThemeService;->rLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v4}, Lcom/samsung/ThemeService;->access$1000(Lcom/samsung/ThemeService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    goto :goto_65

    .line 1474
    :cond_8f
    :try_start_8f
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_da

    .line 1475
    iget-object v5, p0, Lcom/samsung/ThemeService$4;->this$0:Lcom/samsung/ThemeService;

    #getter for: Lcom/samsung/ThemeService;->mCurrentThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;
    invoke-static {v5}, Lcom/samsung/ThemeService;->access$1200(Lcom/samsung/ThemeService;)Lcom/samsung/ThemeService$ThemePackageInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/samsung/ThemeService$ThemePackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_cd

    if-nez v3, :cond_cd

    .line 1476
    const-string v5, "ThemeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Theme] Current theme package removed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/ThemeService$4;->this$0:Lcom/samsung/ThemeService;

    iget-object v8, p0, Lcom/samsung/ThemeService$4;->this$0:Lcom/samsung/ThemeService;

    #getter for: Lcom/samsung/ThemeService;->mCurrentThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;
    invoke-static {v8}, Lcom/samsung/ThemeService;->access$1200(Lcom/samsung/ThemeService;)Lcom/samsung/ThemeService$ThemePackageInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/samsung/ThemeService$ThemePackageInfo;->packageName:Ljava/lang/String;

    #calls: Lcom/samsung/ThemeService;->getLeaf(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/samsung/ThemeService;->access$1400(Lcom/samsung/ThemeService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    :cond_cd
    iget-object v5, p0, Lcom/samsung/ThemeService$4;->this$0:Lcom/samsung/ThemeService;

    #calls: Lcom/samsung/ThemeService;->removeInstalledThemeLocked(Ljava/lang/String;)V
    invoke-static {v5, v2}, Lcom/samsung/ThemeService;->access$1500(Lcom/samsung/ThemeService;Ljava/lang/String;)V

    .line 1495
    :cond_d2
    :goto_d2
    monitor-exit v4
    :try_end_d3
    .catchall {:try_start_8f .. :try_end_d3} :catchall_136

    .line 1496
    iget-object v4, p0, Lcom/samsung/ThemeService$4;->this$0:Lcom/samsung/ThemeService;

    #getter for: Lcom/samsung/ThemeService;->rLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v4}, Lcom/samsung/ThemeService;->access$1000(Lcom/samsung/ThemeService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    goto :goto_65

    .line 1481
    :cond_da
    :try_start_da
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d2

    iget-object v5, p0, Lcom/samsung/ThemeService$4;->this$0:Lcom/samsung/ThemeService;

    #calls: Lcom/samsung/ThemeService;->isValidThemePackage(Ljava/lang/String;)Z
    invoke-static {v5, v2}, Lcom/samsung/ThemeService;->access$1600(Lcom/samsung/ThemeService;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d2

    iget-object v5, p0, Lcom/samsung/ThemeService$4;->this$0:Lcom/samsung/ThemeService;

    invoke-virtual {v5, v2}, Lcom/samsung/ThemeService;->isThemePackageCertified(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d2

    .line 1485
    iget-object v5, p0, Lcom/samsung/ThemeService$4;->this$0:Lcom/samsung/ThemeService;

    #calls: Lcom/samsung/ThemeService;->addInstalledThemeLocked(Ljava/lang/String;)V
    invoke-static {v5, v2}, Lcom/samsung/ThemeService;->access$1700(Lcom/samsung/ThemeService;Ljava/lang/String;)V

    .line 1487
    iget-object v5, p0, Lcom/samsung/ThemeService$4;->this$0:Lcom/samsung/ThemeService;

    #getter for: Lcom/samsung/ThemeService;->mCurrentThemePackageInfo:Lcom/samsung/ThemeService$ThemePackageInfo;
    invoke-static {v5}, Lcom/samsung/ThemeService;->access$1200(Lcom/samsung/ThemeService;)Lcom/samsung/ThemeService$ThemePackageInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/samsung/ThemeService$ThemePackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d2

    if-eqz v3, :cond_d2

    .line 1488
    iget-object v5, p0, Lcom/samsung/ThemeService$4;->this$0:Lcom/samsung/ThemeService;

    #getter for: Lcom/samsung/ThemeService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/samsung/ThemeService;->access$1300(Lcom/samsung/ThemeService;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1489
    .restart local v1       #msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/samsung/ThemeService$4;->this$0:Lcom/samsung/ThemeService;

    #getter for: Lcom/samsung/ThemeService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/samsung/ThemeService;->access$1300(Lcom/samsung/ThemeService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1490
    iget-object v5, p0, Lcom/samsung/ThemeService$4;->this$0:Lcom/samsung/ThemeService;

    #getter for: Lcom/samsung/ThemeService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/samsung/ThemeService;->access$1300(Lcom/samsung/ThemeService;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1492
    iget-object v5, p0, Lcom/samsung/ThemeService$4;->this$0:Lcom/samsung/ThemeService;

    #getter for: Lcom/samsung/ThemeService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/samsung/ThemeService;->access$800(Lcom/samsung/ThemeService;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "Current theme has been updated."

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_d2

    .line 1495
    .end local v1           #msg:Landroid/os/Message;
    :catchall_136
    move-exception v5

    monitor-exit v4
    :try_end_138
    .catchall {:try_start_da .. :try_end_138} :catchall_136

    :try_start_138
    throw v5
    :try_end_139
    .catchall {:try_start_138 .. :try_end_139} :catchall_139

    .line 1496
    :catchall_139
    move-exception v4

    iget-object v5, p0, Lcom/samsung/ThemeService$4;->this$0:Lcom/samsung/ThemeService;

    #getter for: Lcom/samsung/ThemeService;->rLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v5}, Lcom/samsung/ThemeService;->access$1000(Lcom/samsung/ThemeService;)Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v4
.end method
