.class Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;
.super Landroid/accounts/AccountManager$AmsTask;
.source "AccountManager.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetAuthTokenByTypeAndFeaturesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/accounts/AccountManager$AmsTask;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final mAccountType:Ljava/lang/String;

.field final mAddAccountOptions:Landroid/os/Bundle;

.field final mAuthTokenType:Ljava/lang/String;

.field final mFeatures:[Ljava/lang/String;

.field volatile mFuture:Landroid/accounts/AccountManagerFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field final mLoginOptions:Landroid/os/Bundle;

.field final mMyCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mNumAccounts:I

.field final synthetic this$0:Landroid/accounts/AccountManager;


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)V
    .registers 12
    .parameter
    .parameter "accountType"
    .parameter "authTokenType"
    .parameter "features"
    .parameter "activityForPrompting"
    .parameter "addAccountOptions"
    .parameter "loginOptions"
    .parameter
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1463
    .local p8, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    iput-object p1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->this$0:Landroid/accounts/AccountManager;

    .line 1464
    invoke-direct {p0, p1, p5, p9, p8}, Landroid/accounts/AccountManager$AmsTask;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V

    .line 1473
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFuture:Landroid/accounts/AccountManagerFuture;

    .line 1480
    const/4 v0, 0x0

    iput v0, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mNumAccounts:I

    .line 1465
    if-nez p2, :cond_15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account type is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1466
    :cond_15
    iput-object p2, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAccountType:Ljava/lang/String;

    .line 1467
    iput-object p3, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAuthTokenType:Ljava/lang/String;

    .line 1468
    iput-object p4, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFeatures:[Ljava/lang/String;

    .line 1469
    iput-object p6, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAddAccountOptions:Landroid/os/Bundle;

    .line 1470
    iput-object p7, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mLoginOptions:Landroid/os/Bundle;

    .line 1471
    iput-object p0, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mMyCallback:Landroid/accounts/AccountManagerCallback;

    .line 1472
    return-void
.end method

.method static synthetic access$1000(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;Ljava/lang/Throwable;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1458
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->setException(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;Ljava/lang/Throwable;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1458
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->setException(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1202(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1458
    iput p1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mNumAccounts:I

    return p1
.end method

.method static synthetic access$900(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;Ljava/lang/Throwable;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1458
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->setException(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public doWork()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1483
    iget-object v0, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->this$0:Landroid/accounts/AccountManager;

    iget-object v1, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAccountType:Ljava/lang/String;

    iget-object v2, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mFeatures:[Ljava/lang/String;

    new-instance v3, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;

    invoke-direct {v3, p0}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask$1;-><init>(Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;)V

    iget-object v4, p0, Landroid/accounts/AccountManager$AmsTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 1570
    return-void
.end method

.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const/4 v11, 0x1

    .line 1574
    :try_start_1
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    .line 1575
    .local v10, result:Landroid/os/Bundle;
    iget v0, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mNumAccounts:I

    if-nez v0, :cond_4b

    .line 1576
    const-string v0, "authAccount"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1577
    .local v7, accountName:Ljava/lang/String;
    const-string v0, "accountType"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1578
    .local v8, accountType:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1579
    :cond_23
    new-instance v0, Landroid/accounts/AuthenticatorException;

    const-string v2, "account not in result"

    invoke-direct {v0, v2}, Landroid/accounts/AuthenticatorException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->setException(Ljava/lang/Throwable;)V

    .line 1596
    .end local v7           #accountName:Ljava/lang/String;
    .end local v8           #accountType:Ljava/lang/String;
    .end local v10           #result:Landroid/os/Bundle;
    :goto_2d
    return-void

    .line 1582
    .restart local v7       #accountName:Ljava/lang/String;
    .restart local v8       #accountType:Ljava/lang/String;
    .restart local v10       #result:Landroid/os/Bundle;
    :cond_2e
    new-instance v1, Landroid/accounts/Account;

    invoke-direct {v1, v7, v8}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    .local v1, account:Landroid/accounts/Account;
    const/4 v0, 0x1

    iput v0, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mNumAccounts:I

    .line 1584
    iget-object v0, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->this$0:Landroid/accounts/AccountManager;

    iget-object v2, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mAuthTokenType:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/accounts/AccountManager$AmsTask;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->mMyCallback:Landroid/accounts/AccountManagerCallback;

    iget-object v6, p0, Landroid/accounts/AccountManager$AmsTask;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_44
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_44} :catch_45
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_44} :catch_4f
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_44} :catch_55

    goto :goto_2d

    .line 1589
    .end local v1           #account:Landroid/accounts/Account;
    .end local v7           #accountName:Ljava/lang/String;
    .end local v8           #accountType:Ljava/lang/String;
    .end local v10           #result:Landroid/os/Bundle;
    :catch_45
    move-exception v0

    move-object v9, v0

    .line 1590
    .local v9, e:Landroid/accounts/OperationCanceledException;
    invoke-virtual {p0, v11}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->cancel(Z)Z

    goto :goto_2d

    .line 1588
    .end local v9           #e:Landroid/accounts/OperationCanceledException;
    .restart local v10       #result:Landroid/os/Bundle;
    :cond_4b
    :try_start_4b
    invoke-virtual {p0, v10}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->set(Landroid/os/Bundle;)V
    :try_end_4e
    .catch Landroid/accounts/OperationCanceledException; {:try_start_4b .. :try_end_4e} :catch_45
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4f
    .catch Landroid/accounts/AuthenticatorException; {:try_start_4b .. :try_end_4e} :catch_55

    goto :goto_2d

    .line 1591
    .end local v10           #result:Landroid/os/Bundle;
    :catch_4f
    move-exception v0

    move-object v9, v0

    .line 1592
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {p0, v9}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->setException(Ljava/lang/Throwable;)V

    goto :goto_2d

    .line 1593
    .end local v9           #e:Ljava/io/IOException;
    :catch_55
    move-exception v0

    move-object v9, v0

    .line 1594
    .local v9, e:Landroid/accounts/AuthenticatorException;
    invoke-virtual {p0, v9}, Landroid/accounts/AccountManager$GetAuthTokenByTypeAndFeaturesTask;->setException(Ljava/lang/Throwable;)V

    goto :goto_2d
.end method
