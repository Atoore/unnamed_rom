.class public Lcom/android/mms/transaction/SendTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "SendTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mSendReqURI:Landroid/net/Uri;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "transId"
    .parameter "connectionSettings"
    .parameter "uri"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 67
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    .line 68
    iput-object p4, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    .line 71
    invoke-static {p1}, Lcom/android/mms/transaction/RetryScheduler;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SendTransaction;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 72
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x2

    return v0
.end method

.method public process()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->mThread:Ljava/lang/Thread;

    .line 81
    iget-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 82
    return-void
.end method

.method public run()V
    .locals 28

    .prologue
    .line 86
    :try_start_0
    invoke-static {}, Lcom/android/mms/util/RateController;->getInstance()Lcom/android/mms/util/RateController;

    move-result-object v18

    .line 87
    .local v18, rateCtlr:Lcom/android/mms/util/RateController;
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/util/RateController;->isLimitSurpassed()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/util/RateController;->isAllowedByUser()Z

    move-result v4

    if-nez v4, :cond_1

    .line 88
    const-string v4, "Mms/SendTransaction"

    const-string v5, "Sending rate limit surpassed."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 190
    const-string v4, "Mms/SendTransaction"

    const-string v5, "Delivery failed."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    .line 194
    .end local v18           #rateCtlr:Lcom/android/mms/util/RateController;
    :goto_0
    return-void

    .line 93
    .restart local v18       #rateCtlr:Lcom/android/mms/util/RateController;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v17

    .line 94
    .local v17, persister:Lcom/google/android/mms/pdu/PduPersister;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v4, v0

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v23

    check-cast v23, Lcom/google/android/mms/pdu/SendReq;

    .line 97
    .local v23, sendReq:Lcom/google/android/mms/pdu/SendReq;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v12, v4, v6

    .line 98
    .local v12, date:J
    invoke-static {}, Lcom/android/mms/MmsConfig;->getOptionalFieldAttendance()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 99
    move-object/from16 v0, v23

    move-wide v1, v12

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    .line 102
    :cond_2
    new-instance v7, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v7, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 103
    .local v7, values:Landroid/content/ContentValues;
    const-string v4, "date"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v6, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 108
    const-string v4, "SGH-I777"

    const-string v5, "SPH-D710"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "SGH-I777"

    const-string v5, "SPH-D705"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 110
    :cond_3
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v14

    .line 111
    .local v14, lineNumber:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 112
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v14}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/SendReq;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 120
    .end local v14           #lineNumber:Ljava/lang/String;
    :cond_4
    :goto_1
    const-string v4, "Mms/SendTransaction"

    const-string v5, "start sending"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v4, v0

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v25

    .line 124
    .local v25, tokenKey:J
    new-instance v16, Lcom/google/android/mms/pdu/PduComposer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, v16

    move-object v1, v4

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    .line 125
    .local v16, pComp:Lcom/google/android/mms/pdu/PduComposer;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getOptionalFieldAttendance()Z

    move-result v4

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->setOptionalFieldAttendance(Z)V

    .line 127
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/util/SendingProgressTokenManager;->get(Ljava/lang/Object;)J

    move-result-wide v4

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v6

    move-object/from16 v0, p0

    move-wide v1, v4

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/transaction/SendTransaction;->sendPdu(J[B)[B

    move-result-object v22

    .line 128
    .local v22, response:[B
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/util/SendingProgressTokenManager;->remove(Ljava/lang/Object;)V

    .line 130
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSavePduFiles()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 131
    const-string v4, "SendReq"

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/transaction/SavePduFiles;->save(Ljava/lang/String;[B)V

    .line 132
    const-string v4, "SendConf"

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/mms/transaction/SavePduFiles;->save(Ljava/lang/String;[B)V

    .line 136
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 137
    new-instance v21, Ljava/lang/String;

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>([B)V

    .line 138
    .local v21, respStr:Ljava/lang/String;
    const-string v4, "Mms/SendTransaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SendTransaction] run: send mms msg ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), resp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .end local v21           #respStr:Ljava/lang/String;
    :cond_6
    new-instance v4, Lcom/google/android/mms/pdu/PduParser;

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v10

    check-cast v10, Lcom/google/android/mms/pdu/SendConf;

    .line 142
    .local v10, conf:Lcom/google/android/mms/pdu/SendConf;
    if-nez v10, :cond_a

    .line 143
    const-string v4, "Mms/SendTransaction"

    const-string v5, "No M-Send.conf received. Return here!"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_7

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 190
    const-string v4, "Mms/SendTransaction"

    const-string v5, "Delivery failed."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    goto/16 :goto_0

    .line 115
    .end local v10           #conf:Lcom/google/android/mms/pdu/SendConf;
    .end local v16           #pComp:Lcom/google/android/mms/pdu/PduComposer;
    .end local v22           #response:[B
    .end local v25           #tokenKey:J
    :cond_8
    :try_start_2
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v5, "insert-address-token"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/SendReq;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 184
    .end local v7           #values:Landroid/content/ContentValues;
    .end local v12           #date:J
    .end local v17           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v18           #rateCtlr:Lcom/android/mms/util/RateController;
    .end local v23           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    :catch_0
    move-exception v4

    move-object/from16 v24, v4

    .line 185
    .local v24, t:Ljava/lang/Throwable;
    :try_start_3
    const-string v4, "Mms/SendTransaction"

    invoke-static/range {v24 .. v24}, Lcom/android/mms/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_9

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 190
    const-string v4, "Mms/SendTransaction"

    const-string v5, "Delivery failed."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    goto/16 :goto_0

    .line 149
    .end local v24           #t:Ljava/lang/Throwable;
    .restart local v7       #values:Landroid/content/ContentValues;
    .restart local v10       #conf:Lcom/google/android/mms/pdu/SendConf;
    .restart local v12       #date:J
    .restart local v16       #pComp:Lcom/google/android/mms/pdu/PduComposer;
    .restart local v17       #persister:Lcom/google/android/mms/pdu/PduPersister;
    .restart local v18       #rateCtlr:Lcom/android/mms/util/RateController;
    .restart local v22       #response:[B
    .restart local v23       #sendReq:Lcom/google/android/mms/pdu/SendReq;
    .restart local v25       #tokenKey:J
    :cond_a
    :try_start_4
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/SendReq;->getTransactionId()[B

    move-result-object v19

    .line 150
    .local v19, reqId:[B
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/SendConf;->getTransactionId()[B

    move-result-object v11

    .line 151
    .local v11, confId:[B
    move-object/from16 v0, v19

    move-object v1, v11

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_c

    .line 152
    const-string v4, "Mms/SendTransaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inconsistent Transaction-ID: req="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", conf="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v11}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_b

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 190
    const-string v4, "Mms/SendTransaction"

    const-string v5, "Delivery failed."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    goto/16 :goto_0

    .line 160
    :cond_c
    :try_start_5
    new-instance v7, Landroid/content/ContentValues;

    .end local v7           #values:Landroid/content/ContentValues;
    const/4 v4, 0x2

    invoke-direct {v7, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 161
    .restart local v7       #values:Landroid/content/ContentValues;
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/SendConf;->getResponseStatus()I

    move-result v20

    .line 162
    .local v20, respStatus:I
    const-string v4, "resp_st"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 164
    const/16 v4, 0x80

    move/from16 v0, v20

    move v1, v4

    if-eq v0, v1, :cond_e

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v6, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 167
    const-string v4, "Mms/SendTransaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Server returned an error code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_d

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 190
    const-string v4, "Mms/SendTransaction"

    const-string v5, "Delivery failed."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    goto/16 :goto_0

    .line 171
    :cond_e
    :try_start_6
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/SendConf;->getMessageId()[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v15

    .line 172
    .local v15, messageId:Ljava/lang/String;
    const-string v4, "m_id"

    invoke-virtual {v7, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v6, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v4, v0

    sget-object v5, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v27

    .line 180
    .local v27, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object v4, v0

    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, v27

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForMms(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Z

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_f

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 190
    const-string v4, "Mms/SendTransaction"

    const-string v5, "Delivery failed."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    goto/16 :goto_0

    .line 187
    .end local v7           #values:Landroid/content/ContentValues;
    .end local v10           #conf:Lcom/google/android/mms/pdu/SendConf;
    .end local v11           #confId:[B
    .end local v12           #date:J
    .end local v15           #messageId:Ljava/lang/String;
    .end local v16           #pComp:Lcom/google/android/mms/pdu/PduComposer;
    .end local v17           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v18           #rateCtlr:Lcom/android/mms/util/RateController;
    .end local v19           #reqId:[B
    .end local v20           #respStatus:I
    .end local v22           #response:[B
    .end local v23           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    .end local v25           #tokenKey:J
    .end local v27           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_10

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v5, v0

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 190
    const-string v5, "Mms/SendTransaction"

    const-string v6, "Delivery failed."

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    throw v4
.end method
