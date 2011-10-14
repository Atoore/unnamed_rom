.class public final Lcom/nttdocomo/android/areamail/provider/AreaMailDatabaseManager;
.super Ljava/lang/Object;
.source "AreaMailDatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/android/areamail/provider/AreaMailDatabaseManager$ReceiveEntry;,
        Lcom/nttdocomo/android/areamail/provider/AreaMailDatabaseManager$Message;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.nttdocomo.android.areamail.provider"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_MESSAGE:Landroid/net/Uri; = null

.field public static final CONTENT_URI_RECEIVE_ENTRY:Landroid/net/Uri; = null

.field private static final LOG_TAG:Ljava/lang/String; = "areamail.provider"

.field private static final RECEIVE_ENTRY_MAX:I = 0x14


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-string v0, "content://com.nttdocomo.android.areamail.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/nttdocomo/android/areamail/provider/AreaMailDatabaseManager;->CONTENT_URI:Landroid/net/Uri;

    .line 58
    const-string v0, "content://com.nttdocomo.android.areamail.provider/message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/nttdocomo/android/areamail/provider/AreaMailDatabaseManager;->CONTENT_URI_MESSAGE:Landroid/net/Uri;

    .line 64
    const-string v0, "content://com.nttdocomo.android.areamail.provider/receive_entry"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/nttdocomo/android/areamail/provider/AreaMailDatabaseManager;->CONTENT_URI_RECEIVE_ENTRY:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static addMessage(Landroid/content/Context;Lcom/nttdocomo/android/areamail/provider/MessageInfo;)V
    .registers 9
    .parameter "context"
    .parameter "messageInfo"

    .prologue
    const-string v6, "areamail.provider"

    .line 79
    const-string v2, "areamail.provider"

    const-string v2, "AreaMailDatabaseManager.addMessage:enter"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    if-eqz p0, :cond_25

    if-eqz p1, :cond_25

    iget-object v2, p1, Lcom/nttdocomo/android/areamail/provider/MessageInfo;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_25

    iget-object v2, p1, Lcom/nttdocomo/android/areamail/provider/MessageInfo;->mBody:Ljava/lang/String;

    if-eqz v2, :cond_25

    iget-wide v2, p1, Lcom/nttdocomo/android/areamail/provider/MessageInfo;->mDate:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_25

    iget-wide v2, p1, Lcom/nttdocomo/android/areamail/provider/MessageInfo;->mAppId:J

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-gez v2, :cond_2d

    .line 87
    :cond_25
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The parameter is illegal"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_2d
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 91
    .local v1, values:Landroid/content/ContentValues;
    const-string/jumbo v2, "title"

    iget-object v3, p1, Lcom/nttdocomo/android/areamail/provider/MessageInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v2, "body"

    iget-object v3, p1, Lcom/nttdocomo/android/areamail/provider/MessageInfo;->mBody:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v2, "date"

    iget-wide v3, p1, Lcom/nttdocomo/android/areamail/provider/MessageInfo;->mDate:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 94
    const-string/jumbo v2, "read"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    const-string v2, "appid"

    iget-wide v3, p1, Lcom/nttdocomo/android/areamail/provider/MessageInfo;->mAppId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 99
    :try_start_62
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/nttdocomo/android/areamail/provider/AreaMailDatabaseManager;->CONTENT_URI_MESSAGE:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_6b
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_62 .. :try_end_6b} :catch_73
    .catch Landroid/database/SQLException; {:try_start_62 .. :try_end_6b} :catch_7d

    .line 108
    const-string v2, "areamail.provider"

    const-string v2, "AreaMailDatabaseManager.addMessage:exit"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void

    .line 100
    :catch_73
    move-exception v2

    move-object v0, v2

    .line 101
    .local v0, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    const-string v2, "areamail.provider"

    const-string v2, "AreaMailDatabaseManager.addMessage SQLite database file is corrupt"

    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    throw v0

    .line 103
    .end local v0           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catch_7d
    move-exception v2

    move-object v0, v2

    .line 104
    .local v0, e:Landroid/database/SQLException;
    const-string v2, "areamail.provider"

    const-string v2, "AreaMailDatabaseManager.addMessage It failed in the addition of the record"

    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    throw v0
.end method

.method public static addReceiveEntry(Landroid/content/Context;Lcom/nttdocomo/android/areamail/provider/ReceiveEntryInfo;)Z
    .registers 16
    .parameter "context"
    .parameter "receiveEntryInfo"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const-string v13, "AreaMailDatabaseManager.addReceiveEntry It failed in the addition of the record"

    const-string v12, "areamail.provider"

    .line 303
    const-string v0, "areamail.provider"

    const-string v0, "AreaMailDatabaseManager.addReceiveEntry:enter"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    if-eqz p0, :cond_19

    if-eqz p1, :cond_19

    iget v0, p1, Lcom/nttdocomo/android/areamail/provider/ReceiveEntryInfo;->mMessageId:I

    if-lt v0, v1, :cond_19

    iget-object v0, p1, Lcom/nttdocomo/android/areamail/provider/ReceiveEntryInfo;->mText:Ljava/lang/String;

    if-nez v0, :cond_21

    .line 309
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The parameter is illegal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_21
    new-array v2, v1, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 317
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/nttdocomo/android/areamail/provider/AreaMailDatabaseManager;->CONTENT_URI_RECEIVE_ENTRY:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 319
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 320
    .local v9, returnValue:Z
    if-eqz v7, :cond_c6

    .line 321
    const-string v0, "areamail.provider"

    const-string v0, "AreaMailDatabaseManager.addReceiveEntry It succeeded in acquiring the cursor"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 323
    .local v6, count:I
    const-string v0, "areamail.provider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AreaMailDatabaseManager.addReceiveEntry Number of acquired records: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 327
    const/16 v0, 0x14

    if-ge v6, v0, :cond_bd

    .line 328
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 329
    .local v11, values:Landroid/content/ContentValues;
    const-string/jumbo v0, "messageid"

    iget v1, p1, Lcom/nttdocomo/android/areamail/provider/ReceiveEntryInfo;->mMessageId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 330
    const-string/jumbo v0, "text"

    iget-object v1, p1, Lcom/nttdocomo/android/areamail/provider/ReceiveEntryInfo;->mText:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :try_start_7a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/nttdocomo/android/areamail/provider/AreaMailDatabaseManager;->CONTENT_URI_RECEIVE_ENTRY:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_83
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_7a .. :try_end_83} :catch_a9
    .catch Landroid/database/SQLException; {:try_start_7a .. :try_end_83} :catch_b3

    move-result-object v10

    .line 334
    .local v10, uri:Landroid/net/Uri;
    if-eqz v10, :cond_a0

    .line 335
    const/4 v9, 0x1

    .line 356
    .end local v6           #count:I
    .end local v10           #uri:Landroid/net/Uri;
    .end local v11           #values:Landroid/content/ContentValues;
    :goto_87
    const-string v0, "areamail.provider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AreaMailDatabaseManager.addReceiveEntry:exit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return v9

    .line 337
    .restart local v6       #count:I
    .restart local v10       #uri:Landroid/net/Uri;
    .restart local v11       #values:Landroid/content/ContentValues;
    :cond_a0
    :try_start_a0
    const-string v0, "areamail.provider"

    const-string v1, "AreaMailDatabaseManager.addReceiveEntry It failed in the addition of the record"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_a0 .. :try_end_a7} :catch_a9
    .catch Landroid/database/SQLException; {:try_start_a0 .. :try_end_a7} :catch_b3

    .line 338
    const/4 v9, 0x0

    goto :goto_87

    .line 340
    .end local v10           #uri:Landroid/net/Uri;
    :catch_a9
    move-exception v0

    move-object v8, v0

    .line 341
    .local v8, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    const-string v0, "areamail.provider"

    const-string v0, "AreaMailDatabaseManager.addReceiveEntry SQLite database file is corrupt"

    invoke-static {v12, v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    throw v8

    .line 343
    .end local v8           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catch_b3
    move-exception v0

    move-object v8, v0

    .line 344
    .local v8, e:Landroid/database/SQLException;
    const-string v0, "areamail.provider"

    const-string v0, "AreaMailDatabaseManager.addReceiveEntry It failed in the addition of the record"

    invoke-static {v12, v13, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 345
    throw v8

    .line 348
    .end local v8           #e:Landroid/database/SQLException;
    .end local v11           #values:Landroid/content/ContentValues;
    :cond_bd
    const-string v0, "areamail.provider"

    const-string v0, "AreaMailDatabaseManager.addReceiveEntry The number of records has reached 20"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v9, 0x0

    goto :goto_87

    .line 352
    .end local v6           #count:I
    :cond_c6
    const-string v0, "areamail.provider"

    const-string v0, "AreaMailDatabaseManager.addReceiveEntry It failed in the acquisition of the cursor"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v9, 0x0

    goto :goto_87
.end method

.method public static deleteReceiveEntry(Landroid/content/Context;I)I
    .registers 9
    .parameter "context"
    .parameter "messageId"

    .prologue
    const-string v6, "areamail.provider"

    .line 447
    const-string v3, "areamail.provider"

    const-string v3, "AreaMailDatabaseManager.deleteReceiveEntry:enter"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    if-eqz p0, :cond_e

    const/4 v3, 0x1

    if-ge p1, v3, :cond_16

    .line 449
    :cond_e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The parameter is illegal"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 452
    :cond_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "messageid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 453
    .local v2, selection:Ljava/lang/String;
    const/4 v0, 0x0

    .line 456
    .local v0, count:I
    :try_start_2f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/nttdocomo/android/areamail/provider/AreaMailDatabaseManager;->CONTENT_URI_RECEIVE_ENTRY:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 457
    const-string v3, "areamail.provider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AreaMailDatabaseManager.deleteReceiveEntry Number of deleted records: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2f .. :try_end_52} :catch_5a
    .catch Landroid/database/SQLException; {:try_start_2f .. :try_end_52} :catch_64

    .line 466
    const-string v3, "areamail.provider"

    const-string v3, "AreaMailDatabaseManager.deleteReceiveEntry:exit"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return v0

    .line 458
    :catch_5a
    move-exception v3

    move-object v1, v3

    .line 459
    .local v1, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    const-string v3, "areamail.provider"

    const-string v3, "AreaMailDatabaseManager.deleteReceiveEntry SQLite database file is corrupt"

    invoke-static {v6, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 460
    throw v1

    .line 461
    .end local v1           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catch_64
    move-exception v3

    move-object v1, v3

    .line 462
    .local v1, e:Landroid/database/SQLException;
    const-string v3, "areamail.provider"

    const-string v3, "AreaMailDatabaseManager.deleteReceiveEntry It failed in the record deletion"

    invoke-static {v6, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 463
    throw v1
.end method

.method public static getBody(Landroid/content/Context;J)Ljava/lang/String;
    .registers 14
    .parameter "context"
    .parameter "appId"

    .prologue
    const/4 v4, 0x0

    const-string v10, "body"

    const-string v9, "AreaMailDatabaseManager.getBody:exit"

    const-string v8, "areamail.provider"

    .line 265
    const-string v0, "areamail.provider"

    const-string v0, "AreaMailDatabaseManager.getBody:enter"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    if-eqz p0, :cond_16

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_1e

    .line 267
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The parameter is illegal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_1e
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "body"

    aput-object v10, v2, v0

    .line 273
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/nttdocomo/android/areamail/provider/AreaMailDatabaseManager;->CONTENT_URI_MESSAGE:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 277
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_86

    .line 278
    const-string v0, "areamail.provider"

    const-string v0, "AreaMailDatabaseManager.getBody It succeeded in acquiring the cursor"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v6, 0x0

    .line 282
    .local v6, body:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 283
    const-string v0, "body"

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 284
    const-string v0, "areamail.provider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AreaMailDatabaseManager.getBodyAcquired message body"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_7a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 287
    const-string v0, "areamail.provider"

    const-string v0, "AreaMailDatabaseManager.getBody:exit"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 292
    .end local v6           #body:Ljava/lang/String;
    :goto_85
    return-object v0

    .line 290
    :cond_86
    const-string v0, "areamail.provider"

    const-string v0, "AreaMailDatabaseManager.getBody It failed in the acquisition of the cursor"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const-string v0, "areamail.provider"

    const-string v0, "AreaMailDatabaseManager.getBody:exit"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 292
    goto :goto_85
.end method

.method public static getMessageList(Landroid/content/Context;)Ljava/util/List;
    .registers 14
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/android/areamail/provider/MessageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v12, "appid"

    const-string v9, "areamail.provider"

    .line 121
    const-string v0, "areamail.provider"

    const-string v0, "AreaMailDatabaseManager.getMessageList:enter"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    if-nez p0, :cond_18

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The parameter is illegal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_18
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v10

    const-string/jumbo v0, "title"

    aput-object v0, v2, v11

    const/4 v0, 0x2

    const-string v1, "date"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string/jumbo v1, "read"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "appid"

    aput-object v12, v2, v0

    .line 128
    .local v2, projection:[Ljava/lang/String;
    const-string v5, "_id desc"

    .line 130
    .local v5, sortOrder:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/nttdocomo/android/areamail/provider/AreaMailDatabaseManager;->CONTENT_URI_MESSAGE:Landroid/net/Uri;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 131
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v7, messageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nttdocomo/android/areamail/provider/MessageInfo;>;"
    if-eqz v6, :cond_ac

    .line 133
    const-string v0, "areamail.provider"

    const-string v0, "AreaMailDatabaseManager.getMessageList It succeeded in acquiring the cursor"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 136
    const-string v0, "areamail.provider"

    const-string v0, "AreaMailDatabaseManager.getMessageList It moved to the head of the cursor"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_5c
    new-instance v8, Lcom/nttdocomo/android/areamail/provider/MessageInfo;

    invoke-direct {v8}, Lcom/nttdocomo/android/areamail/provider/MessageInfo;-><init>()V

    .line 140
    .local v8, messageinfo:Lcom/nttdocomo/android/areamail/provider/MessageInfo;
    const-string/jumbo v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/nttdocomo/android/areamail/provider/MessageInfo;->mTitle:Ljava/lang/String;

    .line 141
    const-string v0, "date"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/nttdocomo/android/areamail/provider/MessageInfo;->mDate:J

    .line 142
    const-string/jumbo v0, "read"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_aa

    move v0, v11

    :goto_88
    iput-boolean v0, v8, Lcom/nttdocomo/android/areamail/provider/MessageInfo;->mRead:Z

    .line 143
    const-string v0, "appid"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/nttdocomo/android/areamail/provider/MessageInfo;->mAppId:J

    .line 144
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 147
    .end local v8           #messageinfo:Lcom/nttdocomo/android/areamail/provider/MessageInfo;
    :cond_9f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 152
    :goto_a2
    const-string v0, "areamail.provider"

    const-string v0, "AreaMailDatabaseManager.getMessageList:exit"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-object v7

    .restart local v8       #messageinfo:Lcom/nttdocomo/android/areamail/provider/MessageInfo;
    :cond_aa
    move v0, v10

    .line 142
    goto :goto_88

    .line 149
    .end local v8           #messageinfo:Lcom/nttdocomo/android/areamail/provider/MessageInfo;
    :cond_ac
    const-string v0, "areamail.provider"

    const-string v0, "AreaMailDatabaseManager.getMessageList It failed in the acquisition of the cursor"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a2
.end method

.method public static getReceiveEntryList(Landroid/content/Context;)Ljava/util/List;
    .registers 13
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/android/areamail/provider/ReceiveEntryInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-string/jumbo v11, "text"

    const-string/jumbo v10, "messageid"

    const-string v9, "areamail.provider"

    .line 369
    const-string v0, "areamail.provider"

    const-string v0, "AreaMailDatabaseManager.getReceiveEntryList:enter"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    if-nez p0, :cond_1a

    .line 371
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The parameter is illegal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_1a
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "messageid"

    aput-object v10, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v1, "text"

    aput-object v11, v2, v0

    .line 376
    .local v2, projection:[Ljava/lang/String;
    const-string v5, "_id asc"

    .line 378
    .local v5, sortOrder:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/nttdocomo/android/areamail/provider/AreaMailDatabaseManager;->CONTENT_URI_RECEIVE_ENTRY:Landroid/net/Uri;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 379
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v8, receiveEntryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/nttdocomo/android/areamail/provider/ReceiveEntryInfo;>;"
    if-eqz v6, :cond_89

    .line 382
    const-string v0, "areamail.provider"

    const-string v0, "AreaMailDatabaseManager.getReceiveEntryList It succeeded in acquiring the cursor"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 385
    const-string v0, "areamail.provider"

    const-string v0, "AreaMailDatabaseManager.getReceiveEntryList It moved to the head of the cursor"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_56
    new-instance v7, Lcom/nttdocomo/android/areamail/provider/ReceiveEntryInfo;

    invoke-direct {v7}, Lcom/nttdocomo/android/areamail/provider/ReceiveEntryInfo;-><init>()V

    .line 389
    .local v7, receiveEntryInfo:Lcom/nttdocomo/android/areamail/provider/ReceiveEntryInfo;
    const-string/jumbo v0, "messageid"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lcom/nttdocomo/android/areamail/provider/ReceiveEntryInfo;->mMessageId:I

    .line 390
    const-string/jumbo v0, "text"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/nttdocomo/android/areamail/provider/ReceiveEntryInfo;->mText:Ljava/lang/String;

    .line 391
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_56

    .line 394
    .end local v7           #receiveEntryInfo:Lcom/nttdocomo/android/areamail/provider/ReceiveEntryInfo;
    :cond_7e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 398
    :goto_81
    const-string v0, "areamail.provider"

    const-string v0, "AreaMailDatabaseManager.getReceiveEntryList:exit"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return-object v8

    .line 396
    :cond_89
    const-string v0, "areamail.provider"

    const-string v0, "AreaMailDatabaseManager.getReceiveEntryList It failed in the acquisition of the cursor"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81
.end method

.method public static getUnreadCount(Landroid/content/Context;)I
    .registers 11
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const-string v9, "AreaMailDatabaseManager.getUnreadCount:exit"

    const-string v8, "areamail.provider"

    .line 196
    const-string v0, "areamail.provider"

    const-string v0, "AreaMailDatabaseManager.getUnreadCount:enter"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    if-nez p0, :cond_16

    .line 198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The parameter is illegal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_16
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 203
    .local v2, projection:[Ljava/lang/String;
    const-string/jumbo v3, "read=0"

    .line 205
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/nttdocomo/android/areamail/provider/AreaMailDatabaseManager;->CONTENT_URI_MESSAGE:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 206
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_5d

    .line 207
    const-string v0, "areamail.provider"

    const-string v0, "AreaMailDatabaseManager.getUnreadCount It succeeded in acquiring the cursor"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 209
    .local v6, count:I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 210
    const-string v0, "areamail.provider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AreaMailDatabaseManager.getUnreadCount Number of unread records: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v0, "areamail.provider"

    const-string v0, "AreaMailDatabaseManager.getUnreadCount:exit"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 216
    .end local v6           #count:I
    :goto_5c
    return v0

    .line 214
    :cond_5d
    const-string v0, "areamail.provider"

    const-string v0, "AreaMailDatabaseManager.getUnreadCount It failed in the acquisition of the cursor"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string v0, "areamail.provider"

    const-string v0, "AreaMailDatabaseManager.getUnreadCount:exit"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v0, -0x1

    goto :goto_5c
.end method

.method public static getUnreadLatestTime(Landroid/content/Context;)J
    .registers 13
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const-string v11, "date"

    const-string v10, "AreaMailDatabaseManager.getUnreadLatestTime:exit"

    const-string v9, "areamail.provider"

    .line 227
    const-string v0, "areamail.provider"

    const-string v0, "AreaMailDatabaseManager.getUnreadLatestTime:enter"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    if-nez p0, :cond_18

    .line 229
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The parameter is illegal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_18
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "date"

    aput-object v11, v2, v0

    .line 234
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "_id=(select max(_id) from message where read=0)"

    .line 236
    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/nttdocomo/android/areamail/provider/AreaMailDatabaseManager;->CONTENT_URI_MESSAGE:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 238
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_76

    .line 239
    const-string v0, "areamail.provider"

    const-string v0, "AreaMailDatabaseManager.getUnreadLatestTime It succeeded in acquiring the cursor"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-wide/16 v7, 0x0

    .line 243
    .local v7, latestTime:J
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 244
    const-string v0, "date"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 245
    const-string v0, "areamail.provider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AreaMailDatabaseManager.getUnreadLatestTime The latest reception date: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_6a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 248
    const-string v0, "areamail.provider"

    const-string v0, "AreaMailDatabaseManager.getUnreadLatestTime:exit"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, v7

    .line 253
    .end local v7           #latestTime:J
    :goto_75
    return-wide v0

    .line 251
    :cond_76
    const-string v0, "areamail.provider"

    const-string v0, "AreaMailDatabaseManager.getUnreadLatestTime It failed in the acquisition of the cursor"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const-string v0, "areamail.provider"

    const-string v0, "AreaMailDatabaseManager.getUnreadLatestTime:exit"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-wide/16 v0, 0x0

    goto :goto_75
.end method

.method public static setReadStatus(Landroid/content/Context;J)I
    .registers 11
    .parameter "context"
    .parameter "appId"

    .prologue
    const-string v7, "areamail.provider"

    .line 164
    const-string v4, "areamail.provider"

    const-string v4, "AreaMailDatabaseManager.setReadStatus:enter"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    if-eqz p0, :cond_11

    const-wide/16 v4, 0x1

    cmp-long v4, p1, v4

    if-gez v4, :cond_19

    .line 166
    :cond_11
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The parameter is illegal"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 169
    :cond_19
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 170
    .local v3, values:Landroid/content/ContentValues;
    const-string/jumbo v4, "read"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, selection:Ljava/lang/String;
    const/4 v0, 0x0

    .line 175
    .local v0, count:I
    :try_start_41
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/nttdocomo/android/areamail/provider/AreaMailDatabaseManager;->CONTENT_URI_MESSAGE:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v2, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 176
    const-string v4, "areamail.provider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AreaMailDatabaseManager.setReadStatus Number of renewed records: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_41 .. :try_end_64} :catch_6c
    .catch Landroid/database/SQLException; {:try_start_41 .. :try_end_64} :catch_76

    .line 185
    const-string v4, "areamail.provider"

    const-string v4, "AreaMailDatabaseManager.setReadStatus:exit"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return v0

    .line 177
    :catch_6c
    move-exception v4

    move-object v1, v4

    .line 178
    .local v1, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    const-string v4, "areamail.provider"

    const-string v4, "AreaMailDatabaseManager.setReadStatus SQLite database file is corrupt"

    invoke-static {v7, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    throw v1

    .line 180
    .end local v1           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catch_76
    move-exception v4

    move-object v1, v4

    .line 181
    .local v1, e:Landroid/database/SQLException;
    const-string v4, "areamail.provider"

    const-string v4, "AreaMailDatabaseManager.setReadStatus It failed in the renewal of the record"

    invoke-static {v7, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    throw v1
.end method

.method public static updateReceiveEntry(Landroid/content/Context;IILjava/lang/String;)I
    .registers 12
    .parameter "context"
    .parameter "oldMessageId"
    .parameter "newMessageId"
    .parameter "text"

    .prologue
    const/4 v5, 0x1

    const-string v7, "areamail.provider"

    .line 412
    const-string v4, "areamail.provider"

    const-string v4, "AreaMailDatabaseManager.updateReceiveEntry:enter"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    if-eqz p0, :cond_12

    if-lt p1, v5, :cond_12

    if-lt p2, v5, :cond_12

    if-nez p3, :cond_1a

    .line 415
    :cond_12
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The parameter is illegal"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 418
    :cond_1a
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 419
    .local v3, values:Landroid/content/ContentValues;
    const-string/jumbo v4, "messageid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 420
    const-string/jumbo v4, "text"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "messageid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 422
    .local v2, selection:Ljava/lang/String;
    const/4 v0, 0x0

    .line 425
    .local v0, count:I
    :try_start_48
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/nttdocomo/android/areamail/provider/AreaMailDatabaseManager;->CONTENT_URI_RECEIVE_ENTRY:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v2, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 426
    const-string v4, "areamail.provider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AreaMailDatabaseManager.updateReceiveEntry Number of renewed records: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_48 .. :try_end_6b} :catch_73
    .catch Landroid/database/SQLException; {:try_start_48 .. :try_end_6b} :catch_7d

    .line 435
    const-string v4, "areamail.provider"

    const-string v4, "AreaMailDatabaseManager.updateReceiveEntry:exit"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    return v0

    .line 427
    :catch_73
    move-exception v4

    move-object v1, v4

    .line 428
    .local v1, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    const-string v4, "areamail.provider"

    const-string v4, "AreaMailDatabaseManager.updateReceiveEntry SQLite database file is corrupt"

    invoke-static {v7, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 429
    throw v1

    .line 430
    .end local v1           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catch_7d
    move-exception v4

    move-object v1, v4

    .line 431
    .local v1, e:Landroid/database/SQLException;
    const-string v4, "areamail.provider"

    const-string v4, "AreaMailDatabaseManager.updateReceiveEntry It failed in the renewal of the record"

    invoke-static {v7, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 432
    throw v1
.end method
