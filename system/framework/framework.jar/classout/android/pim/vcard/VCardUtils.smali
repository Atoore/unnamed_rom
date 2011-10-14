.class public Landroid/pim/vcard/VCardUtils;
.super Ljava/lang/Object;
.source "VCardUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VCardUtils"

.field private static final sEscapeIndicatorsV30:[I

.field private static final sEscapeIndicatorsV40:[I

.field private static final sKnownImPropNameMap_ItoS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sKnownPhoneTypeMap_StoI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sKnownPhoneTypesMap_ItoS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMobilePhoneLabelSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPhoneTypesUnknownToContactsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUnAcceptableAsciiInV21WordSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/pim/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/pim/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    .line 62
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CAR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "CAR"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PAGER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "PAGER"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ISDN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "ISDN"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "HOME"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "WORK"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "CELL"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "OTHER"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "CALLBACK"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "COMPANY-MAIN"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "RADIO"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "TTY-TDD"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    const-string v1, "ASSISTANT"

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/pim/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    .line 85
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    const-string v1, "MODEM"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    const-string v1, "MSG"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    const-string v1, "BBS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    const-string v1, "VIDEO"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/pim/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    .line 91
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-AIM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-MSN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-YAHOO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-SKYPE-USERNAME"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-GOOGLE-TALK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-ICQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-JABBER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-QQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-NETMEETING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "MOBILE"

    aput-object v3, v1, v2

    const-string/jumbo v2, "\u643a\u5e2f\u96fb\u8a71"

    aput-object v2, v1, v5

    const-string/jumbo v2, "\u643a\u5e2f"

    aput-object v2, v1, v4

    const-string/jumbo v2, "\u30b1\u30a4\u30bf\u30a4"

    aput-object v2, v1, v6

    const-string/jumbo v2, "\uff79\uff72\uff80\uff72"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/pim/vcard/VCardUtils;->sMobilePhoneLabelSet:Ljava/util/Set;

    .line 500
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Character;

    const/4 v2, 0x0

    const/16 v3, 0x5b

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v5

    const/16 v2, 0x3d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v4

    const/16 v2, 0x3a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v6

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const/16 v3, 0x2c

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/pim/vcard/VCardUtils;->sUnAcceptableAsciiInV21WordSet:Ljava/util/Set;

    .line 602
    new-array v0, v7, [I

    fill-array-data v0, :array_1dc

    sput-object v0, Landroid/pim/vcard/VCardUtils;->sEscapeIndicatorsV30:[I

    .line 606
    new-array v0, v4, [I

    fill-array-data v0, :array_1e8

    sput-object v0, Landroid/pim/vcard/VCardUtils;->sEscapeIndicatorsV40:[I

    return-void

    .line 602
    nop

    :array_1dc
    .array-data 0x4
        0x3at 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data

    .line 606
    :array_1e8
    .array-data 0x4
        0x3bt 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 858
    return-void
.end method

.method public static varargs areAllEmpty([Ljava/lang/String;)Z
    .registers 7
    .parameter "values"

    .prologue
    const/4 v5, 0x1

    .line 713
    if-nez p0, :cond_5

    move v4, v5

    .line 722
    :goto_4
    return v4

    .line 717
    :cond_5
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_8
    if-ge v1, v2, :cond_17

    aget-object v3, v0, v1

    .line 718
    .local v3, value:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 719
    const/4 v4, 0x0

    goto :goto_4

    .line 717
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .end local v3           #value:Ljava/lang/String;
    :cond_17
    move v4, v5

    .line 722
    goto :goto_4
.end method

.method public static constructListFromValue(Ljava/lang/String;I)Ljava/util/List;
    .registers 11
    .parameter "value"
    .parameter "vcardType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 404
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 407
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v3, :cond_6e

    .line 408
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 409
    .local v1, ch:C
    const/16 v7, 0x5c

    if-ne v1, v7, :cond_59

    const/4 v7, 0x1

    sub-int v7, v3, v7

    if-ge v2, v7, :cond_59

    .line 410
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 412
    .local v5, nextCh:C
    invoke-static {p1}, Landroid/pim/vcard/VCardConfig;->isVersion40(I)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 413
    invoke-static {v5}, Landroid/pim/vcard/VCardParserImpl_V40;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v6

    .line 424
    .local v6, unescapedString:Ljava/lang/String;
    :goto_2e
    if-eqz v6, :cond_55

    .line 425
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    add-int/lit8 v2, v2, 0x1

    .line 407
    .end local v5           #nextCh:C
    .end local v6           #unescapedString:Ljava/lang/String;
    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 414
    .restart local v5       #nextCh:C
    :cond_38
    invoke-static {p1}, Landroid/pim/vcard/VCardConfig;->isVersion30(I)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 415
    invoke-static {v5}, Landroid/pim/vcard/VCardParserImpl_V30;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #unescapedString:Ljava/lang/String;
    goto :goto_2e

    .line 417
    .end local v6           #unescapedString:Ljava/lang/String;
    :cond_43
    invoke-static {p1}, Landroid/pim/vcard/VCardConfig;->isVersion21(I)Z

    move-result v7

    if-nez v7, :cond_50

    .line 419
    const-string v7, "VCardUtils"

    const-string v8, "Unknown vCard type"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_50
    invoke-static {v5}, Landroid/pim/vcard/VCardParserImpl_V21;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #unescapedString:Ljava/lang/String;
    goto :goto_2e

    .line 428
    :cond_55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 430
    .end local v5           #nextCh:C
    .end local v6           #unescapedString:Ljava/lang/String;
    :cond_59
    const/16 v7, 0x3b

    if-ne v1, v7, :cond_6a

    .line 431
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v0       #builder:Ljava/lang/StringBuilder;
    goto :goto_35

    .line 434
    :cond_6a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 437
    .end local v1           #ch:C
    :cond_6e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    return-object v4
.end method

.method public static constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "vcardType"
    .parameter "familyName"
    .parameter "middleName"
    .parameter "givenName"

    .prologue
    const/4 v4, 0x0

    .line 364
    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/pim/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .parameter "vcardType"
    .parameter "familyName"
    .parameter "middleName"
    .parameter "givenName"
    .parameter "prefix"
    .parameter "suffix"

    .prologue
    const/16 v8, 0x20

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .local v1, builder:Ljava/lang/StringBuilder;
    invoke-static {p0, p1, p2, p3}, Landroid/pim/vcard/VCardUtils;->sortNameElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 373
    .local v5, nameList:[Ljava/lang/String;
    const/4 v2, 0x1

    .line 374
    .local v2, first:Z
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_16

    .line 375
    const/4 v2, 0x0

    .line 376
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    :cond_16
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_19
    if-ge v3, v4, :cond_30

    aget-object v6, v0, v3

    .line 379
    .local v6, namePart:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_29

    .line 380
    if-eqz v2, :cond_2c

    .line 381
    const/4 v2, 0x0

    .line 385
    :goto_26
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 383
    :cond_2c
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 388
    .end local v6           #namePart:Ljava/lang/String;
    :cond_30
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3e

    .line 389
    if-nez v2, :cond_3b

    .line 390
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 392
    :cond_3b
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    :cond_3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static containsOnlyAlphaDigitHyphen(Ljava/util/Collection;)Z
    .registers 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, values:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v13, 0x1

    .line 523
    if-nez p0, :cond_5

    move v12, v13

    .line 548
    :goto_4
    return v12

    .line 526
    :cond_5
    const/16 v11, 0x41

    .line 527
    .local v11, upperAlphabetFirst:I
    const/16 v10, 0x5b

    .line 528
    .local v10, upperAlphabetAfterLast:I
    const/16 v8, 0x61

    .line 529
    .local v8, lowerAlphabetFirst:I
    const/16 v7, 0x7b

    .line 530
    .local v7, lowerAlphabetAfterLast:I
    const/16 v2, 0x30

    .line 531
    .local v2, digitFirst:I
    const/16 v1, 0x3a

    .line 532
    .local v1, digitAfterLast:I
    const/16 v3, 0x2d

    .line 533
    .local v3, hyphen:I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_57

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 534
    .local v9, str:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_17

    .line 537
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    .line 538
    .local v6, length:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2e
    if-ge v4, v6, :cond_17

    .line 539
    invoke-virtual {v9, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 540
    .local v0, codepoint:I
    const/16 v12, 0x61

    if-gt v12, v0, :cond_3c

    const/16 v12, 0x7b

    if-lt v0, v12, :cond_52

    :cond_3c
    const/16 v12, 0x41

    if-gt v12, v0, :cond_44

    const/16 v12, 0x5b

    if-lt v0, v12, :cond_52

    :cond_44
    const/16 v12, 0x30

    if-gt v12, v0, :cond_4c

    const/16 v12, 0x3a

    if-lt v0, v12, :cond_52

    :cond_4c
    const/16 v12, 0x2d

    if-eq v0, v12, :cond_52

    .line 544
    const/4 v12, 0x0

    goto :goto_4

    .line 538
    :cond_52
    invoke-virtual {v9, v4, v13}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v4

    goto :goto_2e

    .end local v0           #codepoint:I
    .end local v4           #i:I
    .end local v6           #length:I
    .end local v9           #str:Ljava/lang/String;
    :cond_57
    move v12, v13

    .line 548
    goto :goto_4
.end method

.method public static varargs containsOnlyAlphaDigitHyphen([Ljava/lang/String;)Z
    .registers 2
    .parameter "values"

    .prologue
    .line 516
    if-nez p0, :cond_4

    .line 517
    const/4 v0, 0x1

    .line 519
    :goto_3
    return v0

    :cond_4
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/pim/vcard/VCardUtils;->containsOnlyAlphaDigitHyphen(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_3
.end method

.method public static containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, values:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v8, 0x1

    .line 480
    if-nez p0, :cond_5

    move v7, v8

    .line 497
    :goto_4
    return v7

    .line 483
    :cond_5
    const/16 v0, 0x20

    .line 484
    .local v0, asciiFirst:I
    const/16 v1, 0x7e

    .line 485
    .local v1, asciiLast:I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_39

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 486
    .local v6, value:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 489
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    .line 490
    .local v5, length:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_24
    if-ge v3, v5, :cond_d

    .line 491
    invoke-virtual {v6, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 492
    .local v2, c:I
    const/16 v7, 0x20

    if-gt v7, v2, :cond_32

    const/16 v7, 0x7e

    if-le v2, v7, :cond_34

    .line 493
    :cond_32
    const/4 v7, 0x0

    goto :goto_4

    .line 490
    :cond_34
    invoke-virtual {v6, v3, v8}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v3

    goto :goto_24

    .end local v2           #c:I
    .end local v3           #i:I
    .end local v5           #length:I
    .end local v6           #value:Ljava/lang/String;
    :cond_39
    move v7, v8

    .line 497
    goto :goto_4
.end method

.method public static varargs containsOnlyNonCrLfPrintableAscii([Ljava/lang/String;)Z
    .registers 2
    .parameter "values"

    .prologue
    .line 473
    if-nez p0, :cond_4

    .line 474
    const/4 v0, 0x1

    .line 476
    :goto_3
    return v0

    :cond_4
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/pim/vcard/VCardUtils;->containsOnlyNonCrLfPrintableAscii(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_3
.end method

.method public static containsOnlyPrintableAscii(Ljava/util/Collection;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, values:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 449
    if-nez p0, :cond_5

    move v2, v3

    .line 460
    :goto_4
    return v2

    .line 452
    :cond_5
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 453
    .local v1, value:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 456
    invoke-static {v1}, Landroid/text/TextUtils;->isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 457
    const/4 v2, 0x0

    goto :goto_4

    .end local v1           #value:Ljava/lang/String;
    :cond_23
    move v2, v3

    .line 460
    goto :goto_4
.end method

.method public static varargs containsOnlyPrintableAscii([Ljava/lang/String;)Z
    .registers 2
    .parameter "values"

    .prologue
    .line 442
    if-nez p0, :cond_4

    .line 443
    const/4 v0, 0x1

    .line 445
    :goto_3
    return v0

    :cond_4
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/pim/vcard/VCardUtils;->containsOnlyPrintableAscii(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_3
.end method

.method public static containsOnlyWhiteSpaces(Ljava/util/Collection;)Z
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, values:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 559
    if-nez p0, :cond_5

    move v4, v5

    .line 573
    :goto_4
    return v4

    .line 562
    :cond_5
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 563
    .local v3, str:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 566
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 567
    .local v2, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_20
    if-ge v0, v2, :cond_9

    .line 568
    invoke-virtual {v3, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 569
    const/4 v4, 0x0

    goto :goto_4

    .line 567
    :cond_2e
    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v0

    goto :goto_20

    .end local v0           #i:I
    .end local v2           #length:I
    .end local v3           #str:Ljava/lang/String;
    :cond_33
    move v4, v5

    .line 573
    goto :goto_4
.end method

.method public static varargs containsOnlyWhiteSpaces([Ljava/lang/String;)Z
    .registers 2
    .parameter "values"

    .prologue
    .line 552
    if-nez p0, :cond_4

    .line 553
    const/4 v0, 0x1

    .line 555
    :goto_3
    return v0

    :cond_4
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/pim/vcard/VCardUtils;->containsOnlyWhiteSpaces(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_3
.end method

.method public static final convertStringCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "originalString"
    .parameter "sourceCharset"
    .parameter "targetCharset"

    .prologue
    .line 838
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v4, p0

    .line 851
    :goto_7
    return-object v4

    .line 841
    :cond_8
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 842
    .local v2, charset:Ljava/nio/charset/Charset;
    invoke-virtual {v2, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 845
    .local v0, byteBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v1, v4, [B

    .line 846
    .local v1, bytes:[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 848
    :try_start_19
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_19 .. :try_end_1e} :catch_1f

    goto :goto_7

    .line 849
    :catch_1f
    move-exception v4

    move-object v3, v4

    .line 850
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    const-string v4, "VCardUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to encode: charset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const/4 v4, 0x0

    goto :goto_7
.end method

.method public static final getAppropriateParser(I)Landroid/pim/vcard/VCardParser;
    .registers 3
    .parameter "vcardType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 825
    invoke-static {p0}, Landroid/pim/vcard/VCardConfig;->isVersion21(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 826
    new-instance v0, Landroid/pim/vcard/VCardParser_V21;

    invoke-direct {v0}, Landroid/pim/vcard/VCardParser_V21;-><init>()V

    .line 830
    :goto_b
    return-object v0

    .line 827
    :cond_c
    invoke-static {p0}, Landroid/pim/vcard/VCardConfig;->isVersion30(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 828
    new-instance v0, Landroid/pim/vcard/VCardParser_V30;

    invoke-direct {v0}, Landroid/pim/vcard/VCardParser_V30;-><init>()V

    goto :goto_b

    .line 829
    :cond_18
    invoke-static {p0}, Landroid/pim/vcard/VCardConfig;->isVersion40(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 830
    new-instance v0, Landroid/pim/vcard/VCardParser_V40;

    invoke-direct {v0}, Landroid/pim/vcard/VCardParser_V40;-><init>()V

    goto :goto_b

    .line 832
    :cond_24
    new-instance v0, Landroid/pim/vcard/exception/VCardException;

    const-string v1, "Version is not specified"

    invoke-direct {v0, v1}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getPhoneNumberFormat(I)I
    .registers 2
    .parameter "vcardType"

    .prologue
    .line 254
    invoke-static {p0}, Landroid/pim/vcard/VCardConfig;->isJapaneseDevice(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 255
    const/4 v0, 0x2

    .line 257
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static getPhoneTypeFromStrings(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;
    .registers 15
    .parameter
    .parameter "number"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p0, types:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v12, 0x1

    .line 121
    if-nez p1, :cond_5

    .line 122
    const-string p1, ""

    .line 124
    :cond_5
    const/4 v7, -0x1

    .line 125
    .local v7, type:I
    const/4 v5, 0x0

    .line 126
    .local v5, label:Ljava/lang/String;
    const/4 v4, 0x0

    .line 127
    .local v4, isFax:Z
    const/4 v3, 0x0

    .line 128
    .local v3, isCell:Z
    const/4 v0, 0x0

    .line 130
    .local v0, hasPref:Z
    if-eqz p0, :cond_84

    .line 131
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_84

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 132
    .local v9, typeString:Ljava/lang/String;
    move-object v10, v9

    .line 133
    .local v10, typeStringOrigin:Ljava/lang/String;
    if-eqz v9, :cond_10

    .line 136
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    .line 137
    const-string v11, "PREF"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2d

    .line 138
    const/4 v0, 0x1

    goto :goto_10

    .line 139
    :cond_2d
    const-string v11, "FAX"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_37

    .line 140
    const/4 v4, 0x1

    goto :goto_10

    .line 141
    :cond_37
    const-string v11, "CELL"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_41

    .line 142
    const/4 v3, 0x1

    goto :goto_10

    .line 144
    :cond_41
    const-string v11, "X-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_50

    if-gez v7, :cond_50

    .line 145
    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 147
    :cond_50
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_10

    .line 150
    sget-object v11, Landroid/pim/vcard/VCardUtils;->sKnownPhoneTypeMap_StoI:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 151
    .local v6, tmp:Ljava/lang/Integer;
    if-eqz v6, :cond_7f

    .line 152
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 159
    .local v8, typeCandidate:I
    const-string v11, "@"

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 160
    .local v2, indexOfAt:I
    const/4 v11, 0x6

    if-ne v8, v11, :cond_76

    if-lez v2, :cond_76

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v12

    if-lt v2, v11, :cond_7a

    :cond_76
    if-ltz v7, :cond_7a

    if-nez v7, :cond_10

    .line 164
    :cond_7a
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_10

    .line 166
    .end local v2           #indexOfAt:I
    .end local v8           #typeCandidate:I
    :cond_7f
    if-gez v7, :cond_10

    .line 167
    const/4 v7, 0x0

    .line 168
    move-object v5, v10

    goto :goto_10

    .line 173
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v6           #tmp:Ljava/lang/Integer;
    .end local v9           #typeString:Ljava/lang/String;
    .end local v10           #typeStringOrigin:Ljava/lang/String;
    :cond_84
    if-gez v7, :cond_8a

    .line 174
    if-eqz v0, :cond_96

    .line 175
    const/16 v7, 0xc

    .line 182
    :cond_8a
    :goto_8a
    if-eqz v4, :cond_8f

    .line 183
    if-ne v7, v12, :cond_98

    .line 184
    const/4 v7, 0x5

    .line 192
    :cond_8f
    :goto_8f
    if-eqz v3, :cond_92

    .line 193
    const/4 v7, 0x2

    .line 196
    :cond_92
    if-nez v7, :cond_a3

    move-object v11, v5

    .line 199
    :goto_95
    return-object v11

    .line 178
    :cond_96
    const/4 v7, 0x1

    goto :goto_8a

    .line 185
    :cond_98
    const/4 v11, 0x3

    if-ne v7, v11, :cond_9d

    .line 186
    const/4 v7, 0x4

    goto :goto_8f

    .line 187
    :cond_9d
    const/4 v11, 0x7

    if-ne v7, v11, :cond_8f

    .line 188
    const/16 v7, 0xd

    goto :goto_8f

    .line 199
    :cond_a3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_95
.end method

.method public static getPhoneTypeString(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 2
    .parameter "type"

    .prologue
    .line 112
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownPhoneTypesMap_ItoS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getPropertyNameForIm(I)Ljava/lang/String;
    .registers 3
    .parameter "protocol"

    .prologue
    .line 216
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sKnownImPropNameMap_ItoS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static guessImageType([B)Ljava/lang/String;
    .registers 8
    .parameter "input"

    .prologue
    const/16 v6, 0x47

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 690
    if-nez p0, :cond_a

    .line 691
    const/4 v0, 0x0

    .line 705
    :goto_9
    return-object v0

    .line 693
    :cond_a
    array-length v0, p0

    if-lt v0, v5, :cond_20

    aget-byte v0, p0, v2

    if-ne v0, v6, :cond_20

    aget-byte v0, p0, v3

    const/16 v1, 0x49

    if-ne v0, v1, :cond_20

    aget-byte v0, p0, v4

    const/16 v1, 0x46

    if-ne v0, v1, :cond_20

    .line 694
    const-string v0, "GIF"

    goto :goto_9

    .line 695
    :cond_20
    array-length v0, p0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3d

    aget-byte v0, p0, v2

    const/16 v1, -0x77

    if-ne v0, v1, :cond_3d

    aget-byte v0, p0, v3

    const/16 v1, 0x50

    if-ne v0, v1, :cond_3d

    aget-byte v0, p0, v4

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_3d

    aget-byte v0, p0, v5

    if-ne v0, v6, :cond_3d

    .line 700
    const-string v0, "PNG"

    goto :goto_9

    .line 701
    :cond_3d
    array-length v0, p0

    if-lt v0, v4, :cond_4e

    aget-byte v0, p0, v2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4e

    aget-byte v0, p0, v3

    const/16 v1, -0x28

    if-ne v0, v1, :cond_4e

    .line 703
    const-string v0, "JPEG"

    goto :goto_9

    .line 705
    :cond_4e
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static insertStructuredPostalDataUsingContactsStruct(ILandroid/content/ContentProviderOperation$Builder;Landroid/pim/vcard/VCardEntry$PostalData;)V
    .registers 7
    .parameter "vcardType"
    .parameter "builder"
    .parameter "postalData"

    .prologue
    const-string v3, "data4"

    .line 273
    const-string/jumbo v1, "raw_contact_id"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 274
    const-string/jumbo v1, "mimetype"

    const-string/jumbo v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 276
    const-string v1, "data2"

    iget v2, p2, Landroid/pim/vcard/VCardEntry$PostalData;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 277
    iget v1, p2, Landroid/pim/vcard/VCardEntry$PostalData;->type:I

    if-nez v1, :cond_28

    .line 278
    const-string v1, "data3"

    iget-object v2, p2, Landroid/pim/vcard/VCardEntry$PostalData;->label:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 282
    :cond_28
    iget-object v1, p2, Landroid/pim/vcard/VCardEntry$PostalData;->street:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 283
    iget-object v1, p2, Landroid/pim/vcard/VCardEntry$PostalData;->extendedAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 284
    const/4 v0, 0x0

    .line 295
    .local v0, streetString:Ljava/lang/String;
    :goto_39
    const-string v1, "data5"

    iget-object v2, p2, Landroid/pim/vcard/VCardEntry$PostalData;->pobox:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 296
    const-string v1, "SC-02C"

    const-string v2, "SGH-I777"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 298
    const-string v1, "data4"

    iget-object v1, p2, Landroid/pim/vcard/VCardEntry$PostalData;->street:Ljava/lang/String;

    invoke-virtual {p1, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 299
    const-string v1, "data6"

    iget-object v2, p2, Landroid/pim/vcard/VCardEntry$PostalData;->extendedAddress:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 303
    :goto_58
    const-string v1, "data7"

    iget-object v2, p2, Landroid/pim/vcard/VCardEntry$PostalData;->localty:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 304
    const-string v1, "data8"

    iget-object v2, p2, Landroid/pim/vcard/VCardEntry$PostalData;->region:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 305
    const-string v1, "data9"

    iget-object v2, p2, Landroid/pim/vcard/VCardEntry$PostalData;->postalCode:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 306
    const-string v1, "data10"

    iget-object v2, p2, Landroid/pim/vcard/VCardEntry$PostalData;->country:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 308
    const-string v1, "data1"

    invoke-virtual {p2, p0}, Landroid/pim/vcard/VCardEntry$PostalData;->getFormattedAddress(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 310
    iget-boolean v1, p2, Landroid/pim/vcard/VCardEntry$PostalData;->isPrimary:Z

    if-eqz v1, :cond_8b

    .line 311
    const-string v1, "is_primary"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 313
    :cond_8b
    return-void

    .line 286
    .end local v0           #streetString:Ljava/lang/String;
    :cond_8c
    iget-object v0, p2, Landroid/pim/vcard/VCardEntry$PostalData;->extendedAddress:Ljava/lang/String;

    .restart local v0       #streetString:Ljava/lang/String;
    goto :goto_39

    .line 289
    .end local v0           #streetString:Ljava/lang/String;
    :cond_8f
    iget-object v1, p2, Landroid/pim/vcard/VCardEntry$PostalData;->extendedAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 290
    iget-object v0, p2, Landroid/pim/vcard/VCardEntry$PostalData;->street:Ljava/lang/String;

    .restart local v0       #streetString:Ljava/lang/String;
    goto :goto_39

    .line 292
    .end local v0           #streetString:Ljava/lang/String;
    :cond_9a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Landroid/pim/vcard/VCardEntry$PostalData;->street:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/pim/vcard/VCardEntry$PostalData;->extendedAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #streetString:Ljava/lang/String;
    goto :goto_39

    .line 301
    :cond_b6
    const-string v1, "data4"

    invoke-virtual {p1, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_58
.end method

.method public static insertStructuredPostalDataUsingContactsStruct(ILandroid/content/ContentProviderOperation$Builder;Landroid/pim/vcard/VCardEntry$PostalData;I)V
    .registers 8
    .parameter "vcardType"
    .parameter "builder"
    .parameter "postalData"
    .parameter "backRef"

    .prologue
    const-string v3, "data4"

    .line 319
    const-string/jumbo v1, "raw_contact_id"

    invoke-virtual {p1, v1, p3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 320
    const-string/jumbo v1, "mimetype"

    const-string/jumbo v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 322
    const-string v1, "data2"

    iget v2, p2, Landroid/pim/vcard/VCardEntry$PostalData;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 323
    iget v1, p2, Landroid/pim/vcard/VCardEntry$PostalData;->type:I

    if-nez v1, :cond_27

    .line 324
    const-string v1, "data3"

    iget-object v2, p2, Landroid/pim/vcard/VCardEntry$PostalData;->label:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 328
    :cond_27
    iget-object v1, p2, Landroid/pim/vcard/VCardEntry$PostalData;->street:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 329
    iget-object v1, p2, Landroid/pim/vcard/VCardEntry$PostalData;->extendedAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 330
    const/4 v0, 0x0

    .line 341
    .local v0, streetString:Ljava/lang/String;
    :goto_38
    const-string v1, "data5"

    iget-object v2, p2, Landroid/pim/vcard/VCardEntry$PostalData;->pobox:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 342
    const-string v1, "SC-02C"

    const-string v2, "SGH-I777"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 344
    const-string v1, "data4"

    iget-object v1, p2, Landroid/pim/vcard/VCardEntry$PostalData;->street:Ljava/lang/String;

    invoke-virtual {p1, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 345
    const-string v1, "data6"

    iget-object v2, p2, Landroid/pim/vcard/VCardEntry$PostalData;->extendedAddress:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 349
    :goto_57
    const-string v1, "data7"

    iget-object v2, p2, Landroid/pim/vcard/VCardEntry$PostalData;->localty:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 350
    const-string v1, "data8"

    iget-object v2, p2, Landroid/pim/vcard/VCardEntry$PostalData;->region:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 351
    const-string v1, "data9"

    iget-object v2, p2, Landroid/pim/vcard/VCardEntry$PostalData;->postalCode:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 352
    const-string v1, "data10"

    iget-object v2, p2, Landroid/pim/vcard/VCardEntry$PostalData;->country:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 354
    const-string v1, "data1"

    invoke-virtual {p2, p0}, Landroid/pim/vcard/VCardEntry$PostalData;->getFormattedAddress(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 356
    iget-boolean v1, p2, Landroid/pim/vcard/VCardEntry$PostalData;->isPrimary:Z

    if-eqz v1, :cond_8a

    .line 357
    const-string v1, "is_primary"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 359
    :cond_8a
    return-void

    .line 332
    .end local v0           #streetString:Ljava/lang/String;
    :cond_8b
    iget-object v0, p2, Landroid/pim/vcard/VCardEntry$PostalData;->extendedAddress:Ljava/lang/String;

    .restart local v0       #streetString:Ljava/lang/String;
    goto :goto_38

    .line 335
    .end local v0           #streetString:Ljava/lang/String;
    :cond_8e
    iget-object v1, p2, Landroid/pim/vcard/VCardEntry$PostalData;->extendedAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_99

    .line 336
    iget-object v0, p2, Landroid/pim/vcard/VCardEntry$PostalData;->street:Ljava/lang/String;

    .restart local v0       #streetString:Ljava/lang/String;
    goto :goto_38

    .line 338
    .end local v0           #streetString:Ljava/lang/String;
    :cond_99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Landroid/pim/vcard/VCardEntry$PostalData;->street:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/pim/vcard/VCardEntry$PostalData;->extendedAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #streetString:Ljava/lang/String;
    goto :goto_38

    .line 347
    :cond_b5
    const-string v1, "data4"

    invoke-virtual {p1, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_57
.end method

.method public static isMobilePhoneLabel(Ljava/lang/String;)Z
    .registers 2
    .parameter "label"

    .prologue
    .line 208
    const-string v0, "_AUTO_CELL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Landroid/pim/vcard/VCardUtils;->sMobilePhoneLabelSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static isV21Word(Ljava/lang/String;)Z
    .registers 9
    .parameter "value"

    .prologue
    const/4 v7, 0x1

    .line 586
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v5, v7

    .line 599
    :goto_8
    return v5

    .line 589
    :cond_9
    const/16 v0, 0x20

    .line 590
    .local v0, asciiFirst:I
    const/16 v1, 0x7e

    .line 591
    .local v1, asciiLast:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 592
    .local v4, length:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_12
    if-ge v3, v4, :cond_34

    .line 593
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 594
    .local v2, c:I
    const/16 v5, 0x20

    if-gt v5, v2, :cond_2d

    const/16 v5, 0x7e

    if-gt v2, v5, :cond_2d

    sget-object v5, Landroid/pim/vcard/VCardUtils;->sUnAcceptableAsciiInV21WordSet:Ljava/util/Set;

    int-to-char v6, v2

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 596
    :cond_2d
    const/4 v5, 0x0

    goto :goto_8

    .line 592
    :cond_2f
    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v3

    goto :goto_12

    .end local v2           #c:I
    :cond_34
    move v5, v7

    .line 599
    goto :goto_8
.end method

.method public static isValidInV21ButUnknownToContactsPhoteType(Ljava/lang/String;)Z
    .registers 2
    .parameter "label"

    .prologue
    .line 212
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sPhoneTypesUnknownToContactsSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static parseQuotedPrintable(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "value"
    .parameter "strictLineBreaking"
    .parameter "sourceCharset"
    .parameter "targetCharset"

    .prologue
    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 738
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 739
    .local v3, length:I
    const/4 v1, 0x0

    .local v1, i:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_b
    if-ge v2, v3, :cond_36

    .line 740
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 741
    .local v1, ch:C
    const/16 v4, 0x3d

    if-ne v1, v4, :cond_31

    const/4 v4, 0x1

    sub-int v4, v3, v4

    if-ge v2, v4, :cond_31

    .line 742
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 743
    .local v4, nextCh:C
    const/16 v5, 0x20

    if-eq v4, v5, :cond_28

    const/16 v5, 0x9

    if-ne v4, v5, :cond_31

    .line 744
    :cond_28
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 745
    add-int/lit8 v1, v2, 0x1

    .line 739
    .end local v2           #i:I
    .end local v4           #nextCh:C
    .local v1, i:I
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_b

    .line 749
    .local v1, ch:C
    :cond_31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    .end local v2           #i:I
    .local v1, i:I
    goto :goto_2d

    .line 751
    .end local v1           #i:I
    .restart local v2       #i:I
    :cond_36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 755
    .local v3, quotedPrintable:Ljava/lang/String;
    if-eqz p1, :cond_67

    .line 756
    const-string p0, "\r\n"

    .end local p0
    invoke-virtual {v3, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 786
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v2           #i:I
    .end local p1
    .local p0, lines:[Ljava/lang/String;
    :goto_42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 787
    .local p1, builder:Ljava/lang/StringBuilder;
    move-object p0, p0

    .local p0, arr$:[Ljava/lang/String;
    array-length v1, p0

    .local v1, len$:I
    const/4 v0, 0x0

    .end local v3           #quotedPrintable:Ljava/lang/String;
    .local v0, i$:I
    :goto_4a
    if-ge v0, v1, :cond_d1

    aget-object v2, p0, v0

    .line 788
    .local v2, line:Ljava/lang/String;
    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 789
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 791
    :cond_61
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 758
    .end local v1           #len$:I
    .local v0, builder:Ljava/lang/StringBuilder;
    .local v2, i:I
    .restart local v3       #quotedPrintable:Ljava/lang/String;
    .local p0, value:Ljava/lang/String;
    .local p1, strictLineBreaking:Z
    :cond_67
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0           #value:Ljava/lang/String;
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 759
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .local p0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 760
    .local v1, length:I
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #i:I
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 761
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 p1, 0x0

    .local p1, i:I
    move v0, p1

    .end local p1           #i:I
    .local v0, i:I
    :goto_77
    if-ge v0, v1, :cond_b9

    .line 762
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 763
    .local p1, ch:C
    const/16 v4, 0xa

    if-ne p1, v4, :cond_92

    .line 764
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #builder:Ljava/lang/StringBuilder;
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .restart local p0       #builder:Ljava/lang/StringBuilder;
    move p1, v0

    .line 761
    .end local v0           #i:I
    .local p1, i:I
    :goto_8e
    add-int/lit8 p1, p1, 0x1

    move v0, p1

    .end local p1           #i:I
    .restart local v0       #i:I
    goto :goto_77

    .line 766
    .local p1, ch:C
    :cond_92
    const/16 v4, 0xd

    if-ne p1, v4, :cond_b4

    .line 767
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #builder:Ljava/lang/StringBuilder;
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 769
    .restart local p0       #builder:Ljava/lang/StringBuilder;
    const/4 p1, 0x1

    sub-int p1, v1, p1

    if-ge v0, p1, :cond_b7

    .line 770
    .end local p1           #ch:C
    add-int/lit8 p1, v0, 0x1

    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 771
    .local p1, nextCh:C
    const/16 v4, 0xa

    if-ne p1, v4, :cond_b7

    .line 772
    add-int/lit8 p1, v0, 0x1

    .end local v0           #i:I
    .local p1, i:I
    goto :goto_8e

    .line 776
    .restart local v0       #i:I
    .local p1, ch:C
    :cond_b4
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local p1           #ch:C
    :cond_b7
    move p1, v0

    .end local v0           #i:I
    .local p1, i:I
    goto :goto_8e

    .line 779
    .end local p1           #i:I
    .restart local v0       #i:I
    :cond_b9
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 780
    .local p0, lastLine:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_c6

    .line 781
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    :cond_c6
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    .end local p0           #lastLine:Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .local p0, lines:[Ljava/lang/String;
    goto/16 :goto_42

    .line 794
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #quotedPrintable:Ljava/lang/String;
    .local v0, i$:I
    .local v1, len$:I
    .local p0, arr$:[Ljava/lang/String;
    .local p1, builder:Ljava/lang/StringBuilder;
    :cond_d1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 795
    .local p1, rawString:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    .end local p0           #arr$:[Ljava/lang/String;
    if-eqz p0, :cond_e2

    .line 796
    const-string p0, "VCardUtils"

    const-string v0, "Given raw string is empty."

    .end local v0           #i$:I
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :cond_e2
    const/4 p0, 0x0

    .line 801
    .local p0, rawBytes:[B
    :try_start_e3
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_e6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e3 .. :try_end_e6} :catch_f4

    move-result-object p0

    move-object p1, p0

    .line 807
    .end local v1           #len$:I
    .end local p0           #rawBytes:[B
    .end local p2
    .local p1, rawBytes:[B
    :goto_e8
    const/4 p0, 0x0

    .line 809
    .local p0, decodedBytes:[B
    :try_start_e9
    invoke-static {p1}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->decodeQuotedPrintable([B)[B
    :try_end_ec
    .catch Lorg/apache/commons/codec/DecoderException; {:try_start_e9 .. :try_end_ec} :catch_113

    move-result-object p0

    .line 816
    :goto_ed
    :try_start_ed
    new-instance p1, Ljava/lang/String;

    .end local p1           #rawBytes:[B
    invoke-direct {p1, p0, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_f2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_ed .. :try_end_f2} :catch_11d

    move-object p0, p1

    .line 819
    .end local p0           #decodedBytes:[B
    :goto_f3
    return-object p0

    .line 802
    .restart local v1       #len$:I
    .local p0, rawBytes:[B
    .local p1, rawString:Ljava/lang/String;
    .restart local p2
    :catch_f4
    move-exception p0

    .line 803
    .local p0, e:Ljava/io/UnsupportedEncodingException;
    const-string p0, "VCardUtils"

    .end local p0           #e:Ljava/io/UnsupportedEncodingException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to decode: "

    .end local v1           #len$:I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .end local p2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .local p0, rawBytes:[B
    move-object p1, p0

    .end local p0           #rawBytes:[B
    .local p1, rawBytes:[B
    goto :goto_e8

    .line 810
    .local p0, decodedBytes:[B
    :catch_113
    move-exception p0

    .line 811
    .local p0, e:Lorg/apache/commons/codec/DecoderException;
    const-string p0, "VCardUtils"

    .end local p0           #e:Lorg/apache/commons/codec/DecoderException;
    const-string p2, "DecoderException is thrown."

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    move-object p0, p1

    .local p0, decodedBytes:[B
    goto :goto_ed

    .line 817
    .end local p1           #rawBytes:[B
    :catch_11d
    move-exception p1

    .line 818
    .local p1, e:Ljava/io/UnsupportedEncodingException;
    const-string p1, "VCardUtils"

    .end local p1           #e:Ljava/io/UnsupportedEncodingException;
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to encode: charset="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    move-object p0, p1

    goto :goto_f3
.end method

.method public static sortNameElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 10
    .parameter "vcardType"
    .parameter "familyName"
    .parameter "middleName"
    .parameter "givenName"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 221
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    .line 222
    .local v0, list:[Ljava/lang/String;
    invoke-static {p0}, Landroid/pim/vcard/VCardConfig;->getNameOrderType(I)I

    move-result v1

    .line 223
    .local v1, nameOrderType:I
    sparse-switch v1, :sswitch_data_3e

    .line 244
    aput-object p3, v0, v3

    .line 245
    aput-object p2, v0, v4

    .line 246
    aput-object p1, v0, v5

    .line 250
    :goto_13
    return-object v0

    .line 225
    :sswitch_14
    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-static {v2}, Landroid/pim/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    new-array v2, v4, [Ljava/lang/String;

    aput-object p3, v2, v3

    invoke-static {v2}, Landroid/pim/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 227
    aput-object p3, v0, v3

    .line 228
    aput-object p2, v0, v4

    .line 229
    aput-object p1, v0, v5

    goto :goto_13

    .line 231
    :cond_2f
    aput-object p1, v0, v3

    .line 232
    aput-object p2, v0, v4

    .line 233
    aput-object p3, v0, v5

    goto :goto_13

    .line 238
    :sswitch_36
    aput-object p2, v0, v3

    .line 239
    aput-object p3, v0, v4

    .line 240
    aput-object p1, v0, v5

    goto :goto_13

    .line 223
    nop

    :sswitch_data_3e
    .sparse-switch
        0x4 -> :sswitch_36
        0x8 -> :sswitch_14
    .end sparse-switch
.end method

.method public static toHalfWidthString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "orgString"

    .prologue
    .line 663
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 664
    const/4 v5, 0x0

    .line 679
    :goto_7
    return-object v5

    .line 666
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 667
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 668
    .local v4, length:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_12
    if-ge v3, v4, :cond_2b

    .line 671
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 672
    .local v1, ch:C
    invoke-static {v1}, Landroid/pim/vcard/JapaneseUtils;->tryGetHalfWidthText(C)Ljava/lang/String;

    move-result-object v2

    .line 673
    .local v2, halfWidthText:Ljava/lang/String;
    if-eqz v2, :cond_27

    .line 674
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    :goto_21
    const/4 v5, 0x1

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v3

    goto :goto_12

    .line 676
    :cond_27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_21

    .line 679
    .end local v1           #ch:C
    .end local v2           #halfWidthText:Ljava/lang/String;
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_7
.end method

.method private static toStringAsParamValue(Ljava/lang/String;[I)Ljava/lang/String;
    .registers 11
    .parameter "value"
    .parameter "escapeIndicators"

    .prologue
    .line 632
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 633
    const-string p0, ""

    .line 635
    :cond_8
    const/16 v0, 0x20

    .line 636
    .local v0, asciiFirst:I
    const/16 v0, 0x7e

    .line 637
    .local v0, asciiLast:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 638
    .local v1, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 639
    .local v7, length:I
    const/4 v2, 0x0

    .line 640
    .local v2, needQuote:Z
    const/4 v0, 0x0

    .local v0, i:I
    move v3, v0

    .end local v0           #i:I
    .local v3, i:I
    move v8, v2

    .end local v2           #needQuote:Z
    .local v8, needQuote:Z
    :goto_19
    if-ge v3, v7, :cond_42

    .line 641
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 642
    .local v2, codePoint:I
    const/16 v0, 0x20

    if-lt v2, v0, :cond_77

    const/16 v0, 0x22

    if-ne v2, v0, :cond_30

    move v2, v8

    .line 640
    .end local v8           #needQuote:Z
    .local v2, needQuote:Z
    :goto_28
    const/4 v0, 0x1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v0

    .end local v3           #i:I
    .restart local v0       #i:I
    move v3, v0

    .end local v0           #i:I
    .restart local v3       #i:I
    move v8, v2

    .end local v2           #needQuote:Z
    .restart local v8       #needQuote:Z
    goto :goto_19

    .line 646
    .local v2, codePoint:I
    :cond_30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 647
    move-object v0, p1

    .local v0, arr$:[I
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_36
    if-ge v4, v6, :cond_77

    aget v5, v0, v4

    .line 648
    .local v5, indicator:I
    if-ne v2, v5, :cond_3f

    .line 649
    const/4 v0, 0x1

    .end local v8           #needQuote:Z
    .local v0, needQuote:Z
    move v2, v0

    .line 650
    .end local v0           #needQuote:Z
    .local v2, needQuote:Z
    goto :goto_28

    .line 647
    .local v0, arr$:[I
    .local v2, codePoint:I
    .restart local v8       #needQuote:Z
    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    .line 655
    .end local v0           #arr$:[I
    .end local v2           #codePoint:I
    .end local v4           #i$:I
    .end local v5           #indicator:I
    .end local v6           #len$:I
    :cond_42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 656
    .local p0, result:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    .end local p1
    if-nez p1, :cond_58

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    invoke-static {p1}, Landroid/pim/vcard/VCardUtils;->containsOnlyWhiteSpaces([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5b

    :cond_58
    const-string p0, ""

    .end local p0           #result:Ljava/lang/String;
    :cond_5a
    :goto_5a
    return-object p0

    .restart local p0       #result:Ljava/lang/String;
    :cond_5b
    if-eqz v8, :cond_5a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #result:Ljava/lang/String;
    const/16 p1, 0x22

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_5a

    .restart local v2       #codePoint:I
    .local p0, value:Ljava/lang/String;
    .restart local p1
    :cond_77
    move v2, v8

    .end local v8           #needQuote:Z
    .local v2, needQuote:Z
    goto :goto_28
.end method

.method public static toStringAsV30ParamValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "value"

    .prologue
    .line 624
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sEscapeIndicatorsV30:[I

    invoke-static {p0, v0}, Landroid/pim/vcard/VCardUtils;->toStringAsParamValue(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringAsV40ParamValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "value"

    .prologue
    .line 628
    sget-object v0, Landroid/pim/vcard/VCardUtils;->sEscapeIndicatorsV40:[I

    invoke-static {p0, v0}, Landroid/pim/vcard/VCardUtils;->toStringAsParamValue(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
