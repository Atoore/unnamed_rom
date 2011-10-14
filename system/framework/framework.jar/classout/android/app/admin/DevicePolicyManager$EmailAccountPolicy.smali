.class public Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;
.super Ljava/lang/Object;
.source "DevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmailAccountPolicy"
.end annotation


# instance fields
.field private final mService:Landroid/app/enterprise/IEmailAccountPolicy;

.field final synthetic this$0:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method private constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .registers 3
    .parameter

    .prologue
    .line 3114
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->this$0:Landroid/app/admin/DevicePolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3115
    const-string v0, "email_account_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEmailAccountPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    .line 3117
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3110
    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    return-void
.end method


# virtual methods
.method public addNewAccount(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 62
    .parameter "displayName"
    .parameter "emailAddress"
    .parameter "syncLookback"
    .parameter "syncInterval"
    .parameter "isDefault"
    .parameter "senderName"
    .parameter "protocolVersion"
    .parameter "signature"
    .parameter "emailNotificationVibrateAlways"
    .parameter "emailNotificationVibrateWhenSilent"
    .parameter "inComingProtocol"
    .parameter "inComingServerAddress"
    .parameter "inComingServerPort"
    .parameter "inComingServerUseSSL"
    .parameter "inComingServerUseTLS"
    .parameter "inComingServerAcceptAllCertificates"
    .parameter "inComingServerLogin"
    .parameter "inComingServerPassword"
    .parameter "inComingServerPathPrefix"
    .parameter "outGoingProtocol"
    .parameter "outGoingServerAddress"
    .parameter "outGoingServerPort"
    .parameter "outGoingServerUseSSL"
    .parameter "outGoingServerUseTLS"
    .parameter "outGoingServerAcceptAllCertificates"
    .parameter "outGoingServerLogin"
    .parameter "outGoingServerPassword"
    .parameter "outGoingServerPathPrefix"

    .prologue
    .line 3155
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    move-object v3, v0

    if-eqz v3, :cond_59

    .line 3157
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    move-object v3, v0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    move/from16 v19, p16

    move-object/from16 v20, p17

    move-object/from16 v21, p18

    move-object/from16 v22, p19

    move-object/from16 v23, p20

    move-object/from16 v24, p21

    move/from16 v25, p22

    move/from16 v26, p23

    move/from16 v27, p24

    move/from16 v28, p25

    move-object/from16 v29, p26

    move-object/from16 v30, p27

    move-object/from16 v31, p28

    invoke-interface/range {v3 .. v31}, Landroid/app/enterprise/IEmailAccountPolicy;->addNewAccount(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_47} :catch_49

    move-result-wide v3

    .line 3171
    :goto_48
    return-wide v3

    .line 3167
    :catch_49
    move-exception v3

    move-object/from16 v32, v3

    .line 3168
    .local v32, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed talking with email account policy"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3171
    .end local v32           #e:Landroid/os/RemoteException;
    :cond_59
    const-wide/16 v3, -0x1

    goto :goto_48
.end method

.method public deleteAccount(J)Z
    .registers 6
    .parameter "accId"

    .prologue
    .line 3685
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_16

    .line 3687
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IEmailAccountPolicy;->deleteAccount(J)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 3692
    :goto_a
    return v1

    .line 3688
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3689
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3692
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getAccountDetails(J)Landroid/app/enterprise/Account;
    .registers 6
    .parameter "accId"

    .prologue
    .line 3668
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_16

    .line 3670
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IEmailAccountPolicy;->getAccountDetails(J)Landroid/app/enterprise/Account;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 3675
    :goto_a
    return-object v1

    .line 3671
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3672
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3675
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 7
    .parameter "emailId"
    .parameter "serverAddress"
    .parameter "protocol"

    .prologue
    .line 3657
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_16

    .line 3659
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-wide v1

    .line 3664
    :goto_a
    return-wide v1

    .line 3660
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3661
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3664
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const-wide/16 v1, -0x1

    goto :goto_a
.end method

.method public sendAccountsChangedBroadcast()V
    .registers 4

    .prologue
    .line 3699
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_9

    .line 3701
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IEmailAccountPolicy;->sendAccountsChangedBroadcast()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 3706
    :cond_9
    :goto_9
    return-void

    .line 3702
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 3703
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setAccountName(Ljava/lang/String;J)Z
    .registers 7
    .parameter "accountName"
    .parameter "accId"

    .prologue
    .line 3175
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_16

    .line 3177
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setAccountName(Ljava/lang/String;J)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 3182
    :goto_a
    return v1

    .line 3178
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3179
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3182
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
    .line 3298
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_16

    .line 3300
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setAlwaysVibrateOnEmailNotification(ZJ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 3305
    :goto_a
    return v1

    .line 3301
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3302
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3305
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setAsDefaultAccount(J)Z
    .registers 6
    .parameter "accId"

    .prologue
    .line 3641
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_16

    .line 3643
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IEmailAccountPolicy;->setAsDefaultAccount(J)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 3648
    :goto_a
    return v1

    .line 3644
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3645
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3648
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setEmailAddress(Ljava/lang/String;J)Z
    .registers 7
    .parameter "emailAddress"
    .parameter "accId"

    .prologue
    .line 3186
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_16

    .line 3188
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setEmailAddress(Ljava/lang/String;J)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 3193
    :goto_a
    return v1

    .line 3189
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3190
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3193
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setInComingProtocol(Ljava/lang/String;J)Z
    .registers 7
    .parameter "protocol"
    .parameter "accId"

    .prologue
    .line 3333
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_16

    .line 3335
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setInComingProtocol(Ljava/lang/String;J)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 3340
    :goto_a
    return v1

    .line 3336
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3337
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3340
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setInComingServerAcceptAllCertificates(ZJ)Z
    .registers 7
    .parameter "acceptAllCertificates"
    .parameter "accId"

    .prologue
    .line 3419
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_16

    .line 3421
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setInComingServerAcceptAllCertificates(ZJ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 3427
    :goto_a
    return v1

    .line 3423
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3424
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3427
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setInComingServerAddress(Ljava/lang/String;J)J
    .registers 7
    .parameter "serverAddress"
    .parameter "accId"

    .prologue
    .line 3344
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_16

    .line 3346
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setInComingServerAddress(Ljava/lang/String;J)J
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-wide v1

    .line 3351
    :goto_a
    return-wide v1

    .line 3347
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3348
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3351
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const-wide/16 v1, -0x1

    goto :goto_a
.end method

.method public setInComingServerLogin(Ljava/lang/String;J)J
    .registers 7
    .parameter "loginId"
    .parameter "accId"

    .prologue
    .line 3431
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_16

    .line 3433
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setInComingServerLogin(Ljava/lang/String;J)J
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-wide v1

    .line 3438
    :goto_a
    return-wide v1

    .line 3434
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3435
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3438
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const-wide/16 v1, -0x1

    goto :goto_a
.end method

.method public setInComingServerPassword(Ljava/lang/String;J)Z
    .registers 7
    .parameter "password"
    .parameter "accId"

    .prologue
    .line 3451
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_16

    .line 3453
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setInComingServerPassword(Ljava/lang/String;J)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 3458
    :goto_a
    return v1

    .line 3454
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3455
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3458
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setInComingServerPathPrefix(Ljava/lang/String;J)Z
    .registers 7
    .parameter "pathPrefix"
    .parameter "accId"

    .prologue
    .line 3471
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_16

    .line 3473
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setInComingServerPathPrefix(Ljava/lang/String;J)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 3478
    :goto_a
    return v1

    .line 3474
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3475
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3478
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setInComingServerPort(IJ)Z
    .registers 7
    .parameter "port"
    .parameter "accId"

    .prologue
    .line 3355
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_16

    .line 3357
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setInComingServerPort(IJ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 3362
    :goto_a
    return v1

    .line 3358
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3359
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3362
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setInComingServerSSL(ZJ)Z
    .registers 7
    .parameter "enableSSL"
    .parameter "accId"

    .prologue
    .line 3376
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_16

    .line 3378
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setInComingServerSSL(ZJ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 3383
    :goto_a
    return v1

    .line 3379
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3380
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3383
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setInComingServerTLS(ZJ)Z
    .registers 7
    .parameter "enableTLS"
    .parameter "accId"

    .prologue
    .line 3397
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_16

    .line 3399
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setInComingServerTLS(ZJ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 3404
    :goto_a
    return v1

    .line 3400
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3401
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3404
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setOutGoingProtocol(Ljava/lang/String;J)Z
    .registers 7
    .parameter "protocol"
    .parameter "accId"

    .prologue
    .line 3485
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_16

    .line 3487
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setOutGoingProtocol(Ljava/lang/String;J)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 3492
    :goto_a
    return v1

    .line 3488
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3489
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3492
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setOutGoingServerAcceptAllCertificates(ZJ)Z
    .registers 7
    .parameter "acceptAllCertificates"
    .parameter "accId"

    .prologue
    .line 3571
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_16

    .line 3573
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setOutGoingServerAcceptAllCertificates(ZJ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 3579
    :goto_a
    return v1

    .line 3575
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3576
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3579
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setOutGoingServerAddress(Ljava/lang/String;J)J
    .registers 7
    .parameter "serverAddress"
    .parameter "accId"

    .prologue
    .line 3496
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_16

    .line 3498
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setOutGoingServerAddress(Ljava/lang/String;J)J
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-wide v1

    .line 3503
    :goto_a
    return-wide v1

    .line 3499
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3500
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3503
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const-wide/16 v1, -0x1

    goto :goto_a
.end method

.method public setOutGoingServerLogin(Ljava/lang/String;J)J
    .registers 7
    .parameter "loginId"
    .parameter "accId"

    .prologue
    .line 3583
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_16

    .line 3585
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setOutGoingServerLogin(Ljava/lang/String;J)J
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-wide v1

    .line 3590
    :goto_a
    return-wide v1

    .line 3586
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3587
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3590
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const-wide/16 v1, -0x1

    goto :goto_a
.end method

.method public setOutGoingServerPassword(Ljava/lang/String;J)Z
    .registers 7
    .parameter "password"
    .parameter "accId"

    .prologue
    .line 3603
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_16

    .line 3605
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setOutGoingServerPassword(Ljava/lang/String;J)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 3610
    :goto_a
    return v1

    .line 3606
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3607
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3610
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setOutGoingServerPathPrefix(Ljava/lang/String;J)Z
    .registers 7
    .parameter "pathPrefix"
    .parameter "accId"

    .prologue
    .line 3623
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_16

    .line 3625
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setOutGoingServerPathPrefix(Ljava/lang/String;J)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 3630
    :goto_a
    return v1

    .line 3626
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3627
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3630
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setOutGoingServerPort(IJ)Z
    .registers 7
    .parameter "port"
    .parameter "accId"

    .prologue
    .line 3507
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_16

    .line 3509
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setOutGoingServerPort(IJ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 3514
    :goto_a
    return v1

    .line 3510
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3511
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3514
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setOutGoingServerSSL(ZJ)Z
    .registers 7
    .parameter "enableSSL"
    .parameter "accId"

    .prologue
    .line 3528
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_16

    .line 3530
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setOutGoingServerSSL(ZJ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 3535
    :goto_a
    return v1

    .line 3531
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3532
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3535
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public setOutGoingServerTLS(ZJ)Z
    .registers 7
    .parameter "enableTLS"
    .parameter "accId"

    .prologue
    .line 3549
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_16

    .line 3551
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setOutGoingServerTLS(ZJ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 3556
    :goto_a
    return v1

    .line 3552
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3553
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3556
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
    .line 3208
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_16

    .line 3210
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setPastDaysToSync(IJ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 3215
    :goto_a
    return v1

    .line 3211
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3212
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3215
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
    .line 3257
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_16

    .line 3259
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setSenderName(Ljava/lang/String;J)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 3264
    :goto_a
    return v1

    .line 3260
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3261
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3264
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
    .line 3277
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_16

    .line 3279
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setSignature(Ljava/lang/String;J)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 3284
    :goto_a
    return v1

    .line 3280
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3281
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3284
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
    .line 3319
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_16

    .line 3321
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setSilentVibrateOnEmailNotification(ZJ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 3326
    :goto_a
    return v1

    .line 3322
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3323
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3326
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
    .line 3237
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_16

    .line 3239
    :try_start_4
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setSyncInterval(IJ)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 3244
    :goto_a
    return v1

    .line 3240
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 3241
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3244
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method
