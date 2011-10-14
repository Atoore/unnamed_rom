.class public Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;
.super Ljava/lang/Object;
.source "DevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExchangeAccountPolicy"
.end annotation


# instance fields
.field private mAccId:J

.field private mDomain:Ljava/lang/String;

.field private mEmailAddress:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private final mService:Landroid/app/enterprise/IExchangeAccountPolicy;

.field private mUser:Ljava/lang/String;

.field final synthetic this$0:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method private constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .registers 3
    .parameter

    .prologue
    .line 2426
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->this$0:Landroid/app/admin/DevicePolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2427
    const-string v0, "eas_account_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IExchangeAccountPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    .line 2429
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2416
    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    return-void
.end method


# virtual methods
.method public addNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J
    .registers 42
    .parameter "displayName"
    .parameter "emailAddress"
    .parameter "easUser"
    .parameter "easDomain"
    .parameter "syncLookback"
    .parameter "syncInterval"
    .parameter "isDefault"
    .parameter "senderName"
    .parameter "protocolVersion"
    .parameter "signature"
    .parameter "emailNotificationVibrateAlways"
    .parameter "emailNotificationVibrateWhenSilent"
    .parameter "serverAddress"
    .parameter "useSSL"
    .parameter "useTLS"
    .parameter "acceptAllCertificates"
    .parameter "serverPassword"
    .parameter "serverPathPrefix"

    .prologue
    .line 2487
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    move-object v3, v0

    if-eqz v3, :cond_45

    .line 2489
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    move-object v3, v0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move-object/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    move/from16 v19, p16

    move-object/from16 v20, p17

    move-object/from16 v21, p18

    invoke-interface/range {v3 .. v21}, Landroid/app/enterprise/IExchangeAccountPolicy;->addNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_33} :catch_35

    move-result-wide v3

    .line 2498
    :goto_34
    return-wide v3

    .line 2494
    :catch_35
    move-exception v3

    move-object/from16 v22, v3

    .line 2495
    .local v22, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed talking with exchange account policy"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2498
    .end local v22           #e:Landroid/os/RemoteException;
    :cond_45
    const-wide/16 v3, -0x1

    goto :goto_34
.end method

.method public deleteAccount(J)Z
    .registers 6
    .parameter "accId"

    .prologue
    .line 2943
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_16

    .line 2945
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IExchangeAccountPolicy;->deleteAccount(J)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2950
    :goto_a
    return v1

    .line 2946
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 2947
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2950
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getAccountDetails(J)Landroid/app/enterprise/Account;
    .registers 6
    .parameter "accId"

    .prologue
    .line 2925
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_16

    .line 2927
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IExchangeAccountPolicy;->getAccountDetails(J)Landroid/app/enterprise/Account;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 2932
    :goto_a
    return-object v1

    .line 2928
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 2929
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2932
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 7
    .parameter "easDomain"
    .parameter "easUser"
    .parameter "activeSyncHost"

    .prologue
    .line 2907
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_16

    .line 2909
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-wide v1

    .line 2914
    :goto_a
    return-wide v1

    .line 2910
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 2911
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2914
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const-wide/16 v1, -0x1

    goto :goto_a
.end method

.method public sendAccountsChangedBroadcast()V
    .registers 9

    .prologue
    const-wide/16 v2, 0x0

    const-string/jumbo v0, "setAccountBaseParameters : "

    .line 2957
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_c0

    .line 2959
    :try_start_9
    iget-wide v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mAccId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_bb

    .line 2961
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAccountBaseParameters : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mUser:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2962
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAccountBaseParameters : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mDomain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2963
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAccountBaseParameters : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAccountBaseParameters : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2965
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAccountBaseParameters : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mAccId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mUser:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mDomain:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mEmailAddress:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mHost:Ljava/lang/String;

    iget-wide v5, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mAccId:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->setAccountBaseParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    .line 2967
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mHost:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mEmailAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mDomain:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mUser:Ljava/lang/String;

    .line 2968
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mAccId:J

    .line 2970
    :cond_bb
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v0}, Landroid/app/enterprise/IExchangeAccountPolicy;->sendAccountsChangedBroadcast()V
    :try_end_c0
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c0} :catch_c1

    .line 2975
    :cond_c0
    :goto_c0
    return-void

    .line 2971
    :catch_c1
    move-exception v0

    move-object v7, v0

    .line 2972
    .local v7, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed talking with exchange account policy"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c0
.end method

.method public setAcceptAllCertificates(ZJ)Z
    .registers 7
    .parameter "acceptAllCertificates"
    .parameter "accId"

    .prologue
    .line 2637
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_16

    .line 2639
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setAcceptAllCertificates(ZJ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2644
    :goto_a
    return v1

    .line 2640
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 2641
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2644
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setAccountBaseParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
    .registers 15
    .parameter "user"
    .parameter "domain"
    .parameter "emailAddress"
    .parameter "host"
    .parameter "accId"

    .prologue
    .line 2517
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_1b

    .line 2519
    :try_start_4
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/enterprise/IExchangeAccountPolicy;->setAccountBaseParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_10

    move-result-wide v0

    .line 2524
    :goto_f
    return-wide v0

    .line 2520
    :catch_10
    move-exception v0

    move-object v7, v0

    .line 2521
    .local v7, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed talking with exchange account policy"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2524
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_1b
    const-wide/16 v0, -0x1

    goto :goto_f
.end method

.method public setAccountName(Ljava/lang/String;J)Z
    .registers 7
    .parameter "accountName"
    .parameter "accId"

    .prologue
    .line 2883
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_16

    .line 2885
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setAccountName(Ljava/lang/String;J)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2890
    :goto_a
    return v1

    .line 2886
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 2887
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2890
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setAlwaysVibrateOnEmailNotification(ZJ)Z
    .registers 7
    .parameter "enable"
    .parameter "accId"

    .prologue
    .line 2658
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_16

    .line 2660
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setAlwaysVibrateOnEmailNotification(ZJ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2665
    :goto_a
    return v1

    .line 2661
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 2662
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2665
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setAsDefaultAccount(J)Z
    .registers 6
    .parameter "accId"

    .prologue
    .line 2862
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_16

    .line 2864
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IExchangeAccountPolicy;->setAsDefaultAccount(J)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2869
    :goto_a
    return v1

    .line 2865
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 2866
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2869
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setClientAuthCert([BLjava/lang/String;J)V
    .registers 8
    .parameter "certData"
    .parameter "password"
    .parameter "accId"

    .prologue
    .line 2987
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_9

    .line 2989
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/enterprise/IExchangeAccountPolicy;->setClientAuthCert([BLjava/lang/String;J)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 2994
    :cond_9
    :goto_9
    return-void

    .line 2990
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 2991
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setDomain(Ljava/lang/String;J)V
    .registers 5
    .parameter "domain"
    .parameter "accId"

    .prologue
    .line 2698
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_8

    .line 2700
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mDomain:Ljava/lang/String;

    .line 2701
    iput-wide p2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mAccId:J

    .line 2706
    :cond_8
    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;J)Z
    .registers 5
    .parameter "emailAddress"
    .parameter "accId"

    .prologue
    .line 2575
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_8

    .line 2577
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mEmailAddress:Ljava/lang/String;

    .line 2578
    iput-wide p2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mAccId:J

    .line 2583
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public setHost(Ljava/lang/String;J)V
    .registers 5
    .parameter "host"
    .parameter "accId"

    .prologue
    .line 2536
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_8

    .line 2538
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mHost:Ljava/lang/String;

    .line 2539
    iput-wide p2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mAccId:J

    .line 2544
    :cond_8
    return-void
.end method

.method public setPassword(Ljava/lang/String;J)Z
    .registers 7
    .parameter "password"
    .parameter "accId"

    .prologue
    .line 2718
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_16

    .line 2720
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setPassword(Ljava/lang/String;J)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2725
    :goto_a
    return v1

    .line 2721
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 2722
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2725
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setPastDaysToSync(IJ)Z
    .registers 7
    .parameter "pastDaysToSync"
    .parameter "accId"

    .prologue
    .line 2780
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_16

    .line 2782
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setPastDaysToSync(IJ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2787
    :goto_a
    return v1

    .line 2783
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 2784
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2787
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setProtocolVersion(Ljava/lang/String;J)Z
    .registers 7
    .parameter "protocolVersion"
    .parameter "accId"

    .prologue
    .line 2738
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_16

    .line 2740
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setProtocolVersion(Ljava/lang/String;J)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2745
    :goto_a
    return v1

    .line 2741
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 2742
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2745
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setSSL(ZJ)Z
    .registers 7
    .parameter "enableSSL"
    .parameter "accId"

    .prologue
    .line 2596
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_16

    .line 2598
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSSL(ZJ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2603
    :goto_a
    return v1

    .line 2599
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 2600
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2603
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setSenderName(Ljava/lang/String;J)Z
    .registers 7
    .parameter "senderName"
    .parameter "accId"

    .prologue
    .line 2824
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_16

    .line 2826
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSenderName(Ljava/lang/String;J)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2831
    :goto_a
    return v1

    .line 2827
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 2828
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2831
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setServerPathPrefix(Ljava/lang/String;J)Z
    .registers 7
    .parameter "pathPrefix"
    .parameter "accId"

    .prologue
    .line 2844
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_16

    .line 2846
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setServerPathPrefix(Ljava/lang/String;J)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2851
    :goto_a
    return v1

    .line 2847
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 2848
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2851
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setSignature(Ljava/lang/String;J)Z
    .registers 7
    .parameter "signature"
    .parameter "accId"

    .prologue
    .line 2758
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_16

    .line 2760
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSignature(Ljava/lang/String;J)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2765
    :goto_a
    return v1

    .line 2761
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 2762
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2765
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setSilentVibrateOnEmailNotification(ZJ)Z
    .registers 7
    .parameter "enable"
    .parameter "accId"

    .prologue
    .line 2679
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_16

    .line 2681
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSilentVibrateOnEmailNotification(ZJ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2686
    :goto_a
    return v1

    .line 2682
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 2683
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2686
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setSyncInterval(IJ)Z
    .registers 7
    .parameter "syncInterval"
    .parameter "accId"

    .prologue
    .line 2804
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_16

    .line 2806
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSyncInterval(IJ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2811
    :goto_a
    return v1

    .line 2807
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 2808
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2811
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setTLS(ZJ)Z
    .registers 7
    .parameter "enableTLS"
    .parameter "accId"

    .prologue
    .line 2616
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_16

    .line 2618
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setTLS(ZJ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2623
    :goto_a
    return v1

    .line 2619
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 2620
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2623
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setUser(Ljava/lang/String;J)V
    .registers 5
    .parameter "user"
    .parameter "accId"

    .prologue
    .line 2555
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_8

    .line 2557
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mUser:Ljava/lang/String;

    .line 2558
    iput-wide p2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mAccId:J

    .line 2563
    :cond_8
    return-void
.end method
