.class public Landroid/util/MultiPartStream;
.super Ljava/io/InputStream;
.source "MultiPartStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/MultiPartStream$MultiPart;
    }
.end annotation


# static fields
.field public static final CR:I = 0xd

.field public static final DEF_BUFFER_SIZE:I = 0x400

.field private static ESCAPE_CHAR:B = 0x0t

.field public static final HYPHEN:I = 0x2d

.field public static final LF:I = 0xa

.field private static final LOGTAG:Ljava/lang/String; = "MultiPartStream"

.field static r:I


# instance fields
.field in:Ljava/io/PushbackInputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const/16 v0, 0x3d

    sput-byte v0, Landroid/util/MultiPartStream;->ESCAPE_CHAR:B

    .line 30
    const/4 v0, 0x0

    sput v0, Landroid/util/MultiPartStream;->r:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 37
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Landroid/util/MultiPartStream;-><init>(Ljava/io/ByteArrayInputStream;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/io/ByteArrayInputStream;)V
    .registers 3
    .parameter "inS"

    .prologue
    .line 41
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Landroid/util/MultiPartStream;-><init>(Ljava/io/ByteArrayInputStream;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/io/ByteArrayInputStream;I)V
    .registers 7
    .parameter "inS"
    .parameter "bSize"

    .prologue
    const-string v3, "MultiPartStream"

    .line 45
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 31
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/util/MultiPartStream;->in:Ljava/io/PushbackInputStream;

    .line 46
    move v0, p2

    .line 47
    .local v0, bufSize:I
    if-gtz p2, :cond_d

    .line 48
    const/16 v0, 0x400

    .line 51
    :cond_d
    :try_start_d
    new-instance v2, Ljava/io/PushbackInputStream;

    invoke-direct {v2, p1, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v2, p0, Landroid/util/MultiPartStream;->in:Ljava/io/PushbackInputStream;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_14} :catch_1c

    .line 56
    :goto_14
    const-string v2, "MultiPartStream"

    const-string v2, "MultiPartStream:Created new Stream"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void

    .line 52
    :catch_1c
    move-exception v2

    move-object v1, v2

    .line 53
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "MultiPartStream"

    const-string v2, "MultiPartStream:Problem creating new Stream"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14
.end method

.method public static final decodeQuotedPrintable([B)[B
    .registers 15
    .parameter "bytes"

    .prologue
    const/16 v13, 0xd

    const/4 v12, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 565
    if-nez p0, :cond_9

    move-object v8, v11

    .line 649
    :goto_8
    return-object v8

    .line 568
    :cond_9
    const/4 v5, 0x0

    .line 569
    .local v5, j:I
    const/4 v4, 0x0

    .line 570
    .local v4, i:I
    const/4 v2, 0x0

    .line 571
    .local v2, c:B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 572
    .local v1, buffer:Ljava/io/ByteArrayOutputStream;
    :goto_11
    array-length v8, p0

    if-ge v4, v8, :cond_d8

    .line 573
    aget-byte v0, p0, v4

    .line 574
    .local v0, b:I
    aget-byte v8, p0, v4

    int-to-char v8, v8

    const/16 v9, 0x3d

    if-ne v8, v9, :cond_9a

    .line 576
    add-int/lit8 v8, v4, 0x1

    :try_start_1f
    aget-byte v8, p0, v8

    int-to-char v8, v8

    if-ne v13, v8, :cond_41

    const/16 v8, 0xa

    add-int/lit8 v9, v4, 0x2

    aget-byte v9, p0, v9

    int-to-char v9, v9

    if-ne v8, v9, :cond_41

    .line 579
    sub-int v8, v4, v10

    if-gt v5, v8, :cond_3d

    .line 580
    :goto_31
    sub-int v8, v4, v10

    if-gt v5, v8, :cond_3d

    .line 581
    aget-byte v2, p0, v5

    .line 582
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 583
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .line 586
    :cond_3d
    add-int/lit8 v4, v4, 0x3

    .line 587
    move v5, v4

    goto :goto_11

    .line 590
    :cond_41
    add-int/lit8 v8, v4, 0x1

    aget-byte v8, p0, v8

    int-to-char v8, v8

    if-nez v8, :cond_5d

    .line 591
    sub-int v8, v4, v10

    if-gt v5, v8, :cond_58

    .line 593
    :goto_4c
    sub-int v8, v4, v10

    if-gt v5, v8, :cond_58

    .line 594
    aget-byte v2, p0, v5

    .line 595
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 596
    add-int/lit8 v5, v5, 0x1

    goto :goto_4c

    .line 599
    :cond_58
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    goto :goto_8

    .line 601
    :cond_5d
    sub-int v8, v4, v10

    if-gt v5, v8, :cond_6d

    .line 602
    :goto_61
    sub-int v8, v4, v10

    if-gt v5, v8, :cond_6d

    .line 603
    aget-byte v2, p0, v5

    .line 604
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 605
    add-int/lit8 v5, v5, 0x1

    goto :goto_61

    .line 608
    :cond_6d
    add-int/lit8 v4, v4, 0x1

    aget-byte v8, p0, v4

    int-to-char v8, v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    .line 609
    .local v7, u:I
    add-int/lit8 v4, v4, 0x1

    aget-byte v8, p0, v4

    int-to-char v8, v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 610
    .local v6, l:I
    if-eq v7, v12, :cond_87

    if-ne v6, v12, :cond_89

    :cond_87
    move-object v8, v11

    .line 611
    goto :goto_8

    .line 614
    :cond_89
    shl-int/lit8 v8, v7, 0x4

    add-int/2addr v8, v6

    int-to-char v8, v8

    invoke-virtual {v1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_90
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1f .. :try_end_90} :catch_95

    .line 615
    move v5, v4

    .line 647
    .end local v6           #l:I
    .end local v7           #u:I
    :cond_91
    :goto_91
    add-int/lit8 v4, v4, 0x1

    .line 648
    goto/16 :goto_11

    .line 617
    :catch_95
    move-exception v8

    move-object v3, v8

    .local v3, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    move-object v8, v11

    .line 618
    goto/16 :goto_8

    .line 620
    .end local v3           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_9a
    aget-byte v8, p0, v4

    int-to-char v8, v8

    const/16 v9, 0x20

    if-eq v8, v9, :cond_91

    .line 622
    aget-byte v8, p0, v4

    int-to-char v8, v8

    if-ne v8, v13, :cond_a8

    .line 623
    move v5, v4

    goto :goto_91

    .line 624
    :cond_a8
    aget-byte v8, p0, v4

    int-to-char v8, v8

    if-nez v8, :cond_c3

    .line 625
    sub-int v8, v4, v10

    if-gt v5, v8, :cond_bd

    .line 627
    :goto_b1
    sub-int v8, v4, v10

    if-gt v5, v8, :cond_bd

    .line 628
    aget-byte v2, p0, v5

    .line 629
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 630
    add-int/lit8 v5, v5, 0x1

    goto :goto_b1

    .line 633
    :cond_bd
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    goto/16 :goto_8

    .line 636
    :cond_c3
    sub-int v8, v4, v10

    if-gt v5, v8, :cond_d3

    .line 638
    :goto_c7
    sub-int v8, v4, v10

    if-gt v5, v8, :cond_d3

    .line 639
    aget-byte v2, p0, v5

    .line 640
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 641
    add-int/lit8 v5, v5, 0x1

    goto :goto_c7

    .line 644
    :cond_d3
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 645
    move v5, v4

    goto :goto_91

    .line 649
    .end local v0           #b:I
    :cond_d8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    goto/16 :goto_8
.end method


# virtual methods
.method public gotoStartOfLine()Z
    .registers 13

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0xd

    const/16 v8, 0xa

    const-string v11, "MultiPartStream"

    .line 399
    const/4 v5, -0x1

    .local v5, tmpVal:I
    const/4 v4, -0x1

    .line 400
    .local v4, rc:I
    const/4 v0, 0x1

    .line 401
    .local v0, doLoop:Z
    const/4 v3, 0x0

    .line 403
    .local v3, found:Z
    :cond_b
    :goto_b
    if-eqz v0, :cond_72

    .line 405
    :try_start_d
    iget-object v6, p0, Landroid/util/MultiPartStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v6}, Ljava/io/PushbackInputStream;->read()I
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_2a

    move-result v4

    .line 411
    :goto_13
    if-ltz v4, :cond_68

    .line 412
    if-eq v4, v9, :cond_19

    if-ne v4, v8, :cond_5d

    .line 416
    :cond_19
    :try_start_19
    iget-object v6, p0, Landroid/util/MultiPartStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v6}, Ljava/io/PushbackInputStream;->read()I

    move-result v5

    .line 417
    if-gez v5, :cond_35

    .line 418
    const-string v6, "MultiPartStream"

    const-string v7, "ReTURNING FALSE FROM 2ND CHAR"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_28} :catch_30

    move v6, v10

    .line 471
    :goto_29
    return v6

    .line 406
    :catch_2a
    move-exception v6

    move-object v2, v6

    .line 408
    .local v2, e1:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    .line 423
    .end local v2           #e1:Ljava/io/IOException;
    :catch_30
    move-exception v6

    move-object v1, v6

    .line 424
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 427
    .end local v1           #e:Ljava/io/IOException;
    :cond_35
    if-ne v4, v9, :cond_4a

    .line 429
    if-eq v5, v8, :cond_3b

    if-ne v5, v9, :cond_3d

    .line 431
    :cond_3b
    const/4 v3, 0x1

    goto :goto_b

    .line 433
    :cond_3d
    const/4 v0, 0x0

    .line 435
    :try_start_3e
    iget-object v6, p0, Landroid/util/MultiPartStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v6, v5}, Ljava/io/PushbackInputStream;->unread(I)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_43} :catch_44

    goto :goto_b

    .line 436
    :catch_44
    move-exception v6

    move-object v1, v6

    .line 438
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 441
    .end local v1           #e:Ljava/io/IOException;
    :cond_4a
    if-ne v4, v8, :cond_b

    .line 442
    if-ne v5, v8, :cond_50

    .line 445
    const/4 v3, 0x1

    goto :goto_b

    .line 447
    :cond_50
    const/4 v0, 0x0

    .line 449
    :try_start_51
    iget-object v6, p0, Landroid/util/MultiPartStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v6, v5}, Ljava/io/PushbackInputStream;->unread(I)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_56} :catch_57

    goto :goto_b

    .line 450
    :catch_57
    move-exception v6

    move-object v1, v6

    .line 452
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 457
    .end local v1           #e:Ljava/io/IOException;
    :cond_5d
    if-eqz v3, :cond_b

    .line 458
    const/4 v0, 0x0

    .line 460
    :try_start_60
    iget-object v6, p0, Landroid/util/MultiPartStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v6, v4}, Ljava/io/PushbackInputStream;->unread(I)V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_65} :catch_66

    goto :goto_b

    .line 461
    :catch_66
    move-exception v6

    goto :goto_b

    .line 466
    :cond_68
    const/4 v0, 0x0

    .line 467
    const-string v6, "MultiPartStream"

    const-string v6, "ReTURNING FALSE FROM Last"

    invoke-static {v11, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v10

    .line 468
    goto :goto_29

    .line 471
    :cond_72
    const/4 v6, 0x1

    goto :goto_29
.end method

.method public handleMultiPart(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .parameter "boundary"
    .parameter "ContentType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Part;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 61
    if-nez p1, :cond_7

    .line 62
    invoke-virtual {p0}, Landroid/util/MultiPartStream;->parseStreamForBoundary()Ljava/lang/String;

    move-result-object p1

    .line 63
    :cond_7
    if-nez p2, :cond_a

    .line 73
    :cond_9
    :goto_9
    return-object v2

    .line 65
    :cond_a
    if-eqz p1, :cond_9

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, nestedParts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Part;>;"
    new-instance v1, Landroid/util/Part;

    invoke-direct {v1, p1, p2}, Landroid/util/Part;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .local v1, pFirst:Landroid/util/Part;
    const-string v2, "MultiPartStream"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MultiPart:Part created with boundary"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/util/Part;->mBoundary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0, v1}, Landroid/util/MultiPartStream;->parse(Landroid/util/Part;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v2, v0

    .line 71
    goto :goto_9
.end method

.method public parse(Landroid/util/Part;)Ljava/util/ArrayList;
    .registers 27
    .parameter "pFirst"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Part;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Part;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    const-string v21, "MultiPartStream"

    const-string v22, "MultiPart:In the parse function"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v16, Landroid/util/MultiPartStream$MultiPart;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/util/MultiPartStream$MultiPart;-><init>(Landroid/util/MultiPartStream;Landroid/util/Part;)V

    .line 153
    .local v16, mp:Landroid/util/MultiPartStream$MultiPart;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/util/MultiPartStream$MultiPart;->mBoundary:Ljava/lang/String;

    move-object v5, v0

    .line 154
    .local v5, boundary:Ljava/lang/String;
    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/util/MultiPartStream$MultiPart;->setBoundary(Ljava/lang/String;)V

    .line 155
    const-string v21, "MultiPartStream"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Created Multipart with Boundary Array = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/util/MultiPartStream$MultiPart;->boundaryArray:[I

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "and boundary length= "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/MultiPartStream$MultiPart;->boundaryLength:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/MultiPartStream;->skipBoundary(Landroid/util/MultiPartStream$MultiPart;)V

    .line 160
    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/util/MultiPartStream$MultiPart;->eop:Z

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_68

    .line 161
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/util/MultiPartStream$MultiPart;->eop:Z

    .line 164
    :cond_68
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v14, iParts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Part;>;"
    const/4 v10, 0x1

    .line 169
    .local v10, doLoop:Z
    :cond_6e
    new-instance v15, Landroid/util/Part;

    invoke-direct {v15}, Landroid/util/Part;-><init>()V

    .line 170
    .local v15, mPart:Landroid/util/Part;
    move-object v0, v15

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/util/Part;->parseHeader(Landroid/util/MultiPartStream;)V

    .line 171
    const-string v21, "MultiPartStream"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Content-Type of Part is:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object v0, v15

    iget-object v0, v0, Landroid/util/Part;->mContentType:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {v15}, Landroid/util/Part;->isMultiPart()Z

    move-result v21

    if-eqz v21, :cond_207

    .line 177
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/util/MultiPartStream;->parse(Landroid/util/Part;)Ljava/util/ArrayList;

    move-result-object v17

    .line 181
    .local v17, nestedParts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Part;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/MultiPartStream;->skipBoundary(Landroid/util/MultiPartStream$MultiPart;)V

    .line 183
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/util/MultiPartStream$MultiPart;->eop:Z

    .line 186
    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/util/MultiPartStream$MultiPart;->IsRelated:Z

    move/from16 v21, v0

    if-eqz v21, :cond_d2

    .line 187
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/util/MultiPartStream$MultiPart;->mStart:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_d2

    .line 189
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/util/MultiPartStream$MultiPart;->IsRelated:Z

    .line 190
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/util/MultiPartStream$MultiPart;->IsMixed:Z

    .line 194
    :cond_d2
    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/util/MultiPartStream$MultiPart;->IsMixed:Z

    move/from16 v21, v0

    if-eqz v21, :cond_122

    .line 195
    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/util/MultiPartStream$MultiPart;->IsFirst:Z

    move/from16 v21, v0

    if-eqz v21, :cond_102

    .line 198
    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 199
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/util/MultiPartStream$MultiPart;->IsFirst:Z

    .line 381
    .end local v17           #nestedParts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Part;>;"
    :cond_f0
    :goto_f0
    invoke-virtual/range {v16 .. v16}, Landroid/util/MultiPartStream$MultiPart;->isEndOfMultipart()Z

    move-result v21

    if-eqz v21, :cond_ff

    .line 382
    const-string v21, "MultiPartStream"

    const-string/jumbo v22, "parse::End of multipart"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v10, 0x0

    .line 386
    :cond_ff
    if-nez v10, :cond_6e

    .line 387
    return-object v14

    .line 205
    .restart local v17       #nestedParts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Part;>;"
    :cond_102
    const/4 v12, 0x0

    .local v12, i:I
    :goto_103
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v21

    move v0, v12

    move/from16 v1, v21

    if-ge v0, v1, :cond_f0

    .line 206
    move-object/from16 v0, v17

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Part;

    .line 207
    .local v13, iPart:Landroid/util/Part;
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object v1, v13

    iput-boolean v0, v1, Landroid/util/Part;->isPresentable:Z

    .line 208
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit8 v12, v12, 0x1

    goto :goto_103

    .line 212
    .end local v12           #i:I
    .end local v13           #iPart:Landroid/util/Part;
    :cond_122
    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/util/MultiPartStream$MultiPart;->IsRelated:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1bd

    .line 213
    const-string v21, "MultiPartStream"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Nested Related MUltipart of parts"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/util/MultiPartStream$MultiPart;->IsFirst:Z

    move/from16 v21, v0

    if-nez v21, :cond_f0

    .line 220
    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/util/Part;

    .line 230
    .local v19, presentationPart:Landroid/util/Part;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/util/MultiPartStream$MultiPart;->mStart:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/util/Part;->mContentId:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_19d

    .line 231
    const-string v21, "MultiPartStream"

    const-string v22, "Nested Related MUltipart contains the Presentation Part"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/16 v21, 0x0

    move-object v0, v14

    move/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 233
    const/4 v12, 0x1

    .restart local v12       #i:I
    :goto_17e
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v21

    move v0, v12

    move/from16 v1, v21

    if-ge v0, v1, :cond_f0

    .line 235
    move-object/from16 v0, v17

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Part;

    .line 236
    .restart local v13       #iPart:Landroid/util/Part;
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object v1, v13

    iput-boolean v0, v1, Landroid/util/Part;->isPresentable:Z

    .line 237
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    add-int/lit8 v12, v12, 0x1

    goto :goto_17e

    .line 244
    .end local v12           #i:I
    .end local v13           #iPart:Landroid/util/Part;
    :cond_19d
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_19e
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v21

    move v0, v12

    move/from16 v1, v21

    if-ge v0, v1, :cond_f0

    .line 245
    move-object/from16 v0, v17

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Part;

    .line 246
    .restart local v13       #iPart:Landroid/util/Part;
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object v1, v13

    iput-boolean v0, v1, Landroid/util/Part;->isPresentable:Z

    .line 247
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    add-int/lit8 v12, v12, 0x1

    goto :goto_19e

    .line 255
    .end local v12           #i:I
    .end local v13           #iPart:Landroid/util/Part;
    .end local v19           #presentationPart:Landroid/util/Part;
    :cond_1bd
    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/util/MultiPartStream$MultiPart;->IsAlternative:Z

    move/from16 v21, v0

    if-eqz v21, :cond_f0

    .line 257
    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/util/Part;

    .line 262
    .restart local v19       #presentationPart:Landroid/util/Part;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/util/Part;->mContentType:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/MultiPartStream$MultiPart;->isPresentable(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1fd

    .line 264
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 265
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_1e5
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v21

    move v0, v12

    move/from16 v1, v21

    if-ge v0, v1, :cond_f0

    .line 266
    move-object/from16 v0, v17

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Part;

    .line 267
    .restart local v13       #iPart:Landroid/util/Part;
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    add-int/lit8 v12, v12, 0x1

    goto :goto_1e5

    .line 271
    .end local v12           #i:I
    .end local v13           #iPart:Landroid/util/Part;
    :cond_1fd
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/util/MultiPartStream$MultiPart;->eom:Z

    goto/16 :goto_f0

    .line 280
    .end local v17           #nestedParts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Part;>;"
    .end local v19           #presentationPart:Landroid/util/Part;
    :cond_207
    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/util/MultiPartStream$MultiPart;->IsRelated:Z

    move/from16 v21, v0

    if-eqz v21, :cond_227

    .line 281
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/util/MultiPartStream$MultiPart;->mStart:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_227

    .line 282
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/util/MultiPartStream$MultiPart;->IsRelated:Z

    .line 283
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/util/MultiPartStream$MultiPart;->IsMixed:Z

    .line 286
    :cond_227
    const/16 v18, 0x0

    .line 288
    .local v18, pBody:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Part$Chunk;>;"
    :try_start_229
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/util/MultiPartStream$MultiPart;->partRead(Landroid/util/MultiPartStream;Landroid/util/Part;)Ljava/util/ArrayList;

    move-result-object v18

    .line 289
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/util/MultiPartStream$MultiPart;->eop:Z
    :try_end_23a
    .catch Ljava/io/IOException; {:try_start_229 .. :try_end_23a} :catch_29f

    .line 294
    :goto_23a
    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/util/MultiPartStream$MultiPart;->eom:Z

    move/from16 v21, v0

    if-eqz v21, :cond_24a

    .line 295
    const-string v21, "MultiPartStream"

    const-string/jumbo v22, "parse::End Of Multipart Reached and set"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_24a
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 297
    .local v20, size:I
    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x400

    move v7, v0

    .line 298
    .local v7, dataSize:I
    const/4 v12, 0x0

    .restart local v12       #i:I
    const/4 v9, 0x0

    .line 299
    .local v9, destIndex:I
    move v0, v7

    new-array v0, v0, [B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v15

    iput-object v0, v1, Landroid/util/Part;->data:[B

    .line 300
    move-object v0, v15

    iget-object v0, v0, Landroid/util/Part;->data:[B

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Ljava/util/Arrays;->fill([BB)V

    .line 301
    const/4 v12, 0x0

    .line 302
    :goto_26a
    move v0, v12

    move/from16 v1, v20

    if-ge v0, v1, :cond_2a6

    .line 303
    move-object/from16 v0, v18

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Part$Chunk;

    .line 304
    .local v6, c:Landroid/util/Part$Chunk;
    move-object v0, v6

    iget-object v0, v0, Landroid/util/Part$Chunk;->mArray:[B

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object v0, v15

    iget-object v0, v0, Landroid/util/Part;->data:[B

    move-object/from16 v23, v0

    move-object v0, v6

    iget v0, v0, Landroid/util/Part$Chunk;->mLength:I

    move/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    move v3, v9

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    move-object v0, v6

    iget v0, v0, Landroid/util/Part$Chunk;->mLength:I

    move/from16 v21, v0

    add-int v9, v9, v21

    .line 307
    add-int/lit8 v12, v12, 0x1

    .line 308
    goto :goto_26a

    .line 290
    .end local v6           #c:Landroid/util/Part$Chunk;
    .end local v7           #dataSize:I
    .end local v9           #destIndex:I
    .end local v12           #i:I
    .end local v20           #size:I
    :catch_29f
    move-exception v21

    move-object/from16 v11, v21

    .line 292
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_23a

    .line 309
    .end local v11           #e:Ljava/io/IOException;
    .restart local v7       #dataSize:I
    .restart local v9       #destIndex:I
    .restart local v12       #i:I
    .restart local v20       #size:I
    :cond_2a6
    iput v9, v15, Landroid/util/Part;->mLength:I

    .line 310
    const-string v21, "MultiPartStream"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MultiPart:Obtained  Part of size"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object v0, v15

    iget v0, v0, Landroid/util/Part;->mLength:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/4 v8, 0x0

    .line 312
    .local v8, decodedData:[B
    move-object v0, v15

    iget-object v0, v0, Landroid/util/Part;->mContentTransferEncoding:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_32f

    move-object v0, v15

    iget-object v0, v0, Landroid/util/Part;->mContentTransferEncoding:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "base64"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_32f

    .line 314
    move-object v0, v15

    iget-object v0, v0, Landroid/util/Part;->data:[B

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v8

    .line 315
    iput-object v8, v15, Landroid/util/Part;->data:[B

    .line 316
    move-object v0, v8

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object v1, v15

    iput v0, v1, Landroid/util/Part;->mLength:I

    .line 335
    :cond_2ee
    :goto_2ee
    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/util/MultiPartStream$MultiPart;->IsMixed:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3a8

    .line 336
    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/util/MultiPartStream$MultiPart;->IsFirst:Z

    move/from16 v21, v0

    if-eqz v21, :cond_39c

    .line 338
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object v1, v15

    iput-boolean v0, v1, Landroid/util/Part;->isPresentable:Z

    .line 340
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/util/MultiPartStream$MultiPart;->IsFirst:Z

    .line 342
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    const-string v21, "MultiPartStream"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MultiPart:Added First Part of Mixed of size"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object v0, v15

    iget v0, v0, Landroid/util/Part;->mLength:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f0

    .line 317
    :cond_32f
    move-object v0, v15

    iget-object v0, v0, Landroid/util/Part;->mContentTransferEncoding:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2ee

    move-object v0, v15

    iget-object v0, v0, Landroid/util/Part;->mContentTransferEncoding:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string/jumbo v22, "quoted-printable"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2ee

    .line 322
    :try_start_344
    move-object v0, v15

    iget-object v0, v0, Landroid/util/Part;->data:[B

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/util/MultiPartStream;->decodeQuotedPrintable([B)[B
    :try_end_34c
    .catch Ljava/lang/Exception; {:try_start_344 .. :try_end_34c} :catch_378

    move-result-object v8

    .line 328
    :goto_34d
    if-eqz v8, :cond_2ee

    .line 329
    iput-object v8, v15, Landroid/util/Part;->data:[B

    .line 330
    const-string v21, "MultiPartStream"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MultiPart:Succesful in decoding"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object v0, v8

    array-length v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    move-object v0, v8

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object v1, v15

    iput v0, v1, Landroid/util/Part;->mLength:I

    goto/16 :goto_2ee

    .line 323
    :catch_378
    move-exception v21

    move-object/from16 v11, v21

    .line 324
    .local v11, e:Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 325
    const-string v21, "MultiPartStream"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MultiPart:Exception occurred in decoding--Length is"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object v0, v8

    array-length v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34d

    .line 346
    .end local v11           #e:Ljava/lang/Exception;
    :cond_39c
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object v1, v15

    iput-boolean v0, v1, Landroid/util/Part;->isPresentable:Z

    .line 347
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f0

    .line 349
    :cond_3a8
    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/util/MultiPartStream$MultiPart;->IsRelated:Z

    move/from16 v21, v0

    if-eqz v21, :cond_421

    .line 350
    const-string v21, "MultiPartStream"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Related MUltipart with START field"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object v0, v15

    iget-object v0, v0, Landroid/util/Part;->mContentId:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/util/MultiPartStream$MultiPart;->mStart:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object v0, v15

    iget-object v0, v0, Landroid/util/Part;->mContentId:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_415

    .line 355
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object v1, v15

    iput-boolean v0, v1, Landroid/util/Part;->isPresentable:Z

    .line 356
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/util/MultiPartStream$MultiPart;->IsFirst:Z

    .line 358
    const/16 v21, 0x0

    move-object v0, v14

    move/from16 v1, v21

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 359
    const-string v21, "MultiPartStream"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MultiPart:Added First Part of RELATIVE of size"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object v0, v15

    iget v0, v0, Landroid/util/Part;->mLength:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f0

    .line 362
    :cond_415
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object v1, v15

    iput-boolean v0, v1, Landroid/util/Part;->isPresentable:Z

    .line 363
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f0

    .line 365
    :cond_421
    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/util/MultiPartStream$MultiPart;->IsAlternative:Z

    move/from16 v21, v0

    if-eqz v21, :cond_f0

    .line 366
    move-object v0, v15

    iget-object v0, v0, Landroid/util/Part;->mContentType:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/MultiPartStream$MultiPart;->isPresentable(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_447

    .line 368
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object v1, v15

    iput-boolean v0, v1, Landroid/util/Part;->isPresentable:Z

    .line 370
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 371
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f0

    .line 375
    :cond_447
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/util/MultiPartStream$MultiPart;->eom:Z

    goto/16 :goto_f0
.end method

.method public parseStreamForBoundary()Ljava/lang/String;
    .registers 14

    .prologue
    .line 476
    const/4 v9, -0x1

    .line 477
    .local v9, tmpVal:I
    const/4 v2, 0x1

    .line 478
    .local v2, doLoop:Z
    const/4 v5, 0x0

    .line 479
    .local v5, found:Z
    const/4 v8, -0x1

    .line 480
    .local v8, nextVal:I
    const/16 v10, 0x80

    new-array v0, v10, [C

    .line 481
    .local v0, bound:[C
    const/4 v1, 0x0

    .line 483
    .local v1, boundary:Ljava/lang/String;
    :cond_9
    :goto_9
    if-eqz v2, :cond_dc

    .line 485
    :try_start_b
    iget-object v10, p0, Landroid/util/MultiPartStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v10}, Ljava/io/PushbackInputStream;->read()I
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_40

    move-result v9

    .line 490
    :goto_11
    const/4 v10, -0x1

    if-eq v9, v10, :cond_d9

    .line 491
    const-string v10, "MultiPartStream"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ParsingStreamForBoundary: Char ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    int-to-char v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/16 v10, 0x2d

    if-ne v9, v10, :cond_54

    const/4 v10, 0x1

    if-eq v5, v10, :cond_54

    .line 494
    :try_start_34
    iget-object v10, p0, Landroid/util/MultiPartStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v10}, Ljava/io/PushbackInputStream;->read()I
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_39} :catch_46

    move-result v8

    .line 499
    :goto_3a
    const/16 v10, 0x2d

    if-ne v8, v10, :cond_4c

    .line 500
    const/4 v5, 0x1

    goto :goto_9

    .line 486
    :catch_40
    move-exception v10

    move-object v4, v10

    .line 488
    .local v4, e1:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    .line 495
    .end local v4           #e1:Ljava/io/IOException;
    :catch_46
    move-exception v10

    move-object v3, v10

    .line 497
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3a

    .line 502
    .end local v3           #e:Ljava/io/IOException;
    :cond_4c
    invoke-virtual {p0}, Landroid/util/MultiPartStream;->gotoStartOfLine()Z

    move-result v10

    if-nez v10, :cond_9

    .line 503
    const/4 v10, 0x0

    .line 560
    :goto_53
    return-object v10

    .line 505
    :cond_54
    const/4 v10, 0x1

    if-ne v5, v10, :cond_d0

    .line 506
    const/4 v6, 0x0

    .line 508
    .local v6, i:I
    :goto_58
    const/4 v10, -0x1

    if-eq v9, v10, :cond_75

    .line 509
    const/16 v10, 0xd

    if-eq v9, v10, :cond_75

    const/16 v10, 0xa

    if-eq v9, v10, :cond_75

    .line 510
    int-to-char v10, v9

    aput-char v10, v0, v6

    .line 516
    :try_start_66
    iget-object v10, p0, Landroid/util/MultiPartStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v10}, Ljava/io/PushbackInputStream;->read()I
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_6b} :catch_6f

    move-result v9

    .line 521
    :goto_6c
    add-int/lit8 v6, v6, 0x1

    goto :goto_58

    .line 517
    :catch_6f
    move-exception v10

    move-object v3, v10

    .line 519
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6c

    .line 524
    .end local v3           #e:Ljava/io/IOException;
    :cond_75
    const/4 v10, -0x1

    if-ne v9, v10, :cond_7a

    .line 525
    const/4 v10, 0x0

    goto :goto_53

    .line 527
    :cond_7a
    new-instance v1, Ljava/lang/String;

    .end local v1           #boundary:Ljava/lang/String;
    const/4 v10, 0x0

    invoke-direct {v1, v0, v10, v6}, Ljava/lang/String;-><init>([CII)V

    .line 530
    .restart local v1       #boundary:Ljava/lang/String;
    :try_start_80
    iget-object v10, p0, Landroid/util/MultiPartStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v10, v9}, Ljava/io/PushbackInputStream;->unread(I)V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_85} :catch_ae

    .line 534
    :goto_85
    const/4 v10, 0x1

    sub-int v7, v6, v10

    .local v7, j:I
    :goto_88
    if-ltz v7, :cond_ba

    .line 535
    const-string v10, "MultiPartStream"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Character being unread is"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-char v12, v0, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :try_start_a4
    iget-object v10, p0, Landroid/util/MultiPartStream;->in:Ljava/io/PushbackInputStream;

    aget-char v11, v0, v7

    invoke-virtual {v10, v11}, Ljava/io/PushbackInputStream;->unread(I)V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_ab} :catch_b4

    .line 534
    :goto_ab
    add-int/lit8 v7, v7, -0x1

    goto :goto_88

    .line 531
    .end local v7           #j:I
    :catch_ae
    move-exception v10

    move-object v3, v10

    .line 532
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_85

    .line 538
    .end local v3           #e:Ljava/io/IOException;
    .restart local v7       #j:I
    :catch_b4
    move-exception v10

    move-object v3, v10

    .line 539
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ab

    .line 544
    .end local v3           #e:Ljava/io/IOException;
    :cond_ba
    :try_start_ba
    iget-object v10, p0, Landroid/util/MultiPartStream;->in:Ljava/io/PushbackInputStream;

    const/16 v11, 0x2d

    invoke-virtual {v10, v11}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 545
    iget-object v10, p0, Landroid/util/MultiPartStream;->in:Ljava/io/PushbackInputStream;

    const/16 v11, 0x2d

    invoke-virtual {v10, v11}, Ljava/io/PushbackInputStream;->unread(I)V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_c8} :catch_ca

    :goto_c8
    move-object v10, v1

    .line 549
    goto :goto_53

    .line 546
    :catch_ca
    move-exception v10

    move-object v3, v10

    .line 547
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c8

    .line 552
    .end local v3           #e:Ljava/io/IOException;
    .end local v6           #i:I
    .end local v7           #j:I
    :cond_d0
    invoke-virtual {p0}, Landroid/util/MultiPartStream;->gotoStartOfLine()Z

    move-result v10

    if-nez v10, :cond_9

    .line 553
    const/4 v10, 0x0

    goto/16 :goto_53

    .line 556
    :cond_d9
    const/4 v10, 0x0

    goto/16 :goto_53

    :cond_dc
    move-object v10, v1

    .line 560
    goto/16 :goto_53
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    const/4 v0, 0x0

    return v0
.end method

.method public skipBoundary(Landroid/util/MultiPartStream$MultiPart;)V
    .registers 15
    .parameter "mp"

    .prologue
    const/4 v11, -0x1

    const/4 v9, 0x1

    const-string/jumbo v12, "skipBoundary:End of MUltipart reached"

    const-string v10, "MultiPartStream"

    .line 78
    iget-object v8, p1, Landroid/util/MultiPartStream$MultiPart;->boundaryArray:[I

    if-eqz v8, :cond_10

    iget-object v8, p1, Landroid/util/MultiPartStream$MultiPart;->boundaryArray:[I

    array-length v8, v8

    if-nez v8, :cond_18

    .line 79
    :cond_10
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Have no boundary"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 80
    :cond_18
    iget-object v8, p0, Landroid/util/MultiPartStream;->in:Ljava/io/PushbackInputStream;

    if-nez v8, :cond_24

    .line 81
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Have no stream"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 83
    :cond_24
    const/4 v2, 0x1

    .line 85
    .local v2, doLoop:Z
    const/4 v7, -0x1

    .line 86
    .local v7, tmpVal:I
    const/4 v0, 0x0

    .line 87
    .local v0, compIdx:I
    const/4 v6, 0x0

    .line 88
    .local v6, eop:Z
    const/4 v5, 0x0

    .local v5, eom:Z
    move v1, v0

    .line 89
    .end local v0           #compIdx:I
    .local v1, compIdx:I
    :goto_2a
    if-eqz v2, :cond_94

    .line 91
    :try_start_2c
    iget-object v8, p0, Landroid/util/MultiPartStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v8}, Ljava/io/PushbackInputStream;->read()I
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_31} :catch_44

    move-result v7

    .line 96
    :goto_32
    if-eq v7, v11, :cond_88

    .line 99
    iget-object v8, p1, Landroid/util/MultiPartStream$MultiPart;->boundaryArray:[I

    add-int/lit8 v0, v1, 0x1

    .end local v1           #compIdx:I
    .restart local v0       #compIdx:I
    aget v8, v8, v1

    if-ne v8, v7, :cond_5c

    .line 100
    iget v8, p1, Landroid/util/MultiPartStream$MultiPart;->boundaryLength:I

    if-ne v8, v0, :cond_4a

    .line 101
    const/4 v6, 0x1

    .line 102
    const/4 v5, 0x0

    move v1, v0

    .end local v0           #compIdx:I
    .restart local v1       #compIdx:I
    goto :goto_2a

    .line 92
    :catch_44
    move-exception v8

    move-object v4, v8

    .line 94
    .local v4, e1:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_32

    .line 103
    .end local v1           #compIdx:I
    .end local v4           #e1:Ljava/io/IOException;
    .restart local v0       #compIdx:I
    :cond_4a
    iget-object v8, p1, Landroid/util/MultiPartStream$MultiPart;->boundaryArray:[I

    array-length v8, v8

    if-ne v8, v0, :cond_b2

    .line 104
    const/4 v6, 0x0

    .line 105
    const/4 v5, 0x1

    .line 106
    const-string v8, "MultiPartStream"

    const-string/jumbo v8, "skipBoundary:End of MUltipart reached"

    invoke-static {v10, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v2, 0x0

    move v1, v0

    .end local v0           #compIdx:I
    .restart local v1       #compIdx:I
    goto :goto_2a

    .line 109
    .end local v1           #compIdx:I
    .restart local v0       #compIdx:I
    :cond_5c
    if-eqz v6, :cond_74

    .line 110
    const/4 v2, 0x0

    .line 112
    :try_start_5f
    iget-object v8, p0, Landroid/util/MultiPartStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v8, v7}, Ljava/io/PushbackInputStream;->unread(I)V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_64} :catch_66

    move v1, v0

    .line 117
    .end local v0           #compIdx:I
    .restart local v1       #compIdx:I
    goto :goto_2a

    .line 113
    .end local v1           #compIdx:I
    .restart local v0       #compIdx:I
    :catch_66
    move-exception v8

    move-object v3, v8

    .line 114
    .local v3, e:Ljava/io/IOException;
    const/4 v6, 0x0

    .line 115
    const/4 v5, 0x1

    .line 116
    const-string v8, "MultiPartStream"

    const-string/jumbo v8, "skipBoundary:End of MUltipart reached after IO error"

    invoke-static {v10, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 117
    .end local v0           #compIdx:I
    .restart local v1       #compIdx:I
    goto :goto_2a

    .line 119
    .end local v1           #compIdx:I
    .end local v3           #e:Ljava/io/IOException;
    .restart local v0       #compIdx:I
    :cond_74
    invoke-virtual {p0}, Landroid/util/MultiPartStream;->gotoStartOfLine()Z

    move-result v8

    if-nez v8, :cond_85

    .line 120
    iput-boolean v9, p1, Landroid/util/MultiPartStream$MultiPart;->eom:Z

    .line 121
    const-string v8, "MultiPartStream"

    const-string/jumbo v8, "skipBoundary:End of MUltipart reached after gotStartOfline error"

    invoke-static {v10, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :goto_84
    return-void

    .line 124
    :cond_85
    const/4 v0, 0x0

    move v1, v0

    .end local v0           #compIdx:I
    .restart local v1       #compIdx:I
    goto :goto_2a

    .line 127
    :cond_88
    const/4 v5, 0x1

    .line 128
    const-string v8, "MultiPartStream"

    const-string/jumbo v8, "skipBoundary:End of MUltipart reached after EndOfStream"

    invoke-static {v10, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v6, 0x0

    .line 130
    const/4 v2, 0x0

    goto :goto_2a

    .line 133
    :cond_94
    if-eq v7, v11, :cond_b0

    .line 134
    invoke-virtual {p0}, Landroid/util/MultiPartStream;->gotoStartOfLine()Z

    move-result v8

    if-nez v8, :cond_a0

    .line 135
    iput-boolean v9, p1, Landroid/util/MultiPartStream$MultiPart;->eom:Z

    move v0, v1

    .line 136
    .end local v1           #compIdx:I
    .restart local v0       #compIdx:I
    goto :goto_84

    .line 138
    .end local v0           #compIdx:I
    .restart local v1       #compIdx:I
    :cond_a0
    if-ne v9, v6, :cond_a4

    .line 139
    iput-boolean v9, p1, Landroid/util/MultiPartStream$MultiPart;->eop:Z

    .line 140
    :cond_a4
    if-ne v9, v5, :cond_b0

    .line 141
    iput-boolean v9, p1, Landroid/util/MultiPartStream$MultiPart;->eom:Z

    .line 142
    const-string v8, "MultiPartStream"

    const-string/jumbo v8, "skipBoundary:End of MUltipart reached"

    invoke-static {v10, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b0
    move v0, v1

    .line 145
    .end local v1           #compIdx:I
    .restart local v0       #compIdx:I
    goto :goto_84

    :cond_b2
    move v1, v0

    .end local v0           #compIdx:I
    .restart local v1       #compIdx:I
    goto/16 :goto_2a
.end method
