.class public Landroid/database/sqlite/SQLiteDirectCursorDriver;
.super Ljava/lang/Object;
.source "SQLiteDirectCursorDriver.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteCursorDriver;


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mEditTable:Ljava/lang/String;

.field private mQuery:Landroid/database/sqlite/SQLiteQuery;

.field private mSql:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "db"
    .parameter "sql"
    .parameter "editTable"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 36
    iput-object p3, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mEditTable:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public cursorClosed()V
    .registers 2

    .prologue
    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursor:Landroid/database/Cursor;

    .line 77
    return-void
.end method

.method public cursorDeactivated()V
    .registers 1

    .prologue
    .line 96
    return-void
.end method

.method public cursorRequeried(Landroid/database/Cursor;)V
    .registers 2
    .parameter "cursor"

    .prologue
    .line 100
    return-void
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9
    .parameter "factory"
    .parameter "selectionArgs"

    .prologue
    const/4 v5, 0x0

    .line 42
    new-instance v2, Landroid/database/sqlite/SQLiteQuery;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, p2}, Landroid/database/sqlite/SQLiteQuery;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I[Ljava/lang/String;)V

    .line 46
    .local v2, query:Landroid/database/sqlite/SQLiteQuery;
    if-nez p2, :cond_1c

    move v1, v5

    .line 52
    .local v1, numArgs:I
    :goto_d
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    if-ge v0, v1, :cond_2e

    .line 53
    :try_start_10
    aget-object v3, p2, v0

    if-nez v3, :cond_1f

    .line 54
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQuery;->bindNull(I)V

    .line 52
    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 46
    .end local v0           #i:I
    .end local v1           #numArgs:I
    :cond_1c
    array-length v3, p2

    move v1, v3

    goto :goto_d

    .line 56
    .restart local v0       #i:I
    .restart local v1       #numArgs:I
    :cond_1f
    add-int/lit8 v3, v0, 0x1

    aget-object v4, p2, v0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteQuery;->bindString(ILjava/lang/String;)V
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_27

    goto :goto_19

    .line 71
    .end local v0           #i:I
    .end local v1           #numArgs:I
    :catchall_27
    move-exception v3

    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteQuery;->close()V

    :cond_2d
    throw v3

    .line 60
    .restart local v0       #i:I
    .restart local v1       #numArgs:I
    :cond_2e
    if-nez p1, :cond_44

    .line 61
    :try_start_30
    new-instance v3, Landroid/database/sqlite/SQLiteCursor;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v5, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mEditTable:Ljava/lang/String;

    invoke-direct {v3, v4, p0, v5, v2}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    iput-object v3, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursor:Landroid/database/Cursor;

    .line 66
    :goto_3b
    iput-object v2, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    .line 67
    const/4 v2, 0x0

    .line 68
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursor:Landroid/database/Cursor;
    :try_end_40
    .catchall {:try_start_30 .. :try_end_40} :catchall_27

    .line 71
    if-eqz v2, :cond_43

    throw v2

    :cond_43
    return-object v3

    .line 63
    :cond_44
    :try_start_44
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mEditTable:Ljava/lang/String;

    invoke-interface {p1, v3, p0, v4, v2}, Landroid/database/sqlite/SQLiteDatabase$CursorFactory;->newCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursor:Landroid/database/Cursor;
    :try_end_4e
    .catchall {:try_start_44 .. :try_end_4e} :catchall_27

    goto :goto_3b
.end method

.method public setBindArguments([Ljava/lang/String;)V
    .registers 7
    .parameter "bindArgs"

    .prologue
    .line 80
    array-length v1, p1

    .line 86
    .local v1, numArgs:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v1, :cond_1c

    .line 87
    aget-object v2, p1, v0

    if-nez v2, :cond_12

    .line 88
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQuery;->bindNull(I)V

    .line 86
    :goto_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 90
    :cond_12
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    add-int/lit8 v3, v0, 0x1

    aget-object v4, p1, v0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteQuery;->bindString(ILjava/lang/String;)V

    goto :goto_f

    .line 92
    :cond_1c
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteDirectCursorDriver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
