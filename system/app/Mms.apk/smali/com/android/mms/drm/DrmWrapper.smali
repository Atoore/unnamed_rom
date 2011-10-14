.class public Lcom/android/mms/drm/DrmWrapper;
.super Ljava/lang/Object;
.source "DrmWrapper.java"


# instance fields
.field private mContentType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mData:[B

.field private final mDataUri:Landroid/net/Uri;

.field private mDecryptedData:[B

.field private mDrmConstrintsInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;

.field public mDrmFileName:Ljava/lang/String;

.field public mDrmFilePath:Ljava/lang/String;

.field private mDrmManager:Landroid/drm/mobile2/OMADRMManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;)V
    .locals 20
    .parameter "drmContentType"
    .parameter "context"
    .parameter "part"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/drm/DrmWrapper;->mData:[B

    .line 84
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    .line 85
    const-string v3, "DrmWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DrmWrapper : mDataUri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/drm/DrmWrapper;->mContext:Landroid/content/Context;

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 90
    .local v4, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 92
    .local v10, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 93
    const-string v3, "_data"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    .line 94
    const-string v3, "name"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/drm/DrmWrapper;->mDrmFileName:Ljava/lang/String;

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFileName:Ljava/lang/String;

    move-object v3, v0

    if-nez v3, :cond_0

    .line 96
    const-string v3, "cl"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/drm/DrmWrapper;->mDrmFileName:Ljava/lang/String;

    .line 98
    :cond_0
    const-string v3, "DrmWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DrmWrapper : DRM filepath ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v3, "DrmWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DrmWrapper : DRM fileName ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFileName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mData:[B

    move-object v3, v0

    if-nez v3, :cond_3

    .line 101
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Content-Type or data may not be null."

    .end local v4           #cr:Landroid/content/ContentResolver;
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :catchall_0
    move-exception v3

    if-eqz v10, :cond_2

    .line 162
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3

    .line 105
    .restart local v4       #cr:Landroid/content/ContentResolver;
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/drm/mobile2/OMADRMManager;->getInstance()Landroid/drm/mobile2/OMADRMManager;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/drm/DrmWrapper;->mDrmManager:Landroid/drm/mobile2/OMADRMManager;

    .line 108
    const/4 v12, 0x0

    .line 109
    .local v12, extension:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    move-object v3, v0

    const/16 v5, 0x2e

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v17

    .line 110
    .local v17, index:I
    if-ltz v17, :cond_4

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    move-object v3, v0

    add-int/lit8 v5, v17, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 113
    :cond_4
    const-string v3, "dm"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 114
    const/4 v11, 0x0

    .line 116
    .local v11, destfile:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmManager:Landroid/drm/mobile2/OMADRMManager;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v3, v5}, Landroid/drm/mobile2/OMADRMManager;->convertDM2DCF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 118
    if-eqz v11, :cond_a

    .line 120
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 121
    .local v6, values:Landroid/content/ContentValues;
    const/16 v18, 0x0

    .line 122
    .local v18, value1:Ljava/lang/Object;
    const/16 v19, 0x0

    .line 123
    .local v19, value2:Ljava/lang/Object;
    move-object/from16 v18, v11

    .line 124
    .local v18, value1:Ljava/lang/String;
    const-string v3, "cl"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 125
    .local v15, fileName:Ljava/lang/String;
    const/16 v16, 0x0

    .line 126
    .local v16, fileNameExtension:Ljava/lang/String;
    if-eqz v15, :cond_7

    .line 127
    const/16 v3, 0x2e

    invoke-virtual {v15, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    .line 128
    .local v13, extensionIndex:I
    if-ltz v13, :cond_5

    .line 129
    add-int/lit8 v3, v13, 0x1

    invoke-virtual {v15, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 132
    :cond_5
    const-string v3, "dm"

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 133
    const-string v16, "dcf"

    .line 135
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v15, v5, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 138
    .end local v13           #extensionIndex:I
    :cond_7
    move-object/from16 v19, v15

    .line 139
    .local v19, value2:Ljava/lang/String;
    const-string v3, "_data"

    check-cast v18, Ljava/lang/String;

    .end local v18           #value1:Ljava/lang/String;
    move-object v0, v6

    move-object v1, v3

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v3, "cl"

    check-cast v19, Ljava/lang/String;

    .end local v19           #value2:Ljava/lang/String;
    move-object v0, v6

    move-object v1, v3

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    move-object v5, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 142
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    move-object v3, v0

    invoke-direct {v14, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    .local v14, file:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 145
    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    .line 147
    const-string v3, "DrmWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #cr:Landroid/content/ContentResolver;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " destfile path!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .end local v6           #values:Landroid/content/ContentValues;
    .end local v11           #destfile:Ljava/lang/String;
    .end local v14           #file:Ljava/io/File;
    .end local v15           #fileName:Ljava/lang/String;
    .end local v16           #fileNameExtension:Ljava/lang/String;
    :cond_8
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmManager:Landroid/drm/mobile2/OMADRMManager;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/drm/mobile2/OMADRMManager;->addDrmFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 155
    const-string v3, "DrmWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " register success!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/drm/DrmWrapper;->installRights()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    if-eqz v10, :cond_9

    .line 162
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 166
    :cond_9
    return-void

    .line 149
    .restart local v4       #cr:Landroid/content/ContentResolver;
    .restart local v11       #destfile:Ljava/lang/String;
    :cond_a
    :try_start_2
    const-string v3, "DrmWrapper"

    const-string v4, " destfile null !!"

    .end local v4           #cr:Landroid/content/ContentResolver;
    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    .end local v11           #destfile:Ljava/lang/String;
    :cond_b
    const-string v3, "DrmWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " register fail!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private getPermission()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    const-string v1, "DrmWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPermission : DRM filepath ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v2, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/drm/mobile2/OMADRMManager;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, contentType:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    :cond_0
    const/4 v1, 0x1

    .line 191
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private installRights()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/mms/drm/DrmWrapper;->getPermission()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/drm/mobile2/OMADRMManager;->hasValidRights(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 170
    const-string v0, "DrmWrapper"

    const-string v1, "private installRights : hasValidRights() == SISO_DRM_RESULT_SUCCESS."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/mms/drm/DrmWrapper;->isRightsInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    :cond_0
    return-void
.end method


# virtual methods
.method public consumeRights()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const-string v2, "DrmWrapper"

    .line 231
    const-string v0, "DrmWrapper"

    const-string v0, "consumeRights : DRM consumeRightStart~!!"

    invoke-static {v2, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/android/mms/drm/DrmWrapper;->isGetRightFromBrowser()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmConstrintsInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmConstrintsInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;

    iget-object v0, v0, Landroid/drm/mobile2/OMADRMConstraintsInfo;->drmArrayRightsObj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const-string v0, "DrmWrapper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "consumeRights : DRM filepath ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/mms/drm/DrmWrapper;->getPermission()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/drm/mobile2/OMADRMManager;->consumeDrmRights(Ljava/lang/String;I)I

    move v0, v3

    .line 251
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 243
    goto :goto_0

    .line 246
    :cond_1
    const-string v0, "DrmWrapper"

    const-string v0, "consumeRights : mDrmConstrintsInfo is null"

    invoke-static {v2, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 247
    goto :goto_0

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/mms/drm/DrmWrapper;->getPermission()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/drm/mobile2/OMADRMManager;->consumeDrmRights(Ljava/lang/String;I)I

    move v0, v3

    .line 251
    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    const-string v0, "DrmWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getContentType : DRM filepath ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/drm/mobile2/OMADRMManager;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mContentType:Ljava/lang/String;

    .line 331
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getDecryptedData()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/android/mms/drm/DrmWrapper;->isGetRightFromBrowser()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 203
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmConstrintsInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmConstrintsInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;

    iget-object v1, v1, Landroid/drm/mobile2/OMADRMConstraintsInfo;->drmArrayRightsObj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    const-string v1, "DrmWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDecryptedData : DRM filepath ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v2, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/mms/drm/DrmWrapper;->getPermission()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/drm/mobile2/OMADRMManager;->getDecryptedContent(Ljava/lang/String;I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B

    if-eqz v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 209
    .local v0, decryptedData:[B
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B

    iget-object v2, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B

    array-length v2, v2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 220
    .end local v0           #decryptedData:[B
    :goto_0
    return-object v1

    :cond_1
    move-object v1, v5

    .line 212
    goto :goto_0

    .line 214
    :cond_2
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v2, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/mms/drm/DrmWrapper;->getPermission()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/drm/mobile2/OMADRMManager;->getDecryptedContent(Ljava/lang/String;I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B

    .line 215
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B

    if-eqz v1, :cond_3

    .line 216
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 217
    .restart local v0       #decryptedData:[B
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B

    iget-object v2, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B

    array-length v2, v2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 218
    goto :goto_0

    .end local v0           #decryptedData:[B
    :cond_3
    move-object v1, v5

    .line 220
    goto :goto_0
.end method

.method public getOriginalData()[B
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mData:[B

    return-object v0
.end method

.method public getOriginalUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 335
    const-string v0, "DrmWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DrmWrapper : mDataUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/android/mms/drm/DrmWrapper;->mDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isAllowedToForward()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 302
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v2, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/drm/mobile2/OMADRMManager;->getDrmFileInfo(Ljava/lang/String;)[I

    move-result-object v0

    .line 304
    .local v0, fileinfo:[I
    const-string v1, "DrmWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type of file is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const/4 v1, 0x3

    aget v2, v0, v4

    if-eq v1, v2, :cond_0

    .line 307
    const/4 v1, 0x0

    .line 309
    :goto_0
    return v1

    :cond_0
    move v1, v4

    goto :goto_0
.end method

.method public isGetRightFromBrowser()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 314
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v2, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/drm/mobile2/OMADRMManager;->getDrmFileInfo(Ljava/lang/String;)[I

    move-result-object v0

    .line 315
    .local v0, fileinfo:[I
    const-string v1, "DrmWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type of file is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const/4 v1, 0x3

    aget v2, v0, v4

    if-eq v1, v2, :cond_0

    const/4 v1, 0x2

    aget v2, v0, v4

    if-ne v1, v2, :cond_1

    :cond_0
    move v1, v4

    .line 320
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRightsInstalled(Ljava/lang/String;)Z
    .locals 7
    .parameter "drmFilePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v4, "DrmWrapper"

    .line 262
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmManager:Landroid/drm/mobile2/OMADRMManager;

    iget-object v2, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmFilePath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/mms/drm/DrmWrapper;->getPermission()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/drm/mobile2/OMADRMManager;->hasValidRights(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    .line 263
    invoke-virtual {p0}, Lcom/android/mms/drm/DrmWrapper;->isGetRightFromBrowser()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v6

    .line 292
    :goto_0
    return v1

    .line 267
    :cond_0
    :try_start_0
    const-string v1, "DrmWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRightsInstalled : DRM filepath ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmManager:Landroid/drm/mobile2/OMADRMManager;

    invoke-virtual {v1, p1}, Landroid/drm/mobile2/OMADRMManager;->queryRights(Ljava/lang/String;)Landroid/drm/mobile2/OMADRMConstraintsInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmConstrintsInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_1
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmConstrintsInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmConstrintsInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;

    iget-object v1, v1, Landroid/drm/mobile2/OMADRMConstraintsInfo;->drmArrayRightsObj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    const-string v1, "DrmWrapper"

    const-string v1, "isRightsInstalled : get mDecryptedData"

    invoke-static {v4, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmManager:Landroid/drm/mobile2/OMADRMManager;

    invoke-direct {p0}, Lcom/android/mms/drm/DrmWrapper;->getPermission()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/drm/mobile2/OMADRMManager;->getDecryptedContent(Ljava/lang/String;I)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDecryptedData:[B

    move v1, v6

    .line 276
    goto :goto_0

    .line 269
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 270
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DrmWrapper"

    const-string v1, "drm exception"

    invoke-static {v4, v1, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 279
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmConstrintsInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;

    if-nez v1, :cond_2

    .line 280
    const-string v1, "DrmWrapper"

    const-string v1, "isRightsInstalled : mDrmConstrintsInfo is null"

    invoke-static {v4, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v5

    .line 281
    goto :goto_0

    .line 284
    :cond_2
    iget-object v1, p0, Lcom/android/mms/drm/DrmWrapper;->mDrmConstrintsInfo:Landroid/drm/mobile2/OMADRMConstraintsInfo;

    iget-object v1, v1, Landroid/drm/mobile2/OMADRMConstraintsInfo;->drmArrayRightsObj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 286
    const-string v1, "DrmWrapper"

    const-string v1, "isRightsInstalled : drmArrayRightsObj.size() is 0"

    invoke-static {v4, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v5

    .line 287
    goto :goto_0

    :cond_3
    move v1, v5

    .line 292
    goto :goto_0
.end method
