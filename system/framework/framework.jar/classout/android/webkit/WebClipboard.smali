.class public Landroid/webkit/WebClipboard;
.super Ljava/lang/Object;
.source "WebClipboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl;,
        Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;
    }
.end annotation


# static fields
.field static final INIT:I = 0x1

.field private static final PLAIN_TEXT_TO_ESCAPE:Ljava/util/regex/Pattern; = null

.field static final tempDirectory:Ljava/lang/String; = "/sdcard/EmailTempImage/"


# instance fields
.field private mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field protected mPasteEvent:Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl;

.field mPasteListener:Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const-string v0, "[<>&]| {2,}|\r?\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/WebClipboard;->PLAIN_TEXT_TO_ESCAPE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v0, p0, Landroid/webkit/WebClipboard;->mPasteEvent:Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl;

    .line 53
    iput-object v0, p0, Landroid/webkit/WebClipboard;->mPasteListener:Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebClipboard;->mViewWidth:I

    .line 66
    const-string v0, "clipboardEx"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    iput-object v0, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    .line 69
    const-string/jumbo v0, "webclipboard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clipservice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iput-object p1, p0, Landroid/webkit/WebClipboard;->mContext:Landroid/content/Context;

    .line 73
    new-instance v0, Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl;

    invoke-direct {v0, p0}, Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl;-><init>(Landroid/webkit/WebClipboard;)V

    iput-object v0, p0, Landroid/webkit/WebClipboard;->mPasteEvent:Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl;

    .line 75
    invoke-virtual {p0}, Landroid/webkit/WebClipboard;->createHandler()V

    .line 76
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebClipboard;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/webkit/WebClipboard;->nativeInitPasteboardJni()V

    return-void
.end method

.method static synthetic access$100(Landroid/webkit/WebClipboard;Landroid/sec/clipboard/data/ClipboardData;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/webkit/WebClipboard;->pasteClipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V

    return-void
.end method

.method static synthetic access$200(Landroid/webkit/WebClipboard;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Landroid/webkit/WebClipboard;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private deleteDirectory(Ljava/io/File;)V
    .registers 7
    .parameter "path"

    .prologue
    .line 105
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteDirectory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 107
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 108
    .local v0, files:[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_27
    array-length v2, v0

    if-ge v1, v2, :cond_40

    .line 109
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 110
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Landroid/webkit/WebClipboard;->deleteDirectory(Ljava/io/File;)V

    .line 108
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 113
    :cond_3a
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_37

    .line 117
    .end local v0           #files:[Ljava/io/File;
    .end local v1           #i:I
    :cond_40
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 118
    return-void
.end method

.method private escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "text"

    .prologue
    const/16 v9, 0x20

    .line 410
    sget-object v6, Landroid/webkit/WebClipboard;->PLAIN_TEXT_TO_ESCAPE:Ljava/util/regex/Pattern;

    .line 411
    .local v6, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 412
    .local v3, match:Ljava/util/regex/Matcher;
    const/4 v5, 0x0

    .line 414
    .local v5, out:Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_55

    .line 416
    if-nez v5, :cond_16

    .line 417
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #out:Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 418
    .restart local v5       #out:Ljava/lang/StringBuilder;
    :cond_16
    const/4 v1, 0x0

    .line 420
    .local v1, end:I
    :cond_17
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    .line 421
    .local v7, start:I
    invoke-virtual {p1, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 423
    invoke-virtual {p1, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 424
    .local v0, c:I
    if-ne v0, v9, :cond_56

    .line 426
    const/4 v2, 0x1

    .local v2, i:I
    sub-int v4, v1, v7

    .local v4, n:I
    :goto_2f
    if-ge v2, v4, :cond_39

    .line 427
    const-string v8, "&nbsp;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 429
    :cond_39
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 439
    .end local v2           #i:I
    .end local v4           #n:I
    :cond_3c
    :goto_3c
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-nez v8, :cond_17

    .line 440
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 442
    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 444
    .end local v0           #c:I
    .end local v1           #end:I
    .end local v7           #start:I
    :cond_55
    return-object p1

    .line 430
    .restart local v0       #c:I
    .restart local v1       #end:I
    .restart local v7       #start:I
    :cond_56
    const/16 v8, 0xd

    if-eq v0, v8, :cond_5e

    const/16 v8, 0xa

    if-ne v0, v8, :cond_64

    .line 431
    :cond_5e
    const-string v8, "<br>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 432
    :cond_64
    const/16 v8, 0x3c

    if-ne v0, v8, :cond_6e

    .line 433
    const-string v8, "&lt;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 434
    :cond_6e
    const/16 v8, 0x3e

    if-ne v0, v8, :cond_78

    .line 435
    const-string v8, "&gt;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 436
    :cond_78
    const/16 v8, 0x26

    if-ne v0, v8, :cond_3c

    .line 437
    const-string v8, "&amp;"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c
.end method

.method private giveFileUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "filePath"

    .prologue
    .line 127
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "giveFileUrl ent "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .local v1, mFile:Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, fileURL:Ljava/lang/String;
    return-object v0
.end method

.method private makeHtmlFragmentForInsertedImage(Ljava/lang/String;)Ljava/lang/String;
    .registers 24
    .parameter "htmlFragment"

    .prologue
    .line 553
    const/4 v15, 0x0

    .line 555
    .local v15, result:Ljava/lang/String;
    const-string v18, "WebClipboard"

    const-string/jumbo v19, "makeHtmlFragmentForInsertedImage"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    if-nez p1, :cond_16

    .line 558
    const-string v18, "WebClipboard"

    const-string/jumbo v19, "makeHtmlFragmentForInsertedImage htmlFragment == null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const-string v18, ""

    .line 653
    :goto_15
    return-object v18

    .line 562
    :cond_16
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 563
    .local v10, options:Landroid/graphics/BitmapFactory$Options;
    const-string v18, "WebClipboard"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "####################### htmlFragment :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 565
    .local v8, imageUri:Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 567
    .local v4, absoluteFilePath:Ljava/lang/String;
    const-string v18, "WebClipboard"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "####################### absoluteFilePath :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/webkit/WebClipboard;->getCloneFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 570
    .local v5, dstFilePath:Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 572
    .local v9, mFile:Ljava/io/File;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 573
    .local v13, originalFile:Ljava/io/File;
    const-wide/32 v18, 0x100000

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-gtz v18, :cond_92

    .line 575
    const-string v18, "WebClipboard"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "####################### originalFile.length() : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_92
    invoke-static {v4, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 579
    .local v16, src:Landroid/graphics/Bitmap;
    const-string v18, "WebClipboard"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "####################### htmlFragment : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v0, v10

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object v0, v10

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget v12, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 582
    .local v12, originWidth:I
    iget v11, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 583
    .local v11, originHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebClipboard;->mViewWidth:I

    move/from16 v17, v0

    .line 584
    .local v17, width:I
    mul-int v18, v11, v17

    div-int v7, v18, v12

    .line 586
    .local v7, height:I
    const-wide/32 v18, 0x100000

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-gtz v18, :cond_1e7

    .line 588
    const-string v18, "WebClipboard"

    const-string v19, "####################### htmlFragment : Big Data"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    if-eqz v16, :cond_124

    .line 593
    :try_start_ec
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 595
    .local v14, outStream:Ljava/io/FileOutputStream;
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string v19, ".jpg"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    if-gtz v18, :cond_109

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string v19, ".jpeg"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_18e

    .line 597
    :cond_109
    const-string v18, "WebClipboard"

    const-string v19, "####################### htmlFragment : Bitmap.CompressFormat.JPEG"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    sget-object v18, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v19, 0x64

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 599
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->flush()V

    .line 600
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_124
    .catch Ljava/io/FileNotFoundException; {:try_start_ec .. :try_end_124} :catch_1b8
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_124} :catch_1dd

    .line 635
    .end local v14           #outStream:Ljava/io/FileOutputStream;
    :cond_124
    :goto_124
    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 637
    const-string v18, "WebClipboard"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "####################### htmlFragment : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    if-eqz v17, :cond_202

    .line 641
    move/from16 v0, v17

    move v1, v12

    if-le v0, v1, :cond_152

    .line 643
    move/from16 v17, v12

    .line 644
    move v7, v11

    .line 647
    :cond_152
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "<img src="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " width="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " height="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " />"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v15

    .line 648
    goto/16 :goto_15

    .line 602
    .restart local v14       #outStream:Ljava/io/FileOutputStream;
    :cond_18e
    :try_start_18e
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "png"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    if-lez v18, :cond_1c2

    .line 604
    const-string v18, "WebClipboard"

    const-string v19, "####################### htmlFragment : Bitmap.CompressFormat.PNG"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    sget-object v18, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v19, 0x64

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 606
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->flush()V

    .line 607
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b6
    .catch Ljava/io/FileNotFoundException; {:try_start_18e .. :try_end_1b6} :catch_1b8
    .catch Ljava/io/IOException; {:try_start_18e .. :try_end_1b6} :catch_1dd

    goto/16 :goto_124

    .line 617
    .end local v14           #outStream:Ljava/io/FileOutputStream;
    :catch_1b8
    move-exception v18

    move-object/from16 v6, v18

    .line 618
    .local v6, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 619
    const-string v18, ""

    goto/16 :goto_15

    .line 611
    .end local v6           #e:Ljava/io/FileNotFoundException;
    .restart local v14       #outStream:Ljava/io/FileOutputStream;
    :cond_1c2
    const/16 v18, 0x1

    :try_start_1c4
    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebClipboard;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_124

    .line 613
    const-string v18, "WebClipboard"

    const-string v19, "####################### makeHtmlFragmentForInsertedImage : copyFile Fail !!!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const-string v18, ""
    :try_end_1db
    .catch Ljava/io/FileNotFoundException; {:try_start_1c4 .. :try_end_1db} :catch_1b8
    .catch Ljava/io/IOException; {:try_start_1c4 .. :try_end_1db} :catch_1dd

    goto/16 :goto_15

    .line 620
    .end local v14           #outStream:Ljava/io/FileOutputStream;
    :catch_1dd
    move-exception v18

    move-object/from16 v6, v18

    .line 621
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 622
    const-string v18, ""

    goto/16 :goto_15

    .line 628
    .end local v6           #e:Ljava/io/IOException;
    :cond_1e7
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebClipboard;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_124

    .line 630
    const-string v18, "WebClipboard"

    const-string v19, "####################### makeHtmlFragmentForInsertedImage : copyFile Fail !!!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const-string v18, ""

    goto/16 :goto_15

    .line 652
    :cond_202
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "<img src="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " />"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v15

    .line 653
    goto/16 :goto_15
.end method

.method private native nativeInitPasteboardJni()V
.end method

.method private pasteClipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V
    .registers 14
    .parameter "data"

    .prologue
    const-string/jumbo v11, "pasteClipBoardData FORMAT_TEXT_ID"

    const-string v10, "WebClipboard"

    .line 500
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v9, "pasteClipBoardData"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 501
    const/4 v5, 0x0

    .line 503
    .local v5, paste:Ljava/lang/String;
    const/4 v1, -0x1

    .line 505
    .local v1, dataFormat:I
    if-eqz p1, :cond_44

    .line 506
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v1

    .line 513
    const/4 v8, 0x4

    if-ne v1, v8, :cond_45

    .line 514
    move-object v0, p1

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    move-object v3, v0

    .line 515
    .local v3, htmlData:Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->GetHTMLFragment()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 538
    .end local v3           #htmlData:Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    :cond_24
    :goto_24
    if-eqz v5, :cond_44

    .line 539
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "pasteClipBoardData paste not NULL"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 540
    iget-object v8, p0, Landroid/webkit/WebClipboard;->mPasteListener:Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;

    invoke-interface {v8, v5, v1}, Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;->onPaste(Ljava/lang/String;I)V

    .line 543
    :cond_44
    return-void

    .line 516
    :cond_45
    const/4 v8, 0x2

    if-ne v1, v8, :cond_7e

    .line 517
    const-string v8, "WebClipboard"

    const-string/jumbo v8, "pasteClipBoardData FORMAT_TEXT_ID"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    move-object v0, p1

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    move-object v6, v0

    .line 519
    .local v6, textData:Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 520
    .local v7, tmp_data_str:Ljava/lang/String;
    if-eqz v7, :cond_7c

    .line 521
    invoke-direct {p0, v7}, Landroid/webkit/WebClipboard;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 525
    :goto_62
    const-string v8, "WebClipboard"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pasteClipBoardData FORMAT_TEXT_ID"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 524
    :cond_7c
    const/4 v5, 0x0

    goto :goto_62

    .line 526
    .end local v6           #textData:Landroid/sec/clipboard/data/list/ClipboardDataText;
    .end local v7           #tmp_data_str:Ljava/lang/String;
    :cond_7e
    const/4 v8, 0x3

    if-ne v1, v8, :cond_24

    .line 527
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v9, "pasteClipBoardData FORMAT_BITMAP_ID "

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 528
    move-object v0, p1

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    move-object v4, v0

    .line 530
    .local v4, imageData:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v4}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/webkit/WebClipboard;->giveFileUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 532
    .local v2, fileUrl:Ljava/lang/String;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "pasteClipBoardData fileUrl "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 533
    move-object v5, v2

    .line 534
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "pasteClipBoardData paste fileUrl "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_24
.end method

.method private saveBitampTemporary(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 14
    .parameter "bitmapForSave"

    .prologue
    .line 180
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v10, "saveBitampTemporary ent "

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 182
    new-instance v0, Ljava/io/File;

    const-string v9, "/sdcard/EmailTempImage/"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, HtmlComposerTempDirectory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 186
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    .line 187
    .local v7, randNum:Ljava/util/Random;
    const/16 v9, 0x1f4

    invoke-virtual {v7, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    .line 188
    .local v8, randNumber:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/sdcard/EmailTempImage/file_temp_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, filePath:Ljava/lang/String;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "saveBitampTemporary filePath "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 192
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    .local v4, mFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_5d

    .line 195
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 198
    :cond_5d
    const/4 v5, 0x0

    .line 201
    .local v5, out:Ljava/io/FileOutputStream;
    :try_start_5e
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_63
    .catch Ljava/io/FileNotFoundException; {:try_start_5e .. :try_end_63} :catch_93

    .line 202
    .end local v5           #out:Ljava/io/FileOutputStream;
    .local v6, out:Ljava/io/FileOutputStream;
    :try_start_63
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {p1, v9, v10, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_6a
    .catch Ljava/io/FileNotFoundException; {:try_start_63 .. :try_end_6a} :catch_9f

    .line 207
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 208
    .local v3, fileURL:Ljava/lang/String;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "saveBitampTemporary fileUrl "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 210
    if-eqz v6, :cond_90

    .line 211
    :try_start_8d
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_9a

    :cond_90
    :goto_90
    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    move-object v9, v3

    .line 215
    .end local v3           #fileURL:Ljava/lang/String;
    :goto_92
    return-object v9

    .line 203
    :catch_93
    move-exception v9

    move-object v1, v9

    .line 204
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_95
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 205
    const/4 v9, 0x0

    goto :goto_92

    .line 212
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v3       #fileURL:Ljava/lang/String;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :catch_9a
    move-exception v1

    .line 213
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_90

    .line 203
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #fileURL:Ljava/lang/String;
    :catch_9f
    move-exception v9

    move-object v1, v9

    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    goto :goto_95
.end method

.method private saveBitampTemporary(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "imageFilePath"

    .prologue
    .line 139
    :try_start_0
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v9, "saveBitampTemporary String ent "

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 140
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "saveBitmapTemporary imageFilePath: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, p1}, Landroid/webkit/WebClipboard;->getCloneFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 144
    .local v7, tmpFilePath:Ljava/lang/String;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "saveBitampTemporary String tmpFilePath "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 147
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    .local v4, inputFile:Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    .local v6, outputFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_51

    .line 152
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 156
    :cond_51
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 157
    .local v3, in:Ljava/io/FileReader;
    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 160
    .local v5, out:Ljava/io/FileWriter;
    :goto_5b
    invoke-virtual {v3}, Ljava/io/FileReader;->read()I

    move-result v0

    .local v0, c:I
    const/4 v8, -0x1

    if-eq v0, v8, :cond_6d

    .line 161
    invoke-virtual {v5, v0}, Ljava/io/FileWriter;->write(I)V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_65} :catch_66

    goto :goto_5b

    .line 170
    .end local v0           #c:I
    .end local v3           #in:Ljava/io/FileReader;
    .end local v4           #inputFile:Ljava/io/File;
    .end local v5           #out:Ljava/io/FileWriter;
    .end local v6           #outputFile:Ljava/io/File;
    .end local v7           #tmpFilePath:Ljava/lang/String;
    :catch_66
    move-exception v8

    move-object v1, v8

    .line 171
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 172
    const/4 v8, 0x0

    .end local v1           #e:Ljava/io/IOException;
    :goto_6c
    return-object v8

    .line 163
    .restart local v0       #c:I
    .restart local v3       #in:Ljava/io/FileReader;
    .restart local v4       #inputFile:Ljava/io/File;
    .restart local v5       #out:Ljava/io/FileWriter;
    .restart local v6       #outputFile:Ljava/io/File;
    .restart local v7       #tmpFilePath:Ljava/lang/String;
    :cond_6d
    :try_start_6d
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 164
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V

    .line 166
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_7a} :catch_66

    move-result-object v2

    .local v2, fileURL:Ljava/lang/String;
    move-object v8, v2

    .line 168
    goto :goto_6c
.end method


# virtual methods
.method public copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .parameter "src"
    .parameter "dst"

    .prologue
    const/4 v6, 0x0

    .line 661
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 662
    .local v3, source:Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 664
    .local v4, target:Ljava/io/FileOutputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 665
    .local v0, buffer:[B
    const/4 v2, 0x0

    .line 666
    .local v2, i:I
    :goto_10
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_23

    .line 667
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1b} :catch_1c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1b} :catch_2f

    goto :goto_10

    .line 676
    .end local v0           #buffer:[B
    .end local v2           #i:I
    .end local v3           #source:Ljava/io/FileInputStream;
    .end local v4           #target:Ljava/io/FileOutputStream;
    :catch_1c
    move-exception v5

    move-object v1, v5

    .line 677
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move v5, v6

    .line 681
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :goto_22
    return v5

    .line 669
    .restart local v0       #buffer:[B
    .restart local v2       #i:I
    .restart local v3       #source:Ljava/io/FileInputStream;
    .restart local v4       #target:Ljava/io/FileOutputStream;
    :cond_23
    if-eqz v3, :cond_28

    .line 670
    :try_start_25
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 672
    :cond_28
    if-eqz v4, :cond_2d

    .line 673
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_2d} :catch_1c
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2d} :catch_2f

    .line 675
    :cond_2d
    const/4 v5, 0x1

    goto :goto_22

    .line 679
    .end local v0           #buffer:[B
    .end local v2           #i:I
    .end local v3           #source:Ljava/io/FileInputStream;
    .end local v4           #target:Ljava/io/FileOutputStream;
    :catch_2f
    move-exception v5

    move-object v1, v5

    .line 680
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move v5, v6

    .line 681
    goto :goto_22
.end method

.method public declared-synchronized createHandler()V
    .registers 2

    .prologue
    .line 88
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebClipboard;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_c

    .line 89
    new-instance v0, Landroid/webkit/WebClipboard$1;

    invoke-direct {v0, p0}, Landroid/webkit/WebClipboard$1;-><init>(Landroid/webkit/WebClipboard;)V

    iput-object v0, p0, Landroid/webkit/WebClipboard;->mHandler:Landroid/os/Handler;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 101
    :cond_c
    monitor-exit p0

    return-void

    .line 88
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deleteTempDirectory()V
    .registers 4

    .prologue
    .line 121
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "deleteTempDirectory"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 122
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/EmailTempImage/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, HtmlComposerTempDirectory:Ljava/io/File;
    invoke-direct {p0, v0}, Landroid/webkit/WebClipboard;->deleteDirectory(Ljava/io/File;)V

    .line 124
    return-void
.end method

.method public dismissClipboardUI()V
    .registers 2

    .prologue
    .line 448
    iget-object v0, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    .line 449
    return-void
.end method

.method public getCloneFilePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "filePath"

    .prologue
    const-string v8, "/sdcard/EmailTempImage/"

    .line 223
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCloneFilePath filePath"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 224
    if-nez p1, :cond_1e

    .line 226
    const/4 v5, 0x0

    .line 252
    :goto_1d
    return-object v5

    .line 230
    :cond_1e
    new-instance v0, Ljava/io/File;

    const-string v5, "/sdcard/EmailTempImage/"

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, HtmlComposerTempDirectory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 235
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    .local v3, inputFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, fileName:Ljava/lang/String;
    if-eqz v1, :cond_3b

    .line 239
    const-string v5, " "

    const-string v6, "_"

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 242
    :cond_3b
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_57

    .line 244
    move-object v4, v1

    .line 245
    .local v4, tmp:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 248
    .end local v4           #tmp:Ljava/lang/String;
    :cond_57
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/sdcard/EmailTempImage/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, fullFilePath:Ljava/lang/String;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCloneFilePath String filePath "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v5, v2

    .line 252
    goto :goto_1d
.end method

.method public getHTML()Ljava/lang/String;
    .registers 18

    .prologue
    const-string/jumbo v16, "pasteClipBoardData FORMAT_TEXT_ID"

    const-string v15, "WebClipboard"

    const-string v14, ""

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebClipboard;->mContext:Landroid/content/Context;

    move-object v12, v0

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v2

    .line 303
    .local v2, data:Landroid/sec/clipboard/data/ClipboardData;
    const/4 v4, 0x0

    .line 305
    .local v4, data_str:Ljava/lang/String;
    const/4 v3, -0x1

    .line 307
    .local v3, dataFormat:I
    if-eqz v2, :cond_47

    .line 308
    invoke-virtual {v2}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v3

    .line 315
    const/4 v11, 0x4

    if-ne v3, v11, :cond_4b

    .line 316
    move-object v0, v2

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    move-object v6, v0

    .line 317
    .local v6, htmlData:Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->GetHTMLFragment()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 348
    .end local v6           #htmlData:Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    :goto_2d
    const-string v11, "ClipboardEx"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getHTML:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v4

    .line 350
    :goto_46
    return-object v11

    .line 312
    :cond_47
    const-string v11, ""

    move-object v11, v14

    goto :goto_46

    .line 318
    :cond_4b
    const/4 v11, 0x2

    if-ne v3, v11, :cond_8b

    .line 319
    const-string v11, "WebClipboard"

    const-string/jumbo v11, "pasteClipBoardData FORMAT_TEXT_ID"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    move-object v0, v2

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    move-object v9, v0

    .line 321
    .local v9, textData:Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v9}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 322
    .local v10, tmp_data_str:Ljava/lang/String;
    if-eqz v10, :cond_88

    .line 323
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Landroid/webkit/WebClipboard;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 327
    :goto_6b
    const-string v11, "WebClipboard"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "pasteClipBoardData FORMAT_TEXT_ID"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v15, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 326
    :cond_88
    const-string v4, ""

    goto :goto_6b

    .line 329
    .end local v9           #textData:Landroid/sec/clipboard/data/list/ClipboardDataText;
    .end local v10           #tmp_data_str:Ljava/lang/String;
    :cond_8b
    const/4 v11, 0x3

    if-ne v3, v11, :cond_e2

    .line 330
    const/4 v8, 0x0

    .line 331
    .local v8, paste:Ljava/lang/String;
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v12, "pasteClipBoardData FORMAT_BITMAP_ID "

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 332
    move-object v0, v2

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    move-object v7, v0

    .line 334
    .local v7, imageData:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v7}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Landroid/webkit/WebClipboard;->giveFileUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 337
    .local v5, fileUrl:Ljava/lang/String;
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "pasteClipBoardData fileUrl "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 338
    move-object v8, v5

    .line 339
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "pasteClipBoardData paste fileUrl "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 342
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Landroid/webkit/WebClipboard;->makeHtmlFragmentForInsertedImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 343
    goto/16 :goto_2d

    .line 345
    .end local v5           #fileUrl:Ljava/lang/String;
    .end local v7           #imageData:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    .end local v8           #paste:Ljava/lang/String;
    :cond_e2
    const-string v11, ""

    move-object v11, v14

    goto/16 :goto_46
.end method

.method public getHTMLForCheckingSize()Ljava/lang/String;
    .registers 15

    .prologue
    .line 355
    iget-object v11, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v12, p0, Landroid/webkit/WebClipboard;->mContext:Landroid/content/Context;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v1

    .line 358
    .local v1, data:Landroid/sec/clipboard/data/ClipboardData;
    const/4 v2, -0x1

    .line 360
    .local v2, dataFormat:I
    if-eqz v1, :cond_39

    .line 361
    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v2

    .line 368
    const/4 v11, 0x4

    if-ne v2, v11, :cond_3c

    .line 369
    move-object v0, v1

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    move-object v6, v0

    .line 370
    .local v6, htmlData:Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->GetHTMLFragment()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 397
    .end local v6           #htmlData:Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    .local v3, data_str:Ljava/lang/String;
    :goto_1f
    const-string v11, "ClipboardEx"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getHTML:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v3

    .line 399
    .end local v3           #data_str:Ljava/lang/String;
    :goto_38
    return-object v11

    .line 365
    :cond_39
    const-string v11, ""

    goto :goto_38

    .line 371
    :cond_3c
    const/4 v11, 0x2

    if-ne v2, v11, :cond_76

    .line 372
    const-string v11, "WebClipboard"

    const-string/jumbo v12, "pasteClipBoardData FORMAT_TEXT_ID"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    move-object v0, v1

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    move-object v9, v0

    .line 374
    .local v9, textData:Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v9}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 375
    .local v10, tmp_data_str:Ljava/lang/String;
    if-eqz v10, :cond_73

    .line 376
    invoke-direct {p0, v10}, Landroid/webkit/WebClipboard;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 380
    .restart local v3       #data_str:Ljava/lang/String;
    :goto_59
    const-string v11, "WebClipboard"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "pasteClipBoardData FORMAT_TEXT_ID"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 379
    .end local v3           #data_str:Ljava/lang/String;
    :cond_73
    const-string v3, ""

    .restart local v3       #data_str:Ljava/lang/String;
    goto :goto_59

    .line 381
    .end local v3           #data_str:Ljava/lang/String;
    .end local v9           #textData:Landroid/sec/clipboard/data/list/ClipboardDataText;
    .end local v10           #tmp_data_str:Ljava/lang/String;
    :cond_76
    const/4 v11, 0x3

    if-ne v2, v11, :cond_cc

    .line 382
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "getHTML bitmap "

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 383
    move-object v0, v1

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    move-object v7, v0

    .line 385
    .local v7, imageData:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v7}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Landroid/webkit/WebClipboard;->getCloneFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 387
    .local v4, filePath:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 388
    .local v8, mFile:Ljava/io/File;
    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 390
    .local v5, fileUrl:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<img src="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " />"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 391
    .restart local v3       #data_str:Ljava/lang/String;
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getHTML bitmap = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 394
    .end local v3           #data_str:Ljava/lang/String;
    .end local v4           #filePath:Ljava/lang/String;
    .end local v5           #fileUrl:Ljava/lang/String;
    .end local v7           #imageData:Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    .end local v8           #mFile:Ljava/io/File;
    :cond_cc
    const-string v11, ""

    goto/16 :goto_38
.end method

.method public getText()Ljava/lang/String;
    .registers 6

    .prologue
    const-string v4, ""

    .line 282
    iget-object v1, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v2, p0, Landroid/webkit/WebClipboard;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 284
    .local v0, textData:Landroid/sec/clipboard/data/list/ClipboardDataText;
    if-nez v0, :cond_13

    const-string v1, ""

    move-object v1, v4

    .line 290
    :goto_12
    return-object v1

    .line 286
    :cond_13
    const-string v1, "ClipboardEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getText:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-virtual {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_39

    const-string v1, ""

    move-object v1, v4

    goto :goto_12

    .line 290
    :cond_39
    invoke-virtual {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_12
.end method

.method public hasData()Z
    .registers 4

    .prologue
    .line 261
    iget-object v0, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v1, p0, Landroid/webkit/WebClipboard;->mContext:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/sec/clipboard/ClipboardExManager;->hasData(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v1, p0, Landroid/webkit/WebClipboard;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/sec/clipboard/ClipboardExManager;->hasData(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v1, p0, Landroid/webkit/WebClipboard;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/sec/clipboard/ClipboardExManager;->hasData(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_23

    :cond_21
    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public initWebClipboard()V
    .registers 4

    .prologue
    .line 80
    iget-object v0, p0, Landroid/webkit/WebClipboard;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebClipboard;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 81
    return-void
.end method

.method public launchClipboardUI()V
    .registers 5

    .prologue
    .line 453
    iget-object v0, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v1, p0, Landroid/webkit/WebClipboard;->mContext:Landroid/content/Context;

    const/4 v2, 0x4

    iget-object v3, p0, Landroid/webkit/WebClipboard;->mPasteEvent:Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl;

    invoke-virtual {v0, v1, v2, v3}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Z

    .line 454
    return-void
.end method

.method public setDataToClipboard(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "format"
    .parameter "data"

    .prologue
    .line 265
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setDataToClipboard "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 268
    :try_start_18
    const-string v1, "TEXT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 269
    invoke-virtual {p0, p2}, Landroid/webkit/WebClipboard;->setText(Ljava/lang/String;)V

    .line 277
    :cond_23
    :goto_23
    return-void

    .line 270
    :cond_24
    const-string v1, "HTML"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 271
    invoke-virtual {p0, p2}, Landroid/webkit/WebClipboard;->setHTML(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2f} :catch_30

    goto :goto_23

    .line 273
    :catch_30
    move-exception v1

    move-object v0, v1

    .line 274
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ClipboardEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDataToClipboard: Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method public setHTML(Ljava/lang/String;)V
    .registers 6
    .parameter "charSeq"

    .prologue
    .line 403
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;-><init>()V

    .line 404
    .local v0, htmlData:Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->SetHTMLFragment(Ljava/lang/CharSequence;)Z

    .line 405
    iget-object v1, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v2, p0, Landroid/webkit/WebClipboard;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    .line 406
    const-string v1, "ClipboardEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setHTML:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return-void
.end method

.method setPasteListener(Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;)V
    .registers 2
    .parameter "pasteListener"

    .prologue
    .line 257
    iput-object p1, p0, Landroid/webkit/WebClipboard;->mPasteListener:Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;

    .line 258
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 6
    .parameter "charSeq"

    .prologue
    .line 294
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 295
    .local v0, textData:Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    .line 296
    iget-object v1, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v2, p0, Landroid/webkit/WebClipboard;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    .line 297
    const-string v1, "ClipboardEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setText:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void
.end method

.method public setWidthForCopiedImage(I)V
    .registers 2
    .parameter "viewWidth"

    .prologue
    .line 687
    iput p1, p0, Landroid/webkit/WebClipboard;->mViewWidth:I

    .line 688
    return-void
.end method

.method public updateClipboardUI()V
    .registers 4

    .prologue
    .line 457
    iget-object v0, p0, Landroid/webkit/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    const/4 v1, 0x4

    iget-object v2, p0, Landroid/webkit/WebClipboard;->mPasteEvent:Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl;

    invoke-virtual {v0, v1, v2}, Landroid/sec/clipboard/ClipboardExManager;->updateData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 458
    return-void
.end method
