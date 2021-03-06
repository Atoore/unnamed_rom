.class public Landroid/util/Part;
.super Ljava/lang/Object;
.source "Part.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/Part$Chunk;
    }
.end annotation


# static fields
.field private static final BOUNDARY:Ljava/lang/String; = "boundary="

.field private static final CACHE_CONTROL:Ljava/lang/String; = "cache-control"

.field private static final CONN_DIRECTIVE:Ljava/lang/String; = "connection"

.field private static final CONTENT_DISPOSITION:Ljava/lang/String; = "content-disposition"

.field private static final CONTENT_ENCODING:Ljava/lang/String; = "content-encoding"

.field private static final CONTENT_ID:Ljava/lang/String; = "content-id"

.field private static final CONTENT_LEN:Ljava/lang/String; = "content-length"

.field private static final CONTENT_LOCATION:Ljava/lang/String; = "content-location"

.field private static final CONTENT_TRANSFER_ENCODING:Ljava/lang/String; = "content-transfer-encoding"

.field private static final CONTENT_TYPE:Ljava/lang/String; = "content-type"

.field public static final CR:I = 0xd

.field private static final EXPIRES:Ljava/lang/String; = "expires"

.field private static final HASH_CACHE_CONTROL:I = -0xc71a9ee

.field private static final HASH_CONTENT_DISPOSITION:I = -0x4b88f79d

.field private static final HASH_CONTENT_ENCODING:I = 0x7ce07427

.field private static final HASH_CONTENT_ID:I = 0xfc402ef

.field private static final HASH_CONTENT_LOCATION:I = -0x77cf1977

.field private static final HASH_CONTENT_TRANSFER_ENCODING:I = -0x3c0a275f

.field private static final HASH_CONTENT_TYPE:I = 0x2ed4600e

.field private static final HASH_EXPIRES:I = -0x4e0958cc

.field private static final HASH_LAST_MODIFIED:I = 0x8f17c20

.field private static final LAST_MODIFIED:Ljava/lang/String; = "last-modified"

.field public static final LF:I = 0xa

.field private static final LOGTAG:Ljava/lang/String; = "Part"

.field private static final REFRESH:Ljava/lang/String; = "refresh"

.field private static final START:Ljava/lang/String; = "start="

.field private static final STARTINFO:Ljava/lang/String; = "start-info="


# instance fields
.field public data:[B

.field public isPresentable:Z

.field public mBoundary:Ljava/lang/String;

.field public mCacheControl:Ljava/lang/String;

.field public mContentDisposition:Ljava/lang/String;

.field public mContentId:Ljava/lang/String;

.field public mContentLocation:Ljava/lang/String;

.field public mContentTransferEncoding:Ljava/lang/String;

.field public mContentType:Ljava/lang/String;

.field public mExpires:Ljava/lang/String;

.field public mExtraHeaderNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mExtraHeaderValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mLastModified:Ljava/lang/String;

.field public mLength:I

.field public mStart:Ljava/lang/String;

.field public mStartInfo:Ljava/lang/String;

.field public mUrl:Ljava/lang/String;

.field public mcharset:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x6

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/util/Part;->mExtraHeaderNames:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/util/Part;->mExtraHeaderValues:Ljava/util/ArrayList;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/Part;->data:[B

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/Part;->isPresentable:Z

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "bound"
    .parameter "cType"

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/util/Part;->mExtraHeaderNames:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/util/Part;->mExtraHeaderValues:Ljava/util/ArrayList;

    .line 34
    iput-object v1, p0, Landroid/util/Part;->data:[B

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/Part;->isPresentable:Z

    .line 83
    iput-object v1, p0, Landroid/util/Part;->mUrl:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Landroid/util/Part;->mContentType:Ljava/lang/String;

    .line 85
    iput-object p1, p0, Landroid/util/Part;->mBoundary:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Landroid/util/Part;->mContentDisposition:Ljava/lang/String;

    .line 87
    iput-object v1, p0, Landroid/util/Part;->mContentTransferEncoding:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Landroid/util/Part;->mContentLocation:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Landroid/util/Part;->mcharset:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Landroid/util/Part;->mContentId:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Landroid/util/Part;->mExpires:Ljava/lang/String;

    .line 93
    return-void
.end method


# virtual methods
.method public isMultiPart()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 101
    iget-object v0, p0, Landroid/util/Part;->mContentType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "multipart/mixed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v2

    .line 110
    :goto_15
    return v0

    .line 103
    :cond_16
    iget-object v0, p0, Landroid/util/Part;->mContentType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "multipart/related"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    move v0, v2

    .line 105
    goto :goto_15

    .line 106
    :cond_2b
    iget-object v0, p0, Landroid/util/Part;->mContentType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "multipart/alternative"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    move v0, v2

    .line 107
    goto :goto_15

    .line 110
    :cond_3c
    const/4 v0, 0x0

    goto :goto_15
.end method

.method parseHeader(Landroid/util/MultiPartStream;)V
    .registers 32
    .parameter "ms"

    .prologue
    .line 114
    const/16 v17, -0x1

    .local v17, rc:I
    const/16 v22, -0x1

    .line 115
    .local v22, tmpVal:I
    const/16 v18, 0x0

    .line 117
    .local v18, read:I
    const/16 v26, 0x100

    move/from16 v0, v26

    new-array v0, v0, [C

    move-object v9, v0

    .line 119
    .local v9, buf:[C
    const-string v26, "Part"

    const-string v27, "Entered parseHeader"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :try_start_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/util/MultiPartStream;->in:Ljava/io/PushbackInputStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/PushbackInputStream;->read()I
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1d} :catch_51

    move-result v17

    .line 127
    :goto_1e
    const/4 v15, 0x0

    .line 128
    .local v15, newLine:Z
    const/4 v12, 0x0

    .local v12, endOfHeader:Z
    move/from16 v19, v18

    .line 130
    .end local v18           #read:I
    .local v19, read:I
    :cond_22
    :goto_22
    const/16 v26, -0x1

    move/from16 v0, v17

    move/from16 v1, v26

    if-eq v0, v1, :cond_88

    .line 132
    const/16 v26, 0xd

    move/from16 v0, v17

    move/from16 v1, v26

    if-eq v0, v1, :cond_58

    const/16 v26, 0xa

    move/from16 v0, v17

    move/from16 v1, v26

    if-eq v0, v1, :cond_58

    .line 133
    add-int/lit8 v18, v19, 0x1

    .end local v19           #read:I
    .restart local v18       #read:I
    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v26, v0

    aput-char v26, v9, v19

    .line 134
    const/4 v15, 0x0

    .line 436
    :goto_44
    :try_start_44
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/util/MultiPartStream;->in:Ljava/io/PushbackInputStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/PushbackInputStream;->read()I
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4d} :catch_81d

    move-result v17

    move/from16 v19, v18

    .line 440
    .end local v18           #read:I
    .restart local v19       #read:I
    goto :goto_22

    .line 123
    .end local v12           #endOfHeader:Z
    .end local v15           #newLine:Z
    .end local v19           #read:I
    .restart local v18       #read:I
    :catch_51
    move-exception v26

    move-object/from16 v11, v26

    .line 125
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1e

    .line 137
    .end local v11           #e:Ljava/io/IOException;
    .end local v18           #read:I
    .restart local v12       #endOfHeader:Z
    .restart local v15       #newLine:Z
    .restart local v19       #read:I
    :cond_58
    const/16 v26, 0xd

    move/from16 v0, v17

    move/from16 v1, v26

    if-eq v0, v1, :cond_68

    const/16 v26, 0xa

    move/from16 v0, v17

    move/from16 v1, v26

    if-ne v0, v1, :cond_90

    :cond_68
    const/16 v26, 0x1

    move v0, v15

    move/from16 v1, v26

    if-ne v0, v1, :cond_90

    .line 138
    const-string v26, "Part"

    const-string v27, "REACHED CRLF CRLF"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/16 v26, 0xd

    move/from16 v0, v17

    move/from16 v1, v26

    if-ne v0, v1, :cond_88

    .line 141
    :try_start_7e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/util/MultiPartStream;->in:Ljava/io/PushbackInputStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/PushbackInputStream;->read()I
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_87} :catch_89

    move-result v17

    .line 442
    :cond_88
    :goto_88
    return-void

    .line 144
    :catch_89
    move-exception v26

    move-object/from16 v11, v26

    .line 146
    .restart local v11       #e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_88

    .line 151
    .end local v11           #e:Ljava/io/IOException;
    :cond_90
    const/16 v26, 0xd

    move/from16 v0, v17

    move/from16 v1, v26

    if-eq v0, v1, :cond_a0

    const/16 v26, 0xa

    move/from16 v0, v17

    move/from16 v1, v26

    if-ne v0, v1, :cond_c9

    .line 154
    :cond_a0
    :try_start_a0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/util/MultiPartStream;->in:Ljava/io/PushbackInputStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/PushbackInputStream;->read()I
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a9} :catch_12f

    move-result v22

    .line 159
    :goto_aa
    const/16 v26, 0xd

    move/from16 v0, v17

    move/from16 v1, v26

    if-ne v0, v1, :cond_160

    .line 160
    const-string v26, "Part"

    const-string v27, "REACHED CR"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/16 v26, 0xa

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_137

    .line 162
    const/4 v15, 0x1

    .line 163
    const-string v26, "Part"

    const-string v27, "REACHED LF"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_c9
    :goto_c9
    new-instance v13, Ljava/lang/String;

    const/16 v26, 0x0

    move-object v0, v13

    move-object v1, v9

    move/from16 v2, v26

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 198
    .local v13, hdr:Ljava/lang/String;
    const-string v26, "Part"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Header  = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "header length = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/16 v26, 0x3a

    move-object v0, v13

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    .line 201
    .local v16, pos:I
    const/16 v26, -0x1

    move/from16 v0, v16

    move/from16 v1, v26

    if-ne v0, v1, :cond_1a1

    .line 203
    :try_start_110
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/util/MultiPartStream;->in:Ljava/io/PushbackInputStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/PushbackInputStream;->read()I
    :try_end_119
    .catch Ljava/io/IOException; {:try_start_110 .. :try_end_119} :catch_199

    move-result v17

    .line 208
    :goto_11a
    const/16 v26, 0x1

    move v0, v15

    move/from16 v1, v26

    if-ne v0, v1, :cond_22

    .line 209
    const/16 v26, 0x0

    move-object v0, v9

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 210
    const/16 v18, 0x0

    .end local v19           #read:I
    .restart local v18       #read:I
    move/from16 v19, v18

    .end local v18           #read:I
    .restart local v19       #read:I
    goto/16 :goto_22

    .line 155
    .end local v13           #hdr:Ljava/lang/String;
    .end local v16           #pos:I
    :catch_12f
    move-exception v26

    move-object/from16 v11, v26

    .line 156
    .restart local v11       #e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_aa

    .line 164
    .end local v11           #e:Ljava/io/IOException;
    :cond_137
    const/16 v26, 0xd

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_148

    .line 165
    const-string v26, "Part"

    const-string v27, "REACHED CR"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v12, 0x1

    goto :goto_c9

    .line 169
    :cond_148
    const/4 v15, 0x1

    .line 171
    :try_start_149
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/util/MultiPartStream;->in:Ljava/io/PushbackInputStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PushbackInputStream;->unread(I)V
    :try_end_156
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_156} :catch_158

    goto/16 :goto_c9

    .line 172
    :catch_158
    move-exception v26

    move-object/from16 v11, v26

    .line 174
    .restart local v11       #e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_c9

    .line 177
    .end local v11           #e:Ljava/io/IOException;
    :cond_160
    const/16 v26, 0xa

    move/from16 v0, v17

    move/from16 v1, v26

    if-ne v0, v1, :cond_c9

    .line 178
    const-string v26, "Part"

    const-string v27, "REACHED LF"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/16 v26, 0xa

    move/from16 v0, v22

    move/from16 v1, v26

    if-ne v0, v1, :cond_181

    .line 181
    const-string v26, "Part"

    const-string v27, "REACHED LF"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v12, 0x1

    goto/16 :goto_c9

    .line 185
    :cond_181
    const/4 v15, 0x1

    .line 187
    :try_start_182
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/util/MultiPartStream;->in:Ljava/io/PushbackInputStream;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/PushbackInputStream;->unread(I)V
    :try_end_18f
    .catch Ljava/io/IOException; {:try_start_182 .. :try_end_18f} :catch_191

    goto/16 :goto_c9

    .line 188
    :catch_191
    move-exception v26

    move-object/from16 v11, v26

    .line 190
    .restart local v11       #e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_c9

    .line 204
    .end local v11           #e:Ljava/io/IOException;
    .restart local v13       #hdr:Ljava/lang/String;
    .restart local v16       #pos:I
    :catch_199
    move-exception v26

    move-object/from16 v11, v26

    .line 206
    .restart local v11       #e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_11a

    .line 214
    .end local v11           #e:Ljava/io/IOException;
    :cond_1a1
    const-string v26, "Part"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Position = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 216
    .local v14, name:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v26

    if-nez v26, :cond_1fd

    .line 218
    :try_start_1d7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/util/MultiPartStream;->in:Ljava/io/PushbackInputStream;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/PushbackInputStream;->read()I
    :try_end_1e0
    .catch Ljava/io/IOException; {:try_start_1d7 .. :try_end_1e0} :catch_1f6

    move-result v17

    .line 223
    :goto_1e1
    const/16 v26, 0x1

    move v0, v15

    move/from16 v1, v26

    if-ne v0, v1, :cond_22

    .line 224
    const/16 v26, 0x0

    move-object v0, v9

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 225
    const/16 v18, 0x0

    .end local v19           #read:I
    .restart local v18       #read:I
    move/from16 v19, v18

    .end local v18           #read:I
    .restart local v19       #read:I
    goto/16 :goto_22

    .line 219
    :catch_1f6
    move-exception v26

    move-object/from16 v11, v26

    .line 221
    .restart local v11       #e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1e1

    .line 230
    .end local v11           #e:Ljava/io/IOException;
    :cond_1fd
    add-int/lit8 v16, v16, 0x1

    .line 231
    const-string v26, "Part"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Position = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :goto_21b
    move-object v0, v13

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0x20

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_22d

    .line 233
    add-int/lit8 v16, v16, 0x1

    goto :goto_21b

    .line 235
    :cond_22d
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v27

    move-object/from16 v0, v26

    move/from16 v1, v16

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 236
    .local v24, val:Ljava/lang/String;
    const-string v26, "Part"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Value  = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "ValueLength = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v26

    sparse-switch v26, :sswitch_data_82c

    .line 424
    :cond_270
    :goto_270
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/util/Part;->mExtraHeaderNames:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/util/Part;->mExtraHeaderValues:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    :cond_289
    :goto_289
    const/16 v26, 0x1

    move v0, v12

    move/from16 v1, v26

    if-eq v0, v1, :cond_88

    .line 430
    const/16 v26, 0x1

    move v0, v15

    move/from16 v1, v26

    if-ne v0, v1, :cond_827

    .line 431
    const/16 v26, 0x0

    move-object v0, v9

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 432
    const/16 v18, 0x0

    .end local v19           #read:I
    .restart local v18       #read:I
    goto/16 :goto_44

    .line 241
    .end local v18           #read:I
    .restart local v19       #read:I
    :sswitch_2a3
    const-string v26, "content-type"

    move-object v0, v14

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_289

    .line 242
    const/4 v4, 0x0

    .line 243
    .local v4, bPos:I
    const/16 v26, 0x3b

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v25

    .line 244
    .local v25, valPos:I
    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_6c5

    .line 245
    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 247
    .local v10, cValue:Ljava/lang/String;
    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/util/Part;->mContentType:Ljava/lang/String;

    .line 248
    const-string v26, "Part"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Content-Type  = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v26, "boundary="

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 250
    const/16 v26, -0x1

    move v0, v4

    move/from16 v1, v26

    if-eq v0, v1, :cond_433

    .line 252
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v26

    move-object/from16 v0, v24

    move v1, v4

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 254
    .local v8, boundary:Ljava/lang/String;
    const-string v26, "Part"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Boundary String  = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/16 v26, 0x3d

    move-object v0, v8

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 256
    .local v6, bValpos:I
    add-int/lit8 v6, v6, 0x1

    .line 257
    const-string v26, "Part"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Boundary String Length  = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :goto_351
    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0x22

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_369

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0x20

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_36c

    .line 261
    :cond_369
    add-int/lit8 v6, v6, 0x1

    goto :goto_351

    .line 263
    :cond_36c
    move v5, v6

    .line 267
    .local v5, bValEndPos:I
    :cond_36d
    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0x3b

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_3c8

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0xd

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_3c8

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0xa

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_3c8

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0x20

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_3c8

    .line 268
    const-string v26, "Part"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Boundary String Char At Start Position  = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    add-int/lit8 v5, v5, 0x1

    .line 275
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x1

    sub-int v26, v26, v27

    move v0, v5

    move/from16 v1, v26

    if-ne v0, v1, :cond_36d

    .line 278
    :cond_3c8
    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0x3b

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_3f8

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0xd

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_3f8

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0xa

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_3f8

    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0x20

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_3fa

    .line 282
    :cond_3f8
    add-int/lit8 v5, v5, -0x1

    .line 283
    :cond_3fa
    :goto_3fa
    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0x22

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_409

    .line 284
    add-int/lit8 v5, v5, -0x1

    goto :goto_3fa

    .line 285
    :cond_409
    add-int/lit8 v26, v5, 0x1

    move-object v0, v8

    move v1, v6

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 288
    .local v7, bValue:Ljava/lang/String;
    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/util/Part;->mBoundary:Ljava/lang/String;

    .line 289
    const-string v26, "Part"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Boundary Final Value  = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .end local v5           #bValEndPos:I
    .end local v6           #bValpos:I
    .end local v7           #bValue:Ljava/lang/String;
    .end local v8           #boundary:Ljava/lang/String;
    :cond_433
    const/4 v4, 0x0

    .line 294
    const-string/jumbo v26, "start="

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 295
    const/16 v26, -0x1

    move v0, v4

    move/from16 v1, v26

    if-eq v0, v1, :cond_57b

    .line 296
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v26

    move-object/from16 v0, v24

    move v1, v4

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 298
    .local v20, start:Ljava/lang/String;
    const/16 v26, 0x3d

    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 299
    .restart local v6       #bValpos:I
    add-int/lit8 v6, v6, 0x1

    .line 301
    :goto_45f
    move-object/from16 v0, v20

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0x22

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_47d

    move-object/from16 v0, v20

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0x20

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_480

    .line 302
    :cond_47d
    add-int/lit8 v6, v6, 0x1

    goto :goto_45f

    .line 303
    :cond_480
    move v5, v6

    .line 307
    .restart local v5       #bValEndPos:I
    :cond_481
    move-object/from16 v0, v20

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0x3b

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_4eb

    move-object/from16 v0, v20

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0xd

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_4eb

    move-object/from16 v0, v20

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0xa

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_4eb

    move-object/from16 v0, v20

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0x20

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_4eb

    .line 308
    const-string v26, "Part"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "START String Char At Start Position  = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v20

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    add-int/lit8 v5, v5, 0x1

    .line 312
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x1

    sub-int v26, v26, v27

    move v0, v5

    move/from16 v1, v26

    if-ne v0, v1, :cond_481

    .line 315
    :cond_4eb
    move-object/from16 v0, v20

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0x3b

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_527

    move-object/from16 v0, v20

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0xd

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_527

    move-object/from16 v0, v20

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0xa

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_527

    move-object/from16 v0, v20

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0x20

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_529

    .line 319
    :cond_527
    add-int/lit8 v5, v5, -0x1

    .line 320
    :cond_529
    :goto_529
    move-object/from16 v0, v20

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0x22

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_53b

    .line 321
    add-int/lit8 v5, v5, -0x1

    goto :goto_529

    .line 322
    :cond_53b
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "cid:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v20

    move v1, v6

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 332
    .restart local v7       #bValue:Ljava/lang/String;
    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/util/Part;->mStart:Ljava/lang/String;

    .line 333
    const-string v26, "Part"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Start Field Final Value  = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/util/Part;->mStart:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .end local v5           #bValEndPos:I
    .end local v6           #bValpos:I
    .end local v7           #bValue:Ljava/lang/String;
    .end local v20           #start:Ljava/lang/String;
    :cond_57b
    const/4 v4, 0x0

    .line 338
    const-string/jumbo v26, "start-info="

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 339
    const/16 v26, -0x1

    move v0, v4

    move/from16 v1, v26

    if-eq v0, v1, :cond_289

    .line 340
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v26

    move-object/from16 v0, v24

    move v1, v4

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 342
    .local v21, startInfo:Ljava/lang/String;
    const/16 v26, 0x3d

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 343
    .restart local v6       #bValpos:I
    add-int/lit8 v6, v6, 0x1

    .line 345
    :goto_5a7
    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0x22

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_5c5

    move-object/from16 v0, v21

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0x20

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_5c8

    .line 346
    :cond_5c5
    add-int/lit8 v6, v6, 0x1

    goto :goto_5a7

    .line 347
    :cond_5c8
    move v5, v6

    .line 351
    .restart local v5       #bValEndPos:I
    :cond_5c9
    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0x3b

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_633

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0xd

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_633

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0xa

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_633

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0x20

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_633

    .line 352
    const-string v26, "Part"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "START-INFO String Char At Start Position  = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    add-int/lit8 v5, v5, 0x1

    .line 359
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x1

    sub-int v26, v26, v27

    move v0, v5

    move/from16 v1, v26

    if-ne v0, v1, :cond_5c9

    .line 362
    :cond_633
    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0x3b

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_66f

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0xd

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_66f

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0xa

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_66f

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0x20

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_671

    .line 366
    :cond_66f
    add-int/lit8 v5, v5, -0x1

    .line 367
    :cond_671
    :goto_671
    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v26

    const/16 v27, 0x22

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_683

    .line 368
    add-int/lit8 v5, v5, -0x1

    goto :goto_671

    .line 369
    :cond_683
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "cid:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v21

    move v1, v6

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 372
    .restart local v7       #bValue:Ljava/lang/String;
    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/util/Part;->mStartInfo:Ljava/lang/String;

    .line 373
    const-string v26, "Part"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Start-Info Field Final Value  = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/util/Part;->mStartInfo:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_289

    .line 379
    .end local v5           #bValEndPos:I
    .end local v6           #bValpos:I
    .end local v7           #bValue:Ljava/lang/String;
    .end local v10           #cValue:Ljava/lang/String;
    .end local v21           #startInfo:Ljava/lang/String;
    :cond_6c5
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/util/Part;->mContentType:Ljava/lang/String;

    goto/16 :goto_289

    .line 384
    .end local v4           #bPos:I
    .end local v25           #valPos:I
    :sswitch_6cd
    const-string v26, "content-transfer-encoding"

    move-object v0, v14

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_289

    .line 385
    const-string v26, "Part"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "CONTENT_TRANSFER_ENCODING = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/util/Part;->mContentTransferEncoding:Ljava/lang/String;

    goto/16 :goto_289

    .line 390
    :sswitch_6fc
    const-string v26, "content-disposition"

    move-object v0, v14

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_289

    .line 391
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/util/Part;->mContentDisposition:Ljava/lang/String;

    goto/16 :goto_289

    .line 395
    :sswitch_70f
    const-string v26, "content-location"

    move-object v0, v14

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_289

    .line 396
    const-string v26, "Part"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "CONTENT_LOCATION = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/util/Part;->mContentLocation:Ljava/lang/String;

    goto/16 :goto_289

    .line 401
    :sswitch_73e
    const-string v26, "content-id"

    move-object v0, v14

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_289

    .line 402
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "cid:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x1

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v28

    const/16 v29, 0x1

    sub-int v28, v28, v29

    move-object/from16 v0, v24

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 404
    .local v23, truncVal:Ljava/lang/String;
    const-string v26, "Part"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "CONTENT_ID = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/util/Part;->mContentId:Ljava/lang/String;

    goto/16 :goto_289

    .line 409
    .end local v23           #truncVal:Ljava/lang/String;
    :sswitch_794
    const-string v26, "expires"

    move-object v0, v14

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7c1

    .line 410
    const-string v26, "Part"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "EXPIRES = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/util/Part;->mExpires:Ljava/lang/String;

    .line 414
    :cond_7c1
    :sswitch_7c1
    const-string v26, "cache-control"

    move-object v0, v14

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_7ee

    .line 415
    const-string v26, "Part"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "CACHE_CONTROL = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/util/Part;->mCacheControl:Ljava/lang/String;

    .line 419
    :cond_7ee
    :sswitch_7ee
    const-string v26, "last-modified"

    move-object v0, v14

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_270

    .line 420
    const-string v26, "Part"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "LAST_MODIFIED = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/util/Part;->mLastModified:Ljava/lang/String;

    goto/16 :goto_270

    .line 437
    .end local v13           #hdr:Ljava/lang/String;
    .end local v14           #name:Ljava/lang/String;
    .end local v16           #pos:I
    .end local v19           #read:I
    .end local v24           #val:Ljava/lang/String;
    .restart local v18       #read:I
    :catch_81d
    move-exception v26

    move-object/from16 v11, v26

    .line 439
    .restart local v11       #e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    move/from16 v19, v18

    .line 440
    .end local v18           #read:I
    .restart local v19       #read:I
    goto/16 :goto_22

    .end local v11           #e:Ljava/io/IOException;
    .restart local v13       #hdr:Ljava/lang/String;
    .restart local v14       #name:Ljava/lang/String;
    .restart local v16       #pos:I
    .restart local v24       #val:Ljava/lang/String;
    :cond_827
    move/from16 v18, v19

    .end local v19           #read:I
    .restart local v18       #read:I
    goto/16 :goto_44

    .line 239
    nop

    :sswitch_data_82c
    .sparse-switch
        -0x77cf1977 -> :sswitch_70f
        -0x4e0958cc -> :sswitch_794
        -0x4b88f79d -> :sswitch_6fc
        -0x3c0a275f -> :sswitch_6cd
        -0xc71a9ee -> :sswitch_7c1
        0x8f17c20 -> :sswitch_7ee
        0xfc402ef -> :sswitch_73e
        0x2ed4600e -> :sswitch_2a3
    .end sparse-switch
.end method
