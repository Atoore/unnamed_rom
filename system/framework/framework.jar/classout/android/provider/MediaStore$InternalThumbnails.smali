.class Landroid/provider/MediaStore$InternalThumbnails;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalThumbnails"
.end annotation


# static fields
.field static final DEFAULT_GROUP_ID:I = 0x0

.field private static final FULL_SCREEN_KIND:I = 0x2

.field private static final MICRO_KIND:I = 0x3

.field private static final MINI_KIND:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;

.field private static sThumbBuf:[B

.field private static final sThumbBufLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 410
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    .line 412
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cancelThumbnailRequest(Landroid/content/ContentResolver;JLandroid/net/Uri;J)V
    .registers 13
    .parameter "cr"
    .parameter "origId"
    .parameter "baseUri"
    .parameter "groupId"

    .prologue
    .line 470
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "cancel"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "orig_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "group_id"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 473
    .local v1, cancelUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 475
    .local v6, c:Landroid/database/Cursor;
    :try_start_26
    sget-object v2, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_36

    move-result-object v6

    .line 478
    if-eqz v6, :cond_35

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 480
    :cond_35
    return-void

    .line 478
    :catchall_36
    move-exception v0

    if-eqz v6, :cond_3c

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3c
    throw v0
.end method

.method private static getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 10
    .parameter "c"
    .parameter "baseUri"
    .parameter "cr"
    .parameter "options"

    .prologue
    .line 416
    const/4 v0, 0x0

    .line 417
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 419
    .local v3, thumbUri:Landroid/net/Uri;
    const/4 v1, 0x0

    :try_start_3
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 420
    .local v1, thumbId:J
    const/4 v4, 0x1

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 421
    .local p0, filePath:Ljava/lang/String;
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_f} :catch_2f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_f} :catch_57
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_f} :catch_7f

    move-result-object v1

    .line 422
    .end local v3           #thumbUri:Landroid/net/Uri;
    .local v1, thumbUri:Landroid/net/Uri;
    :try_start_10
    const-string/jumbo p0, "r"

    .end local p0           #filePath:Ljava/lang/String;
    invoke-virtual {p2, v1, p0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    .line 433
    .local p1, pfdInput:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-lez p0, :cond_c1

    .line 434
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p0, p2, p3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_29} :catch_b7
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_29} :catch_af
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_29} :catch_a7

    .end local p2
    move-result-object p0

    .line 446
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :goto_2a
    :try_start_2a
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_2d} :catch_bd
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_b4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2a .. :try_end_2d} :catch_ac

    move-object p1, v1

    .line 455
    .end local v1           #thumbUri:Landroid/net/Uri;
    .end local p3
    .local p1, thumbUri:Landroid/net/Uri;
    :goto_2e
    return-object p0

    .line 447
    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v3       #thumbUri:Landroid/net/Uri;
    .local p1, baseUri:Landroid/net/Uri;
    .restart local p2
    .restart local p3
    :catch_2f
    move-exception p0

    move-object p1, p0

    move-object p2, v3

    .end local v3           #thumbUri:Landroid/net/Uri;
    .local p2, thumbUri:Landroid/net/Uri;
    move-object p0, v0

    .line 448
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    .local p1, ex:Ljava/io/FileNotFoundException;
    :goto_33
    const-string p3, "MediaStore"

    .end local p3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "couldn\'t open thumbnail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #ex:Ljava/io/FileNotFoundException;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, p2

    .line 454
    .end local p2           #thumbUri:Landroid/net/Uri;
    .local p1, thumbUri:Landroid/net/Uri;
    goto :goto_2e

    .line 449
    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v3       #thumbUri:Landroid/net/Uri;
    .local p1, baseUri:Landroid/net/Uri;
    .local p2, cr:Landroid/content/ContentResolver;
    .restart local p3
    :catch_57
    move-exception p0

    move-object p1, p0

    move-object p2, v3

    .end local v3           #thumbUri:Landroid/net/Uri;
    .local p2, thumbUri:Landroid/net/Uri;
    move-object p0, v0

    .line 450
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    .local p1, ex:Ljava/io/IOException;
    :goto_5b
    const-string p3, "MediaStore"

    .end local p3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "couldn\'t open thumbnail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #ex:Ljava/io/IOException;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, p2

    .line 454
    .end local p2           #thumbUri:Landroid/net/Uri;
    .local p1, thumbUri:Landroid/net/Uri;
    goto :goto_2e

    .line 451
    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v3       #thumbUri:Landroid/net/Uri;
    .local p1, baseUri:Landroid/net/Uri;
    .local p2, cr:Landroid/content/ContentResolver;
    .restart local p3
    :catch_7f
    move-exception p0

    move-object p1, p0

    move-object p2, v3

    .end local v3           #thumbUri:Landroid/net/Uri;
    .local p2, thumbUri:Landroid/net/Uri;
    move-object p0, v0

    .line 452
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    .local p1, ex:Ljava/lang/OutOfMemoryError;
    :goto_83
    const-string p3, "MediaStore"

    .end local p3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to allocate memory for thumbnail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #ex:Ljava/lang/OutOfMemoryError;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, p2

    .end local p2           #thumbUri:Landroid/net/Uri;
    .local p1, thumbUri:Landroid/net/Uri;
    goto :goto_2e

    .line 451
    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .end local p1           #thumbUri:Landroid/net/Uri;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #thumbUri:Landroid/net/Uri;
    .restart local p3
    :catch_a7
    move-exception p0

    move-object p1, p0

    move-object p2, v1

    .end local v1           #thumbUri:Landroid/net/Uri;
    .restart local p2       #thumbUri:Landroid/net/Uri;
    move-object p0, v0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_83

    .end local p2           #thumbUri:Landroid/net/Uri;
    .restart local v1       #thumbUri:Landroid/net/Uri;
    .local p1, pfdInput:Landroid/os/ParcelFileDescriptor;
    :catch_ac
    move-exception p1

    move-object p2, v1

    .end local v1           #thumbUri:Landroid/net/Uri;
    .restart local p2       #thumbUri:Landroid/net/Uri;
    goto :goto_83

    .line 449
    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .end local p1           #pfdInput:Landroid/os/ParcelFileDescriptor;
    .end local p2           #thumbUri:Landroid/net/Uri;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #thumbUri:Landroid/net/Uri;
    :catch_af
    move-exception p0

    move-object p1, p0

    move-object p2, v1

    .end local v1           #thumbUri:Landroid/net/Uri;
    .restart local p2       #thumbUri:Landroid/net/Uri;
    move-object p0, v0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_5b

    .end local p2           #thumbUri:Landroid/net/Uri;
    .restart local v1       #thumbUri:Landroid/net/Uri;
    .restart local p1       #pfdInput:Landroid/os/ParcelFileDescriptor;
    :catch_b4
    move-exception p1

    move-object p2, v1

    .end local v1           #thumbUri:Landroid/net/Uri;
    .restart local p2       #thumbUri:Landroid/net/Uri;
    goto :goto_5b

    .line 447
    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .end local p1           #pfdInput:Landroid/os/ParcelFileDescriptor;
    .end local p2           #thumbUri:Landroid/net/Uri;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #thumbUri:Landroid/net/Uri;
    :catch_b7
    move-exception p0

    move-object p1, p0

    move-object p2, v1

    .end local v1           #thumbUri:Landroid/net/Uri;
    .restart local p2       #thumbUri:Landroid/net/Uri;
    move-object p0, v0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_33

    .end local p2           #thumbUri:Landroid/net/Uri;
    .restart local v1       #thumbUri:Landroid/net/Uri;
    .restart local p1       #pfdInput:Landroid/os/ParcelFileDescriptor;
    :catch_bd
    move-exception p1

    move-object p2, v1

    .end local v1           #thumbUri:Landroid/net/Uri;
    .restart local p2       #thumbUri:Landroid/net/Uri;
    goto/16 :goto_33

    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #thumbUri:Landroid/net/Uri;
    .local p2, cr:Landroid/content/ContentResolver;
    :cond_c1
    move-object p0, v0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_2a
.end method

.method static getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .registers 39
    .parameter "cr"
    .parameter "origId"
    .parameter "groupId"
    .parameter "kind"
    .parameter "options"
    .parameter "baseUri"
    .parameter "isVideo"

    .prologue
    .line 498
    const/4 v13, 0x0

    .line 499
    .local v13, bitmap:Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    .line 502
    .local v12, filePath:Ljava/lang/String;
    const/16 v21, 0x0

    .line 503
    .local v21, saveMini:Z
    const/16 v23, 0x0

    .line 504
    .local v23, thumbUri:Landroid/net/Uri;
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "thumbnails"

    const-string/jumbo v7, "media"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 513
    .local v6, uri:Landroid/net/Uri;
    invoke-static/range {p7 .. p7}, Landroid/media/MiniThumbFile;->instance(Landroid/net/Uri;)Landroid/media/MiniThumbFile;

    move-result-object v22

    .line 522
    .local v22, thumbFile:Landroid/media/MiniThumbFile;
    move-object/from16 v0, v22

    move-wide/from16 v1, p1

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MiniThumbFile;->getMagic(JLandroid/content/ContentResolver;)J

    move-result-wide v17

    .line 528
    .local v17, magic:J
    const-wide/16 v14, 0x0

    .line 529
    .local v14, mini_thumb_magic:J
    const/4 v11, 0x0

    .line 531
    .local v11, c0:Landroid/database/Cursor;
    const/4 v5, 0x2

    :try_start_36
    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v8, "mini_thumb_magic"

    aput-object v8, v7, v5

    const/4 v5, 0x1

    const-string v8, "_data"

    aput-object v8, v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4b
    .catchall {:try_start_36 .. :try_end_4b} :catchall_d5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_36 .. :try_end_4b} :catch_c1

    move-result-object v5

    .line 532
    .end local v11           #c0:Landroid/database/Cursor;
    .local v5, c0:Landroid/database/Cursor;
    if-eqz v5, :cond_8af

    :try_start_4e
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_8af

    .line 533
    const/4 v7, 0x0

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J
    :try_end_58
    .catchall {:try_start_4e .. :try_end_58} :catchall_809
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4e .. :try_end_58} :catch_81b

    move-result-wide v8

    .line 534
    .end local v14           #mini_thumb_magic:J
    .local v8, mini_thumb_magic:J
    const/4 v7, 0x1

    :try_start_5a
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_812
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5a .. :try_end_5d} :catch_81f

    move-result-object v7

    .line 539
    .end local v12           #filePath:Ljava/lang/String;
    .local v7, filePath:Ljava/lang/String;
    :goto_5e
    if-eqz v5, :cond_8a8

    .line 540
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move-object v15, v5

    .end local v5           #c0:Landroid/database/Cursor;
    .local v15, c0:Landroid/database/Cursor;
    move-wide/from16 v19, v8

    .end local v8           #mini_thumb_magic:J
    .local v19, mini_thumb_magic:J
    move-object/from16 v16, v7

    .line 543
    .end local v7           #filePath:Ljava/lang/String;
    .local v16, filePath:Ljava/lang/String;
    :goto_68
    const-wide/16 v7, 0x0

    cmp-long v5, v17, v7

    if-eqz v5, :cond_89a

    cmp-long v5, v17, v19

    if-nez v5, :cond_89a

    .line 546
    const/4 v5, 0x3

    move/from16 v0, p5

    move v1, v5

    if-ne v0, v1, :cond_e9

    .line 547
    sget-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    .end local p3
    monitor-enter p3

    .line 548
    :try_start_7b
    sget-object p4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    if-nez p4, :cond_89

    .line 549
    const/16 p4, 0x2710

    move/from16 v0, p4

    new-array v0, v0, [B

    move-object/from16 p4, v0

    sput-object p4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 558
    :cond_89
    sget-object p4, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    move-object/from16 v0, v22

    move-wide/from16 v1, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[BLandroid/content/ContentResolver;)[B

    move-result-object p0

    .end local p0
    if-eqz p0, :cond_89d

    .line 561
    sget-object p0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    const/16 p1, 0x0

    sget-object p2, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .end local p1
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 p2, v0

    invoke-static/range {p0 .. p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_a7
    .catchall {:try_start_7b .. :try_end_a7} :catchall_e2

    move-result-object p0

    .line 562
    .end local v13           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    if-nez p0, :cond_b1

    .line 563
    :try_start_aa
    const-string p1, "MediaStore"

    const-string p2, "couldn\'t decode byte array."

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_b1
    :goto_b1
    monitor-exit p3
    :try_end_b2
    .catchall {:try_start_aa .. :try_end_b2} :catchall_806

    move-object/from16 p1, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .local p1, c0:Landroid/database/Cursor;
    move-wide/from16 p5, v19

    .end local v19           #mini_thumb_magic:J
    .end local p6
    .local p5, mini_thumb_magic:J
    move-wide/from16 p3, v17

    .end local v17           #magic:J
    .local p3, magic:J
    move-object/from16 p8, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local p8, thumbUri:Landroid/net/Uri;
    move/from16 p7, v21

    .end local v21           #saveMini:Z
    .local p7, saveMini:Z
    move-object/from16 p2, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p2, filePath:Ljava/lang/String;
    move-object/from16 v5, p0

    .line 734
    .end local v6           #uri:Landroid/net/Uri;
    :goto_c0
    return-object v5

    .line 536
    .end local p2           #filePath:Ljava/lang/String;
    .restart local v6       #uri:Landroid/net/Uri;
    .restart local v11       #c0:Landroid/database/Cursor;
    .restart local v12       #filePath:Ljava/lang/String;
    .restart local v13       #bitmap:Landroid/graphics/Bitmap;
    .restart local v14       #mini_thumb_magic:J
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, groupId:J
    .local p5, kind:I
    .restart local p6
    .local p7, baseUri:Landroid/net/Uri;
    .local p8, isVideo:Z
    :catch_c1
    move-exception v5

    move-object v7, v5

    move-wide v8, v14

    .end local v14           #mini_thumb_magic:J
    .restart local v8       #mini_thumb_magic:J
    move-object v5, v11

    .line 537
    .end local v11           #c0:Landroid/database/Cursor;
    .restart local v5       #c0:Landroid/database/Cursor;
    .local v7, ex:Landroid/database/sqlite/SQLiteException;
    :goto_c5
    :try_start_c5
    const-string v10, "MediaStore"

    invoke-static {v10, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ca
    .catchall {:try_start_c5 .. :try_end_ca} :catchall_812

    .line 539
    if-eqz v5, :cond_8a1

    .line 540
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move-object v15, v5

    .end local v5           #c0:Landroid/database/Cursor;
    .restart local v15       #c0:Landroid/database/Cursor;
    move-wide/from16 v19, v8

    .end local v8           #mini_thumb_magic:J
    .restart local v19       #mini_thumb_magic:J
    move-object/from16 v16, v12

    .end local v12           #filePath:Ljava/lang/String;
    .restart local v16       #filePath:Ljava/lang/String;
    goto :goto_68

    .line 539
    .end local v7           #ex:Landroid/database/sqlite/SQLiteException;
    .end local v15           #c0:Landroid/database/Cursor;
    .end local v16           #filePath:Ljava/lang/String;
    .end local v19           #mini_thumb_magic:J
    .restart local v11       #c0:Landroid/database/Cursor;
    .restart local v12       #filePath:Ljava/lang/String;
    .restart local v14       #mini_thumb_magic:J
    :catchall_d5
    move-exception p0

    move-object/from16 p3, p0

    move-wide/from16 p1, v14

    .end local v14           #mini_thumb_magic:J
    .local p1, mini_thumb_magic:J
    move-object/from16 p0, v11

    .end local v11           #c0:Landroid/database/Cursor;
    .end local p3           #groupId:J
    .local p0, c0:Landroid/database/Cursor;
    :goto_dc
    if-eqz p0, :cond_e1

    .line 540
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    :cond_e1
    throw p3

    .line 566
    .end local v12           #filePath:Ljava/lang/String;
    .end local p0           #c0:Landroid/database/Cursor;
    .end local p1           #mini_thumb_magic:J
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v19       #mini_thumb_magic:J
    :catchall_e2
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p0, v13

    .end local v13           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :goto_e7
    :try_start_e7
    monitor-exit p3
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_806

    throw p1

    .line 568
    .restart local v13       #bitmap:Landroid/graphics/Bitmap;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p3       #groupId:J
    :cond_e9
    const/4 v5, 0x1

    move/from16 v0, p5

    move v1, v5

    if-ne v0, v1, :cond_89a

    .line 569
    if-eqz p8, :cond_13f

    const-string/jumbo v5, "video_id="

    move-object v7, v5

    .line 570
    .local v7, column:Ljava/lang/String;
    :goto_f5
    const/4 v5, 0x0

    .line 572
    .local v5, c:Landroid/database/Cursor;
    :try_start_f6
    sget-object v9, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .end local v7           #column:Ljava/lang/String;
    move-object v0, v7

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p7

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_115
    .catchall {:try_start_f6 .. :try_end_115} :catchall_19b

    move-result-object v7

    .line 573
    .end local v5           #c:Landroid/database/Cursor;
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_143

    :try_start_118
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_143

    .line 574
    move-object v0, v7

    move-object/from16 v1, p7

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_128
    .catchall {:try_start_118 .. :try_end_128} :catchall_7ff

    move-result-object v5

    .line 575
    .end local v13           #bitmap:Landroid/graphics/Bitmap;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_144

    .line 580
    if-eqz v7, :cond_130

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_130
    move-object/from16 p1, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .local p1, c0:Landroid/database/Cursor;
    move-wide/from16 p5, v19

    .end local v19           #mini_thumb_magic:J
    .end local p6
    .local p5, mini_thumb_magic:J
    move-wide/from16 p3, v17

    .end local v17           #magic:J
    .local p3, magic:J
    move-object/from16 p8, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local p8, thumbUri:Landroid/net/Uri;
    move/from16 p7, v21

    .end local v21           #saveMini:Z
    .local p7, saveMini:Z
    move-object/from16 p2, v16

    .end local v16           #filePath:Ljava/lang/String;
    .restart local p2       #filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto :goto_c0

    .line 569
    .end local v7           #c:Landroid/database/Cursor;
    .end local p2           #filePath:Ljava/lang/String;
    .restart local v13       #bitmap:Landroid/graphics/Bitmap;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, groupId:J
    .local p5, kind:I
    .restart local p6
    .local p7, baseUri:Landroid/net/Uri;
    .local p8, isVideo:Z
    :cond_13f
    const-string v5, "image_id="

    move-object v7, v5

    goto :goto_f5

    .restart local v7       #c:Landroid/database/Cursor;
    :cond_143
    move-object v5, v13

    .line 580
    .end local v13           #bitmap:Landroid/graphics/Bitmap;
    .restart local v5       #bitmap:Landroid/graphics/Bitmap;
    :cond_144
    if-eqz v7, :cond_149

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 585
    .end local v7           #c:Landroid/database/Cursor;
    :cond_149
    :goto_149
    const/4 v13, 0x0

    .line 587
    .local v13, c:Landroid/database/Cursor;
    :try_start_14a
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "blocking"

    const-string v9, "1"

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string/jumbo v8, "orig_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "group_id"

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    .end local p3           #groupId:J
    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    .line 590
    .local v8, blockingUri:Landroid/net/Uri;
    sget-object v9, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_17d
    .catchall {:try_start_14a .. :try_end_17d} :catchall_4ad
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14a .. :try_end_17d} :catch_742
    .catch Ljava/io/FileNotFoundException; {:try_start_14a .. :try_end_17d} :catch_41f
    .catch Ljava/io/IOException; {:try_start_14a .. :try_end_17d} :catch_466

    move-result-object p4

    .line 592
    .end local v13           #c:Landroid/database/Cursor;
    .local p4, c:Landroid/database/Cursor;
    if-nez p4, :cond_1a6

    const/16 p0, 0x0

    .line 732
    .end local p0           #cr:Landroid/content/ContentResolver;
    if-eqz p4, :cond_187

    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->close()V

    :cond_187
    move-object/from16 p1, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .local p1, c0:Landroid/database/Cursor;
    move-wide/from16 p5, v19

    .end local v19           #mini_thumb_magic:J
    .end local p6
    .local p5, mini_thumb_magic:J
    move-wide/from16 p3, v17

    .end local v17           #magic:J
    .end local p4           #c:Landroid/database/Cursor;
    .local p3, magic:J
    move-object/from16 p8, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local p8, thumbUri:Landroid/net/Uri;
    move/from16 p7, v21

    .end local v21           #saveMini:Z
    .local p7, saveMini:Z
    move-object/from16 p2, v16

    .end local v16           #filePath:Ljava/lang/String;
    .restart local p2       #filePath:Ljava/lang/String;
    move-object/from16 v24, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local v24, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v5, p0

    move-object/from16 p0, v24

    .end local v24           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_c0

    .line 580
    .end local v8           #blockingUri:Landroid/net/Uri;
    .end local p2           #filePath:Ljava/lang/String;
    .local v5, c:Landroid/database/Cursor;
    .local v13, bitmap:Landroid/graphics/Bitmap;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, groupId:J
    .local p5, kind:I
    .restart local p6
    .local p7, baseUri:Landroid/net/Uri;
    .local p8, isVideo:Z
    :catchall_19b
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p0, v5

    .end local v5           #c:Landroid/database/Cursor;
    .end local p1           #origId:J
    .local p0, c:Landroid/database/Cursor;
    :goto_1a0
    if-eqz p0, :cond_1a5

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    :cond_1a5
    throw p1

    .line 595
    .end local v13           #bitmap:Landroid/graphics/Bitmap;
    .end local p3           #groupId:J
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #blockingUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1       #origId:J
    .restart local p4       #c:Landroid/database/Cursor;
    :cond_1a6
    const/16 p3, 0x3

    move/from16 v0, p5

    move/from16 v1, p3

    if-ne v0, v1, :cond_32b

    .line 622
    const/16 p3, 0x2

    :try_start_1b0
    move/from16 v0, p3

    new-array v0, v0, [Ljava/lang/String;

    move-object v11, v0

    const/16 p3, 0x0

    const-string/jumbo p6, "mini_thumb_magic"

    .end local p6
    aput-object p6, v11, p3

    const/16 p3, 0x1

    const-string p6, "_data"

    aput-object p6, v11, p3

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object v10, v6

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1cb
    .catchall {:try_start_1b0 .. :try_end_1cb} :catchall_2c0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b0 .. :try_end_1cb} :catch_2a4

    move-result-object p3

    .line 623
    .end local v15           #c0:Landroid/database/Cursor;
    .local p3, c0:Landroid/database/Cursor;
    if-eqz p3, :cond_894

    :try_start_1ce
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p6

    if-eqz p6, :cond_894

    .line 624
    const/16 p6, 0x0

    move-object/from16 v0, p3

    move/from16 v1, p6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1dd
    .catchall {:try_start_1ce .. :try_end_1dd} :catchall_7e1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1ce .. :try_end_1dd} :catch_7f7

    move-result-wide v6

    .line 625
    .end local v19           #mini_thumb_magic:J
    .local v6, mini_thumb_magic:J
    const/16 p6, 0x1

    :try_start_1e0
    move-object/from16 v0, p3

    move/from16 v1, p6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1e7
    .catchall {:try_start_1e0 .. :try_end_1e7} :catchall_7ec
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e0 .. :try_end_1e7} :catch_7fc

    move-result-object p6

    .line 630
    .end local v16           #filePath:Ljava/lang/String;
    .local p6, filePath:Ljava/lang/String;
    :goto_1e8
    if-eqz p3, :cond_88d

    .line 631
    :try_start_1ea
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V
    :try_end_1ed
    .catchall {:try_start_1ea .. :try_end_1ed} :catchall_4c6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1ea .. :try_end_1ed} :catch_757
    .catch Ljava/io/FileNotFoundException; {:try_start_1ea .. :try_end_1ed} :catch_674
    .catch Ljava/io/IOException; {:try_start_1ea .. :try_end_1ed} :catch_5a6

    move-wide v8, v6

    .end local v6           #mini_thumb_magic:J
    .local v8, mini_thumb_magic:J
    move-object/from16 p7, p6

    .end local p6           #filePath:Ljava/lang/String;
    .local p7, filePath:Ljava/lang/String;
    move-object/from16 p6, p3

    .line 634
    .end local p3           #c0:Landroid/database/Cursor;
    .local p6, c0:Landroid/database/Cursor;
    :goto_1f2
    const-wide/16 v6, 0x0

    cmp-long p3, v8, v6

    if-eqz p3, :cond_878

    .line 635
    :try_start_1f8
    move-object/from16 v0, v22

    move-wide/from16 v1, p1

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MiniThumbFile;->getMagic(JLandroid/content/ContentResolver;)J
    :try_end_201
    .catchall {:try_start_1f8 .. :try_end_201} :catchall_502
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1f8 .. :try_end_201} :catch_781
    .catch Ljava/io/FileNotFoundException; {:try_start_1f8 .. :try_end_201} :catch_6b1
    .catch Ljava/io/IOException; {:try_start_1f8 .. :try_end_201} :catch_5e3

    move-result-wide v6

    .line 636
    .end local v17           #magic:J
    .local v6, magic:J
    cmp-long p3, v6, v8

    if-nez p3, :cond_868

    .line 637
    :try_start_206
    sget-object v10, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_209
    .catchall {:try_start_206 .. :try_end_209} :catchall_516
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_206 .. :try_end_209} :catch_796
    .catch Ljava/io/FileNotFoundException; {:try_start_206 .. :try_end_209} :catch_6c6
    .catch Ljava/io/IOException; {:try_start_206 .. :try_end_209} :catch_5f8

    .line 638
    :try_start_209
    sget-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    if-nez p3, :cond_217

    .line 639
    const/16 p3, 0x2710

    move/from16 v0, p3

    new-array v0, v0, [B

    move-object/from16 p3, v0

    sput-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 641
    :cond_217
    sget-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    move-object/from16 v0, v22

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[BLandroid/content/ContentResolver;)[B

    move-result-object p3

    if-eqz p3, :cond_864

    .line 642
    sget-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    const/4 v11, 0x0

    sget-object v12, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    array-length v12, v12

    move-object/from16 v0, p3

    move v1, v11

    move v2, v12

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_234
    .catchall {:try_start_209 .. :try_end_234} :catchall_312

    move-result-object p3

    .line 643
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    if-nez p3, :cond_23e

    .line 644
    :try_start_237
    const-string v5, "MediaStore"

    const-string v11, "couldn\'t decode byte array."

    invoke-static {v5, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_23e
    :goto_23e
    monitor-exit v10
    :try_end_23f
    .catchall {:try_start_237 .. :try_end_23f} :catchall_7d7

    move-object/from16 v10, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v10, thumbUri:Landroid/net/Uri;
    move-wide/from16 v24, v6

    .end local v6           #magic:J
    .local v24, magic:J
    move-wide/from16 v5, v24

    .end local v24           #magic:J
    .local v5, magic:J
    move-wide/from16 v26, v8

    .end local v8           #mini_thumb_magic:J
    .local v26, mini_thumb_magic:J
    move-wide/from16 v7, v26

    .end local v26           #mini_thumb_magic:J
    .local v7, mini_thumb_magic:J
    move/from16 v9, v21

    .line 674
    .end local v21           #saveMini:Z
    .local v9, saveMini:Z
    :goto_24b
    if-nez p3, :cond_842

    .line 675
    :try_start_24d
    const-string v11, "MediaStore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Create the thumbnail in memory: origId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v0, v12

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #origId:J
    const-string p2, ", kind="

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", isVideo="

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_287
    .catchall {:try_start_24d .. :try_end_287} :catchall_568
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_24d .. :try_end_287} :catch_7c2
    .catch Ljava/io/FileNotFoundException; {:try_start_24d .. :try_end_287} :catch_71a
    .catch Ljava/io/IOException; {:try_start_24d .. :try_end_287} :catch_64c

    .line 698
    if-nez p7, :cond_3a0

    .line 699
    const/16 p0, 0x0

    .line 732
    .end local p0           #cr:Landroid/content/ContentResolver;
    if-eqz p4, :cond_290

    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->close()V

    :cond_290
    move-object/from16 p1, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .local p1, c0:Landroid/database/Cursor;
    move-object/from16 p8, v10

    .end local v10           #thumbUri:Landroid/net/Uri;
    .local p8, thumbUri:Landroid/net/Uri;
    move-object/from16 p2, p7

    .end local p7           #filePath:Ljava/lang/String;
    .restart local p2       #filePath:Ljava/lang/String;
    move-wide/from16 p5, v7

    .end local v7           #mini_thumb_magic:J
    .local p5, mini_thumb_magic:J
    move/from16 p7, v9

    .end local v9           #saveMini:Z
    .local p7, saveMini:Z
    move-wide/from16 v24, v5

    .end local v5           #magic:J
    .restart local v24       #magic:J
    move-object/from16 v5, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-wide/from16 p3, v24

    .end local v24           #magic:J
    .end local p4           #c:Landroid/database/Cursor;
    .local p3, magic:J
    goto/16 :goto_c0

    .line 627
    .end local p2           #filePath:Ljava/lang/String;
    .end local p3           #magic:J
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, uri:Landroid/net/Uri;
    .local v8, blockingUri:Landroid/net/Uri;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p4       #c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p7, baseUri:Landroid/net/Uri;
    .local p8, isVideo:Z
    :catch_2a4
    move-exception p3

    move-object/from16 p6, p3

    move-wide/from16 v6, v19

    .end local v19           #mini_thumb_magic:J
    .local v6, mini_thumb_magic:J
    move-object/from16 p3, v15

    .line 628
    .end local v15           #c0:Landroid/database/Cursor;
    .local p3, c0:Landroid/database/Cursor;
    .local p6, ex:Landroid/database/sqlite/SQLiteException;
    :goto_2ab
    :try_start_2ab
    const-string p7, "MediaStore"

    .end local p7           #baseUri:Landroid/net/Uri;
    move-object/from16 v0, p7

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b4
    .catchall {:try_start_2ab .. :try_end_2b4} :catchall_7ec

    .line 630
    if-eqz p3, :cond_886

    .line 631
    :try_start_2b6
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V
    :try_end_2b9
    .catchall {:try_start_2b6 .. :try_end_2b9} :catchall_4da
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2b6 .. :try_end_2b9} :catch_76c
    .catch Ljava/io/FileNotFoundException; {:try_start_2b6 .. :try_end_2b9} :catch_689
    .catch Ljava/io/IOException; {:try_start_2b6 .. :try_end_2b9} :catch_5bb

    move-object/from16 p6, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .local p6, c0:Landroid/database/Cursor;
    move-wide v8, v6

    .end local v6           #mini_thumb_magic:J
    .local v8, mini_thumb_magic:J
    move-object/from16 p7, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p7, filePath:Ljava/lang/String;
    goto/16 :goto_1f2

    .line 630
    .end local p6           #c0:Landroid/database/Cursor;
    .local v6, uri:Landroid/net/Uri;
    .local v8, blockingUri:Landroid/net/Uri;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v19       #mini_thumb_magic:J
    .local p7, baseUri:Landroid/net/Uri;
    :catchall_2c0
    move-exception p0

    move-object/from16 p3, p0

    move-wide/from16 p1, v19

    .end local v19           #mini_thumb_magic:J
    .local p1, mini_thumb_magic:J
    move-object/from16 p0, v15

    .end local v6           #uri:Landroid/net/Uri;
    .end local v15           #c0:Landroid/database/Cursor;
    .end local p7           #baseUri:Landroid/net/Uri;
    .local p0, c0:Landroid/database/Cursor;
    :goto_2c7
    if-eqz p0, :cond_2cc

    .line 631
    :try_start_2c9
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    :cond_2cc
    throw p3
    :try_end_2cd
    .catchall {:try_start_2c9 .. :try_end_2cd} :catchall_4ee
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2c9 .. :try_end_2cd} :catch_2cd
    .catch Ljava/io/FileNotFoundException; {:try_start_2c9 .. :try_end_2cd} :catch_69e
    .catch Ljava/io/IOException; {:try_start_2c9 .. :try_end_2cd} :catch_5d0

    .line 725
    :catch_2cd
    move-exception p3

    move-wide/from16 p7, p1

    .end local p1           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .local p5, magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p2, p0

    .end local p0           #c0:Landroid/database/Cursor;
    .local p2, c0:Landroid/database/Cursor;
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .line 726
    .end local v8           #blockingUri:Landroid/net/Uri;
    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    .local p3, ex:Landroid/database/sqlite/SQLiteException;
    :goto_2de
    :try_start_2de
    const-string v7, "MediaStore"

    move-object v0, v7

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2e6
    .catchall {:try_start_2de .. :try_end_2e6} :catchall_592

    .line 732
    if-eqz p1, :cond_822

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    move-object/from16 p3, p4

    .end local p4           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    move-wide/from16 v24, p5

    .end local p5           #magic:J
    .restart local v24       #magic:J
    move-wide/from16 p4, v24

    .end local v24           #magic:J
    .local p4, magic:J
    move/from16 v26, v5

    .end local v5           #saveMini:Z
    .local v26, saveMini:Z
    move-object v5, v6

    .end local v6           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    move-wide/from16 v27, p7

    .end local p7           #mini_thumb_magic:J
    .local v27, mini_thumb_magic:J
    move-wide/from16 p6, v27

    .end local v27           #mini_thumb_magic:J
    .local p6, mini_thumb_magic:J
    move/from16 p8, v26

    .end local v26           #saveMini:Z
    .local p8, saveMini:Z
    :goto_2fa
    move-object/from16 p1, p2

    .end local p2           #c0:Landroid/database/Cursor;
    .local p1, c0:Landroid/database/Cursor;
    move-object/from16 p2, p3

    .end local p3           #filePath:Ljava/lang/String;
    .local p2, filePath:Ljava/lang/String;
    move-wide/from16 v24, p4

    .end local p4           #magic:J
    .restart local v24       #magic:J
    move-wide/from16 p3, v24

    .end local v24           #magic:J
    .local p3, magic:J
    move-object/from16 v26, v5

    .end local v5           #thumbUri:Landroid/net/Uri;
    .local v26, thumbUri:Landroid/net/Uri;
    move-object/from16 v5, p0

    move/from16 v27, p8

    .end local p8           #saveMini:Z
    .local v27, saveMini:Z
    move-object/from16 p8, v26

    .end local v26           #thumbUri:Landroid/net/Uri;
    .local p8, thumbUri:Landroid/net/Uri;
    move-wide/from16 v28, p6

    .end local p6           #mini_thumb_magic:J
    .local v28, mini_thumb_magic:J
    move-wide/from16 p5, v28

    .end local v28           #mini_thumb_magic:J
    .local p5, mini_thumb_magic:J
    move/from16 p7, v27

    .line 734
    .end local v27           #saveMini:Z
    .local p7, saveMini:Z
    goto/16 :goto_c0

    .line 647
    .end local p2           #filePath:Ljava/lang/String;
    .end local p3           #magic:J
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, magic:J
    .local v8, mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .local p8, isVideo:Z
    :catchall_312
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local p1           #origId:J
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :goto_317
    :try_start_317
    monitor-exit v10
    :try_end_318
    .catchall {:try_start_317 .. :try_end_318} :catchall_7de

    :try_start_318
    throw p1
    :try_end_319
    .catchall {:try_start_318 .. :try_end_319} :catchall_52a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_318 .. :try_end_319} :catch_319
    .catch Ljava/io/FileNotFoundException; {:try_start_318 .. :try_end_319} :catch_6db
    .catch Ljava/io/IOException; {:try_start_318 .. :try_end_319} :catch_60d

    .line 725
    :catch_319
    move-exception p1

    move-object/from16 p3, p1

    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .local p2, c0:Landroid/database/Cursor;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    move-wide/from16 p5, v6

    .end local v6           #magic:J
    .local p5, magic:J
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-wide/from16 p7, v8

    .end local v8           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    goto :goto_2de

    .line 652
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, uri:Landroid/net/Uri;
    .local v8, blockingUri:Landroid/net/Uri;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, options:Landroid/graphics/BitmapFactory$Options;
    .local p7, baseUri:Landroid/net/Uri;
    .restart local p8       #isVideo:Z
    :cond_32b
    const/16 p3, 0x1

    move/from16 v0, p5

    move/from16 v1, p3

    if-ne v0, v1, :cond_36e

    .line 653
    :try_start_333
    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_854

    .line 654
    move-object/from16 v0, p4

    move-object/from16 v1, p7

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_344
    .catchall {:try_start_333 .. :try_end_344} :catchall_53e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_333 .. :try_end_344} :catch_38b
    .catch Ljava/io/FileNotFoundException; {:try_start_333 .. :try_end_344} :catch_6ee
    .catch Ljava/io/IOException; {:try_start_333 .. :try_end_344} :catch_620

    move-result-object p3

    .line 657
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    const-wide/16 v5, 0x0

    cmp-long p6, v19, v5

    if-nez p6, :cond_846

    .end local p6           #options:Landroid/graphics/BitmapFactory$Options;
    if-nez p3, :cond_846

    .line 662
    const/16 p6, 0x0

    :try_start_34f
    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 663
    .end local v6           #uri:Landroid/net/Uri;
    .local v5, thumbId:J
    move-object/from16 v0, p7

    move-wide v1, v5

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_35d
    .catchall {:try_start_34f .. :try_end_35d} :catchall_553
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_34f .. :try_end_35d} :catch_7ab
    .catch Ljava/io/FileNotFoundException; {:try_start_34f .. :try_end_35d} :catch_703
    .catch Ljava/io/IOException; {:try_start_34f .. :try_end_35d} :catch_635

    move-result-object p7

    .line 664
    .end local v23           #thumbUri:Landroid/net/Uri;
    .local p7, thumbUri:Landroid/net/Uri;
    const/16 p6, 0x1

    .end local v21           #saveMini:Z
    .local p6, saveMini:Z
    move-wide/from16 v7, v19

    .end local v8           #blockingUri:Landroid/net/Uri;
    .end local v19           #mini_thumb_magic:J
    .restart local v7       #mini_thumb_magic:J
    move-wide/from16 v5, v17

    .end local v17           #magic:J
    .local v5, magic:J
    move-object/from16 v10, p7

    .end local p7           #thumbUri:Landroid/net/Uri;
    .restart local v10       #thumbUri:Landroid/net/Uri;
    move/from16 v9, p6

    .end local p6           #saveMini:Z
    .restart local v9       #saveMini:Z
    move-object/from16 p6, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .local p6, c0:Landroid/database/Cursor;
    move-object/from16 p7, v16

    .line 665
    .end local v16           #filePath:Ljava/lang/String;
    .local p7, filePath:Ljava/lang/String;
    goto/16 :goto_24b

    .line 670
    .end local v7           #mini_thumb_magic:J
    .end local v9           #saveMini:Z
    .end local v10           #thumbUri:Landroid/net/Uri;
    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .restart local v6       #uri:Landroid/net/Uri;
    .restart local v8       #blockingUri:Landroid/net/Uri;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p6, options:Landroid/graphics/BitmapFactory$Options;
    .local p7, baseUri:Landroid/net/Uri;
    :cond_36e
    :try_start_36e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0           #cr:Landroid/content/ContentResolver;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1           #origId:J
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported kind: "

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_38b
    .catchall {:try_start_36e .. :try_end_38b} :catchall_53e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_36e .. :try_end_38b} :catch_38b
    .catch Ljava/io/FileNotFoundException; {:try_start_36e .. :try_end_38b} :catch_6ee
    .catch Ljava/io/IOException; {:try_start_36e .. :try_end_38b} :catch_620

    .line 725
    :catch_38b
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v19

    .end local v19           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .end local p6           #options:Landroid/graphics/BitmapFactory$Options;
    .local p5, magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_2de

    .line 701
    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local v8           #blockingUri:Landroid/net/Uri;
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, magic:J
    .restart local v7       #mini_thumb_magic:J
    .restart local v9       #saveMini:Z
    .restart local v10       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :cond_3a0
    if-eqz p8, :cond_3be

    .line 702
    :try_start_3a2
    move-object/from16 v0, p7

    move/from16 v1, p5

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_3a9
    .catchall {:try_start_3a2 .. :try_end_3a9} :catchall_568
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3a2 .. :try_end_3a9} :catch_7c2
    .catch Ljava/io/FileNotFoundException; {:try_start_3a2 .. :try_end_3a9} :catch_71a
    .catch Ljava/io/IOException; {:try_start_3a2 .. :try_end_3a9} :catch_64c

    move-result-object p0

    .line 732
    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .end local p5           #kind:I
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :goto_3aa
    if-eqz p4, :cond_833

    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->close()V

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move/from16 p8, v9

    .end local v9           #saveMini:Z
    .local p8, saveMini:Z
    move-object/from16 p3, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    move-wide/from16 p6, v7

    .end local v7           #mini_thumb_magic:J
    .local p6, mini_thumb_magic:J
    move-wide/from16 p4, v5

    .end local v5           #magic:J
    .local p4, magic:J
    move-object v5, v10

    .end local v10           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    goto/16 :goto_2fa

    .line 704
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, magic:J
    .restart local v7       #mini_thumb_magic:J
    .restart local v9       #saveMini:Z
    .restart local v10       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .restart local p5       #kind:I
    .local p6, c0:Landroid/database/Cursor;
    .restart local p7       #filePath:Ljava/lang/String;
    .local p8, isVideo:Z
    :cond_3be
    :try_start_3be
    move-object/from16 v0, p7

    move/from16 v1, p5

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_3c5
    .catchall {:try_start_3be .. :try_end_3c5} :catchall_568
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3be .. :try_end_3c5} :catch_7c2
    .catch Ljava/io/FileNotFoundException; {:try_start_3be .. :try_end_3c5} :catch_71a
    .catch Ljava/io/IOException; {:try_start_3be .. :try_end_3c5} :catch_64c

    move-result-object p1

    .line 705
    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p1, bitmap:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_3fa

    .line 706
    if-eqz v9, :cond_3fa

    .line 707
    :try_start_3ca
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p2

    .line 708
    .local p2, thumbOut:Ljava/io/OutputStream;
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .end local p0           #cr:Landroid/content/ContentResolver;
    const/16 p3, 0x55

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 709
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/io/FileOutputStream;

    move/from16 p0, v0
    :try_end_3e6
    .catchall {:try_start_3ca .. :try_end_3e6} :catchall_57c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3ca .. :try_end_3e6} :catch_40c
    .catch Ljava/io/FileNotFoundException; {:try_start_3ca .. :try_end_3e6} :catch_72f
    .catch Ljava/io/IOException; {:try_start_3ca .. :try_end_3e6} :catch_661

    if-eqz p0, :cond_3f5

    .line 711
    :try_start_3e8
    move-object/from16 v0, p2

    check-cast v0, Ljava/io/FileOutputStream;

    move-object/from16 p3, v0

    invoke-virtual/range {p3 .. p3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3f5
    .catchall {:try_start_3e8 .. :try_end_3f5} :catchall_57c
    .catch Ljava/lang/Throwable; {:try_start_3e8 .. :try_end_3f5} :catch_3fd
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3e8 .. :try_end_3f5} :catch_40c
    .catch Ljava/io/FileNotFoundException; {:try_start_3e8 .. :try_end_3f5} :catch_72f
    .catch Ljava/io/IOException; {:try_start_3e8 .. :try_end_3f5} :catch_661

    .line 716
    .end local p5           #kind:I
    :cond_3f5
    :goto_3f5
    if-eqz p2, :cond_3fa

    .line 717
    :try_start_3f7
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->close()V

    .end local p2           #thumbOut:Ljava/io/OutputStream;
    :cond_3fa
    move-object/from16 p0, p1

    .end local p1           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto :goto_3aa

    .line 712
    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .restart local p1       #bitmap:Landroid/graphics/Bitmap;
    .restart local p2       #thumbOut:Ljava/io/OutputStream;
    .restart local p5       #kind:I
    :catch_3fd
    move-exception p0

    .line 713
    .local p0, t:Ljava/lang/Throwable;
    const-string p3, "MediaStore"

    const-string p5, "Unable to sync thumbnail file"

    .end local p5           #kind:I
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_40b
    .catchall {:try_start_3f7 .. :try_end_40b} :catchall_57c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3f7 .. :try_end_40b} :catch_40c
    .catch Ljava/io/FileNotFoundException; {:try_start_3f7 .. :try_end_40b} :catch_72f
    .catch Ljava/io/IOException; {:try_start_3f7 .. :try_end_40b} :catch_661

    goto :goto_3f5

    .line 725
    .end local p0           #t:Ljava/lang/Throwable;
    .end local p2           #thumbOut:Ljava/io/OutputStream;
    :catch_40c
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .local p2, c0:Landroid/database/Cursor;
    move-wide/from16 p5, v5

    .end local v5           #magic:J
    .local p5, magic:J
    move-object/from16 p0, p1

    .end local p1           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object v6, v10

    .end local v10           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move v5, v9

    .end local v9           #saveMini:Z
    .local v5, saveMini:Z
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-wide/from16 p7, v7

    .end local v7           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    goto/16 :goto_2de

    .line 727
    .end local p2           #c0:Landroid/database/Cursor;
    .end local p4           #filePath:Ljava/lang/String;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, uri:Landroid/net/Uri;
    .local v13, c:Landroid/database/Cursor;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p5, kind:I
    .local p6, options:Landroid/graphics/BitmapFactory$Options;
    .local p7, baseUri:Landroid/net/Uri;
    .restart local p8       #isVideo:Z
    :catch_41f
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, v13

    .end local v13           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v19

    .end local v19           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .end local p6           #options:Landroid/graphics/BitmapFactory$Options;
    .local p5, magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .restart local p4       #filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .line 728
    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    .local p3, ex:Ljava/io/FileNotFoundException;
    :goto_432
    :try_start_432
    const-string v7, "MediaStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "got exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    .end local p3           #ex:Ljava/io/FileNotFoundException;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    move-object v0, v7

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_450
    .catchall {:try_start_432 .. :try_end_450} :catchall_592

    .line 732
    if-eqz p1, :cond_822

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    move-object/from16 p3, p4

    .end local p4           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    move-wide/from16 v24, p5

    .end local p5           #magic:J
    .restart local v24       #magic:J
    move-wide/from16 p4, v24

    .end local v24           #magic:J
    .local p4, magic:J
    move/from16 v26, v5

    .end local v5           #saveMini:Z
    .local v26, saveMini:Z
    move-object v5, v6

    .end local v6           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    move-wide/from16 v27, p7

    .end local p7           #mini_thumb_magic:J
    .local v27, mini_thumb_magic:J
    move-wide/from16 p6, v27

    .end local v27           #mini_thumb_magic:J
    .local p6, mini_thumb_magic:J
    move/from16 p8, v26

    .end local v26           #saveMini:Z
    .local p8, saveMini:Z
    goto/16 :goto_2fa

    .line 729
    .end local p2           #c0:Landroid/database/Cursor;
    .end local p3           #filePath:Ljava/lang/String;
    .end local p4           #magic:J
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, uri:Landroid/net/Uri;
    .restart local v13       #c:Landroid/database/Cursor;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p5, kind:I
    .local p6, options:Landroid/graphics/BitmapFactory$Options;
    .local p7, baseUri:Landroid/net/Uri;
    .local p8, isVideo:Z
    :catch_466
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, v13

    .end local v13           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v19

    .end local v19           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .end local p6           #options:Landroid/graphics/BitmapFactory$Options;
    .local p5, magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .line 730
    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    .local p3, ex:Ljava/io/IOException;
    :goto_479
    :try_start_479
    const-string v7, "MediaStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "got exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    .end local p3           #ex:Ljava/io/IOException;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    move-object v0, v7

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_497
    .catchall {:try_start_479 .. :try_end_497} :catchall_592

    .line 732
    if-eqz p1, :cond_822

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    move-object/from16 p3, p4

    .end local p4           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    move-wide/from16 v24, p5

    .end local p5           #magic:J
    .restart local v24       #magic:J
    move-wide/from16 p4, v24

    .end local v24           #magic:J
    .local p4, magic:J
    move/from16 v26, v5

    .end local v5           #saveMini:Z
    .restart local v26       #saveMini:Z
    move-object v5, v6

    .end local v6           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    move-wide/from16 v27, p7

    .end local p7           #mini_thumb_magic:J
    .restart local v27       #mini_thumb_magic:J
    move-wide/from16 p6, v27

    .end local v27           #mini_thumb_magic:J
    .local p6, mini_thumb_magic:J
    move/from16 p8, v26

    .end local v26           #saveMini:Z
    .local p8, saveMini:Z
    goto/16 :goto_2fa

    .end local p2           #c0:Landroid/database/Cursor;
    .end local p3           #filePath:Ljava/lang/String;
    .end local p4           #magic:J
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, uri:Landroid/net/Uri;
    .restart local v13       #c:Landroid/database/Cursor;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p5, kind:I
    .local p6, options:Landroid/graphics/BitmapFactory$Options;
    .local p7, baseUri:Landroid/net/Uri;
    .local p8, isVideo:Z
    :catchall_4ad
    move-exception p0

    move-object/from16 v6, p0

    move-object/from16 p1, v13

    .end local v13           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p6, v19

    .end local v19           #mini_thumb_magic:J
    .end local p7           #baseUri:Landroid/net/Uri;
    .local p6, mini_thumb_magic:J
    move-wide/from16 p4, v17

    .end local v17           #magic:J
    .end local p5           #kind:I
    .restart local p4       #magic:J
    move/from16 p8, v21

    .end local v21           #saveMini:Z
    .local p8, saveMini:Z
    move-object/from16 p3, v16

    .end local v16           #filePath:Ljava/lang/String;
    .restart local p3       #filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v5, v23

    .end local v6           #uri:Landroid/net/Uri;
    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    :goto_4c0
    if-eqz p1, :cond_4c5

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    :cond_4c5
    throw v6

    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, mini_thumb_magic:J
    .restart local v8       #blockingUri:Landroid/net/Uri;
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, c0:Landroid/database/Cursor;
    .local p4, c:Landroid/database/Cursor;
    .restart local p5       #kind:I
    .local p6, filePath:Ljava/lang/String;
    .restart local p7       #baseUri:Landroid/net/Uri;
    .local p8, isVideo:Z
    :catchall_4c6
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move/from16 p8, v21

    .end local v21           #saveMini:Z
    .local p8, saveMini:Z
    move-wide/from16 p4, v17

    .end local v17           #magic:J
    .end local p5           #kind:I
    .local p4, magic:J
    move-object/from16 p3, p6

    .end local p6           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    move-wide/from16 p6, v6

    .end local v6           #mini_thumb_magic:J
    .end local p7           #baseUri:Landroid/net/Uri;
    .local p6, mini_thumb_magic:J
    move-object/from16 v6, p0

    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v5, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    goto :goto_4c0

    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .restart local v6       #mini_thumb_magic:J
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, c0:Landroid/database/Cursor;
    .local p4, c:Landroid/database/Cursor;
    .restart local p5       #kind:I
    .local p6, ex:Landroid/database/sqlite/SQLiteException;
    .local p8, isVideo:Z
    :catchall_4da
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p6, v6

    .end local v6           #mini_thumb_magic:J
    .local p6, mini_thumb_magic:J
    move/from16 p8, v21

    .end local v21           #saveMini:Z
    .local p8, saveMini:Z
    move-wide/from16 p4, v17

    .end local v17           #magic:J
    .end local p5           #kind:I
    .local p4, magic:J
    move-object/from16 v6, p0

    move-object/from16 p3, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v5, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    goto :goto_4c0

    .end local p2           #c0:Landroid/database/Cursor;
    .end local p3           #filePath:Ljava/lang/String;
    .end local p6           #mini_thumb_magic:J
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, c0:Landroid/database/Cursor;
    .local p1, mini_thumb_magic:J
    .local p4, c:Landroid/database/Cursor;
    .restart local p5       #kind:I
    .local p8, isVideo:Z
    :catchall_4ee
    move-exception p3

    move-object/from16 v6, p3

    move-wide/from16 p6, p1

    .end local p1           #mini_thumb_magic:J
    .restart local p6       #mini_thumb_magic:J
    move/from16 p8, v21

    .end local v21           #saveMini:Z
    .local p8, saveMini:Z
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p0

    .end local p0           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-object/from16 p3, v16

    .end local v16           #filePath:Ljava/lang/String;
    .restart local p3       #filePath:Ljava/lang/String;
    move-wide/from16 p4, v17

    .end local v17           #magic:J
    .end local p5           #kind:I
    .local p4, magic:J
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v5, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    goto :goto_4c0

    .end local p2           #c0:Landroid/database/Cursor;
    .end local p3           #filePath:Ljava/lang/String;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v8, mini_thumb_magic:J
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p4, c:Landroid/database/Cursor;
    .restart local p5       #kind:I
    .local p6, c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .local p8, isVideo:Z
    :catchall_502
    move-exception p0

    move-object/from16 v6, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move/from16 p8, v21

    .end local v21           #saveMini:Z
    .local p8, saveMini:Z
    move-object/from16 p3, p7

    .end local p7           #filePath:Ljava/lang/String;
    .restart local p3       #filePath:Ljava/lang/String;
    move-wide/from16 p6, v8

    .end local v8           #mini_thumb_magic:J
    .local p6, mini_thumb_magic:J
    move-wide/from16 p4, v17

    .end local v17           #magic:J
    .end local p5           #kind:I
    .local p4, magic:J
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v5, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    goto :goto_4c0

    .end local p2           #c0:Landroid/database/Cursor;
    .end local p3           #filePath:Ljava/lang/String;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, magic:J
    .restart local v8       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p4, c:Landroid/database/Cursor;
    .restart local p5       #kind:I
    .local p6, c0:Landroid/database/Cursor;
    .restart local p7       #filePath:Ljava/lang/String;
    .local p8, isVideo:Z
    :catchall_516
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move/from16 p8, v21

    .end local v21           #saveMini:Z
    .local p8, saveMini:Z
    move-object/from16 p3, p7

    .end local p7           #filePath:Ljava/lang/String;
    .restart local p3       #filePath:Ljava/lang/String;
    move-wide/from16 p4, v6

    .end local v6           #magic:J
    .end local p5           #kind:I
    .local p4, magic:J
    move-wide/from16 p6, v8

    .end local v8           #mini_thumb_magic:J
    .local p6, mini_thumb_magic:J
    move-object/from16 v6, p0

    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v5, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    goto :goto_4c0

    .end local v5           #thumbUri:Landroid/net/Uri;
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .end local p3           #filePath:Ljava/lang/String;
    .restart local v6       #magic:J
    .restart local v8       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p4, c:Landroid/database/Cursor;
    .restart local p5       #kind:I
    .local p6, c0:Landroid/database/Cursor;
    .restart local p7       #filePath:Ljava/lang/String;
    .local p8, isVideo:Z
    :catchall_52a
    move-exception p1

    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-object/from16 v5, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v5       #thumbUri:Landroid/net/Uri;
    move/from16 p8, v21

    .end local v21           #saveMini:Z
    .local p8, saveMini:Z
    move-object/from16 p3, p7

    .end local p7           #filePath:Ljava/lang/String;
    .restart local p3       #filePath:Ljava/lang/String;
    move-wide/from16 p6, v8

    .end local v8           #mini_thumb_magic:J
    .local p6, mini_thumb_magic:J
    move-object/from16 v24, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local v24, c:Landroid/database/Cursor;
    move-wide/from16 p4, v6

    .end local v6           #magic:J
    .end local p5           #kind:I
    .local p4, magic:J
    move-object/from16 v6, p1

    move-object/from16 p1, v24

    .end local v24           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    goto :goto_4c0

    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .end local p3           #filePath:Ljava/lang/String;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, uri:Landroid/net/Uri;
    .local v8, blockingUri:Landroid/net/Uri;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p4, c:Landroid/database/Cursor;
    .restart local p5       #kind:I
    .local p6, options:Landroid/graphics/BitmapFactory$Options;
    .local p7, baseUri:Landroid/net/Uri;
    .local p8, isVideo:Z
    :catchall_53e
    move-exception p0

    move-object/from16 v6, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p2, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p6, v19

    .end local v19           #mini_thumb_magic:J
    .end local p7           #baseUri:Landroid/net/Uri;
    .local p6, mini_thumb_magic:J
    move/from16 p8, v21

    .end local v21           #saveMini:Z
    .local p8, saveMini:Z
    move-object/from16 p3, v16

    .end local v16           #filePath:Ljava/lang/String;
    .restart local p3       #filePath:Ljava/lang/String;
    move-wide/from16 p4, v17

    .end local v17           #magic:J
    .end local p5           #kind:I
    .local p4, magic:J
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v5, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    goto/16 :goto_4c0

    .end local v5           #thumbUri:Landroid/net/Uri;
    .end local v6           #uri:Landroid/net/Uri;
    .end local p2           #c0:Landroid/database/Cursor;
    .end local p6           #mini_thumb_magic:J
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .restart local p5       #kind:I
    .restart local p7       #baseUri:Landroid/net/Uri;
    .local p8, isVideo:Z
    :catchall_553
    move-exception p0

    move-object/from16 v6, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p6, v19

    .end local v19           #mini_thumb_magic:J
    .end local p7           #baseUri:Landroid/net/Uri;
    .restart local p6       #mini_thumb_magic:J
    move-object/from16 v5, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v5       #thumbUri:Landroid/net/Uri;
    move/from16 p8, v21

    .end local v21           #saveMini:Z
    .local p8, saveMini:Z
    move-wide/from16 p4, v17

    .end local v17           #magic:J
    .end local p5           #kind:I
    .local p4, magic:J
    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    goto/16 :goto_4c0

    .end local v8           #blockingUri:Landroid/net/Uri;
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, magic:J
    .restart local v7       #mini_thumb_magic:J
    .restart local v9       #saveMini:Z
    .restart local v10       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .restart local p5       #kind:I
    .local p6, c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .local p8, isVideo:Z
    :catchall_568
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move/from16 p8, v9

    .end local v9           #saveMini:Z
    .local p8, saveMini:Z
    move-wide/from16 p4, v5

    .end local v5           #magic:J
    .end local p5           #kind:I
    .local p4, magic:J
    move-object v5, v10

    .end local v10           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    move-object/from16 v6, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    move-wide/from16 p6, v7

    .end local v7           #mini_thumb_magic:J
    .local p6, mini_thumb_magic:J
    goto/16 :goto_4c0

    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .end local p2           #c0:Landroid/database/Cursor;
    .end local p3           #filePath:Ljava/lang/String;
    .local v5, magic:J
    .restart local v7       #mini_thumb_magic:J
    .restart local v9       #saveMini:Z
    .restart local v10       #thumbUri:Landroid/net/Uri;
    .local p1, bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .local p6, c0:Landroid/database/Cursor;
    .restart local p7       #filePath:Ljava/lang/String;
    .local p8, isVideo:Z
    :catchall_57c
    move-exception p0

    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move/from16 p8, v9

    .end local v9           #saveMini:Z
    .local p8, saveMini:Z
    move-object/from16 p3, p7

    .end local p7           #filePath:Ljava/lang/String;
    .restart local p3       #filePath:Ljava/lang/String;
    move-wide/from16 p6, v7

    .end local v7           #mini_thumb_magic:J
    .local p6, mini_thumb_magic:J
    move-wide/from16 v24, v5

    .end local v5           #magic:J
    .local v24, magic:J
    move-object v5, v10

    .end local v10           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    move-object/from16 v6, p0

    move-object/from16 p0, p1

    .end local p1           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-wide/from16 p4, v24

    .end local v24           #magic:J
    .local p4, magic:J
    goto/16 :goto_4c0

    .end local p3           #filePath:Ljava/lang/String;
    .end local p6           #mini_thumb_magic:J
    .end local p8           #saveMini:Z
    .local v5, saveMini:Z
    .local v6, thumbUri:Landroid/net/Uri;
    .local p4, filePath:Ljava/lang/String;
    .local p5, magic:J
    .local p7, mini_thumb_magic:J
    :catchall_592
    move-exception p3

    move-object/from16 v24, p3

    move-object/from16 p3, p4

    .end local p4           #filePath:Ljava/lang/String;
    .restart local p3       #filePath:Ljava/lang/String;
    move-wide/from16 v25, p7

    .end local p7           #mini_thumb_magic:J
    .local v25, mini_thumb_magic:J
    move/from16 p8, v5

    .end local v5           #saveMini:Z
    .restart local p8       #saveMini:Z
    move-object v5, v6

    .end local v6           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    move-object/from16 v6, v24

    move-wide/from16 v27, p5

    .end local p5           #magic:J
    .local v27, magic:J
    move-wide/from16 p4, v27

    .end local v27           #magic:J
    .local p4, magic:J
    move-wide/from16 p6, v25

    .end local v25           #mini_thumb_magic:J
    .restart local p6       #mini_thumb_magic:J
    goto/16 :goto_4c0

    .line 729
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, mini_thumb_magic:J
    .restart local v8       #blockingUri:Landroid/net/Uri;
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, c0:Landroid/database/Cursor;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, filePath:Ljava/lang/String;
    .local p7, baseUri:Landroid/net/Uri;
    .local p8, isVideo:Z
    :catch_5a6
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v6

    .end local v6           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-object/from16 p3, p0

    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, p6

    .end local p6           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .local p5, magic:J
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_479

    .end local p2           #c0:Landroid/database/Cursor;
    .end local p7           #mini_thumb_magic:J
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, mini_thumb_magic:J
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p3       #c0:Landroid/database/Cursor;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, ex:Landroid/database/sqlite/SQLiteException;
    .restart local p8       #isVideo:Z
    :catch_5bb
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v6

    .end local v6           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .restart local p7       #mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .end local p6           #ex:Landroid/database/sqlite/SQLiteException;
    .local p5, magic:J
    move-object/from16 p3, p0

    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_479

    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local p2           #c0:Landroid/database/Cursor;
    .end local p7           #mini_thumb_magic:J
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, c0:Landroid/database/Cursor;
    .local p1, mini_thumb_magic:J
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .restart local p8       #isVideo:Z
    :catch_5d0
    move-exception p3

    move-wide/from16 p7, p1

    .end local p1           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .restart local p7       #mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .local p5, magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move-object/from16 p2, p0

    .end local p0           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_479

    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v8, mini_thumb_magic:J
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_5e3
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .local p5, magic:J
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-wide/from16 p7, v8

    .end local v8           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_479

    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, magic:J
    .restart local v8       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .restart local p6       #c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_5f8
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p5, v6

    .end local v6           #magic:J
    .local p5, magic:J
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    move-wide/from16 p7, v8

    .end local v8           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    goto/16 :goto_479

    .end local v5           #saveMini:Z
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v6, magic:J
    .restart local v8       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .restart local p6       #c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_60d
    move-exception p1

    move-object/from16 p3, p1

    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .restart local v5       #saveMini:Z
    move-wide/from16 p5, v6

    .end local v6           #magic:J
    .local p5, magic:J
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-wide/from16 p7, v8

    .end local v8           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    goto/16 :goto_479

    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, uri:Landroid/net/Uri;
    .local v8, blockingUri:Landroid/net/Uri;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, options:Landroid/graphics/BitmapFactory$Options;
    .local p7, baseUri:Landroid/net/Uri;
    .restart local p8       #isVideo:Z
    :catch_620
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p2, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v19

    .end local v19           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .end local p6           #options:Landroid/graphics/BitmapFactory$Options;
    .local p5, magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_479

    .end local v5           #saveMini:Z
    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local p2           #c0:Landroid/database/Cursor;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p7, baseUri:Landroid/net/Uri;
    .restart local p8       #isVideo:Z
    :catch_635
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v19

    .end local v19           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .local p5, magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .restart local v5       #saveMini:Z
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 v24, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v24

    goto/16 :goto_479

    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local v8           #blockingUri:Landroid/net/Uri;
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, magic:J
    .restart local v7       #mini_thumb_magic:J
    .restart local v9       #saveMini:Z
    .restart local v10       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_64c
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p5, v5

    .end local v5           #magic:J
    .local p5, magic:J
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object v6, v10

    .end local v10           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move v5, v9

    .end local v9           #saveMini:Z
    .local v5, saveMini:Z
    move-wide/from16 p7, v7

    .end local v7           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-object/from16 v24, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v24

    goto/16 :goto_479

    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .end local p2           #c0:Landroid/database/Cursor;
    .end local p5           #magic:J
    .local v5, magic:J
    .restart local v7       #mini_thumb_magic:J
    .restart local v9       #saveMini:Z
    .restart local v10       #thumbUri:Landroid/net/Uri;
    .local p1, bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .restart local p6       #c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_661
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p5, v5

    .end local v5           #magic:J
    .restart local p5       #magic:J
    move-object/from16 p0, p1

    .end local p1           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object v6, v10

    .end local v10           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move v5, v9

    .end local v9           #saveMini:Z
    .local v5, saveMini:Z
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-wide/from16 p7, v7

    .end local v7           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    goto/16 :goto_479

    .line 727
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, mini_thumb_magic:J
    .restart local v8       #blockingUri:Landroid/net/Uri;
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, c0:Landroid/database/Cursor;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, filePath:Ljava/lang/String;
    .local p7, baseUri:Landroid/net/Uri;
    .restart local p8       #isVideo:Z
    :catch_674
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v6

    .end local v6           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-object/from16 p3, p0

    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, p6

    .end local p6           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .local p5, magic:J
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_432

    .end local p2           #c0:Landroid/database/Cursor;
    .end local p7           #mini_thumb_magic:J
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, mini_thumb_magic:J
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p3       #c0:Landroid/database/Cursor;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, ex:Landroid/database/sqlite/SQLiteException;
    .restart local p8       #isVideo:Z
    :catch_689
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v6

    .end local v6           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .restart local p7       #mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .end local p6           #ex:Landroid/database/sqlite/SQLiteException;
    .local p5, magic:J
    move-object/from16 p3, p0

    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_432

    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local p2           #c0:Landroid/database/Cursor;
    .end local p7           #mini_thumb_magic:J
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, c0:Landroid/database/Cursor;
    .local p1, mini_thumb_magic:J
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .restart local p8       #isVideo:Z
    :catch_69e
    move-exception p3

    move-wide/from16 p7, p1

    .end local p1           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .restart local p7       #mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .local p5, magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move-object/from16 p2, p0

    .end local p0           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_432

    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v8, mini_thumb_magic:J
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_6b1
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .local p5, magic:J
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-wide/from16 p7, v8

    .end local v8           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_432

    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, magic:J
    .restart local v8       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .restart local p6       #c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_6c6
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p5, v6

    .end local v6           #magic:J
    .local p5, magic:J
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    move-wide/from16 p7, v8

    .end local v8           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    goto/16 :goto_432

    .end local v5           #saveMini:Z
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v6, magic:J
    .restart local v8       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .restart local p6       #c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_6db
    move-exception p1

    move-object/from16 p3, p1

    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .restart local v5       #saveMini:Z
    move-wide/from16 p5, v6

    .end local v6           #magic:J
    .local p5, magic:J
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-wide/from16 p7, v8

    .end local v8           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    goto/16 :goto_432

    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, uri:Landroid/net/Uri;
    .local v8, blockingUri:Landroid/net/Uri;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, options:Landroid/graphics/BitmapFactory$Options;
    .local p7, baseUri:Landroid/net/Uri;
    .restart local p8       #isVideo:Z
    :catch_6ee
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p2, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v19

    .end local v19           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .end local p6           #options:Landroid/graphics/BitmapFactory$Options;
    .local p5, magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_432

    .end local v5           #saveMini:Z
    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local p2           #c0:Landroid/database/Cursor;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p7, baseUri:Landroid/net/Uri;
    .restart local p8       #isVideo:Z
    :catch_703
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v19

    .end local v19           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .local p5, magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .restart local v5       #saveMini:Z
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 v24, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v24

    goto/16 :goto_432

    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local v8           #blockingUri:Landroid/net/Uri;
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, magic:J
    .restart local v7       #mini_thumb_magic:J
    .restart local v9       #saveMini:Z
    .restart local v10       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_71a
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p5, v5

    .end local v5           #magic:J
    .local p5, magic:J
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object v6, v10

    .end local v10           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move v5, v9

    .end local v9           #saveMini:Z
    .local v5, saveMini:Z
    move-wide/from16 p7, v7

    .end local v7           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-object/from16 v24, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v24

    goto/16 :goto_432

    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local p0           #bitmap:Landroid/graphics/Bitmap;
    .end local p2           #c0:Landroid/database/Cursor;
    .end local p5           #magic:J
    .local v5, magic:J
    .restart local v7       #mini_thumb_magic:J
    .restart local v9       #saveMini:Z
    .restart local v10       #thumbUri:Landroid/net/Uri;
    .local p1, bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .restart local p6       #c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_72f
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p5, v5

    .end local v5           #magic:J
    .restart local p5       #magic:J
    move-object/from16 p0, p1

    .end local p1           #bitmap:Landroid/graphics/Bitmap;
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object v6, v10

    .end local v10           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move v5, v9

    .end local v9           #saveMini:Z
    .local v5, saveMini:Z
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-wide/from16 p7, v7

    .end local v7           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    goto/16 :goto_432

    .line 725
    .end local p2           #c0:Landroid/database/Cursor;
    .end local p4           #filePath:Ljava/lang/String;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, uri:Landroid/net/Uri;
    .restart local v13       #c:Landroid/database/Cursor;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p5, kind:I
    .local p6, options:Landroid/graphics/BitmapFactory$Options;
    .local p7, baseUri:Landroid/net/Uri;
    .restart local p8       #isVideo:Z
    :catch_742
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, v13

    .end local v13           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v19

    .end local v19           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .end local p6           #options:Landroid/graphics/BitmapFactory$Options;
    .local p5, magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .restart local p4       #filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_2de

    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, mini_thumb_magic:J
    .restart local v8       #blockingUri:Landroid/net/Uri;
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, c0:Landroid/database/Cursor;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, filePath:Ljava/lang/String;
    .local p7, baseUri:Landroid/net/Uri;
    .restart local p8       #isVideo:Z
    :catch_757
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v6

    .end local v6           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-object/from16 p3, p0

    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, p6

    .end local p6           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .local p5, magic:J
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_2de

    .end local p2           #c0:Landroid/database/Cursor;
    .end local p7           #mini_thumb_magic:J
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, mini_thumb_magic:J
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p3       #c0:Landroid/database/Cursor;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, ex:Landroid/database/sqlite/SQLiteException;
    .restart local p8       #isVideo:Z
    :catch_76c
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v6

    .end local v6           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .restart local p7       #mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .end local p6           #ex:Landroid/database/sqlite/SQLiteException;
    .local p5, magic:J
    move-object/from16 p3, p0

    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_2de

    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v8, mini_thumb_magic:J
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_781
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .local p5, magic:J
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-wide/from16 p7, v8

    .end local v8           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    goto/16 :goto_2de

    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, magic:J
    .restart local v8       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .restart local p6       #c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_796
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p5, v6

    .end local v6           #magic:J
    .local p5, magic:J
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 p0, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .local v5, saveMini:Z
    move-wide/from16 p7, v8

    .end local v8           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .local v6, thumbUri:Landroid/net/Uri;
    goto/16 :goto_2de

    .end local v5           #saveMini:Z
    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v8, blockingUri:Landroid/net/Uri;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p7, baseUri:Landroid/net/Uri;
    .restart local p8       #isVideo:Z
    :catch_7ab
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p7, v19

    .end local v19           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-wide/from16 p5, v17

    .end local v17           #magic:J
    .local p5, magic:J
    move-object/from16 v6, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move/from16 v5, v21

    .end local v21           #saveMini:Z
    .restart local v5       #saveMini:Z
    move-object/from16 p4, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object/from16 v24, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v24

    goto/16 :goto_2de

    .end local v6           #thumbUri:Landroid/net/Uri;
    .end local v8           #blockingUri:Landroid/net/Uri;
    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, magic:J
    .restart local v7       #mini_thumb_magic:J
    .restart local v9       #saveMini:Z
    .restart local v10       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .restart local p6       #c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catch_7c2
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move-wide/from16 p5, v5

    .end local v5           #magic:J
    .local p5, magic:J
    move-object/from16 p4, p7

    .end local p7           #filePath:Ljava/lang/String;
    .local p4, filePath:Ljava/lang/String;
    move-object v6, v10

    .end local v10           #thumbUri:Landroid/net/Uri;
    .restart local v6       #thumbUri:Landroid/net/Uri;
    move v5, v9

    .end local v9           #saveMini:Z
    .local v5, saveMini:Z
    move-wide/from16 p7, v7

    .end local v7           #mini_thumb_magic:J
    .end local p8           #isVideo:Z
    .local p7, mini_thumb_magic:J
    move-object/from16 v24, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v24

    goto/16 :goto_2de

    .line 647
    .end local v5           #saveMini:Z
    .end local p2           #c0:Landroid/database/Cursor;
    .local v6, magic:J
    .local v8, mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .restart local p6       #c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .restart local p8       #isVideo:Z
    :catchall_7d7
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_317

    .end local p1           #origId:J
    :catchall_7de
    move-exception p1

    goto/16 :goto_317

    .line 630
    .end local p6           #c0:Landroid/database/Cursor;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, uri:Landroid/net/Uri;
    .local v8, blockingUri:Landroid/net/Uri;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1       #origId:J
    .local p3, c0:Landroid/database/Cursor;
    .local p7, baseUri:Landroid/net/Uri;
    :catchall_7e1
    move-exception p0

    move-wide/from16 p1, v19

    .end local v19           #mini_thumb_magic:J
    .local p1, mini_thumb_magic:J
    move-object/from16 v24, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .local v24, c0:Landroid/database/Cursor;
    move-object/from16 p3, p0

    move-object/from16 p0, v24

    .end local v24           #c0:Landroid/database/Cursor;
    .local p0, c0:Landroid/database/Cursor;
    goto/16 :goto_2c7

    .end local p7           #baseUri:Landroid/net/Uri;
    .local v6, mini_thumb_magic:J
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p3       #c0:Landroid/database/Cursor;
    :catchall_7ec
    move-exception p0

    move-wide/from16 p1, v6

    .end local v6           #mini_thumb_magic:J
    .local p1, mini_thumb_magic:J
    move-object/from16 v24, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .restart local v24       #c0:Landroid/database/Cursor;
    move-object/from16 p3, p0

    move-object/from16 p0, v24

    .end local v24           #c0:Landroid/database/Cursor;
    .local p0, c0:Landroid/database/Cursor;
    goto/16 :goto_2c7

    .line 627
    .local v6, uri:Landroid/net/Uri;
    .restart local v19       #mini_thumb_magic:J
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p3       #c0:Landroid/database/Cursor;
    .restart local p7       #baseUri:Landroid/net/Uri;
    :catch_7f7
    move-exception p6

    move-wide/from16 v6, v19

    .end local v19           #mini_thumb_magic:J
    .local v6, mini_thumb_magic:J
    goto/16 :goto_2ab

    :catch_7fc
    move-exception p6

    goto/16 :goto_2ab

    .line 580
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #blockingUri:Landroid/net/Uri;
    .end local p4           #c:Landroid/database/Cursor;
    .local v6, uri:Landroid/net/Uri;
    .local v7, c:Landroid/database/Cursor;
    .local v13, bitmap:Landroid/graphics/Bitmap;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v19       #mini_thumb_magic:J
    .local p3, groupId:J
    .local p6, options:Landroid/graphics/BitmapFactory$Options;
    :catchall_7ff
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p0, v7

    .end local v7           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto/16 :goto_1a0

    .line 566
    .end local v13           #bitmap:Landroid/graphics/Bitmap;
    .end local p1           #origId:J
    .end local p3           #groupId:J
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :catchall_806
    move-exception p1

    goto/16 :goto_e7

    .line 539
    .end local v15           #c0:Landroid/database/Cursor;
    .end local v16           #filePath:Ljava/lang/String;
    .end local v19           #mini_thumb_magic:J
    .local v5, c0:Landroid/database/Cursor;
    .restart local v12       #filePath:Ljava/lang/String;
    .restart local v13       #bitmap:Landroid/graphics/Bitmap;
    .restart local v14       #mini_thumb_magic:J
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1       #origId:J
    .restart local p3       #groupId:J
    :catchall_809
    move-exception p0

    move-object/from16 p3, p0

    move-wide/from16 p1, v14

    .end local v14           #mini_thumb_magic:J
    .local p1, mini_thumb_magic:J
    move-object/from16 p0, v5

    .end local v5           #c0:Landroid/database/Cursor;
    .local p0, c0:Landroid/database/Cursor;
    goto/16 :goto_dc

    .restart local v5       #c0:Landroid/database/Cursor;
    .local v8, mini_thumb_magic:J
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    :catchall_812
    move-exception p0

    move-object/from16 p3, p0

    move-wide/from16 p1, v8

    .end local v8           #mini_thumb_magic:J
    .local p1, mini_thumb_magic:J
    move-object/from16 p0, v5

    .end local v5           #c0:Landroid/database/Cursor;
    .local p0, c0:Landroid/database/Cursor;
    goto/16 :goto_dc

    .line 536
    .restart local v5       #c0:Landroid/database/Cursor;
    .restart local v14       #mini_thumb_magic:J
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    :catch_81b
    move-exception v7

    move-wide v8, v14

    .end local v14           #mini_thumb_magic:J
    .restart local v8       #mini_thumb_magic:J
    goto/16 :goto_c5

    :catch_81f
    move-exception v7

    goto/16 :goto_c5

    .end local v8           #mini_thumb_magic:J
    .end local v12           #filePath:Ljava/lang/String;
    .end local v13           #bitmap:Landroid/graphics/Bitmap;
    .end local v17           #magic:J
    .end local v21           #saveMini:Z
    .end local v23           #thumbUri:Landroid/net/Uri;
    .end local p3           #groupId:J
    .end local p6           #options:Landroid/graphics/BitmapFactory$Options;
    .end local p8           #isVideo:Z
    .local v5, saveMini:Z
    .local v6, thumbUri:Landroid/net/Uri;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    .local p1, c:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    .local p4, filePath:Ljava/lang/String;
    .local p5, magic:J
    .local p7, mini_thumb_magic:J
    :cond_822
    move-object/from16 p3, p4

    .end local p4           #filePath:Ljava/lang/String;
    .local p3, filePath:Ljava/lang/String;
    move-wide/from16 v24, p5

    .end local p5           #magic:J
    .local v24, magic:J
    move-wide/from16 p4, v24

    .end local v24           #magic:J
    .local p4, magic:J
    move/from16 v26, v5

    .end local v5           #saveMini:Z
    .restart local v26       #saveMini:Z
    move-object v5, v6

    .end local v6           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    move-wide/from16 v27, p7

    .end local p7           #mini_thumb_magic:J
    .local v27, mini_thumb_magic:J
    move-wide/from16 p6, v27

    .end local v27           #mini_thumb_magic:J
    .local p6, mini_thumb_magic:J
    move/from16 p8, v26

    .end local v26           #saveMini:Z
    .local p8, saveMini:Z
    goto/16 :goto_2fa

    .end local p1           #c:Landroid/database/Cursor;
    .end local p2           #c0:Landroid/database/Cursor;
    .end local p3           #filePath:Ljava/lang/String;
    .local v5, magic:J
    .local v7, mini_thumb_magic:J
    .restart local v9       #saveMini:Z
    .restart local v10       #thumbUri:Landroid/net/Uri;
    .local p4, c:Landroid/database/Cursor;
    .local p6, c0:Landroid/database/Cursor;
    .local p7, filePath:Ljava/lang/String;
    .local p8, isVideo:Z
    :cond_833
    move-object/from16 p1, p4

    .end local p4           #c:Landroid/database/Cursor;
    .restart local p1       #c:Landroid/database/Cursor;
    move-object/from16 p2, p6

    .end local p6           #c0:Landroid/database/Cursor;
    .restart local p2       #c0:Landroid/database/Cursor;
    move/from16 p8, v9

    .end local v9           #saveMini:Z
    .local p8, saveMini:Z
    move-object/from16 p3, p7

    .end local p7           #filePath:Ljava/lang/String;
    .restart local p3       #filePath:Ljava/lang/String;
    move-wide/from16 p6, v7

    .end local v7           #mini_thumb_magic:J
    .local p6, mini_thumb_magic:J
    move-wide/from16 p4, v5

    .end local v5           #magic:J
    .local p4, magic:J
    move-object v5, v10

    .end local v10           #thumbUri:Landroid/net/Uri;
    .local v5, thumbUri:Landroid/net/Uri;
    goto/16 :goto_2fa

    .end local p2           #c0:Landroid/database/Cursor;
    .local v5, magic:J
    .restart local v7       #mini_thumb_magic:J
    .restart local v9       #saveMini:Z
    .restart local v10       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, bitmap:Landroid/graphics/Bitmap;
    .local p4, c:Landroid/database/Cursor;
    .local p5, kind:I
    .local p6, c0:Landroid/database/Cursor;
    .restart local p7       #filePath:Ljava/lang/String;
    .local p8, isVideo:Z
    :cond_842
    move-object/from16 p0, p3

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_3aa

    .end local v5           #magic:J
    .end local v7           #mini_thumb_magic:J
    .end local v9           #saveMini:Z
    .end local v10           #thumbUri:Landroid/net/Uri;
    .end local p6           #c0:Landroid/database/Cursor;
    .local v6, uri:Landroid/net/Uri;
    .local v8, blockingUri:Landroid/net/Uri;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    .local p7, baseUri:Landroid/net/Uri;
    :cond_846
    move-object/from16 p6, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .restart local p6       #c0:Landroid/database/Cursor;
    move-wide/from16 v7, v19

    .end local v8           #blockingUri:Landroid/net/Uri;
    .end local v19           #mini_thumb_magic:J
    .restart local v7       #mini_thumb_magic:J
    move-wide/from16 v5, v17

    .end local v6           #uri:Landroid/net/Uri;
    .end local v17           #magic:J
    .restart local v5       #magic:J
    move-object/from16 v10, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v10       #thumbUri:Landroid/net/Uri;
    move/from16 v9, v21

    .end local v21           #saveMini:Z
    .restart local v9       #saveMini:Z
    move-object/from16 p7, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p7, filePath:Ljava/lang/String;
    goto/16 :goto_24b

    .end local v7           #mini_thumb_magic:J
    .end local v9           #saveMini:Z
    .end local v10           #thumbUri:Landroid/net/Uri;
    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .restart local v6       #uri:Landroid/net/Uri;
    .restart local v8       #blockingUri:Landroid/net/Uri;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v19       #mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p6, options:Landroid/graphics/BitmapFactory$Options;
    .local p7, baseUri:Landroid/net/Uri;
    :cond_854
    move-object/from16 p6, v15

    .end local v15           #c0:Landroid/database/Cursor;
    .local p6, c0:Landroid/database/Cursor;
    move-wide/from16 v7, v19

    .end local v8           #blockingUri:Landroid/net/Uri;
    .end local v19           #mini_thumb_magic:J
    .restart local v7       #mini_thumb_magic:J
    move-object/from16 v10, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v10       #thumbUri:Landroid/net/Uri;
    move/from16 v9, v21

    .end local v21           #saveMini:Z
    .restart local v9       #saveMini:Z
    move-object/from16 p7, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p7, filePath:Ljava/lang/String;
    move-object/from16 p3, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    move-wide/from16 v5, v17

    .end local v6           #uri:Landroid/net/Uri;
    .end local v17           #magic:J
    .local v5, magic:J
    goto/16 :goto_24b

    .end local v7           #mini_thumb_magic:J
    .end local v9           #saveMini:Z
    .end local v10           #thumbUri:Landroid/net/Uri;
    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, magic:J
    .local v8, mini_thumb_magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    :cond_864
    move-object/from16 p3, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_23e

    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .restart local v5       #bitmap:Landroid/graphics/Bitmap;
    :cond_868
    move-object/from16 v10, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v10       #thumbUri:Landroid/net/Uri;
    move-object/from16 p3, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    move-wide/from16 v24, v8

    .end local v8           #mini_thumb_magic:J
    .local v24, mini_thumb_magic:J
    move/from16 v9, v21

    .end local v21           #saveMini:Z
    .restart local v9       #saveMini:Z
    move-wide/from16 v26, v6

    .end local v6           #magic:J
    .local v26, magic:J
    move-wide/from16 v5, v26

    .end local v26           #magic:J
    .local v5, magic:J
    move-wide/from16 v7, v24

    .end local v24           #mini_thumb_magic:J
    .restart local v7       #mini_thumb_magic:J
    goto/16 :goto_24b

    .end local v7           #mini_thumb_magic:J
    .end local v9           #saveMini:Z
    .end local v10           #thumbUri:Landroid/net/Uri;
    .end local p3           #bitmap:Landroid/graphics/Bitmap;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #mini_thumb_magic:J
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    :cond_878
    move-object/from16 v10, v23

    .end local v23           #thumbUri:Landroid/net/Uri;
    .restart local v10       #thumbUri:Landroid/net/Uri;
    move-object/from16 p3, v5

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;
    move-wide/from16 v5, v17

    .end local v17           #magic:J
    .local v5, magic:J
    move-wide/from16 v24, v8

    .end local v8           #mini_thumb_magic:J
    .restart local v24       #mini_thumb_magic:J
    move-wide/from16 v7, v24

    .end local v24           #mini_thumb_magic:J
    .restart local v7       #mini_thumb_magic:J
    move/from16 v9, v21

    .end local v21           #saveMini:Z
    .restart local v9       #saveMini:Z
    goto/16 :goto_24b

    .end local v7           #mini_thumb_magic:J
    .end local v9           #saveMini:Z
    .end local v10           #thumbUri:Landroid/net/Uri;
    .end local p7           #filePath:Ljava/lang/String;
    .local v5, bitmap:Landroid/graphics/Bitmap;
    .local v6, mini_thumb_magic:J
    .local v8, blockingUri:Landroid/net/Uri;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v17       #magic:J
    .restart local v21       #saveMini:Z
    .restart local v23       #thumbUri:Landroid/net/Uri;
    .local p3, c0:Landroid/database/Cursor;
    .local p6, ex:Landroid/database/sqlite/SQLiteException;
    :cond_886
    move-object/from16 p6, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .local p6, c0:Landroid/database/Cursor;
    move-wide v8, v6

    .end local v6           #mini_thumb_magic:J
    .local v8, mini_thumb_magic:J
    move-object/from16 p7, v16

    .end local v16           #filePath:Ljava/lang/String;
    .restart local p7       #filePath:Ljava/lang/String;
    goto/16 :goto_1f2

    .restart local v6       #mini_thumb_magic:J
    .local v8, blockingUri:Landroid/net/Uri;
    .restart local p3       #c0:Landroid/database/Cursor;
    .local p6, filePath:Ljava/lang/String;
    .local p7, baseUri:Landroid/net/Uri;
    :cond_88d
    move-wide v8, v6

    .end local v6           #mini_thumb_magic:J
    .local v8, mini_thumb_magic:J
    move-object/from16 p7, p6

    .end local p6           #filePath:Ljava/lang/String;
    .local p7, filePath:Ljava/lang/String;
    move-object/from16 p6, p3

    .end local p3           #c0:Landroid/database/Cursor;
    .local p6, c0:Landroid/database/Cursor;
    goto/16 :goto_1f2

    .end local p6           #c0:Landroid/database/Cursor;
    .local v6, uri:Landroid/net/Uri;
    .local v8, blockingUri:Landroid/net/Uri;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v19       #mini_thumb_magic:J
    .restart local p3       #c0:Landroid/database/Cursor;
    .local p7, baseUri:Landroid/net/Uri;
    :cond_894
    move-wide/from16 v6, v19

    .end local v19           #mini_thumb_magic:J
    .local v6, mini_thumb_magic:J
    move-object/from16 p6, v16

    .end local v16           #filePath:Ljava/lang/String;
    .local p6, filePath:Ljava/lang/String;
    goto/16 :goto_1e8

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #blockingUri:Landroid/net/Uri;
    .end local p4           #c:Landroid/database/Cursor;
    .local v6, uri:Landroid/net/Uri;
    .restart local v13       #bitmap:Landroid/graphics/Bitmap;
    .restart local v15       #c0:Landroid/database/Cursor;
    .restart local v16       #filePath:Ljava/lang/String;
    .restart local v19       #mini_thumb_magic:J
    .local p3, groupId:J
    .local p6, options:Landroid/graphics/BitmapFactory$Options;
    :cond_89a
    move-object v5, v13

    .end local v13           #bitmap:Landroid/graphics/Bitmap;
    .restart local v5       #bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_149

    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local p0           #cr:Landroid/content/ContentResolver;
    .end local p3           #groupId:J
    .restart local v13       #bitmap:Landroid/graphics/Bitmap;
    :cond_89d
    move-object/from16 p0, v13

    .end local v13           #bitmap:Landroid/graphics/Bitmap;
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_b1

    .end local v15           #c0:Landroid/database/Cursor;
    .end local v16           #filePath:Ljava/lang/String;
    .end local v19           #mini_thumb_magic:J
    .local v5, c0:Landroid/database/Cursor;
    .local v7, ex:Landroid/database/sqlite/SQLiteException;
    .local v8, mini_thumb_magic:J
    .restart local v12       #filePath:Ljava/lang/String;
    .restart local v13       #bitmap:Landroid/graphics/Bitmap;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p3       #groupId:J
    :cond_8a1
    move-object v15, v5

    .end local v5           #c0:Landroid/database/Cursor;
    .restart local v15       #c0:Landroid/database/Cursor;
    move-wide/from16 v19, v8

    .end local v8           #mini_thumb_magic:J
    .restart local v19       #mini_thumb_magic:J
    move-object/from16 v16, v12

    .end local v12           #filePath:Ljava/lang/String;
    .restart local v16       #filePath:Ljava/lang/String;
    goto/16 :goto_68

    .end local v15           #c0:Landroid/database/Cursor;
    .end local v16           #filePath:Ljava/lang/String;
    .end local v19           #mini_thumb_magic:J
    .restart local v5       #c0:Landroid/database/Cursor;
    .local v7, filePath:Ljava/lang/String;
    .restart local v8       #mini_thumb_magic:J
    :cond_8a8
    move-object v15, v5

    .end local v5           #c0:Landroid/database/Cursor;
    .restart local v15       #c0:Landroid/database/Cursor;
    move-wide/from16 v19, v8

    .end local v8           #mini_thumb_magic:J
    .restart local v19       #mini_thumb_magic:J
    move-object/from16 v16, v7

    .end local v7           #filePath:Ljava/lang/String;
    .restart local v16       #filePath:Ljava/lang/String;
    goto/16 :goto_68

    .end local v15           #c0:Landroid/database/Cursor;
    .end local v16           #filePath:Ljava/lang/String;
    .end local v19           #mini_thumb_magic:J
    .restart local v5       #c0:Landroid/database/Cursor;
    .restart local v12       #filePath:Ljava/lang/String;
    .restart local v14       #mini_thumb_magic:J
    :cond_8af
    move-wide v8, v14

    .end local v14           #mini_thumb_magic:J
    .restart local v8       #mini_thumb_magic:J
    move-object v7, v12

    .end local v12           #filePath:Ljava/lang/String;
    .restart local v7       #filePath:Ljava/lang/String;
    goto/16 :goto_5e
.end method
