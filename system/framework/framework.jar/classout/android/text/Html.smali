.class public Landroid/text/Html;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Html$HtmlParser;,
        Landroid/text/Html$TagHandler;,
        Landroid/text/Html$ImageGetter;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .registers 2
    .parameter "source"

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-static {p0, v0, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public static fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;
    .registers 8
    .parameter "source"
    .parameter "imageGetter"
    .parameter "tagHandler"

    .prologue
    .line 125
    new-instance v2, Lorg/ccil/cowan/tagsoup/Parser;

    invoke-direct {v2}, Lorg/ccil/cowan/tagsoup/Parser;-><init>()V

    .line 127
    .local v2, parser:Lorg/ccil/cowan/tagsoup/Parser;
    :try_start_5
    const-string v3, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    invoke-static {}, Landroid/text/Html$HtmlParser;->access$000()Lorg/ccil/cowan/tagsoup/HTMLSchema;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/ccil/cowan/tagsoup/Parser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_5 .. :try_end_e} :catch_18
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_5 .. :try_end_e} :catch_20

    .line 136
    new-instance v0, Landroid/text/HtmlToSpannedConverter;

    invoke-direct {v0, p0, p1, p2, v2}, Landroid/text/HtmlToSpannedConverter;-><init>(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;Lorg/ccil/cowan/tagsoup/Parser;)V

    .line 139
    .local v0, converter:Landroid/text/HtmlToSpannedConverter;
    invoke-virtual {v0}, Landroid/text/HtmlToSpannedConverter;->convert()Landroid/text/Spanned;

    move-result-object v3

    return-object v3

    .line 128
    .end local v0           #converter:Landroid/text/HtmlToSpannedConverter;
    :catch_18
    move-exception v3

    move-object v1, v3

    .line 130
    .local v1, e:Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 131
    .end local v1           #e:Lorg/xml/sax/SAXNotRecognizedException;
    :catch_20
    move-exception v3

    move-object v1, v3

    .line 133
    .local v1, e:Lorg/xml/sax/SAXNotSupportedException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static toHtml(Landroid/text/Spanned;)Ljava/lang/String;
    .registers 3
    .parameter "text"

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v0, out:Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Landroid/text/Html;->withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;)V

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .registers 12
    .parameter "out"
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v7, 0xa

    .line 208
    const-string v0, "<p>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    move v2, p2

    .local v2, i:I
    :goto_8
    if-ge v2, p3, :cond_2f

    .line 212
    invoke-static {p1, v7, v2, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v6

    .line 213
    .local v6, next:I
    if-gez v6, :cond_11

    .line 214
    move v6, p3

    .line 217
    :cond_11
    const/4 v4, 0x0

    .line 219
    .local v4, nl:I
    :goto_12
    if-ge v6, p3, :cond_1f

    invoke-interface {p1, v6}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_1f

    .line 220
    add-int/lit8 v4, v4, 0x1

    .line 221
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 224
    :cond_1f
    sub-int v3, v6, v4

    if-ne v6, p3, :cond_2c

    const/4 v0, 0x1

    move v5, v0

    :goto_25
    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Landroid/text/Html;->withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;IIIZ)V

    .line 211
    move v2, v6

    goto :goto_8

    .line 224
    :cond_2c
    const/4 v0, 0x0

    move v5, v0

    goto :goto_25

    .line 227
    .end local v4           #nl:I
    .end local v6           #next:I
    :cond_2f
    const-string v0, "</p>\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    return-void
.end method

.method private static withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .registers 13
    .parameter "out"
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    const-class v8, Landroid/text/style/QuoteSpan;

    .line 190
    move v1, p2

    .local v1, i:I
    :goto_3
    if-ge v1, p3, :cond_36

    .line 191
    const-class v7, Landroid/text/style/QuoteSpan;

    invoke-interface {p1, v1, p3, v8}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v4

    .line 192
    .local v4, next:I
    const-class v7, Landroid/text/style/QuoteSpan;

    invoke-interface {p1, v1, v4, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/QuoteSpan;

    .line 194
    .local v6, quotes:[Landroid/text/style/QuoteSpan;
    move-object v0, v6

    .local v0, arr$:[Landroid/text/style/QuoteSpan;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_16
    if-ge v2, v3, :cond_22

    aget-object v5, v0, v2

    .line 195
    .local v5, quote:Landroid/text/style/QuoteSpan;
    const-string v7, "<blockquote>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 198
    .end local v5           #quote:Landroid/text/style/QuoteSpan;
    :cond_22
    invoke-static {p0, p1, v1, v4}, Landroid/text/Html;->withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 200
    move-object v0, v6

    array-length v3, v0

    const/4 v2, 0x0

    :goto_28
    if-ge v2, v3, :cond_34

    aget-object v5, v0, v2

    .line 201
    .restart local v5       #quote:Landroid/text/style/QuoteSpan;
    const-string v7, "</blockquote>\n"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 190
    .end local v5           #quote:Landroid/text/style/QuoteSpan;
    :cond_34
    move v1, v4

    goto :goto_3

    .line 204
    .end local v0           #arr$:[Landroid/text/style/QuoteSpan;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #next:I
    .end local v6           #quotes:[Landroid/text/style/QuoteSpan;
    :cond_36
    return-void
.end method

.method private static withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;)V
    .registers 13
    .parameter "out"
    .parameter "text"

    .prologue
    const-class v10, Landroid/text/style/ParagraphStyle;

    .line 152
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v4

    .line 155
    .local v4, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v8

    if-ge v2, v8, :cond_a2

    .line 156
    const-class v8, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v2, v4, v10}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    .line 157
    .local v6, next:I
    const-class v8, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v2, v6, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/ParagraphStyle;

    .line 158
    .local v7, style:[Landroid/text/style/ParagraphStyle;
    const-string v1, " "

    .line 159
    .local v1, elements:Ljava/lang/String;
    const/4 v5, 0x0

    .line 161
    .local v5, needDiv:Z
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1f
    array-length v8, v7

    if-ge v3, v8, :cond_77

    .line 162
    aget-object v8, v7, v3

    instance-of v8, v8, Landroid/text/style/AlignmentSpan;

    if-eqz v8, :cond_48

    .line 163
    aget-object v8, v7, v3

    check-cast v8, Landroid/text/style/AlignmentSpan;

    invoke-interface {v8}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 165
    .local v0, align:Landroid/text/Layout$Alignment;
    const/4 v5, 0x1

    .line 166
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v0, v8, :cond_4b

    .line 167
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "align=\"center\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    .end local v0           #align:Landroid/text/Layout$Alignment;
    :cond_48
    :goto_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 168
    .restart local v0       #align:Landroid/text/Layout$Alignment;
    :cond_4b
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v8, :cond_63

    .line 169
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "align=\"right\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_48

    .line 171
    :cond_63
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "align=\"left\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_48

    .line 175
    .end local v0           #align:Landroid/text/Layout$Alignment;
    :cond_77
    if-eqz v5, :cond_95

    .line 176
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<div "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_95
    invoke-static {p0, p1, v2, v6}, Landroid/text/Html;->withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 181
    if-eqz v5, :cond_9f

    .line 182
    const-string v8, "</div>"

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_9f
    move v2, v6

    goto/16 :goto_7

    .line 185
    .end local v1           #elements:Ljava/lang/String;
    .end local v3           #j:I
    .end local v5           #needDiv:Z
    .end local v6           #next:I
    .end local v7           #style:[Landroid/text/style/ParagraphStyle;
    :cond_a2
    return-void
.end method

.method private static withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;IIIZ)V
    .registers 12
    .parameter "out"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "nl"
    .parameter "last"

    .prologue
    .line 234
    move p2, p2

    .local p2, i:I
    :goto_1
    if-ge p2, p3, :cond_1ae

    .line 235
    const-class v0, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    .line 236
    .local v2, next:I
    const-class v0, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, p2, v2, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/CharacterStyle;

    .line 239
    .local v3, style:[Landroid/text/style/CharacterStyle;
    const/4 v0, 0x0

    .local v0, j:I
    move v1, v0

    .end local v0           #j:I
    .local v1, j:I
    :goto_13
    array-length v0, v3

    if-ge v1, v0, :cond_116

    .line 240
    aget-object v0, v3, v1

    instance-of v0, v0, Landroid/text/style/StyleSpan;

    if-eqz v0, :cond_36

    .line 241
    aget-object v0, v3, v1

    check-cast v0, Landroid/text/style/StyleSpan;

    invoke-virtual {v0}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v0

    .line 243
    .local v0, s:I
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_2d

    .line 244
    const-string v4, "<b>"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_2d
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_36

    .line 247
    .end local v0           #s:I
    const-string v0, "<i>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :cond_36
    aget-object v0, v3, v1

    instance-of v0, v0, Landroid/text/style/TypefaceSpan;

    if-eqz v0, :cond_52

    .line 251
    aget-object v0, v3, v1

    check-cast v0, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v0}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, s:Ljava/lang/String;
    const-string/jumbo v4, "monospace"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .end local v0           #s:Ljava/lang/String;
    if-eqz v0, :cond_52

    .line 254
    const-string v0, "<tt>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_52
    aget-object v0, v3, v1

    instance-of v0, v0, Landroid/text/style/SuperscriptSpan;

    if-eqz v0, :cond_5d

    .line 258
    const-string v0, "<sup>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_5d
    aget-object v0, v3, v1

    instance-of v0, v0, Landroid/text/style/SubscriptSpan;

    if-eqz v0, :cond_68

    .line 261
    const-string v0, "<sub>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_68
    aget-object v0, v3, v1

    instance-of v0, v0, Landroid/text/style/UnderlineSpan;

    if-eqz v0, :cond_73

    .line 264
    const-string v0, "<u>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_73
    aget-object v0, v3, v1

    instance-of v0, v0, Landroid/text/style/StrikethroughSpan;

    if-eqz v0, :cond_7e

    .line 267
    const-string v0, "<strike>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :cond_7e
    aget-object v0, v3, v1

    instance-of v0, v0, Landroid/text/style/URLSpan;

    if-eqz v0, :cond_99

    .line 270
    const-string v0, "<a href=\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    aget-object v0, v3, v1

    check-cast v0, Landroid/text/style/URLSpan;

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string v0, "\">"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :cond_99
    aget-object v0, v3, v1

    instance-of v0, v0, Landroid/text/style/ImageSpan;

    if-eqz v0, :cond_1d6

    .line 275
    const-string p2, "<img src=\""

    .end local p2           #i:I
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    aget-object p2, v3, v1

    check-cast p2, Landroid/text/style/ImageSpan;

    invoke-virtual {p2}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    const-string p2, "\">"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    move p2, v2

    .restart local p2       #i:I
    move v0, p2

    .line 282
    .end local p2           #i:I
    .local v0, i:I
    :goto_b6
    aget-object p2, v3, v1

    instance-of p2, p2, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz p2, :cond_d3

    .line 283
    const-string p2, "<font size =\""

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    aget-object p2, v3, v1

    check-cast p2, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p2}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result p2

    div-int/lit8 p2, p2, 0x6

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    const-string p2, "\">"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_d3
    aget-object p2, v3, v1

    instance-of p2, p2, Landroid/text/style/ForegroundColorSpan;

    if-eqz p2, :cond_110

    .line 288
    const-string p2, "<font color =\"#"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    aget-object p2, v3, v1

    check-cast p2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p2}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result p2

    const/high16 v4, 0x100

    add-int/2addr p2, v4

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    .line 291
    .local p2, color:Ljava/lang/String;
    :goto_ed
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-ge v4, v5, :cond_108

    .line 292
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .end local p2           #color:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .restart local p2       #color:Ljava/lang/String;
    goto :goto_ed

    .line 294
    :cond_108
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    const-string p2, "\">"

    .end local p2           #color:Ljava/lang/String;
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_110
    add-int/lit8 p2, v1, 0x1

    .end local v1           #j:I
    .local p2, j:I
    move v1, p2

    .end local p2           #j:I
    .restart local v1       #j:I
    move p2, v0

    .end local v0           #i:I
    .local p2, i:I
    goto/16 :goto_13

    .line 299
    :cond_116
    invoke-static {p0, p1, p2, v2}, Landroid/text/Html;->withinStyle(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 301
    array-length p2, v3

    .end local p2           #i:I
    const/4 v0, 0x1

    sub-int/2addr p2, v0

    .end local v1           #j:I
    .local p2, j:I
    :goto_11c
    if-ltz p2, :cond_1ab

    .line 302
    aget-object v0, v3, p2

    instance-of v0, v0, Landroid/text/style/ForegroundColorSpan;

    if-eqz v0, :cond_129

    .line 303
    const-string v0, "</font>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_129
    aget-object v0, v3, p2

    instance-of v0, v0, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v0, :cond_134

    .line 306
    const-string v0, "</font>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :cond_134
    aget-object v0, v3, p2

    instance-of v0, v0, Landroid/text/style/URLSpan;

    if-eqz v0, :cond_13f

    .line 309
    const-string v0, "</a>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    :cond_13f
    aget-object v0, v3, p2

    instance-of v0, v0, Landroid/text/style/StrikethroughSpan;

    if-eqz v0, :cond_14a

    .line 312
    const-string v0, "</strike>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    :cond_14a
    aget-object v0, v3, p2

    instance-of v0, v0, Landroid/text/style/UnderlineSpan;

    if-eqz v0, :cond_155

    .line 315
    const-string v0, "</u>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    :cond_155
    aget-object v0, v3, p2

    instance-of v0, v0, Landroid/text/style/SubscriptSpan;

    if-eqz v0, :cond_160

    .line 318
    const-string v0, "</sub>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_160
    aget-object v0, v3, p2

    instance-of v0, v0, Landroid/text/style/SuperscriptSpan;

    if-eqz v0, :cond_16b

    .line 321
    const-string v0, "</sup>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :cond_16b
    aget-object v0, v3, p2

    instance-of v0, v0, Landroid/text/style/TypefaceSpan;

    if-eqz v0, :cond_187

    .line 324
    aget-object v0, v3, p2

    check-cast v0, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v0}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, s:Ljava/lang/String;
    const-string/jumbo v1, "monospace"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .end local v0           #s:Ljava/lang/String;
    if-eqz v0, :cond_187

    .line 327
    const-string v0, "</tt>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    :cond_187
    aget-object v0, v3, p2

    instance-of v0, v0, Landroid/text/style/StyleSpan;

    if-eqz v0, :cond_1a7

    .line 331
    aget-object v0, v3, p2

    check-cast v0, Landroid/text/style/StyleSpan;

    invoke-virtual {v0}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v0

    .line 333
    .local v0, s:I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_19e

    .line 334
    const-string v1, "</b>"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :cond_19e
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1a7

    .line 337
    .end local v0           #s:I
    const-string v0, "</i>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    :cond_1a7
    add-int/lit8 p2, p2, -0x1

    goto/16 :goto_11c

    .line 234
    :cond_1ab
    move p2, v2

    .local p2, i:I
    goto/16 :goto_1

    .line 343
    .end local v2           #next:I
    .end local v3           #style:[Landroid/text/style/CharacterStyle;
    :cond_1ae
    if-eqz p5, :cond_1bc

    const-string p1, ""

    .end local p1
    move-object p2, p1

    .line 345
    .local p2, p:Ljava/lang/String;
    :goto_1b3
    const/4 p1, 0x1

    if-ne p4, p1, :cond_1c0

    .line 346
    const-string p1, "<br>\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .end local p3
    :goto_1bb
    return-void

    .line 343
    .restart local p1
    .local p2, i:I
    .restart local p3
    :cond_1bc
    const-string p1, "</p>\n<p>"

    move-object p2, p1

    goto :goto_1b3

    .line 347
    .end local p1
    .local p2, p:Ljava/lang/String;
    :cond_1c0
    const/4 p1, 0x2

    if-ne p4, p1, :cond_1c7

    .line 348
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1bb

    .line 350
    :cond_1c7
    const/4 p1, 0x2

    .end local p3
    .local p1, i:I
    :goto_1c8
    if-ge p1, p4, :cond_1d2

    .line 351
    const-string p3, "<br>"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    add-int/lit8 p1, p1, 0x1

    goto :goto_1c8

    .line 354
    :cond_1d2
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1bb

    .restart local v1       #j:I
    .restart local v2       #next:I
    .restart local v3       #style:[Landroid/text/style/CharacterStyle;
    .local p1, text:Landroid/text/Spanned;
    .local p2, i:I
    .restart local p3
    :cond_1d6
    move v0, p2

    .end local p2           #i:I
    .local v0, i:I
    goto/16 :goto_b6
.end method

.method private static withinStyle(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .registers 9
    .parameter "out"
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v4, 0x20

    .line 360
    move v1, p2

    .local v1, i:I
    :goto_3
    if-ge v1, p3, :cond_6a

    .line 361
    invoke-interface {p1, v1}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    .line 363
    .local v0, c:C
    const/16 v2, 0x3c

    if-ne v0, v2, :cond_15

    .line 364
    const-string v2, "&lt;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    :goto_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 365
    :cond_15
    const/16 v2, 0x3e

    if-ne v0, v2, :cond_1f

    .line 366
    const-string v2, "&gt;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 367
    :cond_1f
    const/16 v2, 0x26

    if-ne v0, v2, :cond_29

    .line 368
    const-string v2, "&amp;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 369
    :cond_29
    const/16 v2, 0x7e

    if-gt v0, v2, :cond_2f

    if-ge v0, v4, :cond_4c

    .line 370
    :cond_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 371
    :cond_4c
    if-ne v0, v4, :cond_66

    .line 372
    :goto_4e
    add-int/lit8 v2, v1, 0x1

    if-ge v2, p3, :cond_62

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p1, v2}, Landroid/text/Spanned;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_62

    .line 373
    const-string v2, "&nbsp;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    .line 377
    :cond_62
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 379
    :cond_66
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 382
    .end local v0           #c:C
    :cond_6a
    return-void
.end method
