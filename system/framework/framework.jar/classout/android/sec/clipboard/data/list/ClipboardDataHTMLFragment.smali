.class public Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataHTMLFragment.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mFirstImg:Landroid/graphics/Bitmap;

.field private mValue:Ljava/lang/String;

.field private mValuePlainText:Ljava/lang/String;

.field private regex:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const-string v1, ""

    .line 65
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardData;-><init>(I)V

    .line 59
    const-string v0, ""

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mFirstImg:Landroid/graphics/Bitmap;

    .line 62
    const-string v0, "<(/)?([a-zA-Z]*)(\\s[a-zA-Z]*=[^>]*)?(\\s)*(/)?>"

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->regex:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public GetHTMLFragment()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 7
    .parameter "format"
    .parameter "altData"

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .line 79
    .local v0, Result:Z
    if-eqz v0, :cond_f

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_11

    :cond_f
    move v1, v0

    .line 100
    .end local v0           #Result:Z
    .end local p2
    .local v1, Result:Z
    :goto_10
    return v1

    .line 82
    .end local v1           #Result:Z
    .restart local v0       #Result:Z
    .restart local p2
    :cond_11
    packed-switch p1, :pswitch_data_2e

    .end local p2
    :goto_14
    move v1, v0

    .line 100
    .end local v0           #Result:Z
    .restart local v1       #Result:Z
    goto :goto_10

    .line 87
    .end local v1           #Result:Z
    .restart local v0       #Result:Z
    .restart local p2
    :pswitch_16
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .end local p2
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 89
    goto :goto_14

    .line 91
    .restart local p2
    :pswitch_1f
    const/4 v0, 0x0

    .line 92
    goto :goto_14

    .line 96
    :pswitch_21
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .end local p2
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->SetHTMLFragment(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_14

    .line 82
    :pswitch_data_2e
    .packed-switch 0x2
        :pswitch_16
        :pswitch_1f
        :pswitch_21
    .end packed-switch
.end method

.method public SetHTMLFragment(Ljava/lang/CharSequence;)Z
    .registers 6
    .parameter "text"

    .prologue
    const-string v3, "ClipboardServiceEx"

    .line 124
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_10

    .line 125
    :cond_e
    const/4 v0, 0x0

    .line 139
    :goto_f
    return v0

    .line 127
    :cond_10
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    .line 128
    const-string v0, "ClipboardServiceEx"

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->regex:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    .line 133
    const-string v0, "ClipboardServiceEx"

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mFirstImg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4b

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mFirstImg:Landroid/graphics/Bitmap;

    .line 139
    :cond_4b
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public clearData()V
    .registers 3

    .prologue
    const-string v1, ""

    .line 110
    const-string v0, ""

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    .line 113
    const-string v0, ""

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    .line 237
    const-string v4, "ClipboardServiceEx"

    const-string v5, "html equals"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v1, 0x0

    .line 239
    .local v1, Result:Z
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    move v2, v1

    .line 249
    .end local v1           #Result:Z
    .local v2, Result:I
    :goto_f
    return v2

    .line 242
    .end local v2           #Result:I
    .restart local v1       #Result:Z
    :cond_10
    instance-of v4, p1, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    if-nez v4, :cond_16

    move v2, v1

    .line 243
    .restart local v2       #Result:I
    goto :goto_f

    .line 245
    .end local v2           #Result:I
    :cond_16
    move-object v0, p1

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    move-object v3, v0

    .line 247
    .local v3, trgData:Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->GetHTMLFragment()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_32

    const/4 v4, 0x1

    move v1, v4

    :goto_30
    move v2, v1

    .line 249
    .restart local v2       #Result:I
    goto :goto_f

    .line 247
    .end local v2           #Result:I
    :cond_32
    const/4 v4, 0x0

    move v1, v4

    goto :goto_30
.end method

.method public getFirstImage(II)Landroid/graphics/Bitmap;
    .registers 14
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x7

    const-string v10, "getFirstImage : "

    const-string v6, "ClipboardServiceEx"

    .line 159
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mFirstImg:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_e

    .line 160
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mFirstImg:Landroid/graphics/Bitmap;

    .line 217
    :goto_d
    return-object v4

    .line 162
    :cond_e
    const/4 v0, 0x0

    .line 163
    .local v0, Result:Landroid/graphics/Bitmap;
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v9, :cond_20

    .line 165
    const-string v4, "ClipboardServiceEx"

    const-string v4, "getFirstImage : Data is empty."

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v0

    .line 166
    goto :goto_d

    .line 169
    :cond_20
    const-string v4, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Copied HTML contents is ..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v2, ""

    .line 173
    .local v2, sFileName:Ljava/lang/String;
    :try_start_40
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/sec/clipboard/util/ClipboardProcText;->getImgFileNameFormHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4d} :catch_5d

    move-result-object v2

    .line 181
    :goto_4e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v9, :cond_7c

    .line 183
    const-string v4, "ClipboardServiceEx"

    const-string v4, "getFirstImage : FileName is empty."

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v0

    .line 184
    goto :goto_d

    .line 177
    :catch_5d
    move-exception v4

    move-object v1, v4

    .line 178
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFirstImage : "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 187
    .end local v1           #e:Ljava/lang/Exception;
    :cond_7c
    const-string v4, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sFileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_f1

    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_f1

    .line 192
    const-string v4, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downloadSimpleBitmap : Webpath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :try_start_bf
    invoke-static {v2}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->downloadSimpleBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_c2} :catch_c8

    move-result-object v0

    .line 216
    :goto_c3
    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mFirstImg:Landroid/graphics/Bitmap;

    move-object v4, v0

    .line 217
    goto/16 :goto_d

    .line 196
    :catch_c8
    move-exception v1

    .line 197
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v4, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFirstImage : "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v0, 0x0

    .line 199
    goto :goto_c3

    .line 202
    .end local v1           #e:Ljava/lang/Exception;
    :cond_f1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_128

    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_128

    .line 204
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, substring:Ljava/lang/String;
    const-string v4, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFilePathBitmap : Substring Filepath  - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-static {v3, p1, p2}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->getFilePathBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 207
    goto :goto_c3

    .line 211
    .end local v3           #substring:Ljava/lang/String;
    :cond_128
    invoke-static {v2, p2, p2}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->getFilePathBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 212
    const-string v4, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFilePathBitmap : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c3
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    return-object v0
.end method

.method protected readFormSource(Landroid/os/Parcel;)V
    .registers 4
    .parameter "source"

    .prologue
    const-class v1, Ljava/lang/String;

    .line 264
    const-class v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    .line 265
    const-class v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x14

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "this HTML class. Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_26

    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_26
    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    goto :goto_1d
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 255
    const-string v0, "ClipboardServiceEx"

    const-string v1, "html write to parcel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 257
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 258
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->mValuePlainText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 259
    return-void
.end method
