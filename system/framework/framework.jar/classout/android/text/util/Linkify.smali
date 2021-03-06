.class public Landroid/text/util/Linkify;
.super Ljava/lang/Object;
.source "Linkify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/util/Linkify$TransformFilter;,
        Landroid/text/util/Linkify$MatchFilter;
    }
.end annotation


# static fields
.field public static final ALL:I = 0xf

.field public static final EMAIL_ADDRESSES:I = 0x2

.field public static final MAP_ADDRESSES:I = 0x8

.field public static final PHONE_NUMBERS:I = 0x4

#the value of this static final field might be set in the static constructor
.field private static final PHONE_NUMBER_MINIMUM_DIGITS:I = 0x0

.field public static final WEB_URLS:I = 0x1

.field public static mContext:Landroid/content/Context;

.field public static final sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

.field public static final sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

.field public static final sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 93
    invoke-static {}, Landroid/text/util/Linkify;->getPhoneNumberMinimumDigits()I

    move-result v0

    sput v0, Landroid/text/util/Linkify;->PHONE_NUMBER_MINIMUM_DIGITS:I

    .line 114
    new-instance v0, Landroid/text/util/Linkify$1;

    invoke-direct {v0}, Landroid/text/util/Linkify$1;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    .line 132
    new-instance v0, Landroid/text/util/Linkify$2;

    invoke-direct {v0}, Landroid/text/util/Linkify$2;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    .line 155
    new-instance v0, Landroid/text/util/Linkify$3;

    invoke-direct {v0}, Landroid/text/util/Linkify$3;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 58
    sget v0, Landroid/text/util/Linkify;->PHONE_NUMBER_MINIMUM_DIGITS:I

    return v0
.end method

.method private static final addLinkMovementMethod(Landroid/widget/TextView;)V
    .registers 3
    .parameter "t"

    .prologue
    .line 300
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 302
    .local v0, m:Landroid/text/method/MovementMethod;
    if-eqz v0, :cond_a

    instance-of v1, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v1, :cond_17

    .line 303
    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 304
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 307
    :cond_17
    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .registers 4
    .parameter "text"
    .parameter "pattern"
    .parameter "scheme"

    .prologue
    const/4 v0, 0x0

    .line 322
    invoke-static {p0, p1, p2, v0, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 323
    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .registers 7
    .parameter "text"
    .parameter "p"
    .parameter "scheme"
    .parameter "matchFilter"
    .parameter "transformFilter"

    .prologue
    .line 342
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 344
    .local v0, s:Landroid/text/SpannableString;
    invoke-static {v0, p1, p2, p3, p4}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 345
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 348
    :cond_14
    return-void
.end method

.method public static final addLinks(Landroid/text/Spannable;I)Z
    .registers 14
    .parameter "text"
    .parameter "mask"

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 218
    if-nez p1, :cond_7

    move v1, v10

    .line 262
    :goto_6
    return v1

    .line 222
    :cond_7
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {p0, v10, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/URLSpan;

    .line 224
    .local v9, old:[Landroid/text/style/URLSpan;
    array-length v1, v9

    sub-int v6, v1, v11

    .local v6, i:I
    :goto_16
    if-ltz v6, :cond_20

    .line 225
    aget-object v1, v9, v6

    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 224
    add-int/lit8 v6, v6, -0x1

    goto :goto_16

    .line 228
    :cond_20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v0, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_42

    .line 231
    sget-object v2, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "http://"

    aput-object v1, v3, v10

    const-string v1, "https://"

    aput-object v1, v3, v11

    const/4 v1, 0x2

    const-string/jumbo v4, "rtsp://"

    aput-object v4, v3, v1

    sget-object v4, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 236
    :cond_42
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_54

    .line 237
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    new-array v3, v11, [Ljava/lang/String;

    const-string/jumbo v1, "mailto:"

    aput-object v1, v3, v10

    move-object v1, p0

    move-object v4, v5

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 242
    :cond_54
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_69

    .line 243
    sget-object v2, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    new-array v3, v11, [Ljava/lang/String;

    const-string/jumbo v1, "tel:"

    aput-object v1, v3, v10

    sget-object v4, Landroid/text/util/Linkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    sget-object v5, Landroid/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 248
    :cond_69
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_70

    .line 249
    invoke-static {v0, p0}, Landroid/text/util/Linkify;->gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 252
    :cond_70
    invoke-static {v0}, Landroid/text/util/Linkify;->pruneOverlaps(Ljava/util/ArrayList;)V

    .line 254
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7b

    move v1, v10

    .line 255
    goto :goto_6

    .line 258
    :cond_7b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_7f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_95

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/text/util/LinkSpec;

    .line 259
    .local v8, link:Landroid/text/util/LinkSpec;
    iget-object v1, v8, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    iget v2, v8, Landroid/text/util/LinkSpec;->start:I

    iget v3, v8, Landroid/text/util/LinkSpec;->end:I

    invoke-static {v1, v2, v3, p0}, Landroid/text/util/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    goto :goto_7f

    .end local v8           #link:Landroid/text/util/LinkSpec;
    :cond_95
    move v1, v11

    .line 262
    goto/16 :goto_6
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .registers 4
    .parameter "text"
    .parameter "pattern"
    .parameter "scheme"

    .prologue
    const/4 v0, 0x0

    .line 362
    invoke-static {p0, p1, p2, v0, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v0

    return v0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .registers 15
    .parameter "s"
    .parameter "p"
    .parameter "scheme"
    .parameter "matchFilter"
    .parameter "transformFilter"

    .prologue
    const/4 v9, 0x0

    .line 382
    const/4 v2, 0x0

    .line 383
    .local v2, hasMatches:Z
    if-nez p2, :cond_34

    const-string v7, ""

    move-object v4, v7

    .line 384
    .local v4, prefix:Ljava/lang/String;
    :goto_7
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 386
    .local v3, m:Ljava/util/regex/Matcher;
    :cond_b
    :goto_b
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 387
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    .line 388
    .local v5, start:I
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 389
    .local v1, end:I
    const/4 v0, 0x1

    .line 391
    .local v0, allowed:Z
    if-eqz p3, :cond_20

    .line 392
    invoke-interface {p3, p0, v5, v1}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v0

    .line 395
    :cond_20
    if-eqz v0, :cond_b

    .line 396
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    aput-object v4, v8, v9

    invoke-static {v7, v8, v3, p4}, Landroid/text/util/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v6

    .line 399
    .local v6, url:Ljava/lang/String;
    invoke-static {v6, v5, v1, p0}, Landroid/text/util/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    .line 400
    const/4 v2, 0x1

    goto :goto_b

    .line 383
    .end local v0           #allowed:Z
    .end local v1           #end:I
    .end local v3           #m:Ljava/util/regex/Matcher;
    .end local v4           #prefix:Ljava/lang/String;
    .end local v5           #start:I
    .end local v6           #url:Ljava/lang/String;
    :cond_34
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    goto :goto_7

    .line 404
    .restart local v3       #m:Ljava/util/regex/Matcher;
    .restart local v4       #prefix:Ljava/lang/String;
    :cond_3a
    return v2
.end method

.method public static final addLinks(Landroid/widget/TextView;I)Z
    .registers 7
    .parameter "text"
    .parameter "mask"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 272
    if-nez p1, :cond_6

    move v2, v3

    .line 295
    :goto_5
    return v2

    .line 276
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 278
    .local v1, t:Ljava/lang/CharSequence;
    instance-of v2, v1, Landroid/text/Spannable;

    if-eqz v2, :cond_1d

    .line 279
    check-cast v1, Landroid/text/Spannable;

    .end local v1           #t:Ljava/lang/CharSequence;
    invoke-static {v1, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 280
    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    move v2, v4

    .line 281
    goto :goto_5

    :cond_1b
    move v2, v3

    .line 284
    goto :goto_5

    .line 286
    .restart local v1       #t:Ljava/lang/CharSequence;
    :cond_1d
    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 288
    .local v0, s:Landroid/text/SpannableString;
    invoke-static {v0, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 289
    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 290
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v2, v4

    .line 292
    goto :goto_5

    :cond_2f
    move v2, v3

    .line 295
    goto :goto_5
.end method

.method private static final applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V
    .registers 12
    .parameter "url"
    .parameter "start"
    .parameter "end"
    .parameter "text"

    .prologue
    .line 409
    sget-object v5, Landroid/util/Patterns;->WEBEX_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 410
    .local v1, m:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_33

    sget-object v5, Landroid/text/util/Linkify;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_33

    .line 412
    :try_start_10
    sget-object v5, Landroid/text/util/Linkify;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 413
    .local v2, pm:Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_33

    .line 414
    sget-object v5, Landroid/text/util/Linkify;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040485

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 415
    .local v4, wbxAppl:Landroid/content/pm/ApplicationInfo;
    const-string v5, "https://"

    const-string/jumbo v6, "wbx://meeting2/"

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_32} :catch_60
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_32} :catch_41

    move-result-object p0

    .line 422
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    .end local v4           #wbxAppl:Landroid/content/pm/ApplicationInfo;
    :cond_33
    :goto_33
    const/4 v5, 0x0

    sput-object v5, Landroid/text/util/Linkify;->mContext:Landroid/content/Context;

    .line 424
    new-instance v3, Landroid/text/style/URLSpan;

    invoke-direct {v3, p0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 426
    .local v3, span:Landroid/text/style/URLSpan;
    const/16 v5, 0x21

    invoke-interface {p3, v3, p1, p2, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 427
    return-void

    .line 418
    .end local v3           #span:Landroid/text/style/URLSpan;
    :catch_41
    move-exception v5

    move-object v0, v5

    .line 419
    .local v0, ex:Ljava/lang/Exception;
    const-string v5, "Linkify"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 417
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_60
    move-exception v5

    goto :goto_33
.end method

.method private static final gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .registers 12
    .parameter
    .parameter "s"
    .parameter "pattern"
    .parameter "schemes"
    .parameter "matchFilter"
    .parameter "transformFilter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 462
    .local p0, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 464
    .local v1, m:Ljava/util/regex/Matcher;
    :cond_4
    :goto_4
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 465
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 466
    .local v3, start:I
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 468
    .local v0, end:I
    if-eqz p4, :cond_1a

    invoke-interface {p4, p1, v3, v0}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 469
    :cond_1a
    new-instance v2, Landroid/text/util/LinkSpec;

    invoke-direct {v2}, Landroid/text/util/LinkSpec;-><init>()V

    .line 470
    .local v2, spec:Landroid/text/util/LinkSpec;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p3, v1, p5}, Landroid/text/util/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v4

    .line 472
    .local v4, url:Ljava/lang/String;
    iput-object v4, v2, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 473
    iput v3, v2, Landroid/text/util/LinkSpec;->start:I

    .line 474
    iput v0, v2, Landroid/text/util/LinkSpec;->end:I

    .line 476
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 479
    .end local v0           #end:I
    .end local v2           #spec:Landroid/text/util/LinkSpec;
    .end local v3           #start:I
    .end local v4           #url:Ljava/lang/String;
    :cond_32
    return-void
.end method

.method private static final gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .registers 13
    .parameter
    .parameter "s"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 482
    .local p0, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 484
    .local v8, string:Ljava/lang/String;
    const/4 v1, 0x0

    .line 486
    .local v1, base:I
    :goto_5
    invoke-static {v8}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_11

    .line 487
    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 489
    .local v7, start:I
    if-gez v7, :cond_12

    .line 513
    .end local v7           #start:I
    :cond_11
    return-void

    .line 493
    .restart local v7       #start:I
    :cond_12
    new-instance v6, Landroid/text/util/LinkSpec;

    invoke-direct {v6}, Landroid/text/util/LinkSpec;-><init>()V

    .line 494
    .local v6, spec:Landroid/text/util/LinkSpec;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 495
    .local v5, length:I
    add-int v4, v7, v5

    .line 497
    .local v4, end:I
    add-int v9, v1, v7

    iput v9, v6, Landroid/text/util/LinkSpec;->start:I

    .line 498
    add-int v9, v1, v4

    iput v9, v6, Landroid/text/util/LinkSpec;->end:I

    .line 499
    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 500
    add-int/2addr v1, v4

    .line 502
    const/4 v3, 0x0

    .line 505
    .local v3, encodedAddress:Ljava/lang/String;
    :try_start_2b
    const-string v9, "UTF-8"

    invoke-static {v0, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_30
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2b .. :try_end_30} :catch_4a

    move-result-object v3

    .line 510
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "geo:0,0?q="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 511
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 506
    :catch_4a
    move-exception v9

    move-object v2, v9

    .line 507
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_5
.end method

.method public static final getPhoneNumberMinimumDigits()I
    .registers 1

    .prologue
    .line 99
    const/4 v0, 0x7

    return v0
.end method

.method private static final makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
    .registers 13
    .parameter "url"
    .parameter "prefixes"
    .parameter "m"
    .parameter "filter"

    .prologue
    const/4 v2, 0x0

    .line 431
    if-eqz p3, :cond_7

    .line 432
    invoke-interface {p3, p2, p0}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 435
    :cond_7
    const/4 v7, 0x0

    .line 437
    .local v7, hasPrefix:Z
    const/4 v8, 0x0

    .local v8, i:I
    :goto_9
    array-length v0, p1

    if-ge v8, v0, :cond_4c

    .line 438
    const/4 v1, 0x1

    aget-object v3, p1, v8

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 440
    const/4 v7, 0x1

    .line 443
    aget-object v4, p1, v8

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    move-object v1, p0

    move v3, v2

    move v5, v2

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p1, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 452
    :cond_4c
    if-nez v7, :cond_61

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 456
    :cond_61
    return-object p0

    .line 437
    :cond_62
    add-int/lit8 v8, v8, 0x1

    goto :goto_9
.end method

.method private static final pruneOverlaps(Ljava/util/ArrayList;)V
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/util/LinkSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 516
    .local p0, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/util/LinkSpec;>;"
    new-instance v2, Landroid/text/util/Linkify$4;

    invoke-direct {v2}, Landroid/text/util/Linkify$4;-><init>()V

    .line 542
    .local v2, c:Ljava/util/Comparator;,"Ljava/util/Comparator<Landroid/text/util/LinkSpec;>;"
    invoke-static {p0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 544
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 545
    .local v4, len:I
    const/4 v3, 0x0

    .line 547
    .local v3, i:I
    :goto_d
    const/4 v6, 0x1

    sub-int v6, v4, v6

    if-ge v3, v6, :cond_5e

    .line 548
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/util/LinkSpec;

    .line 549
    .local v0, a:Landroid/text/util/LinkSpec;
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/util/LinkSpec;

    .line 550
    .local v1, b:Landroid/text/util/LinkSpec;
    const/4 v5, -0x1

    .line 552
    .local v5, remove:I
    iget v6, v0, Landroid/text/util/LinkSpec;->start:I

    iget v7, v1, Landroid/text/util/LinkSpec;->start:I

    if-gt v6, v7, :cond_5b

    iget v6, v0, Landroid/text/util/LinkSpec;->end:I

    iget v7, v1, Landroid/text/util/LinkSpec;->start:I

    if-le v6, v7, :cond_5b

    .line 553
    iget v6, v1, Landroid/text/util/LinkSpec;->end:I

    iget v7, v0, Landroid/text/util/LinkSpec;->end:I

    if-gt v6, v7, :cond_3e

    .line 554
    add-int/lit8 v5, v3, 0x1

    .line 561
    :cond_35
    :goto_35
    const/4 v6, -0x1

    if-eq v5, v6, :cond_5b

    .line 562
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 563
    add-int/lit8 v4, v4, -0x1

    .line 564
    goto :goto_d

    .line 555
    :cond_3e
    iget v6, v0, Landroid/text/util/LinkSpec;->end:I

    iget v7, v0, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v1, Landroid/text/util/LinkSpec;->end:I

    iget v8, v1, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_4d

    .line 556
    add-int/lit8 v5, v3, 0x1

    goto :goto_35

    .line 557
    :cond_4d
    iget v6, v0, Landroid/text/util/LinkSpec;->end:I

    iget v7, v0, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v1, Landroid/text/util/LinkSpec;->end:I

    iget v8, v1, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_35

    .line 558
    move v5, v3

    goto :goto_35

    .line 569
    :cond_5b
    add-int/lit8 v3, v3, 0x1

    .line 570
    goto :goto_d

    .line 571
    .end local v0           #a:Landroid/text/util/LinkSpec;
    .end local v1           #b:Landroid/text/util/LinkSpec;
    .end local v5           #remove:I
    :cond_5e
    return-void
.end method
