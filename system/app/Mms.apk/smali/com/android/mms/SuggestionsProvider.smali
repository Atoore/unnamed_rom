.class public Lcom/android/mms/SuggestionsProvider;
.super Landroid/content/ContentProvider;
.source "SuggestionsProvider.java"


# static fields
.field private static final SUGGEST_COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 82
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/SuggestionsProvider;->SUGGEST_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 60
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 21
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 91
    const/4 v3, 0x0

    aget-object v3, p4, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    const/4 v3, 0x0

    .line 167
    :goto_0
    return-object v3

    .line 94
    :cond_0
    const/4 v3, 0x0

    aget-object v3, p4, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    .line 95
    .local v17, searchSuggest:Ljava/lang/String;
    const-string v3, "Mms/SuggestionsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query(),searchSuggest="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v3, "content://mms-sms/messages/bySearchSuggest?pattern=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v17, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 103
    .local v4, u:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const-string v6, "thread_id<>?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadIdStr()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 112
    .local v10, c:Landroid/database/Cursor;
    if-nez v10, :cond_1

    .line 113
    const-string v3, "Mms/SuggestionsProvider"

    const-string v4, "query(),return null"

    .end local v4           #u:Landroid/net/Uri;
    invoke-static {v3, v4}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const/4 v3, 0x0

    goto :goto_0

    .line 118
    .restart local v4       #u:Landroid/net/Uri;
    :cond_1
    new-instance v12, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/android/mms/SuggestionsProvider;->SUGGEST_COLUMNS:[Ljava/lang/String;

    invoke-direct {v12, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 121
    .local v12, cursor:Landroid/database/MatrixCursor;
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 130
    .local v11, count:I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 131
    const/4 v13, 0x0

    .end local v4           #u:Landroid/net/Uri;
    .local v13, i:I
    :goto_1
    if-ge v13, v11, :cond_4

    .line 132
    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 133
    .local v20, type:Ljava/lang/String;
    const/4 v3, 0x3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 134
    .local v19, text:Ljava/lang/String;
    const/4 v3, 0x4

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 136
    .local v18, subject:Ljava/lang/String;
    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 137
    move-object/from16 v14, v18

    .line 138
    .local v14, intentData:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09019a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    .line 143
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mms-sms/search?pattern="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 145
    const-string v3, "wpm"

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/SuggestionsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f09019f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 155
    .local v9, address:Ljava/lang/String;
    :goto_3
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v9, v3, v4

    const/4 v4, 0x2

    aput-object v19, v3, v4

    const/4 v4, 0x3

    aput-object v14, v3, v4

    invoke-virtual {v12, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 159
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 131
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 141
    .end local v9           #address:Ljava/lang/String;
    .end local v14           #intentData:Ljava/lang/String;
    :cond_2
    move-object/from16 v14, v19

    .restart local v14       #intentData:Ljava/lang/String;
    goto :goto_2

    .line 149
    :cond_3
    const/4 v3, 0x6

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 150
    .local v15, recipient_ids:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v15, v3}, Lcom/android/mms/data/ContactList;->getByIds(Ljava/lang/String;Z)Lcom/android/mms/data/ContactList;

    move-result-object v16

    .line 151
    .local v16, recipients:Lcom/android/mms/data/ContactList;
    const-string v3, ", "

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->formattedNames(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .restart local v9       #address:Ljava/lang/String;
    goto :goto_3

    .line 162
    .end local v9           #address:Ljava/lang/String;
    .end local v14           #intentData:Ljava/lang/String;
    .end local v15           #recipient_ids:Ljava/lang/String;
    .end local v16           #recipients:Lcom/android/mms/data/ContactList;
    .end local v18           #subject:Ljava/lang/String;
    .end local v19           #text:Ljava/lang/String;
    .end local v20           #type:Ljava/lang/String;
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 163
    const/4 v10, 0x0

    .line 166
    const-string v3, "Mms/SuggestionsProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query(),return cursor, rows="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Landroid/database/MatrixCursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v12

    .line 167
    goto/16 :goto_0

    .line 162
    .end local v11           #count:I
    .end local v13           #i:I
    :catchall_0
    move-exception v3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 163
    const/4 v10, 0x0

    throw v3
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method
