.class public Lcom/android/mms/model/AudioModel;
.super Lcom/android/mms/model/MediaModel;
.source "AudioModel.java"


# instance fields
.field private final mExtras:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, v1, v1, p2}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 58
    invoke-direct {p0, p2}, Lcom/android/mms/model/AudioModel;->initModelFromUri(Landroid/net/Uri;)V

    .line 60
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 61
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/mms/model/ContentRestriction;->checkAudioContentType(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 6
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 65
    const-string v2, "audio"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/MediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/AudioModel;->mExtras:Ljava/util/HashMap;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;)V
    .locals 6
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "wrapper"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/drm/mobile2/OMADRMException;
        }
    .end annotation

    .prologue
    .line 71
    const-string v2, "audio"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/MediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;)V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/AudioModel;->mExtras:Ljava/util/HashMap;

    .line 73
    return-void
.end method

.method private initModelFromUri(Landroid/net/Uri;)V
    .locals 18
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 77
    const-string v2, "Mms/media"

    const-string v3, "Uri is null !!!"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v17

    .line 83
    .local v17, scheme:Ljava/lang/String;
    const-string v2, "content"

    move-object v0, v2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 85
    .local v3, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    move-object v2, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 87
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_7

    .line 89
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 91
    invoke-static/range {p1 .. p1}, Lcom/android/mms/model/AudioModel;->isMmsUri(Landroid/net/Uri;)Z

    move-result v14

    .line 96
    .local v14, isFromMms:Z
    if-eqz v14, :cond_2

    .line 97
    const-string v2, "_data"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 98
    .local v16, path:Ljava/lang/String;
    const-string v2, "ct"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 115
    .end local v3           #cr:Landroid/content/ContentResolver;
    :cond_1
    :goto_1
    const/16 v2, 0x2f

    move-object/from16 v0, v16

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v16

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    move-object v2, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 118
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "Type of media is unknown."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .end local v14           #isFromMms:Z
    .end local v16           #path:Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 100
    .restart local v3       #cr:Landroid/content/ContentResolver;
    .restart local v14       #isFromMms:Z
    :cond_2
    :try_start_1
    const-string v2, "_data"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 101
    .restart local v16       #path:Ljava/lang/String;
    const-string v2, "mime_type"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 105
    const-string v2, "album"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 106
    .local v9, album:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/AudioModel;->mExtras:Ljava/util/HashMap;

    move-object v2, v0

    const-string v3, "album"

    .end local v3           #cr:Landroid/content/ContentResolver;
    invoke-virtual {v2, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_3
    const-string v2, "artist"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 111
    .local v10, artist:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/AudioModel;->mExtras:Ljava/util/HashMap;

    move-object v2, v0

    const-string v3, "artist"

    invoke-virtual {v2, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 127
    .end local v9           #album:Ljava/lang/String;
    .end local v10           #artist:Ljava/lang/String;
    .end local v14           #isFromMms:Z
    .end local v16           #path:Ljava/lang/String;
    .restart local v3       #cr:Landroid/content/ContentResolver;
    :cond_4
    new-instance v2, Lcom/google/android/mms/MmsException;

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #cr:Landroid/content/ContentResolver;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Nothing found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    .restart local v14       #isFromMms:Z
    .restart local v16       #path:Ljava/lang/String;
    :cond_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 175
    .end local v14           #isFromMms:Z
    :cond_6
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/model/AudioModel;->initMediaDuration()V

    goto/16 :goto_0

    .line 133
    .end local v16           #path:Ljava/lang/String;
    .restart local v3       #cr:Landroid/content/ContentResolver;
    :cond_7
    new-instance v2, Lcom/google/android/mms/MmsException;

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #cr:Landroid/content/ContentResolver;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 135
    .end local v11           #c:Landroid/database/Cursor;
    :cond_8
    const-string v2, "file"

    move-object v0, v2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 136
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v15

    .line 138
    .local v15, mimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v16

    .line 139
    .restart local v16       #path:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/mms/util/MessageMimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 140
    .local v13, extension:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 141
    const/16 v2, 0x2e

    move-object/from16 v0, v16

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    .line 142
    .local v12, dotPos:I
    if-ltz v12, :cond_9

    .line 143
    add-int/lit8 v2, v12, 0x1

    move-object/from16 v0, v16

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 146
    .end local v12           #dotPos:I
    :cond_9
    const/16 v2, 0x2f

    move-object/from16 v0, v16

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v16

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 149
    .restart local v3       #cr:Landroid/content/ContentResolver;
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_data=\""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 152
    .restart local v11       #c:Landroid/database/Cursor;
    if-eqz v11, :cond_b

    .line 154
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 155
    const-string v2, "mime_type"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 158
    :cond_a
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 162
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    move-object v2, v0

    if-nez v2, :cond_c

    .line 163
    invoke-virtual {v15, v13}, Lcom/android/mms/util/MessageMimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 165
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    move-object v2, v0

    if-nez v2, :cond_6

    goto/16 :goto_2

    .line 158
    :catchall_1
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 173
    .end local v3           #cr:Landroid/content/ContentResolver;
    .end local v11           #c:Landroid/database/Cursor;
    .end local v13           #extension:Ljava/lang/String;
    .end local v15           #mimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;
    .end local v16           #path:Ljava/lang/String;
    :cond_d
    new-instance v2, Lcom/google/android/mms/MmsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public checkContentRestriction()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 214
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/mms/model/ContentRestriction;->checkAudioContentType(Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public checkCreationMode()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 220
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/mms/model/ContentRestriction;->checkAudioCreationMode(Ljava/lang/String;I)V

    .line 222
    return-void
.end method

.method public getExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/mms/model/AudioModel;->mExtras:Ljava/util/HashMap;

    return-object v0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 3
    .parameter "evt"

    .prologue
    .line 184
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, evtType:Ljava/lang/String;
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->NO_ACTIVE_ACTION:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 190
    .local v0, action:Lcom/android/mms/model/MediaModel$MediaAction;
    const-string v2, "SmilMediaStart"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 204
    .end local p1
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/mms/model/AudioModel;->appendAction(Lcom/android/mms/model/MediaModel$MediaAction;)V

    .line 205
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/mms/model/AudioModel;->notifyModelChanged(Z)V

    .line 206
    return-void

    .line 195
    .restart local p1
    :cond_1
    const-string v2, "SmilMediaEnd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 196
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    goto :goto_0

    .line 197
    :cond_2
    const-string v2, "SmilMediaPause"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 198
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    goto :goto_0

    .line 199
    :cond_3
    const-string v2, "SmilMediaSeek"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->SEEK:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 201
    check-cast p1, Lcom/android/mms/dom/events/EventImpl;

    .end local p1
    invoke-virtual {p1}, Lcom/android/mms/dom/events/EventImpl;->getSeekTo()I

    move-result v2

    iput v2, p0, Lcom/android/mms/model/MediaModel;->mSeekTo:I

    goto :goto_0
.end method

.method protected isPlayable()Z
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x1

    return v0
.end method
