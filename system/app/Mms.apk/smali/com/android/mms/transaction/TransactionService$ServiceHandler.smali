.class final Lcom/android/mms/transaction/TransactionService$ServiceHandler;
.super Landroid/os/Handler;
.source "TransactionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/TransactionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/TransactionService;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/TransactionService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 706
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    .line 707
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 708
    return-void
.end method

.method private processPendingTransaction(Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/TransactionSettings;)V
    .locals 8
    .parameter "transaction"
    .parameter "settings"

    .prologue
    const-string v7, "Mms:transaction"

    .line 931
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 932
    const-string v4, "Mms:transaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processPendingTxn: transaction="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    :cond_0
    const/4 v2, 0x0

    .line 936
    .local v2, numProcessTransaction:I
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 937
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$400(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 938
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$400(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/mms/transaction/Transaction;

    move-object p1, v0

    .line 940
    :cond_1
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 941
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 943
    if-eqz p1, :cond_6

    .line 944
    if-eqz p2, :cond_2

    .line 945
    invoke-virtual {p1, p2}, Lcom/android/mms/transaction/Transaction;->setConnectionSettings(Lcom/android/mms/transaction/TransactionSettings;)V

    .line 952
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v3

    .line 954
    .local v3, serviceId:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 955
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processPendingTxn: process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processTransaction(Lcom/android/mms/transaction/Transaction;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 959
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 960
    const-string v4, "Mms:transaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Started deferred processing of transaction  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 977
    .end local v3           #serviceId:I
    :cond_4
    :goto_0
    return-void

    .line 941
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 963
    .restart local v3       #serviceId:I
    :cond_5
    const/4 p1, 0x0

    .line 964
    :try_start_3
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v4, v3}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 966
    .end local v3           #serviceId:I
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 967
    .local v1, e:Ljava/io/IOException;
    const-string v4, "Mms:transaction"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 970
    .end local v1           #e:Ljava/io/IOException;
    :cond_6
    if-nez v2, :cond_4

    .line 971
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 972
    const-string v4, "Mms:transaction"

    const-string v4, "processPendingTxn: no more transaction, endMmsConnectivity"

    invoke-static {v7, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    :cond_7
    iget-object v4, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    goto :goto_0
.end method

.method private processTransaction(Lcom/android/mms/transaction/Transaction;)Z
    .locals 12
    .parameter "transaction"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const-string v11, "Mms:transaction"

    .line 990
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v6}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 991
    :try_start_0
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v7}, Lcom/android/mms/transaction/TransactionService;->access$400(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/transaction/Transaction;

    .line 992
    .local v5, t:Lcom/android/mms/transaction/Transaction;
    invoke-virtual {v5, p1}, Lcom/android/mms/transaction/Transaction;->isEquivalent(Lcom/android/mms/transaction/Transaction;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 993
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 994
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 995
    .local v4, s:Ljava/lang/StringBuffer;
    const-string v7, "Mms:transaction"

    const-string v8, "Transaction already pending: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    .end local v4           #s:Ljava/lang/StringBuffer;
    :cond_1
    monitor-exit v6

    move v6, v10

    .line 1079
    .end local v5           #t:Lcom/android/mms/transaction/Transaction;
    :goto_0
    return v6

    .line 1002
    :cond_2
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v7}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/transaction/Transaction;

    .line 1003
    .restart local v5       #t:Lcom/android/mms/transaction/Transaction;
    invoke-virtual {v5, p1}, Lcom/android/mms/transaction/Transaction;->isEquivalent(Lcom/android/mms/transaction/Transaction;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1004
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1005
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1006
    .restart local v4       #s:Ljava/lang/StringBuffer;
    const-string v7, "Mms:transaction"

    const-string v8, "Duplicated transaction: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getServiceId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    .end local v4           #s:Ljava/lang/StringBuffer;
    :cond_4
    monitor-exit v6

    move v6, v10

    goto :goto_0

    .line 1020
    .end local v5           #t:Lcom/android/mms/transaction/Transaction;
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1021
    const-string v7, "Mms:transaction"

    const-string v8, "processTransaction: call beginMmsConnectivity..."

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    :cond_6
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v7}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivity()I

    move-result v1

    .line 1024
    .local v1, connectivityResult:I
    if-ne v1, v10, :cond_8

    .line 1025
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v7}, Lcom/android/mms/transaction/TransactionService;->access$400(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1026
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1027
    const-string v7, "Mms:transaction"

    const-string v8, "processTransaction: connResult=APN_REQUEST_STARTED, defer transaction pending MMS connectivity"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    :cond_7
    monitor-exit v6

    move v6, v10

    goto :goto_0

    .line 1032
    :cond_8
    if-le v1, v10, :cond_a

    .line 1034
    iget-object v7, p1, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 1035
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v7

    if-nez v7, :cond_9

    .line 1036
    move-object v0, p1

    check-cast v0, Lcom/android/mms/transaction/NotificationTransaction;

    move-object v3, v0

    .line 1037
    .local v3, noti:Lcom/android/mms/transaction/NotificationTransaction;
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/mms/transaction/NotificationTransaction;->getUri()Landroid/net/Uri;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 1040
    .end local v3           #noti:Lcom/android/mms/transaction/NotificationTransaction;
    :cond_9
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {p1, v7}, Lcom/android/mms/transaction/Transaction;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 1041
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->notifyObservers()V

    .line 1042
    monitor-exit v6

    move v6, v10

    goto/16 :goto_0

    .line 1046
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1047
    const-string v7, "Mms:transaction"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Adding transaction to \'mProcessing\' list: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    :cond_b
    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-static {v7}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1050
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1070
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x7530

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1072
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1073
    const-string v6, "Mms:transaction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processTransaction: starting transaction "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    :cond_c
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {p1, v6}, Lcom/android/mms/transaction/Transaction;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 1078
    invoke-virtual {p1}, Lcom/android/mms/transaction/Transaction;->process()V

    move v6, v10

    .line 1079
    goto/16 :goto_0

    .line 1050
    .end local v1           #connectivityResult:I
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .parameter "msg"

    .prologue
    .line 716
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 717
    const-string v22, "Mms:transaction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Handling incoming message: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    :cond_0
    const/16 v16, 0x0

    .line 722
    .local v16, transaction:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    sparse-switch v22, :sswitch_data_0

    .line 924
    const-string v22, "Mms:transaction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "what="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    .end local p1
    :cond_1
    :goto_0
    return-void

    .line 724
    .restart local p1
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 728
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v22

    monitor-enter v22

    .line 729
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 730
    monitor-exit v22

    goto :goto_0

    .line 732
    :catchall_0
    move-exception v23

    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v23

    :cond_2
    :try_start_1
    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 734
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 735
    const-string v22, "Mms:transaction"

    const-string v23, "handle EVENT_CONTINUE_MMS_CONNECTIVITY event..."

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivity()I

    move-result v12

    .line 740
    .local v12, result:I
    if-eqz v12, :cond_4

    .line 741
    const-string v22, "Mms:transaction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Extending MMS connectivity returned "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " instead of APN_ALREADY_ACTIVE"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 754
    :cond_4
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    const-wide/16 v23, 0x7530

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 764
    .end local v12           #result:I
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;)Lcom/android/common/NetworkConnectivityListener;

    move-result-object v22

    if-eqz v22, :cond_1

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;)Lcom/android/common/NetworkConnectivityListener;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/common/NetworkConnectivityListener;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    .line 770
    .local v8, info:Landroid/net/NetworkInfo;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v22

    if-eqz v22, :cond_5

    .line 771
    const-string v22, "Mms:transaction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Handle DATA_STATE_CHANGED event: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    :cond_5
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_7

    .line 777
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v22

    if-eqz v22, :cond_1

    const-string v22, "Mms:transaction"

    const-string v23, "   type is not TYPE_MOBILE_MMS, bail"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 781
    :cond_7
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v22

    if-nez v22, :cond_8

    .line 782
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v22

    if-eqz v22, :cond_1

    const-string v22, "Mms:transaction"

    const-string v23, "   TYPE_MOBILE_MMS not connected, bail"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 786
    :cond_8
    new-instance v14, Lcom/android/mms/transaction/TransactionSettings;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v23

    move-object v0, v14

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 790
    .local v14, settings:Lcom/android/mms/transaction/TransactionSettings;
    invoke-virtual {v14}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 791
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 792
    const-string v22, "Mms:transaction"

    const-string v23, "   empty MMSC url, bail"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 798
    :cond_9
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    const-wide/16 v23, 0x7530

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 801
    const-string v22, "Mms:transaction"

    const-string v23, "pdp connected !!!! EVENT_DATA_STATE_CHANGED message reached on TransactinService"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processPendingTransaction(Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/TransactionSettings;)V

    goto/16 :goto_0

    .line 808
    .end local v8           #info:Landroid/net/NetworkInfo;
    .end local v14           #settings:Lcom/android/mms/transaction/TransactionSettings;
    :sswitch_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v13, v0

    .line 810
    .local v13, serviceId:I
    :try_start_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/mms/transaction/TransactionBundle;

    .line 815
    .local v5, args:Lcom/android/mms/transaction/TransactionBundle;
    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionBundle;->getMmscUrl()Ljava/lang/String;

    move-result-object v9

    .line 816
    .local v9, mmsc:Ljava/lang/String;
    if-eqz v9, :cond_c

    .line 817
    new-instance v18, Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionBundle;->getProxyAddress()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionBundle;->getProxyPort()I

    move-result v23

    move-object/from16 v0, v18

    move-object v1, v9

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 824
    .local v18, transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    :goto_1
    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v19

    .line 826
    .local v19, transactionType:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v22

    if-eqz v22, :cond_a

    .line 827
    const-string v22, "Mms:transaction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "handle EVENT_TRANSACTION_REQUEST: transactionType="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    :cond_a
    packed-switch v19, :pswitch_data_0

    .line 878
    const-string v22, "Mms:transaction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Invalid transaction type: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 879
    const/16 v16, 0x0

    .line 911
    if-nez v16, :cond_1

    .line 912
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v22

    if-eqz v22, :cond_b

    .line 913
    const-string v22, "Mms:transaction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Transaction was null. Stopping self: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    goto/16 :goto_0

    .line 820
    .end local v18           #transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    .end local v19           #transactionType:I
    :cond_c
    :try_start_3
    new-instance v18, Lcom/android/mms/transaction/TransactionSettings;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v18       #transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    goto/16 :goto_1

    .line 834
    .restart local v19       #transactionType:I
    :pswitch_0
    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v21

    .line 835
    .local v21, uri:Ljava/lang/String;
    if-eqz v21, :cond_e

    .line 836
    new-instance v17, Lcom/android/mms/transaction/NotificationTransaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move v2, v13

    move-object/from16 v3, v18

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/NotificationTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V

    .end local v16           #transaction:Lcom/android/mms/transaction/Transaction;
    .local v17, transaction:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v16, v17

    .line 883
    .end local v17           #transaction:Lcom/android/mms/transaction/Transaction;
    .end local v21           #uri:Ljava/lang/String;
    .restart local v16       #transaction:Lcom/android/mms/transaction/Transaction;
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processTransaction(Lcom/android/mms/transaction/Transaction;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v22

    if-nez v22, :cond_12

    .line 884
    const/16 v16, 0x0

    .line 911
    if-nez v16, :cond_1

    .line 912
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v22

    if-eqz v22, :cond_d

    .line 913
    const-string v22, "Mms:transaction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Transaction was null. Stopping self: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    goto/16 :goto_0

    .line 841
    .restart local v21       #uri:Ljava/lang/String;
    :cond_e
    :try_start_4
    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionBundle;->getPushData()[B

    move-result-object v11

    .line 842
    .local v11, pushData:[B
    new-instance v10, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v10, v11}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    .line 843
    .local v10, parser:Lcom/google/android/mms/pdu/PduParser;
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v7

    .line 845
    .local v7, ind:Lcom/google/android/mms/pdu/GenericPdu;
    const/16 v20, 0x82

    .line 846
    .local v20, type:I
    if-eqz v7, :cond_f

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 847
    const-string v22, "Mms:transaction"

    const-string v23, "new MMS noti comming"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    new-instance v17, Lcom/android/mms/transaction/NotificationTransaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    check-cast v7, Lcom/google/android/mms/pdu/NotificationInd;

    .end local v7           #ind:Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move v2, v13

    move-object/from16 v3, v18

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/NotificationTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Lcom/google/android/mms/pdu/NotificationInd;)V

    .end local v16           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v17       #transaction:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v16, v17

    .line 857
    .end local v17           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v16       #transaction:Lcom/android/mms/transaction/Transaction;
    goto :goto_2

    .line 852
    .restart local v7       #ind:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_f
    const-string v22, "Mms:transaction"

    const-string v23, "Invalid PUSH data."

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 853
    const/16 v16, 0x0

    .line 911
    if-nez v16, :cond_1

    .line 912
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v22

    if-eqz v22, :cond_10

    .line 913
    const-string v22, "Mms:transaction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Transaction was null. Stopping self: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    goto/16 :goto_0

    .line 859
    .end local v7           #ind:Lcom/google/android/mms/pdu/GenericPdu;
    .end local v10           #parser:Lcom/google/android/mms/pdu/PduParser;
    .end local v11           #pushData:[B
    .end local v20           #type:I
    .end local v21           #uri:Ljava/lang/String;
    :pswitch_1
    :try_start_5
    const-string v22, "Mms:transaction"

    const-string v23, "start deferred retrieve"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    new-instance v17, Lcom/android/mms/transaction/RetrieveTransaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move v2, v13

    move-object/from16 v3, v18

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/RetrieveTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V

    .end local v16           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v17       #transaction:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v16, v17

    .line 862
    .end local v17           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v16       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_2

    .line 864
    :pswitch_2
    const-string v22, "Mms:transaction"

    const-string v23, "start send"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v22

    if-eqz v22, :cond_11

    .line 867
    const-string v22, "GATE"

    const-string v23, "<GATE-M>MMS_SENDING</GATE-M>"

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    :cond_11
    new-instance v17, Lcom/android/mms/transaction/SendTransaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move v2, v13

    move-object/from16 v3, v18

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/SendTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V

    .end local v16           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v17       #transaction:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v16, v17

    .line 872
    .end local v17           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v16       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_2

    .line 874
    :pswitch_3
    new-instance v17, Lcom/android/mms/transaction/ReadRecTransaction;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move v2, v13

    move-object/from16 v3, v18

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/ReadRecTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V

    .end local v16           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v17       #transaction:Lcom/android/mms/transaction/Transaction;
    move-object/from16 v16, v17

    .line 876
    .end local v17           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v16       #transaction:Lcom/android/mms/transaction/Transaction;
    goto/16 :goto_2

    .line 888
    :cond_12
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v22

    if-eqz v22, :cond_13

    .line 889
    const-string v22, "Mms:transaction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Started processing of incoming message: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 911
    :cond_13
    if-nez v16, :cond_1

    .line 912
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v22

    if-eqz v22, :cond_14

    .line 913
    const-string v22, "Mms:transaction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Transaction was null. Stopping self: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    goto/16 :goto_0

    .line 891
    .end local v5           #args:Lcom/android/mms/transaction/TransactionBundle;
    .end local v9           #mmsc:Ljava/lang/String;
    .end local v18           #transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    .end local v19           #transactionType:I
    :catch_0
    move-exception v22

    move-object/from16 v6, v22

    .line 892
    .local v6, ex:Ljava/lang/Exception;
    :try_start_6
    const-string v22, "Mms:transaction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception occurred while handling message: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 894
    if-eqz v16, :cond_16

    .line 896
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_15

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v22

    monitor-enter v22
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    .line 899
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/mms/transaction/TransactionService;->access$200(Lcom/android/mms/transaction/TransactionService;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 900
    monitor-exit v22
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 907
    :cond_15
    const/16 v16, 0x0

    .line 911
    :cond_16
    :goto_3
    if-nez v16, :cond_1

    .line 912
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v22

    if-eqz v22, :cond_17

    .line 913
    const-string v22, "Mms:transaction"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Transaction was null. Stopping self: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    goto/16 :goto_0

    .line 900
    :catchall_1
    move-exception v23

    :try_start_9
    monitor-exit v22
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v23
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    .line 902
    :catch_1
    move-exception v22

    move-object/from16 v15, v22

    .line 903
    .local v15, t:Ljava/lang/Throwable;
    :try_start_b
    const-string v22, "Mms:transaction"

    const-string v23, "Unexpected Throwable."

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v15

    invoke-static {v0, v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 907
    const/16 v16, 0x0

    .line 908
    goto :goto_3

    .line 907
    .end local v15           #t:Ljava/lang/Throwable;
    :catchall_2
    move-exception v22

    const/16 v16, 0x0

    :try_start_c
    throw v22
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 911
    .end local v6           #ex:Ljava/lang/Exception;
    :catchall_3
    move-exception v22

    if-nez v16, :cond_19

    .line 912
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v23

    if-eqz v23, :cond_18

    .line 913
    const-string v23, "Mms:transaction"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Transaction was null. Stopping self: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->this$0:Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    :cond_19
    throw v22

    .line 921
    .end local v13           #serviceId:I
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/mms/transaction/TransactionSettings;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/TransactionService$ServiceHandler;->processPendingTransaction(Lcom/android/mms/transaction/Transaction;Lcom/android/mms/transaction/TransactionSettings;)V

    goto/16 :goto_0

    .line 722
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x4 -> :sswitch_4
        0x64 -> :sswitch_0
    .end sparse-switch

    .line 832
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
