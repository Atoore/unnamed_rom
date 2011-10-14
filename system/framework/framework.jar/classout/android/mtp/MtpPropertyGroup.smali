.class Landroid/mtp/MtpPropertyGroup;
.super Ljava/lang/Object;
.source "MtpPropertyGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpPropertyGroup$Property;
    }
.end annotation


# static fields
.field private static final ID_FORMAT_WHERE:Ljava/lang/String; = "_id=? AND format=?"

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field private static final PARENT_FORMAT_WHERE:Ljava/lang/String; = "parent=? AND format=?"

.field private static final PARENT_WHERE:Ljava/lang/String; = "parent=?"

.field private static final TAG:Ljava/lang/String; = "MtpPropertyGroup"


# instance fields
.field private mColumns:[Ljava/lang/String;

.field private final mDatabase:Landroid/mtp/MtpDatabase;

.field private final mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

.field private final mProvider:Landroid/content/IContentProvider;

.field private final mUri:Landroid/net/Uri;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;[I)V
    .registers 10
    .parameter "database"
    .parameter "provider"
    .parameter "volume"
    .parameter "properties"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Landroid/mtp/MtpPropertyGroup;->mDatabase:Landroid/mtp/MtpDatabase;

    .line 72
    iput-object p2, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    .line 73
    iput-object p3, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    .line 74
    invoke-static {p3}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    .line 76
    array-length v1, p4

    .line 77
    .local v1, count:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    .local v0, columns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "_id"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    new-array v3, v1, [Landroid/mtp/MtpPropertyGroup$Property;

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    .line 81
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1f
    if-ge v2, v1, :cond_2e

    .line 82
    iget-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    aget v4, p4, v2

    invoke-direct {p0, v4, v0}, Landroid/mtp/MtpPropertyGroup;->createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;

    move-result-object v4

    aput-object v4, v3, v2

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 84
    :cond_2e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 85
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    .line 86
    const/4 v2, 0x0

    :goto_37
    if-ge v2, v1, :cond_46

    .line 87
    iget-object v4, p0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v4, v2

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 89
    :cond_46
    return-void
.end method

.method private createProperty(ILjava/util/ArrayList;)Landroid/mtp/MtpPropertyGroup$Property;
    .registers 8
    .parameter "code"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/mtp/MtpPropertyGroup$Property;"
        }
    .end annotation

    .prologue
    .line 92
    .local p2, columns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 95
    .local v0, column:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_98

    .line 175
    const/4 v1, 0x0

    .line 176
    .local v1, type:I
    const-string v2, "MtpPropertyGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unsupported property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_1e
    if-eqz v0, :cond_91

    .line 181
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    .line 184
    :goto_2e
    return-object v2

    .line 98
    .end local v1           #type:I
    :sswitch_2f
    const/4 v1, 0x6

    .line 99
    .restart local v1       #type:I
    goto :goto_1e

    .line 101
    .end local v1           #type:I
    :sswitch_31
    const-string v0, "format"

    .line 102
    const/4 v1, 0x4

    .line 103
    .restart local v1       #type:I
    goto :goto_1e

    .line 106
    .end local v1           #type:I
    :sswitch_35
    const/4 v1, 0x4

    .line 107
    .restart local v1       #type:I
    goto :goto_1e

    .line 109
    .end local v1           #type:I
    :sswitch_37
    const-string v0, "_size"

    .line 110
    const/16 v1, 0x8

    .line 111
    .restart local v1       #type:I
    goto :goto_1e

    .line 113
    .end local v1           #type:I
    :sswitch_3c
    const-string v0, "_data"

    .line 114
    const v1, 0xffff

    .line 115
    .restart local v1       #type:I
    goto :goto_1e

    .line 117
    .end local v1           #type:I
    :sswitch_42
    const-string/jumbo v0, "title"

    .line 118
    const v1, 0xffff

    .line 119
    .restart local v1       #type:I
    goto :goto_1e

    .line 121
    .end local v1           #type:I
    :sswitch_49
    const-string v0, "date_modified"

    .line 122
    const v1, 0xffff

    .line 123
    .restart local v1       #type:I
    goto :goto_1e

    .line 125
    .end local v1           #type:I
    :sswitch_4f
    const-string v0, "date_added"

    .line 126
    const v1, 0xffff

    .line 127
    .restart local v1       #type:I
    goto :goto_1e

    .line 129
    .end local v1           #type:I
    :sswitch_55
    const-string/jumbo v0, "year"

    .line 130
    const v1, 0xffff

    .line 131
    .restart local v1       #type:I
    goto :goto_1e

    .line 133
    .end local v1           #type:I
    :sswitch_5c
    const-string/jumbo v0, "parent"

    .line 134
    const/4 v1, 0x6

    .line 135
    .restart local v1       #type:I
    goto :goto_1e

    .line 138
    .end local v1           #type:I
    :sswitch_61
    const/16 v1, 0xa

    .line 139
    .restart local v1       #type:I
    goto :goto_1e

    .line 141
    .end local v1           #type:I
    :sswitch_64
    const-string v0, "duration"

    .line 142
    const/4 v1, 0x6

    .line 143
    .restart local v1       #type:I
    goto :goto_1e

    .line 145
    .end local v1           #type:I
    :sswitch_68
    const-string/jumbo v0, "track"

    .line 146
    const/4 v1, 0x4

    .line 147
    .restart local v1       #type:I
    goto :goto_1e

    .line 149
    .end local v1           #type:I
    :sswitch_6d
    const-string v0, "_display_name"

    .line 150
    const v1, 0xffff

    .line 151
    .restart local v1       #type:I
    goto :goto_1e

    .line 153
    .end local v1           #type:I
    :sswitch_73
    const v1, 0xffff

    .line 154
    .restart local v1       #type:I
    goto :goto_1e

    .line 156
    .end local v1           #type:I
    :sswitch_77
    const v1, 0xffff

    .line 157
    .restart local v1       #type:I
    goto :goto_1e

    .line 159
    .end local v1           #type:I
    :sswitch_7b
    const-string v0, "album_artist"

    .line 160
    const v1, 0xffff

    .line 161
    .restart local v1       #type:I
    goto :goto_1e

    .line 164
    .end local v1           #type:I
    :sswitch_81
    const v1, 0xffff

    .line 165
    .restart local v1       #type:I
    goto :goto_1e

    .line 167
    .end local v1           #type:I
    :sswitch_85
    const-string v0, "composer"

    .line 168
    const v1, 0xffff

    .line 169
    .restart local v1       #type:I
    goto :goto_1e

    .line 171
    .end local v1           #type:I
    :sswitch_8b
    const-string v0, "description"

    .line 172
    const v1, 0xffff

    .line 173
    .restart local v1       #type:I
    goto :goto_1e

    .line 184
    :cond_91
    new-instance v2, Landroid/mtp/MtpPropertyGroup$Property;

    const/4 v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/MtpPropertyGroup$Property;-><init>(Landroid/mtp/MtpPropertyGroup;III)V

    goto :goto_2e

    .line 95
    :sswitch_data_98
    .sparse-switch
        0xdc01 -> :sswitch_2f
        0xdc02 -> :sswitch_31
        0xdc03 -> :sswitch_35
        0xdc04 -> :sswitch_37
        0xdc07 -> :sswitch_3c
        0xdc09 -> :sswitch_49
        0xdc0b -> :sswitch_5c
        0xdc41 -> :sswitch_61
        0xdc44 -> :sswitch_42
        0xdc46 -> :sswitch_73
        0xdc48 -> :sswitch_8b
        0xdc4e -> :sswitch_4f
        0xdc89 -> :sswitch_64
        0xdc8b -> :sswitch_68
        0xdc8c -> :sswitch_81
        0xdc96 -> :sswitch_85
        0xdc99 -> :sswitch_55
        0xdc9a -> :sswitch_77
        0xdc9b -> :sswitch_7b
        0xdce0 -> :sswitch_6d
    .end sparse-switch
.end method

.method private native format_date_time(J)Ljava/lang/String;
.end method

.method private static nameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "path"

    .prologue
    .line 272
    const/4 v2, 0x0

    .line 273
    .local v2, start:I
    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 274
    .local v1, lastSlash:I
    if-ltz v1, :cond_b

    .line 275
    add-int/lit8 v2, v1, 0x1

    .line 277
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 278
    .local v0, end:I
    sub-int v3, v0, v2

    const/16 v4, 0xff

    if-le v3, v4, :cond_17

    .line 279
    add-int/lit16 v0, v2, 0xff

    .line 281
    :cond_17
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private queryAudio(ILjava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "id"
    .parameter "column"

    .prologue
    const/4 v9, 0x0

    .line 210
    const/4 v6, 0x0

    .line 212
    .local v6, c:Landroid/database/Cursor;
    :try_start_2
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 215
    if-eqz v6, :cond_39

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 216
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_32
    .catchall {:try_start_2 .. :try_end_32} :catchall_4a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_32} :catch_41

    move-result-object v0

    .line 223
    if-eqz v6, :cond_38

    .line 224
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_38
    :goto_38
    return-object v0

    .line 218
    :cond_39
    :try_start_39
    const-string v0, ""
    :try_end_3b
    .catchall {:try_start_39 .. :try_end_3b} :catchall_4a
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3b} :catch_41

    .line 223
    if-eqz v6, :cond_38

    .line 224
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_38

    .line 220
    :catch_41
    move-exception v0

    move-object v7, v0

    .line 223
    .local v7, e:Ljava/lang/Exception;
    if-eqz v6, :cond_48

    .line 224
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_48
    move-object v0, v9

    goto :goto_38

    .line 223
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_4a
    move-exception v0

    if-eqz v6, :cond_50

    .line 224
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_50
    throw v0
.end method

.method private queryGenre(I)Ljava/lang/String;
    .registers 11
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    .line 230
    const/4 v6, 0x0

    .line 232
    .local v6, c:Landroid/database/Cursor;
    :try_start_2
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/provider/MediaStore$Audio$Genres;->getContentUriForAudioId(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 233
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 236
    if-eqz v6, :cond_32

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 237
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_2 .. :try_end_2b} :catchall_4b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2b} :catch_3a

    move-result-object v0

    .line 245
    if-eqz v6, :cond_31

    .line 246
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v1           #uri:Landroid/net/Uri;
    :cond_31
    :goto_31
    return-object v0

    .line 239
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_32
    :try_start_32
    const-string v0, ""
    :try_end_34
    .catchall {:try_start_32 .. :try_end_34} :catchall_4b
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_34} :catch_3a

    .line 245
    if-eqz v6, :cond_31

    .line 246
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_31

    .line 241
    .end local v1           #uri:Landroid/net/Uri;
    :catch_3a
    move-exception v0

    move-object v7, v0

    .line 242
    .local v7, e:Ljava/lang/Exception;
    :try_start_3c
    const-string v0, "MtpPropertyGroup"

    const-string/jumbo v2, "queryGenre exception"

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_4b

    .line 245
    if-eqz v6, :cond_49

    .line 246
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_49
    move-object v0, v8

    goto :goto_31

    .line 245
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_4b
    move-exception v0

    if-eqz v6, :cond_51

    .line 246
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_51
    throw v0
.end method

.method private queryLong(ILjava/lang/String;)Ljava/lang/Long;
    .registers 12
    .parameter "id"
    .parameter "column"

    .prologue
    const/4 v8, 0x0

    .line 252
    const/4 v6, 0x0

    .line 255
    .local v6, c:Landroid/database/Cursor;
    :try_start_2
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 258
    if-eqz v6, :cond_3a

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 259
    new-instance v0, Ljava/lang/Long;

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V
    :try_end_34
    .catchall {:try_start_2 .. :try_end_34} :catchall_48
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_34} :catch_41

    .line 263
    if-eqz v6, :cond_39

    .line 264
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 267
    :cond_39
    :goto_39
    return-object v0

    .line 263
    :cond_3a
    if-eqz v6, :cond_3f

    .line 264
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3f
    :goto_3f
    move-object v0, v8

    .line 267
    goto :goto_39

    .line 261
    :catch_41
    move-exception v0

    .line 263
    if-eqz v6, :cond_3f

    .line 264
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3f

    .line 263
    :catchall_48
    move-exception v0

    if-eqz v6, :cond_4e

    .line 264
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4e
    throw v0
.end method

.method private queryString(ILjava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "id"
    .parameter "column"

    .prologue
    const/4 v9, 0x0

    .line 189
    const/4 v6, 0x0

    .line 192
    .local v6, c:Landroid/database/Cursor;
    :try_start_2
    iget-object v0, p0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 195
    if-eqz v6, :cond_35

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 196
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2e
    .catchall {:try_start_2 .. :try_end_2e} :catchall_46
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2e} :catch_3d

    move-result-object v0

    .line 203
    if-eqz v6, :cond_34

    .line 204
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_34
    :goto_34
    return-object v0

    .line 198
    :cond_35
    :try_start_35
    const-string v0, ""
    :try_end_37
    .catchall {:try_start_35 .. :try_end_37} :catchall_46
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_37} :catch_3d

    .line 203
    if-eqz v6, :cond_34

    .line 204
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_34

    .line 200
    :catch_3d
    move-exception v0

    move-object v7, v0

    .line 203
    .local v7, e:Ljava/lang/Exception;
    if-eqz v6, :cond_44

    .line 204
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_44
    move-object v0, v9

    goto :goto_34

    .line 203
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_46
    move-exception v0

    if-eqz v6, :cond_4c

    .line 204
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4c
    throw v0
.end method


# virtual methods
.method getPropertyList(IIII)Landroid/mtp/MtpPropertyList;
    .registers 38
    .parameter "handle"
    .parameter "format"
    .parameter "depth"
    .parameter "storageID"

    .prologue
    .line 286
    const/4 v4, 0x1

    move/from16 v0, p3

    move v1, v4

    if-le v0, v1, :cond_10

    .line 289
    new-instance v4, Landroid/mtp/MtpPropertyList;

    const/4 v5, 0x0

    const v6, 0xa808

    invoke-direct {v4, v5, v6}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 435
    :cond_f
    :goto_f
    return-object v4

    .line 294
    :cond_10
    if-nez p2, :cond_59

    .line 295
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    .line 296
    .local v8, whereArgs:[Ljava/lang/String;
    const/4 v4, 0x1

    move/from16 v0, p3

    move v1, v4

    if-ne v0, v1, :cond_56

    .line 297
    const-string/jumbo v7, "parent=?"

    .line 310
    .local v7, where:Ljava/lang/String;
    :goto_25
    const/16 v21, 0x0

    .line 313
    .local v21, c:Landroid/database/Cursor;
    if-gtz p3, :cond_32

    :try_start_29
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    move-object v4, v0

    array-length v4, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_77

    .line 314
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MtpPropertyGroup;->mUri:Landroid/net/Uri;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MtpPropertyGroup;->mColumns:[Ljava/lang/String;

    move-object v6, v0

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 315
    if-nez v21, :cond_77

    .line 316
    new-instance v4, Landroid/mtp/MtpPropertyList;

    const/4 v5, 0x0

    const/16 v6, 0x2009

    invoke-direct {v4, v5, v6}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_50
    .catchall {:try_start_29 .. :try_end_50} :catchall_112
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_50} :catch_f7

    .line 434
    if-eqz v21, :cond_f

    .line 435
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto :goto_f

    .line 299
    .end local v7           #where:Ljava/lang/String;
    .end local v21           #c:Landroid/database/Cursor;
    :cond_56
    const-string v7, "_id=?"

    .restart local v7       #where:Ljava/lang/String;
    goto :goto_25

    .line 302
    .end local v7           #where:Ljava/lang/String;
    .end local v8           #whereArgs:[Ljava/lang/String;
    :cond_59
    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    const/4 v4, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    .line 303
    .restart local v8       #whereArgs:[Ljava/lang/String;
    const/4 v4, 0x1

    move/from16 v0, p3

    move v1, v4

    if-ne v0, v1, :cond_74

    .line 304
    const-string/jumbo v7, "parent=? AND format=?"

    .restart local v7       #where:Ljava/lang/String;
    goto :goto_25

    .line 306
    .end local v7           #where:Ljava/lang/String;
    :cond_74
    const-string v7, "_id=? AND format=?"

    .restart local v7       #where:Ljava/lang/String;
    goto :goto_25

    .line 320
    .restart local v21       #c:Landroid/database/Cursor;
    :cond_77
    if-nez v21, :cond_e5

    const/4 v4, 0x1

    move/from16 v23, v4

    .line 321
    .local v23, count:I
    :goto_7c
    :try_start_7c
    new-instance v9, Landroid/mtp/MtpPropertyList;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    move-object v4, v0

    array-length v4, v4

    mul-int v4, v4, v23

    const/16 v5, 0x2001

    invoke-direct {v9, v4, v5}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 325
    .local v9, result:Landroid/mtp/MtpPropertyList;
    const/16 v28, 0x0

    .local v28, objectIndex:I
    :goto_8d
    move/from16 v0, v28

    move/from16 v1, v23

    if-ge v0, v1, :cond_244

    .line 326
    if-eqz v21, :cond_98

    .line 327
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    .line 329
    :cond_98
    const/4 v4, 0x1

    move/from16 v0, p3

    move v1, v4

    if-ne v0, v1, :cond_aa

    .line 330
    const/4 v4, 0x0

    move-object/from16 v0, v21

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-wide v0, v4

    long-to-int v0, v0

    move/from16 p1, v0

    .line 334
    :cond_aa
    const/16 v30, 0x0

    .local v30, propertyIndex:I
    :goto_ac
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    move-object v4, v0

    array-length v4, v4

    move/from16 v0, v30

    move v1, v4

    if-ge v0, v1, :cond_240

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MtpPropertyGroup;->mProperties:[Landroid/mtp/MtpPropertyGroup$Property;

    move-object v4, v0

    aget-object v29, v4, v30

    .line 336
    .local v29, property:Landroid/mtp/MtpPropertyGroup$Property;
    move-object/from16 v0, v29

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->code:I

    move v11, v0

    .line 337
    .local v11, propertyCode:I
    move-object/from16 v0, v29

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->column:I

    move/from16 v22, v0

    .line 340
    .local v22, column:I
    sparse-switch v11, :sswitch_data_24c

    .line 417
    move-object/from16 v0, v29

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move v4, v0

    const v5, 0xffff

    if-ne v4, v5, :cond_213

    .line 418
    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v9

    move/from16 v1, p1

    move v2, v11

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 334
    :goto_e2
    add-int/lit8 v30, v30, 0x1

    goto :goto_ac

    .line 320
    .end local v9           #result:Landroid/mtp/MtpPropertyList;
    .end local v11           #propertyCode:I
    .end local v22           #column:I
    .end local v23           #count:I
    .end local v28           #objectIndex:I
    .end local v29           #property:Landroid/mtp/MtpPropertyGroup$Property;
    .end local v30           #propertyIndex:I
    :cond_e5
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move/from16 v23, v4

    goto :goto_7c

    .line 342
    .restart local v9       #result:Landroid/mtp/MtpPropertyList;
    .restart local v11       #propertyCode:I
    .restart local v22       #column:I
    .restart local v23       #count:I
    .restart local v28       #objectIndex:I
    .restart local v29       #property:Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v30       #propertyIndex:I
    :sswitch_ec
    const/4 v12, 0x6

    move/from16 v0, p4

    int-to-long v0, v0

    move-wide v13, v0

    move/from16 v10, p1

    invoke-virtual/range {v9 .. v14}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_f6
    .catchall {:try_start_7c .. :try_end_f6} :catchall_112
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_f6} :catch_f7

    goto :goto_e2

    .line 431
    .end local v9           #result:Landroid/mtp/MtpPropertyList;
    .end local v11           #propertyCode:I
    .end local v22           #column:I
    .end local v23           #count:I
    .end local v28           #objectIndex:I
    .end local v29           #property:Landroid/mtp/MtpPropertyGroup$Property;
    .end local v30           #propertyIndex:I
    :catch_f7
    move-exception v4

    move-object/from16 v25, v4

    .line 432
    .local v25, e:Landroid/os/RemoteException;
    :try_start_fa
    new-instance v4, Landroid/mtp/MtpPropertyList;

    const/4 v5, 0x0

    const/16 v6, 0x2002

    invoke-direct {v4, v5, v6}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_102
    .catchall {:try_start_fa .. :try_end_102} :catchall_112

    .line 434
    if-eqz v21, :cond_f

    .line 435
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_f

    .line 347
    .end local v25           #e:Landroid/os/RemoteException;
    .restart local v9       #result:Landroid/mtp/MtpPropertyList;
    .restart local v11       #propertyCode:I
    .restart local v22       #column:I
    .restart local v23       #count:I
    .restart local v28       #objectIndex:I
    .restart local v29       #property:Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v30       #propertyIndex:I
    :sswitch_109
    const/4 v12, 0x4

    const-wide/16 v13, 0x0

    move/from16 v10, p1

    :try_start_10e
    invoke-virtual/range {v9 .. v14}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_111
    .catchall {:try_start_10e .. :try_end_111} :catchall_112
    .catch Landroid/os/RemoteException; {:try_start_10e .. :try_end_111} :catch_f7

    goto :goto_e2

    .line 434
    .end local v9           #result:Landroid/mtp/MtpPropertyList;
    .end local v11           #propertyCode:I
    .end local v22           #column:I
    .end local v23           #count:I
    .end local v28           #objectIndex:I
    .end local v29           #property:Landroid/mtp/MtpPropertyGroup$Property;
    .end local v30           #propertyIndex:I
    :catchall_112
    move-exception v4

    if-eqz v21, :cond_118

    .line 435
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_118
    throw v4

    .line 351
    .restart local v9       #result:Landroid/mtp/MtpPropertyList;
    .restart local v11       #propertyCode:I
    .restart local v22       #column:I
    .restart local v23       #count:I
    .restart local v28       #objectIndex:I
    .restart local v29       #property:Landroid/mtp/MtpPropertyGroup$Property;
    .restart local v30       #propertyIndex:I
    :sswitch_119
    :try_start_119
    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 352
    .local v31, value:Ljava/lang/String;
    if-eqz v31, :cond_12c

    .line 353
    invoke-static/range {v31 .. v31}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v9

    move/from16 v1, p1

    move v2, v11

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_e2

    .line 355
    :cond_12c
    const/16 v4, 0x2009

    invoke-virtual {v9, v4}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto :goto_e2

    .line 360
    .end local v31           #value:Ljava/lang/String;
    :sswitch_132
    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 362
    .local v27, name:Ljava/lang/String;
    if-nez v27, :cond_144

    .line 363
    const-string/jumbo v4, "name"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 366
    :cond_144
    if-nez v27, :cond_157

    .line 367
    const-string v4, "_data"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 368
    if-eqz v27, :cond_157

    .line 369
    invoke-static/range {v27 .. v27}, Landroid/mtp/MtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 372
    :cond_157
    if-eqz v27, :cond_163

    .line 373
    move-object v0, v9

    move/from16 v1, p1

    move v2, v11

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_e2

    .line 375
    :cond_163
    const/16 v4, 0x2009

    invoke-virtual {v9, v4}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto/16 :goto_e2

    .line 381
    .end local v27           #name:Ljava/lang/String;
    :sswitch_16a
    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, p0

    move-wide v1, v4

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    move-result-object v4

    move-object v0, v9

    move/from16 v1, p1

    move v2, v11

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_e2

    .line 385
    :sswitch_180
    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 386
    .local v32, year:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0101T000000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 387
    .local v24, dateTime:Ljava/lang/String;
    move-object v0, v9

    move/from16 v1, p1

    move v2, v11

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_e2

    .line 391
    .end local v24           #dateTime:Ljava/lang/String;
    .end local v32           #year:I
    :sswitch_1a6
    move/from16 v0, p4

    int-to-long v0, v0

    move-wide v13, v0

    .line 392
    .local v13, puid:J
    const/16 v4, 0x20

    shl-long/2addr v13, v4

    .line 393
    move/from16 v0, p1

    int-to-long v0, v0

    move-wide v4, v0

    add-long/2addr v13, v4

    .line 394
    const/16 v12, 0xa

    move/from16 v10, p1

    invoke-virtual/range {v9 .. v14}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_e2

    .line 397
    .end local v13           #puid:J
    :sswitch_1bb
    const/16 v18, 0x4

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    rem-int/lit16 v4, v4, 0x3e8

    move v0, v4

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-object v15, v9

    move/from16 v16, p1

    move/from16 v17, v11

    invoke-virtual/range {v15 .. v20}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_e2

    .line 401
    :sswitch_1d1
    const-string v4, "artist"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryAudio(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v9

    move/from16 v1, p1

    move v2, v11

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_e2

    .line 405
    :sswitch_1e6
    const-string v4, "album"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpPropertyGroup;->queryAudio(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v9

    move/from16 v1, p1

    move v2, v11

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_e2

    .line 409
    :sswitch_1fb
    invoke-direct/range {p0 .. p1}, Landroid/mtp/MtpPropertyGroup;->queryGenre(I)Ljava/lang/String;

    move-result-object v26

    .line 410
    .local v26, genre:Ljava/lang/String;
    if-eqz v26, :cond_20c

    .line 411
    move-object v0, v9

    move/from16 v1, p1

    move v2, v11

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_e2

    .line 413
    :cond_20c
    const/16 v4, 0x2009

    invoke-virtual {v9, v4}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto/16 :goto_e2

    .line 419
    .end local v26           #genre:Ljava/lang/String;
    :cond_213
    move-object/from16 v0, v29

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move v4, v0

    if-nez v4, :cond_22c

    .line 420
    move-object/from16 v0, v29

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move/from16 v18, v0

    const-wide/16 v19, 0x0

    move-object v15, v9

    move/from16 v16, p1

    move/from16 v17, v11

    invoke-virtual/range {v15 .. v20}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_e2

    .line 422
    :cond_22c
    move-object/from16 v0, v29

    iget v0, v0, Landroid/mtp/MtpPropertyGroup$Property;->type:I

    move/from16 v18, v0

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-object v15, v9

    move/from16 v16, p1

    move/from16 v17, v11

    invoke-virtual/range {v15 .. v20}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_23e
    .catchall {:try_start_119 .. :try_end_23e} :catchall_112
    .catch Landroid/os/RemoteException; {:try_start_119 .. :try_end_23e} :catch_f7

    goto/16 :goto_e2

    .line 325
    .end local v11           #propertyCode:I
    .end local v22           #column:I
    .end local v29           #property:Landroid/mtp/MtpPropertyGroup$Property;
    :cond_240
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_8d

    .line 434
    .end local v30           #propertyIndex:I
    :cond_244
    if-eqz v21, :cond_249

    .line 435
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_249
    move-object v4, v9

    goto/16 :goto_f

    .line 340
    :sswitch_data_24c
    .sparse-switch
        0xdc01 -> :sswitch_ec
        0xdc03 -> :sswitch_109
        0xdc07 -> :sswitch_119
        0xdc09 -> :sswitch_16a
        0xdc41 -> :sswitch_1a6
        0xdc44 -> :sswitch_132
        0xdc46 -> :sswitch_1d1
        0xdc4e -> :sswitch_16a
        0xdc8b -> :sswitch_1bb
        0xdc8c -> :sswitch_1fb
        0xdc99 -> :sswitch_180
        0xdc9a -> :sswitch_1e6
    .end sparse-switch
.end method
