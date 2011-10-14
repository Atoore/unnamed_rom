.class public Landroid/mtp/MtpDatabase;
.super Ljava/lang/Object;
.source "MtpDatabase.java"


# static fields
.field static final ALL_PROPERTIES:[I = null

.field static final AUDIO_PROPERTIES:[I = null

.field private static final DEVICE_PROPERTIES_DATABASE_VERSION:I = 0x1

.field private static final DEVICE_PROPERTY_PROJECTION:[Ljava/lang/String; = null

.field private static final DEVICE_PROPERTY_WHERE:Ljava/lang/String; = "code=?"

.field static final FILE_PROPERTIES:[I = null

.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field static final IMAGE_PROPERTIES:[I = null

.field private static final OBJECT_INFO_PROJECTION:[Ljava/lang/String; = null

.field private static final PARENT_FORMAT_WHERE:Ljava/lang/String; = "parent=? AND format=?"

.field private static final PARENT_WHERE:Ljava/lang/String; = "parent=?"

.field private static final PATH_PROJECTION:[Ljava/lang/String; = null

.field private static final PATH_SIZE_FORMAT_PROJECTION:[Ljava/lang/String; = null

.field private static final PATH_WHERE:Ljava/lang/String; = "_data=?"

.field private static final TAG:Ljava/lang/String; = "MtpDatabase"

.field static final VIDEO_PROPERTIES:[I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDatabaseModified:Z

.field private mDevicePropDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mMediaProvider:Landroid/content/IContentProvider;

.field private final mMediaScanner:Landroid/media/MediaScanner;

.field private final mMediaStoragePath:Ljava/lang/String;

.field private mNativeContext:I

.field private final mObjectsUri:Landroid/net/Uri;

.field private final mPropertyGroupsByFormat:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mPropertyGroupsByProperty:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mStorageID:I

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, "_data"

    const-string v5, "_id"

    .line 72
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v3

    sput-object v0, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    .line 75
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v3

    const-string v1, "_data"

    aput-object v7, v0, v4

    sput-object v0, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    .line 79
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v3

    const-string v1, "_data"

    aput-object v7, v0, v4

    const-string v1, "_size"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "format"

    aput-object v2, v0, v1

    sput-object v0, Landroid/mtp/MtpDatabase;->PATH_SIZE_FORMAT_PROJECTION:[Ljava/lang/String;

    .line 85
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v3

    const-string v1, "_data"

    aput-object v7, v0, v4

    const-string v1, "format"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string/jumbo v2, "parent"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    sput-object v0, Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    .line 99
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v5, v0, v3

    const-string/jumbo v1, "value"

    aput-object v1, v0, v4

    sput-object v0, Landroid/mtp/MtpDatabase;->DEVICE_PROPERTY_PROJECTION:[Ljava/lang/String;

    .line 105
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 320
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_94

    sput-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    .line 335
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_ac

    sput-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    .line 360
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_d6

    sput-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    .line 381
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_f8

    sput-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    .line 399
    const/16 v0, 0x19

    new-array v0, v0, [I

    fill-array-data v0, :array_114

    sput-object v0, Landroid/mtp/MtpDatabase;->ALL_PROPERTIES:[I

    return-void

    .line 320
    nop

    :array_94
    .array-data 0x4
        0x1t 0xdct 0x0t 0x0t
        0x2t 0xdct 0x0t 0x0t
        0x3t 0xdct 0x0t 0x0t
        0x4t 0xdct 0x0t 0x0t
        0x7t 0xdct 0x0t 0x0t
        0x9t 0xdct 0x0t 0x0t
        0xbt 0xdct 0x0t 0x0t
        0x41t 0xdct 0x0t 0x0t
        0x44t 0xdct 0x0t 0x0t
        0x4et 0xdct 0x0t 0x0t
    .end array-data

    .line 335
    :array_ac
    .array-data 0x4
        0x1t 0xdct 0x0t 0x0t
        0x2t 0xdct 0x0t 0x0t
        0x3t 0xdct 0x0t 0x0t
        0x4t 0xdct 0x0t 0x0t
        0x7t 0xdct 0x0t 0x0t
        0x9t 0xdct 0x0t 0x0t
        0xbt 0xdct 0x0t 0x0t
        0x41t 0xdct 0x0t 0x0t
        0x44t 0xdct 0x0t 0x0t
        0xe0t 0xdct 0x0t 0x0t
        0x4et 0xdct 0x0t 0x0t
        0x46t 0xdct 0x0t 0x0t
        0x9at 0xdct 0x0t 0x0t
        0x9bt 0xdct 0x0t 0x0t
        0x8bt 0xdct 0x0t 0x0t
        0x99t 0xdct 0x0t 0x0t
        0x89t 0xdct 0x0t 0x0t
        0x8ct 0xdct 0x0t 0x0t
        0x96t 0xdct 0x0t 0x0t
    .end array-data

    .line 360
    :array_d6
    .array-data 0x4
        0x1t 0xdct 0x0t 0x0t
        0x2t 0xdct 0x0t 0x0t
        0x3t 0xdct 0x0t 0x0t
        0x4t 0xdct 0x0t 0x0t
        0x7t 0xdct 0x0t 0x0t
        0x9t 0xdct 0x0t 0x0t
        0xbt 0xdct 0x0t 0x0t
        0x41t 0xdct 0x0t 0x0t
        0x44t 0xdct 0x0t 0x0t
        0xe0t 0xdct 0x0t 0x0t
        0x4et 0xdct 0x0t 0x0t
        0x46t 0xdct 0x0t 0x0t
        0x9at 0xdct 0x0t 0x0t
        0x89t 0xdct 0x0t 0x0t
        0x48t 0xdct 0x0t 0x0t
    .end array-data

    .line 381
    :array_f8
    .array-data 0x4
        0x1t 0xdct 0x0t 0x0t
        0x2t 0xdct 0x0t 0x0t
        0x3t 0xdct 0x0t 0x0t
        0x4t 0xdct 0x0t 0x0t
        0x7t 0xdct 0x0t 0x0t
        0x9t 0xdct 0x0t 0x0t
        0xbt 0xdct 0x0t 0x0t
        0x41t 0xdct 0x0t 0x0t
        0x44t 0xdct 0x0t 0x0t
        0xe0t 0xdct 0x0t 0x0t
        0x4et 0xdct 0x0t 0x0t
        0x48t 0xdct 0x0t 0x0t
    .end array-data

    .line 399
    :array_114
    .array-data 0x4
        0x1t 0xdct 0x0t 0x0t
        0x2t 0xdct 0x0t 0x0t
        0x3t 0xdct 0x0t 0x0t
        0x4t 0xdct 0x0t 0x0t
        0x7t 0xdct 0x0t 0x0t
        0x9t 0xdct 0x0t 0x0t
        0xbt 0xdct 0x0t 0x0t
        0x41t 0xdct 0x0t 0x0t
        0x44t 0xdct 0x0t 0x0t
        0xe0t 0xdct 0x0t 0x0t
        0x4et 0xdct 0x0t 0x0t
        0x48t 0xdct 0x0t 0x0t
        0x46t 0xdct 0x0t 0x0t
        0x9at 0xdct 0x0t 0x0t
        0x9bt 0xdct 0x0t 0x0t
        0x8bt 0xdct 0x0t 0x0t
        0x99t 0xdct 0x0t 0x0t
        0x89t 0xdct 0x0t 0x0t
        0x8ct 0xdct 0x0t 0x0t
        0x96t 0xdct 0x0t 0x0t
        0x46t 0xdct 0x0t 0x0t
        0x9at 0xdct 0x0t 0x0t
        0x89t 0xdct 0x0t 0x0t
        0x48t 0xdct 0x0t 0x0t
        0x48t 0xdct 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "volumeName"
    .parameter "storagePath"

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    .line 70
    const v0, 0x10001

    iput v0, p0, Landroid/mtp/MtpDatabase;->mStorageID:I

    .line 109
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_setup()V

    .line 111
    iput-object p1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    .line 113
    iput-object p2, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    .line 114
    iput-object p3, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    .line 115
    invoke-static {p2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    .line 116
    new-instance v0, Landroid/media/MediaScanner;

    invoke-direct {v0, p1}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    .line 117
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->openDevicePropertiesDatabase(Landroid/content/Context;)V

    .line 118
    return-void
.end method

.method private beginSendObject(Ljava/lang/String;IIIJJ)I
    .registers 19
    .parameter "path"
    .parameter "format"
    .parameter "parent"
    .parameter "storage"
    .parameter "size"
    .parameter "modified"

    .prologue
    .line 148
    if-eqz p1, :cond_42

    .line 149
    const/4 v6, 0x0

    .line 151
    .local v6, c:Landroid/database/Cursor;
    :try_start_3
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "_data=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 153
    if-eqz v6, :cond_3d

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3d

    .line 154
    const-string v0, "MtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file already exists in beginSendObject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_9d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_36} :catch_8e

    .line 155
    const/4 v0, -0x1

    .line 160
    if-eqz v6, :cond_3c

    .line 161
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 184
    .end local v6           #c:Landroid/database/Cursor;
    .end local p0
    :cond_3c
    :goto_3c
    return v0

    .line 160
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local p0
    :cond_3d
    if-eqz v6, :cond_42

    .line 161
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 166
    .end local v6           #c:Landroid/database/Cursor;
    :cond_42
    :goto_42
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 167
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 168
    .local v9, values:Landroid/content/ContentValues;
    const-string v0, "_data"

    invoke-virtual {v9, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v0, "format"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    const-string/jumbo v0, "parent"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    const-string v0, "_size"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 173
    const-string v0, "date_modified"

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 176
    :try_start_74
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v9}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    .line 177
    .local v8, uri:Landroid/net/Uri;
    if-eqz v8, :cond_a4

    .line 178
    invoke-virtual {v8}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_8c} :catch_a6

    move-result v0

    goto :goto_3c

    .line 157
    .end local v8           #uri:Landroid/net/Uri;
    .end local v9           #values:Landroid/content/ContentValues;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local p0
    :catch_8e
    move-exception v0

    move-object v7, v0

    .line 158
    .local v7, e:Landroid/os/RemoteException;
    :try_start_90
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in beginSendObject"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_97
    .catchall {:try_start_90 .. :try_end_97} :catchall_9d

    .line 160
    if-eqz v6, :cond_42

    .line 161
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_42

    .line 160
    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_9d
    move-exception v0

    if-eqz v6, :cond_a3

    .line 161
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_a3
    throw v0

    .line 180
    .end local v6           #c:Landroid/database/Cursor;
    .restart local v8       #uri:Landroid/net/Uri;
    .restart local v9       #values:Landroid/content/ContentValues;
    :cond_a4
    const/4 v0, -0x1

    goto :goto_3c

    .line 182
    .end local v8           #uri:Landroid/net/Uri;
    .end local p0
    :catch_a6
    move-exception v0

    move-object v7, v0

    .line 183
    .restart local v7       #e:Landroid/os/RemoteException;
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in beginSendObject"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    const/4 v0, -0x1

    goto :goto_3c
.end method

.method private deleteFile(I)I
    .registers 16
    .parameter "handle"

    .prologue
    const/16 v13, 0x2009

    const/16 v12, 0x2002

    const/4 v0, 0x1

    .line 699
    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 700
    const/4 v9, 0x0

    .line 701
    .local v9, path:Ljava/lang/String;
    const/4 v8, 0x0

    .line 703
    .local v8, format:I
    const/4 v6, 0x0

    .line 705
    .local v6, c:Landroid/database/Cursor;
    :try_start_a
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->PATH_SIZE_FORMAT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 707
    if-eqz v6, :cond_3e

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 710
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 711
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_32
    .catchall {:try_start_a .. :try_end_32} :catchall_9f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_32} :catch_8f

    move-result v8

    .line 716
    if-eqz v9, :cond_37

    if-nez v8, :cond_45

    .line 737
    :cond_37
    if-eqz v6, :cond_3c

    .line 738
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3c
    move v0, v12

    :cond_3d
    :goto_3d
    return v0

    .line 737
    :cond_3e
    if-eqz v6, :cond_43

    .line 738
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_43
    move v0, v13

    goto :goto_3d

    .line 720
    :cond_45
    const/16 v0, 0x3001

    if-ne v8, v0, :cond_6f

    .line 722
    :try_start_49
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 723
    .local v10, uri:Landroid/net/Uri;
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    const-string v1, "_data LIKE ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v10, v1, v2}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 727
    .end local v10           #uri:Landroid/net/Uri;
    :cond_6f
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v10

    .line 728
    .restart local v10       #uri:Landroid/net/Uri;
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v10, v1, v2}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_49 .. :try_end_7d} :catchall_9f
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_7d} :catch_8f

    move-result v0

    if-lez v0, :cond_88

    .line 729
    const/16 v0, 0x2001

    .line 737
    if-eqz v6, :cond_3d

    .line 738
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3d

    .line 737
    :cond_88
    if-eqz v6, :cond_8d

    .line 738
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8d
    move v0, v13

    goto :goto_3d

    .line 733
    .end local v10           #uri:Landroid/net/Uri;
    :catch_8f
    move-exception v0

    move-object v7, v0

    .line 734
    .local v7, e:Landroid/os/RemoteException;
    :try_start_91
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in deleteFile"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_98
    .catchall {:try_start_91 .. :try_end_98} :catchall_9f

    .line 737
    if-eqz v6, :cond_9d

    .line 738
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_9d
    move v0, v12

    goto :goto_3d

    .line 737
    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_9f
    move-exception v0

    if-eqz v6, :cond_a5

    .line 738
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_a5
    throw v0
.end method

.method private endSendObject(Ljava/lang/String;IIZ)V
    .registers 14
    .parameter "path"
    .parameter "handle"
    .parameter "format"
    .parameter "succeeded"

    .prologue
    .line 189
    if-eqz p4, :cond_77

    .line 192
    const v4, 0xba05

    if-ne p3, v4, :cond_6f

    .line 194
    move-object v2, p1

    .line 195
    .local v2, name:Ljava/lang/String;
    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 196
    .local v1, lastSlash:I
    if-ltz v1, :cond_16

    .line 197
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 200
    :cond_16
    const-string v4, ".pla"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 201
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    sub-int/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 204
    :cond_29
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 205
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "_data"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v4, "format"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 208
    const-string v4, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 209
    const-string/jumbo v4, "media_scanner_new_object_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 211
    :try_start_5d
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    sget-object v5, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v4, v5, v3}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_64} :catch_65

    .line 221
    .end local v1           #lastSlash:I
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #values:Landroid/content/ContentValues;
    :goto_64
    return-void

    .line 212
    .restart local v1       #lastSlash:I
    .restart local v2       #name:Ljava/lang/String;
    .restart local v3       #values:Landroid/content/ContentValues;
    :catch_65
    move-exception v4

    move-object v0, v4

    .line 213
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "MtpDatabase"

    const-string v5, "RemoteException in endSendObject"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_64

    .line 216
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #lastSlash:I
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_6f
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-virtual {v4, p1, v5, p2, p3}, Landroid/media/MediaScanner;->scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_64

    .line 219
    :cond_77
    invoke-direct {p0, p2}, Landroid/mtp/MtpDatabase;->deleteFile(I)I

    goto :goto_64
.end method

.method private getDeviceProperty(I[J[C)I
    .registers 24
    .parameter "property"
    .parameter "outIntValue"
    .parameter "outStringValue"

    .prologue
    .line 566
    sparse-switch p1, :sswitch_data_b8

    .line 606
    const/16 v5, 0x200a

    .end local p0
    :cond_5
    :goto_5
    return v5

    .line 570
    .restart local p0
    :sswitch_6
    const/4 v13, 0x0

    .line 572
    .local v13, c:Landroid/database/Cursor;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MtpDatabase;->mDevicePropDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    const-string/jumbo v6, "properties"

    sget-object v7, Landroid/mtp/MtpDatabase;->DEVICE_PROPERTY_PROJECTION:[Ljava/lang/String;

    const-string v8, "code=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 576
    if-eqz v13, :cond_56

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_56

    .line 577
    const/4 v5, 0x1

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 578
    .local v18, value:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v17

    .line 579
    .local v17, length:I
    const/16 v5, 0xff

    move/from16 v0, v17

    move v1, v5

    if-le v0, v1, :cond_3e

    .line 580
    const/16 v17, 0xff

    .line 582
    :cond_3e
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v18

    move v1, v5

    move/from16 v2, v17

    move-object/from16 v3, p3

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 583
    const/4 v5, 0x0

    aput-char v5, p3, v17
    :try_end_4e
    .catchall {:try_start_7 .. :try_end_4e} :catchall_5b

    .line 587
    .end local v17           #length:I
    .end local v18           #value:Ljava/lang/String;
    :goto_4e
    const/16 v5, 0x2001

    .line 589
    if-eqz v13, :cond_5

    .line 590
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 585
    :cond_56
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_58
    aput-char v6, p3, v5
    :try_end_5a
    .catchall {:try_start_58 .. :try_end_5a} :catchall_5b

    goto :goto_4e

    .line 589
    :catchall_5b
    move-exception v5

    if-eqz v13, :cond_61

    .line 590
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_61
    throw v5

    .line 596
    .end local v13           #c:Landroid/database/Cursor;
    :sswitch_62
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    move-object v5, v0

    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/WindowManager;

    invoke-interface/range {p0 .. p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    .line 598
    .local v14, display:Landroid/view/Display;
    invoke-virtual {v14}, Landroid/view/Display;->getWidth()I

    move-result v19

    .line 599
    .local v19, width:I
    invoke-virtual {v14}, Landroid/view/Display;->getHeight()I

    move-result v15

    .line 600
    .local v15, height:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 601
    .local v16, imageSize:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, v16

    move v1, v5

    move v2, v6

    move-object/from16 v3, p3

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 602
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    aput-char v6, p3, v5

    .line 603
    const/16 v5, 0x2001

    goto/16 :goto_5

    .line 566
    nop

    :sswitch_data_b8
    .sparse-switch
        0x5003 -> :sswitch_62
        0xd401 -> :sswitch_6
        0xd402 -> :sswitch_6
    .end sparse-switch
.end method

.method private getNumObjects(III)I
    .registers 13
    .parameter "storageID"
    .parameter "format"
    .parameter "parent"

    .prologue
    .line 260
    const/4 v6, 0x0

    .line 262
    .local v6, c:Landroid/database/Cursor;
    if-eqz p2, :cond_2e

    .line 263
    :try_start_3
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "parent=? AND format=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 271
    :goto_22
    if-eqz v6, :cond_47

    .line 272
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_5d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_27} :catch_4e

    move-result v0

    .line 277
    if-eqz v6, :cond_2d

    .line 278
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 281
    :cond_2d
    :goto_2d
    return v0

    .line 268
    :cond_2e
    :try_start_2e
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "parent=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_45
    .catchall {:try_start_2e .. :try_end_45} :catchall_5d
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_45} :catch_4e

    move-result-object v6

    goto :goto_22

    .line 277
    :cond_47
    if-eqz v6, :cond_4c

    .line 278
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 281
    :cond_4c
    :goto_4c
    const/4 v0, -0x1

    goto :goto_2d

    .line 274
    :catch_4e
    move-exception v0

    move-object v7, v0

    .line 275
    .local v7, e:Landroid/os/RemoteException;
    :try_start_50
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in getNumObjects"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_5d

    .line 277
    if-eqz v6, :cond_4c

    .line 278
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4c

    .line 277
    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_5d
    move-exception v0

    if-eqz v6, :cond_63

    .line 278
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_63
    throw v0
.end method

.method private getObjectFilePath(I[C[J)I
    .registers 15
    .parameter "handle"
    .parameter "outFilePath"
    .parameter "outFileLengthFormat"

    .prologue
    const/16 v10, 0x2001

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 666
    if-nez p1, :cond_23

    .line 668
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1, p2, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 669
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    aput-char v2, p2, v0

    .line 670
    const-wide/16 v0, 0x0

    aput-wide v0, p3, v2

    .line 671
    const-wide/16 v0, 0x3001

    aput-wide v0, p3, v3

    move v0, v10

    .line 693
    :cond_22
    :goto_22
    return v0

    .line 674
    :cond_23
    const/4 v6, 0x0

    .line 676
    .local v6, c:Landroid/database/Cursor;
    :try_start_24
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->PATH_SIZE_FORMAT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 678
    if-eqz v6, :cond_6f

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 679
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 680
    .local v8, path:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v1, p2, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 681
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    aput-char v1, p2, v0

    .line 682
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, p3, v0

    .line 683
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, p3, v0
    :try_end_68
    .catchall {:try_start_24 .. :try_end_68} :catchall_88
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_68} :catch_77

    .line 692
    if-eqz v6, :cond_6d

    .line 693
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6d
    move v0, v10

    goto :goto_22

    .line 686
    .end local v8           #path:Ljava/lang/String;
    :cond_6f
    const/16 v0, 0x2009

    .line 692
    if-eqz v6, :cond_22

    .line 693
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_22

    .line 688
    :catch_77
    move-exception v0

    move-object v7, v0

    .line 689
    .local v7, e:Landroid/os/RemoteException;
    :try_start_79
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in getObjectFilePath"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_80
    .catchall {:try_start_79 .. :try_end_80} :catchall_88

    .line 690
    const/16 v0, 0x2002

    .line 692
    if-eqz v6, :cond_22

    .line 693
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_22

    .line 692
    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_88
    move-exception v0

    if-eqz v6, :cond_8e

    .line 693
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8e
    throw v0
.end method

.method private getObjectInfo(I[I[C[J)Z
    .registers 17
    .parameter "handle"
    .parameter "outStorageFormatParent"
    .parameter "outName"
    .parameter "outSizeModified"

    .prologue
    .line 631
    const/4 v6, 0x0

    .line 633
    .local v6, c:Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

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

    .line 635
    if-eqz v6, :cond_75

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 636
    const/4 v0, 0x0

    const v1, 0x10001

    aput v1, p2, v0

    .line 637
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aput v1, p2, v0

    .line 638
    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aput v1, p2, v0

    .line 641
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 642
    .local v10, path:Ljava/lang/String;
    const/16 v0, 0x2f

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 643
    .local v9, lastSlash:I
    if-ltz v9, :cond_72

    add-int/lit8 v0, v9, 0x1

    move v11, v0

    .line 644
    .local v11, start:I
    :goto_46
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v8

    .line 645
    .local v8, end:I
    sub-int v0, v8, v11

    const/16 v1, 0xff

    if-le v0, v1, :cond_52

    .line 646
    add-int/lit16 v8, v11, 0xff

    .line 648
    :cond_52
    const/4 v0, 0x0

    invoke-virtual {v10, v11, v8, p3, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 649
    sub-int v0, v8, v11

    const/4 v1, 0x0

    aput-char v1, p3, v0

    .line 651
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, p4, v0

    .line 652
    const/4 v0, 0x1

    const/4 v1, 0x5

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, p4, v0
    :try_end_6b
    .catchall {:try_start_1 .. :try_end_6b} :catchall_8b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6b} :catch_7c

    .line 653
    const/4 v0, 0x1

    .line 658
    if-eqz v6, :cond_71

    .line 659
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 662
    .end local v8           #end:I
    .end local v9           #lastSlash:I
    .end local v10           #path:Ljava/lang/String;
    .end local v11           #start:I
    :cond_71
    :goto_71
    return v0

    .line 643
    .restart local v9       #lastSlash:I
    .restart local v10       #path:Ljava/lang/String;
    :cond_72
    const/4 v0, 0x0

    move v11, v0

    goto :goto_46

    .line 658
    .end local v9           #lastSlash:I
    .end local v10           #path:Ljava/lang/String;
    :cond_75
    if-eqz v6, :cond_7a

    .line 659
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 662
    :cond_7a
    :goto_7a
    const/4 v0, 0x0

    goto :goto_71

    .line 655
    :catch_7c
    move-exception v0

    move-object v7, v0

    .line 656
    .local v7, e:Landroid/os/RemoteException;
    :try_start_7e
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in getObjectInfo"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_85
    .catchall {:try_start_7e .. :try_end_85} :catchall_8b

    .line 658
    if-eqz v6, :cond_7a

    .line 659
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_7a

    .line 658
    .end local v7           #e:Landroid/os/RemoteException;
    :catchall_8b
    move-exception v0

    if-eqz v6, :cond_91

    .line 659
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_91
    throw v0
.end method

.method private getObjectList(III)[I
    .registers 15
    .parameter "storageID"
    .parameter "format"
    .parameter "parent"

    .prologue
    .line 225
    const/4 v6, 0x0

    .line 227
    .local v6, c:Landroid/database/Cursor;
    if-eqz p2, :cond_2b

    .line 228
    :try_start_3
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "parent=? AND format=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_79
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_21} :catch_6a

    move-result-object v6

    .line 236
    :goto_22
    if-nez v6, :cond_44

    .line 237
    const/4 v0, 0x0

    .line 251
    if-eqz v6, :cond_2a

    .line 252
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 255
    :cond_2a
    :goto_2a
    return-object v0

    .line 233
    :cond_2b
    :try_start_2b
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "parent=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_22

    .line 239
    :cond_44
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 240
    .local v7, count:I
    if-lez v7, :cond_63

    .line 241
    new-array v10, v7, [I

    .line 242
    .local v10, result:[I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_4d
    if-ge v9, v7, :cond_5c

    .line 243
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 244
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v10, v9
    :try_end_59
    .catchall {:try_start_2b .. :try_end_59} :catchall_79
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_59} :catch_6a

    .line 242
    add-int/lit8 v9, v9, 0x1

    goto :goto_4d

    .line 251
    :cond_5c
    if-eqz v6, :cond_61

    .line 252
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_61
    move-object v0, v10

    goto :goto_2a

    .line 251
    .end local v9           #i:I
    .end local v10           #result:[I
    :cond_63
    if-eqz v6, :cond_68

    .line 252
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 255
    .end local v7           #count:I
    :cond_68
    :goto_68
    const/4 v0, 0x0

    goto :goto_2a

    .line 248
    :catch_6a
    move-exception v0

    move-object v8, v0

    .line 249
    .local v8, e:Landroid/os/RemoteException;
    :try_start_6c
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in getObjectList"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_79

    .line 251
    if-eqz v6, :cond_68

    .line 252
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_68

    .line 251
    .end local v8           #e:Landroid/os/RemoteException;
    :catchall_79
    move-exception v0

    if-eqz v6, :cond_7f

    .line 252
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7f
    throw v0
.end method

.method private getObjectPropertyList(JIJII)Landroid/mtp/MtpPropertyList;
    .registers 13
    .parameter "handle"
    .parameter "format"
    .parameter "property"
    .parameter "groupCode"
    .parameter "depth"

    .prologue
    const/4 v4, 0x0

    .line 472
    if-eqz p6, :cond_c

    .line 473
    new-instance v2, Landroid/mtp/MtpPropertyList;

    const v3, 0xa807

    invoke-direct {v2, v4, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 493
    :goto_b
    return-object v2

    .line 477
    :cond_c
    const-wide v2, 0xffffffffL

    cmp-long v2, p4, v2

    if-nez v2, :cond_43

    .line 478
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpPropertyGroup;

    .line 479
    .local v0, propertyGroup:Landroid/mtp/MtpPropertyGroup;
    if-nez v0, :cond_3a

    .line 480
    invoke-direct {p0, p3}, Landroid/mtp/MtpDatabase;->getSupportedObjectProperties(I)[I

    move-result-object v1

    .line 481
    .local v1, propertyList:[I
    new-instance v0, Landroid/mtp/MtpPropertyGroup;

    .end local v0           #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3, v1}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;[I)V

    .line 482
    .restart local v0       #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    .end local v1           #propertyList:[I
    :cond_3a
    :goto_3a
    long-to-int v2, p1

    const v3, 0x10001

    invoke-virtual {v0, v2, p3, p7, v3}, Landroid/mtp/MtpPropertyGroup;->getPropertyList(IIII)Landroid/mtp/MtpPropertyList;

    move-result-object v2

    goto :goto_b

    .line 485
    .end local v0           #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    :cond_43
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpPropertyGroup;

    .line 486
    .restart local v0       #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    if-nez v0, :cond_3a

    .line 487
    const/4 v2, 0x1

    new-array v1, v2, [I

    long-to-int v2, p4

    aput v2, v1, v4

    .line 488
    .restart local v1       #propertyList:[I
    new-instance v0, Landroid/mtp/MtpPropertyGroup;

    .end local v0           #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3, v1}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;[I)V

    .line 489
    .restart local v0       #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    long-to-int v4, p4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a
.end method

.method private getObjectReferences(I)[I
    .registers 14
    .parameter "handle"

    .prologue
    const/4 v11, 0x0

    .line 744
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 745
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 747
    .local v6, c:Landroid/database/Cursor;
    :try_start_9
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    sget-object v2, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_52
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_43

    move-result-object v6

    .line 748
    if-nez v6, :cond_1d

    .line 763
    if-eqz v6, :cond_1b

    .line 764
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1b
    move-object v0, v11

    .line 767
    :goto_1c
    return-object v0

    .line 751
    :cond_1d
    :try_start_1d
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 752
    .local v7, count:I
    if-lez v7, :cond_3c

    .line 753
    new-array v10, v7, [I

    .line 754
    .local v10, result:[I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_26
    if-ge v9, v7, :cond_35

    .line 755
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 756
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v10, v9
    :try_end_32
    .catchall {:try_start_1d .. :try_end_32} :catchall_52
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_32} :catch_43

    .line 754
    add-int/lit8 v9, v9, 0x1

    goto :goto_26

    .line 763
    :cond_35
    if-eqz v6, :cond_3a

    .line 764
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3a
    move-object v0, v10

    goto :goto_1c

    .line 763
    .end local v9           #i:I
    .end local v10           #result:[I
    :cond_3c
    if-eqz v6, :cond_41

    .line 764
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v7           #count:I
    :cond_41
    :goto_41
    move-object v0, v11

    .line 767
    goto :goto_1c

    .line 760
    :catch_43
    move-exception v0

    move-object v8, v0

    .line 761
    .local v8, e:Landroid/os/RemoteException;
    :try_start_45
    const-string v0, "MtpDatabase"

    const-string v2, "RemoteException in getObjectList"

    invoke-static {v0, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_52

    .line 763
    if-eqz v6, :cond_41

    .line 764
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_41

    .line 763
    .end local v8           #e:Landroid/os/RemoteException;
    :catchall_52
    move-exception v0

    if-eqz v6, :cond_58

    .line 764
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_58
    throw v0
.end method

.method private getSupportedCaptureFormats()[I
    .registers 2

    .prologue
    .line 317
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSupportedDeviceProperties()[I
    .registers 2

    .prologue
    .line 461
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 0x4
        0x1t 0xd4t 0x0t 0x0t
        0x2t 0xd4t 0x0t 0x0t
        0x3t 0x50t 0x0t 0x0t
    .end array-data
.end method

.method private getSupportedObjectProperties(I)[I
    .registers 3
    .parameter "format"

    .prologue
    .line 437
    sparse-switch p1, :sswitch_data_12

    .line 456
    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    :goto_5
    return-object v0

    .line 443
    :sswitch_6
    sget-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    goto :goto_5

    .line 447
    :sswitch_9
    sget-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    goto :goto_5

    .line 452
    :sswitch_c
    sget-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    goto :goto_5

    .line 454
    :sswitch_f
    sget-object v0, Landroid/mtp/MtpDatabase;->ALL_PROPERTIES:[I

    goto :goto_5

    .line 437
    :sswitch_data_12
    .sparse-switch
        0x0 -> :sswitch_f
        0x3008 -> :sswitch_6
        0x3009 -> :sswitch_6
        0x300b -> :sswitch_9
        0x3801 -> :sswitch_c
        0x3804 -> :sswitch_c
        0x3807 -> :sswitch_c
        0x380b -> :sswitch_c
        0xb901 -> :sswitch_6
        0xb902 -> :sswitch_6
        0xb903 -> :sswitch_6
        0xb981 -> :sswitch_9
        0xb984 -> :sswitch_9
    .end sparse-switch
.end method

.method private getSupportedPlaybackFormats()[I
    .registers 2

    .prologue
    .line 285
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 0x4
        0x0t 0x30t 0x0t 0x0t
        0x1t 0x30t 0x0t 0x0t
        0x4t 0x30t 0x0t 0x0t
        0x5t 0x30t 0x0t 0x0t
        0x8t 0x30t 0x0t 0x0t
        0x9t 0x30t 0x0t 0x0t
        0xbt 0x30t 0x0t 0x0t
        0x1t 0x38t 0x0t 0x0t
        0x2t 0x38t 0x0t 0x0t
        0x7t 0x38t 0x0t 0x0t
        0x8t 0x38t 0x0t 0x0t
        0xbt 0x38t 0x0t 0x0t
        0xdt 0x38t 0x0t 0x0t
        0x1t 0xb9t 0x0t 0x0t
        0x2t 0xb9t 0x0t 0x0t
        0x3t 0xb9t 0x0t 0x0t
        0x82t 0xb9t 0x0t 0x0t
        0x83t 0xb9t 0x0t 0x0t
        0x84t 0xb9t 0x0t 0x0t
        0x5t 0xbat 0x0t 0x0t
        0x10t 0xbat 0x0t 0x0t
        0x11t 0xbat 0x0t 0x0t
        0x14t 0xbat 0x0t 0x0t
        0x82t 0xbat 0x0t 0x0t
    .end array-data
.end method

.method private final native native_finalize()V
.end method

.method private final native native_setup()V
.end method

.method private openDevicePropertiesDatabase(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 130
    const-string v1, "device-properties"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mDevicePropDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 131
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mDevicePropDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    .line 134
    .local v0, version:I
    if-eq v0, v4, :cond_26

    .line 135
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mDevicePropDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "CREATE TABLE properties (_id INTEGER PRIMARY KEY AUTOINCREMENT,code INTEGER UNIQUE ON CONFLICT REPLACE,value TEXT);"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mDevicePropDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "CREATE INDEX property_index ON properties (code);"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mDevicePropDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 143
    :cond_26
    return-void
.end method

.method private renameFile(ILjava/lang/String;)I
    .registers 24
    .parameter "handle"
    .parameter "newName"

    .prologue
    .line 497
    const/4 v11, 0x0

    .line 500
    .local v11, c:Landroid/database/Cursor;
    const/16 v17, 0x0

    .line 501
    .local v17, path:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v5

    .line 503
    .local v9, whereArgs:[Ljava/lang/String;
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    move-object v6, v0

    sget-object v7, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    const-string v8, "_id=?"

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 504
    if-eqz v11, :cond_2d

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 505
    const/4 v5, 0x1

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_48
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_2c} :catch_37

    move-result-object v17

    .line 511
    :cond_2d
    if-eqz v11, :cond_32

    .line 512
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 515
    :cond_32
    if-nez v17, :cond_4f

    .line 516
    const/16 v5, 0x2009

    .line 551
    :cond_36
    :goto_36
    return v5

    .line 507
    :catch_37
    move-exception v5

    move-object v12, v5

    .line 508
    .local v12, e:Landroid/os/RemoteException;
    :try_start_39
    const-string v5, "MtpDatabase"

    const-string v6, "RemoteException in getObjectFilePath"

    invoke-static {v5, v6, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_48

    .line 509
    const/16 v5, 0x2002

    .line 511
    if-eqz v11, :cond_36

    .line 512
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_36

    .line 511
    .end local v12           #e:Landroid/os/RemoteException;
    :catchall_48
    move-exception v5

    if-eqz v11, :cond_4e

    .line 512
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_4e
    throw v5

    .line 520
    :cond_4f
    new-instance v16, Ljava/io/File;

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 521
    .local v16, oldFile:Ljava/io/File;
    const/16 v5, 0x2f

    move-object/from16 v0, v17

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    .line 522
    .local v13, lastSlash:I
    const/4 v5, 0x1

    if-gt v13, v5, :cond_63

    .line 523
    const/16 v5, 0x2002

    goto :goto_36

    .line 525
    :cond_63
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    add-int/lit8 v7, v13, 0x1

    move-object/from16 v0, v17

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 526
    .local v15, newPath:Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 527
    .local v14, newFile:Ljava/io/File;
    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v18

    .line 528
    .local v18, success:Z
    if-nez v18, :cond_c0

    .line 529
    const-string v5, "MtpDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "renaming "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/16 v5, 0x2002

    goto/16 :goto_36

    .line 534
    :cond_c0
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 535
    .local v20, values:Landroid/content/ContentValues;
    const-string v5, "_data"

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const/16 v19, 0x0

    .line 540
    .local v19, updated:I
    :try_start_d0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    move-object v6, v0

    const-string v7, "_id=?"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v20

    move-object v3, v7

    move-object v4, v9

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_e5
    .catch Landroid/os/RemoteException; {:try_start_d0 .. :try_end_e5} :catch_117

    move-result v19

    .line 544
    :goto_e6
    if-nez v19, :cond_121

    .line 545
    const-string v5, "MtpDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to update path for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 548
    const/16 v5, 0x2002

    goto/16 :goto_36

    .line 541
    :catch_117
    move-exception v5

    move-object v12, v5

    .line 542
    .restart local v12       #e:Landroid/os/RemoteException;
    const-string v5, "MtpDatabase"

    const-string v6, "RemoteException in mMediaProvider.update"

    invoke-static {v5, v6, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e6

    .line 551
    .end local v12           #e:Landroid/os/RemoteException;
    :cond_121
    const/16 v5, 0x2001

    goto/16 :goto_36
.end method

.method private sessionEnded()V
    .registers 4

    .prologue
    .line 795
    iget-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    if-eqz v0, :cond_13

    .line 796
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.action.MTP_SESSION_END"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 797
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 799
    :cond_13
    return-void
.end method

.method private sessionStarted()V
    .registers 2

    .prologue
    .line 791
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 792
    return-void
.end method

.method private setDeviceProperty(IJLjava/lang/String;)I
    .registers 10
    .parameter "property"
    .parameter "intValue"
    .parameter "stringValue"

    .prologue
    const-string v2, "code"

    .line 611
    packed-switch p1, :pswitch_data_2e

    .line 626
    const/16 v2, 0x200a

    :goto_7
    return v2

    .line 616
    :pswitch_8
    :try_start_8
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 617
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "code"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 618
    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mDevicePropDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "properties"

    const-string v4, "code"

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_26} :catch_29

    .line 620
    const/16 v2, 0x2001

    goto :goto_7

    .line 621
    .end local v1           #values:Landroid/content/ContentValues;
    :catch_29
    move-exception v2

    move-object v0, v2

    .line 622
    .local v0, e:Ljava/lang/Exception;
    const/16 v2, 0x2002

    goto :goto_7

    .line 611
    :pswitch_data_2e
    .packed-switch 0xd401
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method private setObjectProperty(IIJLjava/lang/String;)I
    .registers 7
    .parameter "handle"
    .parameter "property"
    .parameter "intValue"
    .parameter "stringValue"

    .prologue
    .line 556
    packed-switch p2, :pswitch_data_c

    .line 561
    const v0, 0xa80a

    :goto_6
    return v0

    .line 558
    :pswitch_7
    invoke-direct {p0, p1, p5}, Landroid/mtp/MtpDatabase;->renameFile(ILjava/lang/String;)I

    move-result v0

    goto :goto_6

    .line 556
    :pswitch_data_c
    .packed-switch 0xdc07
        :pswitch_7
    .end packed-switch
.end method

.method private setObjectReferences(I[I)I
    .registers 12
    .parameter "handle"
    .parameter "references"

    .prologue
    .line 771
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 772
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v7, p1

    invoke-static {v6, v7, v8}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 773
    .local v3, uri:Landroid/net/Uri;
    array-length v0, p2

    .line 774
    .local v0, count:I
    new-array v5, v0, [Landroid/content/ContentValues;

    .line 775
    .local v5, valuesList:[Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    if-ge v2, v0, :cond_25

    .line 776
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 777
    .local v4, values:Landroid/content/ContentValues;
    const-string v6, "_id"

    aget v7, p2, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 778
    aput-object v4, v5, v2

    .line 775
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 781
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_25
    :try_start_25
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    invoke-interface {v6, v3, v5}, Landroid/content/IContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2a} :catch_30

    move-result v6

    if-lez v6, :cond_39

    .line 782
    const/16 v6, 0x2001

    .line 787
    :goto_2f
    return v6

    .line 784
    :catch_30
    move-exception v6

    move-object v1, v6

    .line 785
    .local v1, e:Landroid/os/RemoteException;
    const-string v6, "MtpDatabase"

    const-string v7, "RemoteException in setObjectReferences"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 787
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_39
    const/16 v6, 0x2002

    goto :goto_2f
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 123
    :try_start_0
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_finalize()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 125
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 127
    return-void

    .line 125
    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
