.class public Landroid/net/wifi/WifiManager$WifiLock;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiLock"
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mHeld:Z

.field mLockType:I

.field private mRefCount:I

.field private mRefCounted:Z

.field private mTag:Ljava/lang/String;

.field private mWorkSource:Landroid/os/WorkSource;

.field final synthetic this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method private constructor <init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;)V
    .registers 6
    .parameter
    .parameter "lockType"
    .parameter "tag"

    .prologue
    const/4 v1, 0x0

    .line 1470
    iput-object p1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1471
    iput-object p3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mTag:Ljava/lang/String;

    .line 1472
    iput p2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mLockType:I

    .line 1473
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    .line 1474
    iput v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    .line 1475
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    .line 1476
    iput-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z

    .line 1477
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 1461
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acquire()V
    .registers 7

    .prologue
    .line 1491
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v0

    .line 1492
    :try_start_3
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    if-eqz v1, :cond_45

    iget v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_51

    if-lez v1, :cond_43

    .line 1494
    :goto_f
    :try_start_f
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v1, v1, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    iget v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mLockType:I

    iget-object v4, p0, Landroid/net/wifi/WifiManager$WifiLock;->mTag:Ljava/lang/String;

    iget-object v5, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/net/wifi/IWifiManager;->acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z

    .line 1495
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    monitor-enter v1
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_51
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_21} :catch_3f

    .line 1496
    :try_start_21
    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    #getter for: Landroid/net/wifi/WifiManager;->mActiveLockCount:I
    invoke-static {v2}, Landroid/net/wifi/WifiManager;->access$000(Landroid/net/wifi/WifiManager;)I

    move-result v2

    const/16 v3, 0x32

    if-lt v2, v3, :cond_4a

    .line 1497
    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v2, v2, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Landroid/net/wifi/IWifiManager;->releaseWifiLock(Landroid/os/IBinder;)Z

    .line 1498
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Exceeded maximum number of wifi locks"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1502
    :catchall_3c
    move-exception v2

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_21 .. :try_end_3e} :catchall_3c

    :try_start_3e
    throw v2
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_51
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_3f} :catch_3f

    .line 1503
    :catch_3f
    move-exception v1

    .line 1505
    :goto_40
    const/4 v1, 0x1

    :try_start_41
    iput-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z

    .line 1507
    :cond_43
    monitor-exit v0

    .line 1508
    return-void

    .line 1492
    :cond_45
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_51

    if-nez v1, :cond_43

    goto :goto_f

    .line 1501
    :cond_4a
    :try_start_4a
    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v2}, Landroid/net/wifi/WifiManager;->access$008(Landroid/net/wifi/WifiManager;)I

    .line 1502
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_4a .. :try_end_50} :catchall_3c

    goto :goto_40

    .line 1507
    :catchall_51
    move-exception v1

    :try_start_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v1
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1608
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1609
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v0

    .line 1610
    :try_start_6
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_23

    if-eqz v1, :cond_1c

    .line 1612
    :try_start_a
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v1, v1, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/net/wifi/IWifiManager;->releaseWifiLock(Landroid/os/IBinder;)Z

    .line 1613
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    monitor-enter v1
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_23
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_21

    .line 1614
    :try_start_16
    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v2}, Landroid/net/wifi/WifiManager;->access$010(Landroid/net/wifi/WifiManager;)I

    .line 1615
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_1e

    .line 1619
    :cond_1c
    :goto_1c
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_23

    .line 1620
    return-void

    .line 1615
    :catchall_1e
    move-exception v2

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    :try_start_20
    throw v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_21} :catch_21

    .line 1616
    :catch_21
    move-exception v1

    goto :goto_1c

    .line 1619
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public isHeld()Z
    .registers 3

    .prologue
    .line 1561
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v0

    .line 1562
    :try_start_3
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z

    monitor-exit v0

    return v1

    .line 1563
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public release()V
    .registers 5

    .prologue
    .line 1523
    iget-object v0, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v0

    .line 1524
    :try_start_3
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    if-eqz v1, :cond_46

    iget v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_43

    if-nez v1, :cond_24

    .line 1526
    :goto_f
    :try_start_f
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v1, v1, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/net/wifi/IWifiManager;->releaseWifiLock(Landroid/os/IBinder;)Z

    .line 1527
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    monitor-enter v1
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_43
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1b} :catch_4e

    .line 1528
    :try_start_1b
    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v2}, Landroid/net/wifi/WifiManager;->access$010(Landroid/net/wifi/WifiManager;)I

    .line 1529
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_4b

    .line 1532
    :goto_21
    const/4 v1, 0x0

    :try_start_22
    iput-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z

    .line 1534
    :cond_24
    iget v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    if-gez v1, :cond_50

    .line 1535
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiLock under-locked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1537
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_22 .. :try_end_45} :catchall_43

    throw v1

    .line 1524
    :cond_46
    :try_start_46
    iget-boolean v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z
    :try_end_48
    .catchall {:try_start_46 .. :try_end_48} :catchall_43

    if-eqz v1, :cond_24

    goto :goto_f

    .line 1529
    :catchall_4b
    move-exception v2

    :try_start_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    :try_start_4d
    throw v2
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_43
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_4e} :catch_4e

    .line 1530
    :catch_4e
    move-exception v1

    goto :goto_21

    .line 1537
    :cond_50
    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_43

    .line 1538
    return-void
.end method

.method public setReferenceCounted(Z)V
    .registers 2
    .parameter "refCounted"

    .prologue
    .line 1552
    iput-boolean p1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    .line 1553
    return-void
.end method

.method public setWorkSource(Landroid/os/WorkSource;)V
    .registers 7
    .parameter "ws"

    .prologue
    .line 1567
    iget-object v1, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 1568
    if-eqz p1, :cond_c

    :try_start_5
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-nez v2, :cond_c

    .line 1569
    const/4 p1, 0x0

    .line 1571
    :cond_c
    const/4 v0, 0x1

    .line 1572
    .local v0, changed:Z
    if-nez p1, :cond_25

    .line 1573
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    .line 1583
    :cond_12
    :goto_12
    if-eqz v0, :cond_23

    iget-boolean v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_37

    if-eqz v2, :cond_23

    .line 1585
    :try_start_18
    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v2, v2, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v2, v3, v4}, Landroid/net/wifi/IWifiManager;->updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_37
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_23} :catch_4b

    .line 1589
    :cond_23
    :goto_23
    :try_start_23
    monitor-exit v1

    .line 1590
    return-void

    .line 1574
    :cond_25
    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    if-nez v2, :cond_3d

    .line 1575
    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v2, :cond_3a

    const/4 v2, 0x1

    move v0, v2

    .line 1576
    :goto_2f
    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2, p1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    iput-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    goto :goto_12

    .line 1589
    .end local v0           #changed:Z
    :catchall_37
    move-exception v2

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_23 .. :try_end_39} :catchall_37

    throw v2

    .line 1575
    .restart local v0       #changed:Z
    :cond_3a
    const/4 v2, 0x0

    move v0, v2

    goto :goto_2f

    .line 1578
    :cond_3d
    :try_start_3d
    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, p1}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v0

    .line 1579
    if-eqz v0, :cond_12

    .line 1580
    iget-object v2, p0, Landroid/net/wifi/WifiManager$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, p1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V
    :try_end_4a
    .catchall {:try_start_3d .. :try_end_4a} :catchall_37

    goto :goto_12

    .line 1586
    :catch_4b
    move-exception v2

    goto :goto_23
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 1594
    iget-object v3, p0, Landroid/net/wifi/WifiManager$WifiLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v3

    .line 1595
    :try_start_3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 1596
    .local v0, s1:Ljava/lang/String;
    iget-boolean v4, p0, Landroid/net/wifi/WifiManager$WifiLock;->mHeld:Z

    if-eqz v4, :cond_55

    const-string v4, "held; "

    move-object v1, v4

    .line 1597
    .local v1, s2:Ljava/lang/String;
    :goto_12
    iget-boolean v4, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCounted:Z

    if-eqz v4, :cond_59

    .line 1598
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refcounted: refcount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/wifi/WifiManager$WifiLock;->mRefCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1602
    .local v2, s3:Ljava/lang/String;
    :goto_2c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiLock{ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " }"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    monitor-exit v3

    return-object v4

    .line 1596
    .end local v1           #s2:Ljava/lang/String;
    .end local v2           #s3:Ljava/lang/String;
    :cond_55
    const-string v4, ""

    move-object v1, v4

    goto :goto_12

    .line 1600
    .restart local v1       #s2:Ljava/lang/String;
    :cond_59
    const-string/jumbo v2, "not refcounted"

    .restart local v2       #s3:Ljava/lang/String;
    goto :goto_2c

    .line 1603
    .end local v0           #s1:Ljava/lang/String;
    .end local v1           #s2:Ljava/lang/String;
    .end local v2           #s3:Ljava/lang/String;
    :catchall_5d
    move-exception v4

    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_3 .. :try_end_5f} :catchall_5d

    throw v4
.end method
