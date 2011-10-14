.class public Lcom/sec/android/app/twlauncher/LauncherProvider;
.super Landroid/content/ContentProvider;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/LauncherProvider$SqlArguments;,
        Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field static final CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const-string v0, "content://com.sec.android.app.twlauncher.settings/appWidgetReset"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/twlauncher/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 1467
    return-void
.end method

.method static buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 4
    .parameter "column"
    .parameter "values"

    .prologue
    .line 1457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1458
    .local v1, selectWhere:Ljava/lang/StringBuilder;
    array-length v2, p1

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1459
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1460
    if-lez v0, :cond_0

    .line 1461
    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1458
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1464
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private sendNotify(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 197
    const-string v1, "notify"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, notify:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 201
    :cond_1
    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 8
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 153
    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 155
    .local v0, args:Lcom/sec/android/app/twlauncher/LauncherProvider$SqlArguments;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 156
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 158
    :try_start_0
    array-length v3, p2

    .line 159
    .local v3, numValues:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 160
    iget-object v4, v0, Lcom/sec/android/app/twlauncher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v6, p2, v2

    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 161
    const/4 v4, 0x0

    .line 165
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 169
    :goto_1
    return v4

    .line 159
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 168
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    .line 169
    array-length v4, p2

    goto :goto_1

    .line 165
    .end local v2           #i:I
    .end local v3           #numValues:I
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 174
    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 176
    .local v0, args:Lcom/sec/android/app/twlauncher/LauncherProvider$SqlArguments;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 177
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/sec/android/app/twlauncher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/sec/android/app/twlauncher/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 178
    .local v1, count:I
    if-lez v1, :cond_0

    .line 179
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    .line 181
    :cond_0
    return v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 113
    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, v1, v1}, Lcom/sec/android/app/twlauncher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 114
    .local v0, args:Lcom/sec/android/app/twlauncher/LauncherProvider$SqlArguments;
    iget-object v1, v0, Lcom/sec/android/app/twlauncher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.dir/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.item/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/android/app/twlauncher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    const/4 v6, 0x0

    .line 138
    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 140
    .local v0, args:Lcom/sec/android/app/twlauncher/LauncherProvider$SqlArguments;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 141
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v4, v0, Lcom/sec/android/app/twlauncher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v4, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 142
    .local v2, rowId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    move-object v4, v6

    .line 148
    :goto_0
    return-object v4

    .line 145
    :cond_0
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 146
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    move-object v4, p1

    .line 148
    goto :goto_0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 107
    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 125
    new-instance v8, Lcom/sec/android/app/twlauncher/LauncherProvider$SqlArguments;

    invoke-direct {v8, p1, p3, p4}, Lcom/sec/android/app/twlauncher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 126
    .local v8, args:Lcom/sec/android/app/twlauncher/LauncherProvider$SqlArguments;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 127
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v2, v8, Lcom/sec/android/app/twlauncher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 129
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 130
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v8, Lcom/sec/android/app/twlauncher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v8, Lcom/sec/android/app/twlauncher/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    move-object v2, p2

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 131
    .local v9, result:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 133
    return-object v9
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 186
    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/sec/android/app/twlauncher/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 188
    .local v0, args:Lcom/sec/android/app/twlauncher/LauncherProvider$SqlArguments;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 189
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/sec/android/app/twlauncher/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/sec/android/app/twlauncher/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 190
    .local v1, count:I
    if-lez v1, :cond_0

    .line 191
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    .line 193
    :cond_0
    return v1
.end method
