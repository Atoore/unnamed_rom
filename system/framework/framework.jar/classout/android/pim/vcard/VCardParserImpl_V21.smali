.class Landroid/pim/vcard/VCardParserImpl_V21;
.super Ljava/lang/Object;
.source "VCardParserImpl_V21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/pim/vcard/VCardParserImpl_V21$1;,
        Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;,
        Landroid/pim/vcard/VCardParserImpl_V21$EmptyInterpreter;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "8BIT"

.field private static final LOG_TAG:Ljava/lang/String; = "VCardParserImpl_V21"

.field private static final STATE_GROUP_OR_PROPERTY_NAME:I = 0x0

.field private static final STATE_PARAMS:I = 0x1

.field private static final STATE_PARAMS_IN_DQUOTE:I = 0x2


# instance fields
.field protected mCanceled:Z

.field protected mCurrentEncoding:Ljava/lang/String;

.field protected final mIntermediateCharset:Ljava/lang/String;

.field protected mInterpreter:Landroid/pim/vcard/VCardInterpreter;

.field private mNestCount:I

.field private mPreviousLine:Ljava/lang/String;

.field protected mReader:Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;

.field private mTimeEndProperty:J

.field private mTimeHandleBase64:J

.field private mTimeHandleMiscPropertyValue:J

.field private mTimeHandleQuotedPrintable:J

.field private mTimeParseAdrOrgN:J

.field private mTimeParseItems:J

.field private mTimeParseLineAndHandleGroup:J

.field private mTimeParsePropertyValues:J

.field private mTimeReadEndRecord:J

.field private mTimeReadStartRecord:J

.field private mTimeStartProperty:J

.field private mTimeTotal:J

.field protected final mUnknownTypeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mUnknownValueSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVcardType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 212
    sget v0, Landroid/pim/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    invoke-direct {p0, v0}, Landroid/pim/vcard/VCardParserImpl_V21;-><init>(I)V

    .line 213
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "vcardType"

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    .line 182
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mUnknownValueSet:Ljava/util/Set;

    .line 216
    const/high16 v0, 0x100

    and-int/2addr v0, p1

    if-eqz v0, :cond_19

    .line 217
    const/4 v0, 0x1

    iput v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mNestCount:I

    .line 220
    :cond_19
    iput p1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mVcardType:I

    .line 221
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mIntermediateCharset:Ljava/lang/String;

    .line 222
    return-void
.end method

.method private getQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "firstString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x3d

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v9, "="

    const-string v8, "\r\n"

    .line 906
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 908
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v2, v3, v6

    .line 909
    .local v2, pos:I
    :cond_1a
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_1a

    .line 911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 912
    .local v0, builder:Ljava/lang/StringBuilder;
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    const-string v3, "\r\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    :goto_33
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v1

    .line 917
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_41

    .line 918
    new-instance v3, Landroid/pim/vcard/exception/VCardException;

    const-string v4, "File ended during parsing a Quoted-Printable String"

    invoke-direct {v3, v4}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 920
    :cond_41
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 922
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v2, v3, v6

    .line 923
    :cond_53
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_53

    .line 925
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    const-string v3, "\r\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 928
    :cond_68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 934
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #pos:I
    :goto_6f
    return-object v3

    :cond_70
    move-object v3, p1

    goto :goto_6f
.end method

.method private ignoreBadProperty()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 1128
    :cond_0
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 1129
    .local v0, line:Ljava/lang/String;
    if-nez v0, :cond_e

    .line 1130
    new-instance v1, Landroid/pim/vcard/exception/VCardException;

    const-string v2, "File ended during parsing X-SSH-VCARD-PARAMS"

    invoke-direct {v1, v2}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1132
    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1134
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1138
    return-void
.end method

.method private isAsciiLetter(C)Z
    .registers 3
    .parameter "ch"

    .prologue
    .line 756
    const/16 v0, 0x61

    if-lt p1, v0, :cond_8

    const/16 v0, 0x7a

    if-le p1, v0, :cond_10

    :cond_8
    const/16 v0, 0x41

    if-lt p1, v0, :cond_12

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_12

    .line 757
    :cond_10
    const/4 v0, 0x1

    .line 759
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private parseOneVCard(Z)Z
    .registers 16
    .parameter "firstRead"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, allowGarbage:Z
    if-eqz p1, :cond_1a

    .line 303
    iget v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mNestCount:I

    if-lez v8, :cond_1a

    .line 304
    const/4 v7, 0x0

    .local v7, i:I
    :goto_a
    iget v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mNestCount:I

    if-ge v7, v8, :cond_1a

    .line 305
    invoke-virtual {p0, v0}, Landroid/pim/vcard/VCardParserImpl_V21;->readBeginVCard(Z)Z

    move-result v8

    if-nez v8, :cond_16

    move v8, v12

    .line 329
    .end local v7           #i:I
    :goto_15
    return v8

    .line 308
    .restart local v7       #i:I
    :cond_16
    const/4 v0, 0x1

    .line 304
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 313
    .end local v7           #i:I
    :cond_1a
    invoke-virtual {p0, v0}, Landroid/pim/vcard/VCardParserImpl_V21;->readBeginVCard(Z)Z

    move-result v8

    if-nez v8, :cond_22

    move v8, v12

    .line 314
    goto :goto_15

    .line 316
    :cond_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 317
    .local v5, beforeStartEntry:J
    iget-object v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v8}, Landroid/pim/vcard/VCardInterpreter;->startEntry()V

    .line 318
    iget-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeReadStartRecord:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v5

    add-long/2addr v8, v10

    iput-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeReadStartRecord:J

    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 321
    .local v3, beforeParseItems:J
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->parseItems()V

    .line 322
    iget-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeParseItems:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v3

    add-long/2addr v8, v10

    iput-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeParseItems:J

    .line 324
    invoke-virtual {p0, v13, v12}, Landroid/pim/vcard/VCardParserImpl_V21;->readEndVCard(ZZ)V

    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 327
    .local v1, beforeEndEntry:J
    iget-object v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v8}, Landroid/pim/vcard/VCardInterpreter;->endEntry()V

    .line 328
    iget-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeReadEndRecord:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v1

    add-long/2addr v8, v10

    iput-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeReadEndRecord:J

    move v8, v13

    .line 329
    goto :goto_15
.end method

.method private showPerformanceInfo()V
    .registers 6

    .prologue
    const-string v4, "VCardParserImpl_V21"

    const-string v3, " ms"

    .line 1044
    const-string v0, "VCardParserImpl_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total parsing time:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeTotal:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    const-string v0, "VCardParserImpl_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total readLine time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mReader:Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-virtual {v1}, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->getTotalmillisecond()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    const-string v0, "VCardParserImpl_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time for handling the beggining of the record: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeReadStartRecord:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    const-string v0, "VCardParserImpl_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time for handling the end of the record: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeReadEndRecord:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    const-string v0, "VCardParserImpl_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time for parsing line, and handling group: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeParseLineAndHandleGroup:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    const-string v0, "VCardParserImpl_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time for parsing ADR, ORG, and N fields:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeParseAdrOrgN:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    const-string v0, "VCardParserImpl_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time for parsing property values: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeParsePropertyValues:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    const-string v0, "VCardParserImpl_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time for handling normal property values: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeHandleMiscPropertyValue:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    const-string v0, "VCardParserImpl_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time for handling Quoted-Printable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeHandleQuotedPrintable:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    const-string v0, "VCardParserImpl_V21"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time for handling Base64: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeHandleBase64:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    return-void
.end method

.method static unescapeCharacter(C)Ljava/lang/String;
    .registers 3
    .parameter "ch"

    .prologue
    .line 1031
    const/16 v0, 0x3c

    if-eq p0, v0, :cond_8

    const/16 v0, 0x3e

    if-ne p0, v0, :cond_17

    .line 1032
    :cond_8
    const-string v0, "SC-02C"

    const-string v1, "SGH-I777"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1033
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 1039
    :goto_16
    return-object v0

    .line 1036
    :cond_17
    const/16 v0, 0x5c

    if-eq p0, v0, :cond_27

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_27

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_27

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_2c

    .line 1037
    :cond_27
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 1039
    :cond_2c
    const/4 v0, 0x0

    goto :goto_16
.end method


# virtual methods
.method public final cancel()V
    .registers 2

    .prologue
    .line 1121
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mCanceled:Z

    .line 1122
    return-void
.end method

.method protected getAvailableEncodingSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1086
    sget-object v0, Landroid/pim/vcard/VCardParser_V21;->sAvailableEncoding:Ljava/util/Set;

    return-object v0
.end method

.method protected getBase64(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "firstString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 940
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    :goto_8
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v1

    .line 944
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_16

    .line 945
    new-instance v2, Landroid/pim/vcard/exception/VCardException;

    const-string v3, "File ended during parsing BASE64 binary"

    invoke-direct {v2, v3}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 947
    :cond_16
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_25

    .line 953
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 950
    :cond_25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8
.end method

.method protected getDefaultEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1090
    const-string v0, "8BIT"

    return-object v0
.end method

.method protected getKnownPropertyNameSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1074
    sget-object v0, Landroid/pim/vcard/VCardParser_V21;->sKnownPropertyNameSet:Ljava/util/Set;

    return-object v0
.end method

.method protected getKnownTypeSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1078
    sget-object v0, Landroid/pim/vcard/VCardParser_V21;->sKnownTypeSet:Ljava/util/Set;

    return-object v0
.end method

.method protected getKnownValueSet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1082
    sget-object v0, Landroid/pim/vcard/VCardParser_V21;->sKnownValueSet:Ljava/util/Set;

    return-object v0
.end method

.method protected getLine()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mReader:Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-virtual {v0}, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getNonEmptyLine()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, line:Ljava/lang/String;
    if-nez v0, :cond_e

    .line 286
    new-instance v1, Landroid/pim/vcard/exception/VCardException;

    const-string v2, "Reached end of buffer."

    invoke-direct {v1, v2}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 287
    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1a

    move-object v1, v0

    .line 290
    :goto_19
    return-object v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method protected getVersion()I
    .registers 2

    .prologue
    .line 1063
    const/4 v0, 0x0

    return v0
.end method

.method protected getVersionString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1070
    const-string v0, "2.1"

    return-object v0
.end method

.method protected handleAgent(Ljava/lang/String;)V
    .registers 4
    .parameter "propertyValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 1000
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BEGIN:VCARD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1005
    :cond_c
    return-void
.end method

.method protected handleAnyParam(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "paramName"
    .parameter "paramValue"

    .prologue
    .line 766
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v0, p1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v0, p2}, Landroid/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    .line 768
    return-void
.end method

.method protected handleCharset(Ljava/lang/String;)V
    .registers 4
    .parameter "charsetval"

    .prologue
    .line 725
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    const-string v1, "CHARSET"

    invoke-interface {v0, v1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    .line 726
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v0, p1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    .line 727
    return-void
.end method

.method protected handleEncoding(Ljava/lang/String;)V
    .registers 5
    .parameter "pencodingval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 707
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getAvailableEncodingSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 709
    :cond_12
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    const-string v1, "ENCODING"

    invoke-interface {v0, v1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v0, p1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    .line 711
    iput-object p1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    .line 715
    return-void

    .line 713
    :cond_21
    new-instance v0, Landroid/pim/vcard/exception/VCardException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown encoding \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleLanguage(Ljava/lang/String;)V
    .registers 11
    .parameter "langval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const-string v8, "Invalid Language: \""

    const-string v7, "\""

    .line 733
    const-string v4, "-"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 734
    .local v2, strArray:[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2d

    .line 735
    new-instance v4, Landroid/pim/vcard/exception/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Language: \""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 737
    :cond_2d
    const/4 v4, 0x0

    aget-object v3, v2, v4

    .line 738
    .local v3, tmp:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 739
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_35
    if-ge v0, v1, :cond_63

    .line 740
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Landroid/pim/vcard/VCardParserImpl_V21;->isAsciiLetter(C)Z

    move-result v4

    if-nez v4, :cond_60

    .line 741
    new-instance v4, Landroid/pim/vcard/exception/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Language: \""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 739
    :cond_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 744
    :cond_63
    const/4 v4, 0x1

    aget-object v3, v2, v4

    .line 745
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 746
    const/4 v0, 0x0

    :goto_6b
    if-ge v0, v1, :cond_99

    .line 747
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Landroid/pim/vcard/VCardParserImpl_V21;->isAsciiLetter(C)Z

    move-result v4

    if-nez v4, :cond_96

    .line 748
    new-instance v4, Landroid/pim/vcard/exception/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Language: \""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 746
    :cond_96
    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    .line 751
    :cond_99
    iget-object v4, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    const-string v5, "LANGUAGE"

    invoke-interface {v4, v5}, Landroid/pim/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    .line 752
    iget-object v4, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v4, p1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    .line 753
    return-void
.end method

.method protected handleMultiplePropertyValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "propertyName"
    .parameter "propertyValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 977
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    const-string v1, "QUOTED-PRINTABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 978
    invoke-direct {p0, p2}, Landroid/pim/vcard/VCardParserImpl_V21;->getQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 982
    :cond_e
    iget v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mVcardType:I

    const/high16 v1, -0x3bf0

    if-ne v0, v1, :cond_24

    .line 983
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v1

    invoke-static {p2, v1}, Landroid/pim/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    const-string v2, "EUC-KR"

    invoke-interface {v0, v1, v2}, Landroid/pim/vcard/VCardInterpreter;->propertyValues(Ljava/util/List;Ljava/lang/String;)V

    .line 989
    :goto_23
    return-void

    .line 986
    :cond_24
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v1

    invoke-static {p2, v1}, Landroid/pim/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/pim/vcard/VCardInterpreter;->propertyValues(Ljava/util/List;)V

    goto :goto_23
.end method

.method protected handleParamWithoutName(Ljava/lang/String;)V
    .registers 2
    .parameter "paramValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 671
    invoke-virtual {p0, p1}, Landroid/pim/vcard/VCardParserImpl_V21;->handleType(Ljava/lang/String;)V

    .line 672
    return-void
.end method

.method protected handleParams(Ljava/lang/String;)V
    .registers 8
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 640
    const-string v3, "="

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 641
    .local v2, strArray:[Ljava/lang/String;
    array-length v3, v2

    if-ne v3, v5, :cond_8b

    .line 642
    aget-object v3, v2, v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, paramName:Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, paramValue:Ljava/lang/String;
    const-string v3, "TYPE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 645
    invoke-virtual {p0, v1}, Landroid/pim/vcard/VCardParserImpl_V21;->handleType(Ljava/lang/String;)V

    .line 664
    .end local v0           #paramName:Ljava/lang/String;
    .end local v1           #paramValue:Ljava/lang/String;
    :cond_27
    :goto_27
    return-void

    .line 646
    .restart local v0       #paramName:Ljava/lang/String;
    .restart local v1       #paramValue:Ljava/lang/String;
    :cond_28
    const-string v3, "VALUE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 647
    invoke-virtual {p0, v1}, Landroid/pim/vcard/VCardParserImpl_V21;->handleValue(Ljava/lang/String;)V

    goto :goto_27

    .line 648
    :cond_34
    const-string v3, "ENCODING"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 649
    invoke-virtual {p0, v1}, Landroid/pim/vcard/VCardParserImpl_V21;->handleEncoding(Ljava/lang/String;)V

    goto :goto_27

    .line 650
    :cond_40
    const-string v3, "CHARSET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 651
    invoke-virtual {p0, v1}, Landroid/pim/vcard/VCardParserImpl_V21;->handleCharset(Ljava/lang/String;)V

    goto :goto_27

    .line 652
    :cond_4c
    const-string v3, "LANGUAGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 653
    invoke-virtual {p0, v1}, Landroid/pim/vcard/VCardParserImpl_V21;->handleLanguage(Ljava/lang/String;)V

    goto :goto_27

    .line 654
    :cond_58
    const-string v3, "X-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 655
    invoke-virtual {p0, v0, v1}, Landroid/pim/vcard/VCardParserImpl_V21;->handleAnyParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    .line 656
    :cond_64
    const-string v3, "X_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 659
    new-instance v3, Landroid/pim/vcard/exception/VCardException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown type \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 662
    .end local v0           #paramName:Ljava/lang/String;
    .end local v1           #paramValue:Ljava/lang/String;
    :cond_8b
    aget-object v3, v2, v4

    invoke-virtual {p0, v3}, Landroid/pim/vcard/VCardParserImpl_V21;->handleParamWithoutName(Ljava/lang/String;)V

    goto :goto_27
.end method

.method protected handlePropertyValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 20
    .parameter "propertyName"
    .parameter "propertyValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    move-object v12, v0

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    .line 773
    .local v10, upperEncoding:Ljava/lang/String;
    const-string v12, "QUOTED-PRINTABLE"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_52

    .line 774
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 775
    .local v8, start:J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardParserImpl_V21;->getQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 776
    .local v7, result:Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 777
    .local v11, v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    move-object/from16 v0, p0

    iget v0, v0, Landroid/pim/vcard/VCardParserImpl_V21;->mVcardType:I

    move v12, v0

    const/high16 v13, -0x3bf0

    if-ne v12, v13, :cond_49

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    move-object v12, v0

    const-string v13, "EUC-KR"

    invoke-interface {v12, v11, v13}, Landroid/pim/vcard/VCardInterpreter;->propertyValues(Ljava/util/List;Ljava/lang/String;)V

    .line 786
    :goto_38
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeHandleQuotedPrintable:J

    move-wide v12, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v8

    add-long/2addr v12, v14

    move-wide v0, v12

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeHandleQuotedPrintable:J

    .line 877
    .end local v7           #result:Ljava/lang/String;
    .end local v11           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_48
    return-void

    .line 783
    .restart local v7       #result:Ljava/lang/String;
    .restart local v11       #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    move-object v12, v0

    invoke-interface {v12, v11}, Landroid/pim/vcard/VCardInterpreter;->propertyValues(Ljava/util/List;)V

    goto :goto_38

    .line 787
    .end local v7           #result:Ljava/lang/String;
    .end local v8           #start:J
    .end local v11           #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_52
    const-string v12, "BASE64"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_62

    const-string v12, "B"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b6

    .line 789
    :cond_62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 793
    .restart local v8       #start:J
    :try_start_66
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 794
    .local v3, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardParserImpl_V21;->getBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 796
    move-object/from16 v0, p0

    iget v0, v0, Landroid/pim/vcard/VCardParserImpl_V21;->mVcardType:I

    move v12, v0

    const/high16 v13, -0x3bf0

    if-ne v12, v13, :cond_9a

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    move-object v12, v0

    const-string v13, "EUC-KR"

    invoke-interface {v12, v3, v13}, Landroid/pim/vcard/VCardInterpreter;->propertyValues(Ljava/util/List;Ljava/lang/String;)V
    :try_end_89
    .catch Ljava/lang/OutOfMemoryError; {:try_start_66 .. :try_end_89} :catch_a3

    .line 805
    .end local v3           #arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_89
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeHandleBase64:J

    move-wide v12, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v8

    add-long/2addr v12, v14

    move-wide v0, v12

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeHandleBase64:J

    goto :goto_48

    .line 799
    .restart local v3       #arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9a
    :try_start_9a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    move-object v12, v0

    invoke-interface {v12, v3}, Landroid/pim/vcard/VCardInterpreter;->propertyValues(Ljava/util/List;)V
    :try_end_a2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9a .. :try_end_a2} :catch_a3

    goto :goto_89

    .line 801
    .end local v3           #arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_a3
    move-exception v12

    move-object v5, v12

    .line 802
    .local v5, error:Ljava/lang/OutOfMemoryError;
    const-string v12, "VCardParserImpl_V21"

    const-string v13, "OutOfMemoryError happened during parsing BASE64 data!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    move-object v12, v0

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/pim/vcard/VCardInterpreter;->propertyValues(Ljava/util/List;)V

    goto :goto_89

    .line 807
    .end local v5           #error:Ljava/lang/OutOfMemoryError;
    .end local v8           #start:J
    :cond_b6
    const-string v12, "7BIT"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_ec

    const-string v12, "8BIT"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_ec

    const-string v12, "X-"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_ec

    .line 809
    const-string v12, "VCardParserImpl_V21"

    const-string v13, "The encoding \"%s\" is unsupported by vCard %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_ec
    invoke-virtual/range {p0 .. p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v12

    if-nez v12, :cond_131

    .line 837
    const/4 v4, 0x0

    .line 839
    .local v4, builder:Ljava/lang/StringBuilder;
    :goto_f3
    invoke-virtual/range {p0 .. p0}, Landroid/pim/vcard/VCardParserImpl_V21;->peekLine()Ljava/lang/String;

    move-result-object v6

    .line 846
    .local v6, nextLine:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_12b

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x20

    if-ne v12, v13, :cond_12b

    const-string v12, "END:VCARD"

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_12b

    .line 849
    invoke-virtual/range {p0 .. p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    .line 851
    if-nez v4, :cond_122

    .line 852
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 853
    .restart local v4       #builder:Ljava/lang/StringBuilder;
    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    :cond_122
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f3

    .line 860
    :cond_12b
    if-eqz v4, :cond_131

    .line 861
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 865
    .end local v4           #builder:Ljava/lang/StringBuilder;
    .end local v6           #nextLine:Ljava/lang/String;
    :cond_131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 866
    .restart local v8       #start:J
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 867
    .restart local v11       #v:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardParserImpl_V21;->maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    move-object/from16 v0, p0

    iget v0, v0, Landroid/pim/vcard/VCardParserImpl_V21;->mVcardType:I

    move v12, v0

    const/high16 v13, -0x3bf0

    if-ne v12, v13, :cond_16a

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    move-object v12, v0

    const-string v13, "EUC-KR"

    invoke-interface {v12, v11, v13}, Landroid/pim/vcard/VCardInterpreter;->propertyValues(Ljava/util/List;Ljava/lang/String;)V

    .line 875
    :goto_158
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeHandleMiscPropertyValue:J

    move-wide v12, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v8

    add-long/2addr v12, v14

    move-wide v0, v12

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeHandleMiscPropertyValue:J

    goto/16 :goto_48

    .line 872
    :cond_16a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    move-object v12, v0

    invoke-interface {v12, v11}, Landroid/pim/vcard/VCardInterpreter;->propertyValues(Ljava/util/List;)V

    goto :goto_158
.end method

.method protected handleType(Ljava/lang/String;)V
    .registers 7
    .parameter "ptypeval"

    .prologue
    .line 678
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getKnownTypeSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 681
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 682
    const-string v0, "VCardParserImpl_V21"

    const-string v1, "TYPE unsupported by %s: "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_3f
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    const-string v1, "TYPE"

    invoke-interface {v0, v1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v0, p1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    .line 686
    return-void
.end method

.method protected handleValue(Ljava/lang/String;)V
    .registers 7
    .parameter "pvalueval"

    .prologue
    .line 692
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getKnownValueSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mUnknownValueSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 695
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mUnknownValueSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 696
    const-string v0, "VCardParserImpl_V21"

    const-string v1, "The value unsupported by TYPE of %s: "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_3f
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    const-string v1, "VALUE"

    invoke-interface {v0, v1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v0, p1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    .line 701
    return-void
.end method

.method protected isValidPropertyName(Ljava/lang/String;)Z
    .registers 5
    .parameter "propertyName"

    .prologue
    .line 255
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getKnownPropertyNameSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 258
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 259
    const-string v0, "VCardParserImpl_V21"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property name unsupported by vCard 2.1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_3b
    const/4 v0, 0x1

    return v0
.end method

.method protected maybeUnescapeCharacter(C)Ljava/lang/String;
    .registers 3
    .parameter "ch"

    .prologue
    .line 1022
    invoke-static {p1}, Landroid/pim/vcard/VCardParserImpl_V21;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "text"

    .prologue
    .line 1013
    return-object p1
.end method

.method public parse(Ljava/io/InputStream;Landroid/pim/vcard/VCardInterpreter;)V
    .registers 10
    .parameter "is"
    .parameter "interpreter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 1096
    if-nez p1, :cond_a

    .line 1097
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "InputStream must not be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1100
    :cond_a
    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mIntermediateCharset:Ljava/lang/String;

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1101
    .local v2, tmpReader:Ljava/io/InputStreamReader;
    new-instance v3, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-direct {v3, v2}, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mReader:Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;

    .line 1103
    if-eqz p2, :cond_4a

    move-object v3, p2

    :goto_1b
    iput-object v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    .line 1105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1106
    .local v0, start:J
    iget-object v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    if-eqz v3, :cond_2a

    .line 1107
    iget-object v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v3}, Landroid/pim/vcard/VCardInterpreter;->start()V

    .line 1109
    :cond_2a
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->parseVCardFile()V

    .line 1110
    iget-object v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    if-eqz v3, :cond_36

    .line 1111
    iget-object v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v3}, Landroid/pim/vcard/VCardInterpreter;->end()V

    .line 1113
    :cond_36
    iget-wide v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeTotal:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeTotal:J

    .line 1115
    invoke-static {}, Landroid/pim/vcard/VCardConfig;->showPerformanceLog()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 1116
    invoke-direct {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->showPerformanceInfo()V

    .line 1118
    :cond_49
    return-void

    .line 1103
    .end local v0           #start:J
    :cond_4a
    new-instance v3, Landroid/pim/vcard/VCardParserImpl_V21$EmptyInterpreter;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/pim/vcard/VCardParserImpl_V21$EmptyInterpreter;-><init>(Landroid/pim/vcard/VCardParserImpl_V21$1;)V

    goto :goto_1b
.end method

.method protected parseItem()Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    const-string v11, "\""

    .line 458
    const-string v6, "8BIT"

    iput-object v6, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    .line 460
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getNonEmptyLine()Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, line:Ljava/lang/String;
    if-nez v0, :cond_10

    move v6, v10

    .line 522
    :goto_f
    return v6

    .line 467
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 469
    .local v4, start:J
    invoke-virtual {p0, v0}, Landroid/pim/vcard/VCardParserImpl_V21;->separateLineAndHandleGroup(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 470
    .local v2, propertyNameAndValue:[Ljava/lang/String;
    if-nez v2, :cond_1c

    move v6, v8

    .line 471
    goto :goto_f

    .line 473
    :cond_1c
    array-length v6, v2

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3f

    .line 474
    new-instance v6, Landroid/pim/vcard/exception/VCardInvalidLineException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid line \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/pim/vcard/exception/VCardInvalidLineException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 476
    :cond_3f
    aget-object v6, v2, v10

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 477
    .local v1, propertyName:Ljava/lang/String;
    aget-object v3, v2, v8

    .line 479
    .local v3, propertyValue:Ljava/lang/String;
    iget-wide v6, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeParseLineAndHandleGroup:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeParseLineAndHandleGroup:J

    .line 481
    const-string v6, "ADR"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_69

    const-string v6, "ORG"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_69

    const-string v6, "N"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 482
    :cond_69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 483
    invoke-virtual {p0, v1, v3}, Landroid/pim/vcard/VCardParserImpl_V21;->handleMultiplePropertyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-wide v6, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeParseAdrOrgN:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeParseAdrOrgN:J

    move v6, v10

    .line 485
    goto :goto_f

    .line 486
    :cond_7c
    const-string v6, "AGENT"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_89

    .line 487
    invoke-virtual {p0, v3}, Landroid/pim/vcard/VCardParserImpl_V21;->handleAgent(Ljava/lang/String;)V

    move v6, v10

    .line 488
    goto :goto_f

    .line 490
    :cond_89
    const-string v6, ".*BDAY.*"

    invoke-virtual {v1, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_af

    .line 493
    const-string v6, "-"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9b

    .line 494
    const-string v3, "1"

    .line 497
    :cond_9b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 498
    invoke-virtual {p0, v1, v3}, Landroid/pim/vcard/VCardParserImpl_V21;->handlePropertyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-wide v6, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeParsePropertyValues:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeParsePropertyValues:J

    move v6, v10

    .line 501
    goto/16 :goto_f

    .line 504
    :cond_af
    const-string v6, "X-SSH-VCARD-PARAMS"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bd

    .line 505
    invoke-direct {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->ignoreBadProperty()V

    move v6, v10

    .line 506
    goto/16 :goto_f

    .line 508
    :cond_bd
    invoke-virtual {p0, v1}, Landroid/pim/vcard/VCardParserImpl_V21;->isValidPropertyName(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_141

    .line 509
    const-string v6, "BEGIN"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f4

    .line 510
    const-string v6, "VCARD"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_db

    .line 511
    new-instance v6, Landroid/pim/vcard/exception/VCardNestedException;

    const-string v7, "This vCard has nested vCard data in it."

    invoke-direct {v6, v7}, Landroid/pim/vcard/exception/VCardNestedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 513
    :cond_db
    new-instance v6, Landroid/pim/vcard/exception/VCardException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown BEGIN type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 515
    :cond_f4
    const-string v6, "VERSION"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12d

    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12d

    .line 516
    new-instance v6, Landroid/pim/vcard/exception/VCardVersionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incompatible version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " != "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/pim/vcard/exception/VCardVersionException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 519
    :cond_12d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 520
    invoke-virtual {p0, v1, v3}, Landroid/pim/vcard/VCardParserImpl_V21;->handlePropertyValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-wide v6, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeParsePropertyValues:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeParsePropertyValues:J

    move v6, v10

    .line 522
    goto/16 :goto_f

    .line 525
    :cond_141
    new-instance v6, Landroid/pim/vcard/exception/VCardException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown property name: \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected parseItems()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 420
    const/4 v7, 0x0

    .line 422
    .local v7, ended:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 423
    .local v0, beforeBeginProperty:J
    iget-object v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v8}, Landroid/pim/vcard/VCardInterpreter;->startProperty()V

    .line 424
    iget-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeStartProperty:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    add-long/2addr v8, v10

    iput-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeStartProperty:J

    .line 425
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->parseItem()Z

    move-result v7

    .line 426
    if-nez v7, :cond_2d

    .line 427
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 428
    .local v2, beforeEndProperty:J
    iget-object v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v8}, Landroid/pim/vcard/VCardInterpreter;->endProperty()V

    .line 429
    iget-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeEndProperty:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v2

    add-long/2addr v8, v10

    iput-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeEndProperty:J

    .line 432
    .end local v2           #beforeEndProperty:J
    :cond_2d
    :goto_2d
    if-nez v7, :cond_66

    .line 433
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 434
    .local v4, beforeStartProperty:J
    iget-object v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v8}, Landroid/pim/vcard/VCardInterpreter;->startProperty()V

    .line 435
    iget-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeStartProperty:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    add-long/2addr v8, v10

    iput-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeStartProperty:J

    .line 437
    :try_start_42
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->parseItem()Z
    :try_end_45
    .catch Landroid/pim/vcard/exception/VCardInvalidCommentLineException; {:try_start_42 .. :try_end_45} :catch_5c

    move-result v7

    .line 443
    :goto_46
    if-nez v7, :cond_2d

    .line 444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 445
    .restart local v2       #beforeEndProperty:J
    iget-object v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v8}, Landroid/pim/vcard/VCardInterpreter;->endProperty()V

    .line 446
    iget-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeEndProperty:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v2

    add-long/2addr v8, v10

    iput-wide v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mTimeEndProperty:J

    goto :goto_2d

    .line 438
    .end local v2           #beforeEndProperty:J
    :catch_5c
    move-exception v6

    .line 439
    .local v6, e:Landroid/pim/vcard/exception/VCardInvalidCommentLineException;
    const-string v8, "VCardParserImpl_V21"

    const-string v9, "Invalid line which looks like some comment was found. Ignored."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v7, 0x0

    goto :goto_46

    .line 449
    .end local v4           #beforeStartProperty:J
    .end local v6           #e:Landroid/pim/vcard/exception/VCardInvalidCommentLineException;
    :cond_66
    return-void
.end method

.method protected parseVCardFile()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 231
    const/4 v1, 0x1

    .line 233
    .local v1, readingFirstFile:Z
    :goto_1
    iget-boolean v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mCanceled:Z

    if-eqz v3, :cond_17

    .line 242
    :cond_5
    iget v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mNestCount:I

    if-lez v3, :cond_1f

    .line 243
    const/4 v2, 0x1

    .line 244
    .local v2, useCache:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    iget v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mNestCount:I

    if-ge v0, v3, :cond_1f

    .line 245
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/pim/vcard/VCardParserImpl_V21;->readEndVCard(ZZ)V

    .line 246
    const/4 v2, 0x0

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 236
    .end local v0           #i:I
    .end local v2           #useCache:Z
    :cond_17
    invoke-direct {p0, v1}, Landroid/pim/vcard/VCardParserImpl_V21;->parseOneVCard(Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 239
    const/4 v1, 0x0

    goto :goto_1

    .line 249
    :cond_1f
    return-void
.end method

.method protected peekLine()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mReader:Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-virtual {v0}, Landroid/pim/vcard/VCardParserImpl_V21$CustomBufferedReader;->peekLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected readBeginVCard(Z)Z
    .registers 10
    .parameter "allowGarbage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 341
    :cond_3
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_b

    move v3, v5

    .line 363
    :goto_a
    return v3

    .line 344
    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 348
    const-string v3, ":"

    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, strArray:[Ljava/lang/String;
    array-length v0, v2

    .line 357
    .local v0, length:I
    if-ne v0, v7, :cond_3c

    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BEGIN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    aget-object v3, v2, v6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VCARD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    move v3, v6

    .line 359
    goto :goto_a

    .line 360
    :cond_3c
    if-nez p1, :cond_65

    .line 361
    iget v3, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mNestCount:I

    if-lez v3, :cond_46

    .line 362
    iput-object v1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mPreviousLine:Ljava/lang/String;

    move v3, v5

    .line 363
    goto :goto_a

    .line 365
    :cond_46
    new-instance v3, Landroid/pim/vcard/exception/VCardException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected String \"BEGIN:VCARD\" did not come (Instead, \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" came)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 369
    :cond_65
    if-nez p1, :cond_3

    .line 371
    new-instance v3, Landroid/pim/vcard/exception/VCardException;

    const-string v4, "Reached where must not be reached."

    invoke-direct {v3, v4}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected readEndVCard(ZZ)V
    .registers 8
    .parameter "useCache"
    .parameter "allowGarbage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 390
    :cond_1
    if-eqz p1, :cond_2d

    .line 393
    iget-object v0, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mPreviousLine:Ljava/lang/String;

    .line 405
    .local v0, line:Ljava/lang/String;
    :goto_5
    const-string v2, ":"

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, strArray:[Ljava/lang/String;
    array-length v2, v1

    if-ne v2, v4, :cond_46

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "END"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VCARD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 414
    :goto_2c
    return-void

    .line 396
    .end local v0           #line:Ljava/lang/String;
    .end local v1           #strArray:[Ljava/lang/String;
    :cond_2d
    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 397
    .restart local v0       #line:Ljava/lang/String;
    if-nez v0, :cond_3b

    .line 398
    new-instance v2, Landroid/pim/vcard/exception/VCardException;

    const-string v3, "Expected END:VCARD was not found."

    invoke-direct {v2, v3}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 399
    :cond_3b
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2d

    goto :goto_5

    .line 409
    .restart local v1       #strArray:[Ljava/lang/String;
    :cond_46
    if-nez p2, :cond_69

    .line 410
    new-instance v2, Landroid/pim/vcard/exception/VCardException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "END:VCARD != \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mPreviousLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 412
    :cond_69
    const/4 p1, 0x0

    .line 413
    if-nez p2, :cond_1

    goto :goto_2c
.end method

.method protected separateLineAndHandleGroup(Ljava/lang/String;)[Ljava/lang/String;
    .registers 13
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 535
    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/String;

    .line 536
    .local v6, propertyNameAndValue:[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 537
    .local v3, length:I
    if-lez v3, :cond_18

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x23

    if-ne v8, v9, :cond_18

    .line 538
    new-instance v8, Landroid/pim/vcard/exception/VCardInvalidCommentLineException;

    invoke-direct {v8}, Landroid/pim/vcard/exception/VCardInvalidCommentLineException;-><init>()V

    throw v8

    .line 541
    :cond_18
    const/4 v7, 0x0

    .line 542
    .local v7, state:I
    const/4 v4, 0x0

    .line 546
    .local v4, nameIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1b
    if-ge v2, v3, :cond_117

    .line 547
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 548
    .local v0, ch:C
    packed-switch v7, :pswitch_data_136

    .line 546
    :cond_24
    :goto_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 550
    :pswitch_27
    const/16 v8, 0x3a

    if-ne v0, v8, :cond_59

    .line 551
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 552
    .local v5, propertyName:Ljava/lang/String;
    const-string v8, "END"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 553
    iput-object p1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mPreviousLine:Ljava/lang/String;

    .line 554
    const/4 v8, 0x0

    .line 610
    .end local v5           #propertyName:Ljava/lang/String;
    :goto_3a
    return-object v8

    .line 556
    .restart local v5       #propertyName:Ljava/lang/String;
    :cond_3b
    iget-object v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v8, v5}, Landroid/pim/vcard/VCardInterpreter;->propertyName(Ljava/lang/String;)V

    .line 557
    const/4 v8, 0x0

    aput-object v5, v6, v8

    .line 558
    const/4 v8, 0x1

    sub-int v8, v3, v8

    if-ge v2, v8, :cond_53

    .line 559
    const/4 v8, 0x1

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    :goto_51
    move-object v8, v6

    .line 563
    goto :goto_3a

    .line 561
    :cond_53
    const/4 v8, 0x1

    const-string v9, ""

    aput-object v9, v6, v8

    goto :goto_51

    .line 564
    .end local v5           #propertyName:Ljava/lang/String;
    :cond_59
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_77

    .line 565
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 566
    .local v1, groupName:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_71

    .line 567
    const-string v8, "VCardParserImpl_V21"

    const-string v9, "Empty group found. Ignoring."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :goto_6e
    add-int/lit8 v4, v2, 0x1

    .line 572
    goto :goto_24

    .line 569
    :cond_71
    iget-object v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v8, v1}, Landroid/pim/vcard/VCardInterpreter;->propertyGroup(Ljava/lang/String;)V

    goto :goto_6e

    .line 572
    .end local v1           #groupName:Ljava/lang/String;
    :cond_77
    const/16 v8, 0x3b

    if-ne v0, v8, :cond_24

    .line 573
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 574
    .restart local v5       #propertyName:Ljava/lang/String;
    const-string v8, "END"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8b

    .line 575
    iput-object p1, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mPreviousLine:Ljava/lang/String;

    .line 576
    const/4 v8, 0x0

    goto :goto_3a

    .line 579
    :cond_8b
    const-string v8, "X-SSH-VCARD-PARAMS"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9d

    .line 580
    const/4 v8, 0x0

    aput-object v5, v6, v8

    .line 581
    const/4 v8, 0x1

    const-string v9, ""

    aput-object v9, v6, v8

    move-object v8, v6

    .line 582
    goto :goto_3a

    .line 585
    :cond_9d
    iget-object v8, p0, Landroid/pim/vcard/VCardParserImpl_V21;->mInterpreter:Landroid/pim/vcard/VCardInterpreter;

    invoke-interface {v8, v5}, Landroid/pim/vcard/VCardInterpreter;->propertyName(Ljava/lang/String;)V

    .line 586
    const/4 v8, 0x0

    aput-object v5, v6, v8

    .line 587
    add-int/lit8 v4, v2, 0x1

    .line 588
    const/4 v7, 0x1

    .line 589
    goto/16 :goto_24

    .line 594
    .end local v5           #propertyName:Ljava/lang/String;
    :pswitch_aa
    const/16 v8, 0x22

    if-ne v0, v8, :cond_c4

    .line 595
    const-string v8, "2.1"

    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c1

    .line 596
    const-string v8, "VCardParserImpl_V21"

    const-string v9, "Double-quoted params found in vCard 2.1. Silently allow it"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_c1
    const/4 v7, 0x2

    goto/16 :goto_24

    .line 600
    :cond_c4
    const/16 v8, 0x3b

    if-ne v0, v8, :cond_d3

    .line 601
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/pim/vcard/VCardParserImpl_V21;->handleParams(Ljava/lang/String;)V

    .line 602
    add-int/lit8 v4, v2, 0x1

    goto/16 :goto_24

    .line 603
    :cond_d3
    const/16 v8, 0x3a

    if-ne v0, v8, :cond_f5

    .line 604
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/pim/vcard/VCardParserImpl_V21;->handleParams(Ljava/lang/String;)V

    .line 605
    const/4 v8, 0x1

    sub-int v8, v3, v8

    if-ge v2, v8, :cond_ef

    .line 606
    const/4 v8, 0x1

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    :goto_ec
    move-object v8, v6

    .line 610
    goto/16 :goto_3a

    .line 608
    :cond_ef
    const/4 v8, 0x1

    const-string v9, ""

    aput-object v9, v6, v8

    goto :goto_ec

    .line 611
    :cond_f5
    const/16 v8, 0x20

    if-ne v0, v8, :cond_24

    .line 612
    add-int/lit8 v4, v2, 0x1

    goto/16 :goto_24

    .line 617
    :pswitch_fd
    const/16 v8, 0x22

    if-ne v0, v8, :cond_24

    .line 618
    const-string v8, "2.1"

    invoke-virtual {p0}, Landroid/pim/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_114

    .line 619
    const-string v8, "VCardParserImpl_V21"

    const-string v9, "Double-quoted params found in vCard 2.1. Silently allow it"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_114
    const/4 v7, 0x1

    goto/16 :goto_24

    .line 629
    .end local v0           #ch:C
    :cond_117
    new-instance v8, Landroid/pim/vcard/exception/VCardInvalidLineException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid line: \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/pim/vcard/exception/VCardInvalidLineException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 548
    :pswitch_data_136
    .packed-switch 0x0
        :pswitch_27
        :pswitch_aa
        :pswitch_fd
    .end packed-switch
.end method
