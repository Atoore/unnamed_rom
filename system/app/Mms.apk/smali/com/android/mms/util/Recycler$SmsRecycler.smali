.class public Lcom/android/mms/util/Recycler$SmsRecycler;
.super Lcom/android/mms/util/Recycler;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/Recycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmsRecycler"
.end annotation


# static fields
.field private static final ALL_SMS_THREADS_PROJECTION:[Ljava/lang/String;

.field private static final SMS_MESSAGE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v5, "thread_id"

    .line 137
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v5, v0, v2

    const-string v1, "msg_count"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/util/Recycler$SmsRecycler;->ALL_SMS_THREADS_PROJECTION:[Ljava/lang/String;

    .line 145
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "thread_id"

    aput-object v5, v0, v3

    const-string v1, "address"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/util/Recycler$SmsRecycler;->SMS_MESSAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/mms/util/Recycler;-><init>()V

    return-void
.end method


# virtual methods
.method protected anyThreadOverLimit(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x0

    .line 252
    invoke-virtual {p0, p1}, Lcom/android/mms/util/Recycler$SmsRecycler;->getAllThreads(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v7

    .line 253
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    move v0, v12

    .line 278
    :goto_0
    return v0

    .line 256
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/util/Recycler$SmsRecycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v8

    .line 258
    .local v8, limit:I
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 259
    invoke-virtual {p0, v7}, Lcom/android/mms/util/Recycler$SmsRecycler;->getThreadId(Landroid/database/Cursor;)J

    move-result-wide v10

    .line 260
    .local v10, threadId:J
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 261
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v0, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/mms/util/Recycler$SmsRecycler;->SMS_MESSAGE_PROJECTION:[Ljava/lang/String;

    const-string v4, "locked=0"

    const/4 v5, 0x0

    const-string v6, "date DESC"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 264
    .local v9, msgs:Landroid/database/Cursor;
    if-nez v9, :cond_1

    .line 276
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v12

    goto :goto_0

    .line 268
    :cond_1
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-lt v0, v8, :cond_2

    .line 269
    const/4 v0, 0x1

    .line 272
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 272
    :cond_2
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 276
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v9           #msgs:Landroid/database/Cursor;
    .end local v10           #threadId:J
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 272
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    .restart local v9       #msgs:Landroid/database/Cursor;
    .restart local v10       #threadId:J
    :catchall_1
    move-exception v0

    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 276
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v9           #msgs:Landroid/database/Cursor;
    .end local v10           #threadId:J
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v12

    .line 278
    goto :goto_0
.end method

.method protected deleteMessagesForThread(Landroid/content/Context;JI)V
    .locals 19
    .parameter "context"
    .parameter "threadId"
    .parameter "keep"

    .prologue
    .line 198
    const-string v5, "Mms/Recycler"

    const-string v6, "SMS: deleteMessagesForThread"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 201
    .local v6, resolver:Landroid/content/ContentResolver;
    const/4 v15, 0x0

    .line 203
    .local v15, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v5, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    sget-object v8, Lcom/android/mms/util/Recycler$SmsRecycler;->SMS_MESSAGE_PROJECTION:[Ljava/lang/String;

    const-string v9, "locked=0 AND hidden=0"

    const/4 v10, 0x0

    const-string v11, "date DESC"

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v11}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 207
    if-nez v15, :cond_1

    .line 208
    const-string v5, "Mms/Recycler"

    const-string v6, "SMS: deleteMessagesForThread got back null cursor"

    .end local v6           #resolver:Landroid/content/ContentResolver;
    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    if-eqz v15, :cond_0

    .line 232
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 211
    .restart local v6       #resolver:Landroid/content/ContentResolver;
    :cond_1
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 212
    .local v14, count:I
    sub-int v18, v14, p4

    .line 214
    .local v18, numberToDelete:I
    const-string v5, "Mms/Recycler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SMS: deleteMessagesForThread keep: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " numberToDelete: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    if-gtz v18, :cond_2

    .line 231
    if-eqz v15, :cond_0

    .line 232
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 221
    :cond_2
    :try_start_2
    move-object v0, v15

    move/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->move(I)Z

    .line 222
    const/4 v5, 0x4

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 224
    .local v16, latestDate:J
    sget-object v5, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "locked=0 AND date<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v5

    move-object v3, v7

    move-object v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    int-to-long v12, v5

    .line 228
    .local v12, cntDeleted:J
    const-string v5, "Mms/Recycler"

    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #resolver:Landroid/content/ContentResolver;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMS: deleteMessagesForThread cntDeleted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    if-eqz v15, :cond_0

    .line 232
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 231
    .end local v12           #cntDeleted:J
    .end local v14           #count:I
    .end local v16           #latestDate:J
    .end local v18           #numberToDelete:I
    :catchall_0
    move-exception v5

    if-eqz v15, :cond_3

    .line 232
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v5
.end method

.method protected getAllThreads(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 189
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/util/Recycler$SmsRecycler;->ALL_SMS_THREADS_PROJECTION:[Ljava/lang/String;

    const-string v6, "date DESC"

    move-object v0, p1

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 193
    .local v7, cursor:Landroid/database/Cursor;
    return-object v7
.end method

.method public getMessageLimit(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 171
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 172
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "MaxSmsMessagesPerThread"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDefaultSMSMessagesPerThread()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method protected getThreadId(Landroid/database/Cursor;)J
    .locals 2
    .parameter "cursor"

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public setMessageLimit(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "limit"

    .prologue
    .line 177
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 179
    .local v0, editPrefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "MaxSmsMessagesPerThread"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 180
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 181
    return-void
.end method
