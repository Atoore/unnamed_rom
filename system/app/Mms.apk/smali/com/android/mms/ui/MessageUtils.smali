.class public Lcom/android/mms/ui/MessageUtils;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# static fields
.field public static MESSAGE_MAX_RAWATTACH_COUNT:I

.field public static MESSAGE_MAX_SLIDE_NUM:I

.field private static final NUMERIC_CHARS_SUGAR:[C

.field private static final PART_13_CHARS_SJIS:[C

.field private static final PART_13_CHARS_UNICODE:[C

.field public static final SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

.field public static final WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

.field private static mDiscardDraftConfirmDialog:Landroid/app/AlertDialog;

.field private static numericSugarMap:Ljava/util/HashMap;

.field private static part13charsMap_SJIS:Ljava/util/HashMap;

.field private static part13charsMap_UNICIDE:Ljava/util/HashMap;

.field private static sLocalNumber:Ljava/lang/String;

.field private static final sRecipientAddress:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    .line 124
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "wap-push-messages"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    .line 130
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "group"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    .line 141
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->sRecipientAddress:Ljava/util/Map;

    .line 148
    const/16 v0, 0xb

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    .line 152
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->numericSugarMap:Ljava/util/HashMap;

    move v0, v4

    .line 155
    :goto_0
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 156
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->numericSugarMap:Ljava/util/HashMap;

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    aget-char v3, v3, v0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_0
    const/16 v0, 0x54

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->PART_13_CHARS_SJIS:[C

    .line 175
    const/16 v0, 0x53

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->PART_13_CHARS_UNICODE:[C

    .line 189
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/android/mms/ui/MessageUtils;->PART_13_CHARS_SJIS:[C

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->part13charsMap_SJIS:Ljava/util/HashMap;

    move v0, v4

    .line 192
    :goto_1
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->PART_13_CHARS_SJIS:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 193
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->part13charsMap_SJIS:Ljava/util/HashMap;

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->PART_13_CHARS_SJIS:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->PART_13_CHARS_SJIS:[C

    aget-char v3, v3, v0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 197
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/android/mms/ui/MessageUtils;->PART_13_CHARS_UNICODE:[C

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->part13charsMap_UNICIDE:Ljava/util/HashMap;

    .line 199
    sput v5, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_SLIDE_NUM:I

    .line 201
    sput v5, Lcom/android/mms/ui/MessageUtils;->MESSAGE_MAX_RAWATTACH_COUNT:I

    move v0, v4

    .line 206
    :goto_2
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->PART_13_CHARS_UNICODE:[C

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 207
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->part13charsMap_UNICIDE:Ljava/util/HashMap;

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->PART_13_CHARS_UNICODE:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->PART_13_CHARS_UNICODE:[C

    aget-char v3, v3, v0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 209
    :cond_2
    return-void

    .line 148
    :array_0
    .array-data 0x2
        0x2dt 0x0t
        0x2et 0x0t
        0x2ct 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x20t 0x0t
        0x2ft 0x0t
        0x5ct 0x0t
        0x2at 0x0t
        0x23t 0x0t
        0x2bt 0x0t
    .end array-data

    .line 161
    nop

    :array_1
    .array-data 0x2
        0x40t 0x87t
        0x41t 0x87t
        0x42t 0x87t
        0x43t 0x87t
        0x44t 0x87t
        0x45t 0x87t
        0x46t 0x87t
        0x47t 0x87t
        0x48t 0x87t
        0x49t 0x87t
        0x4at 0x87t
        0x4bt 0x87t
        0x4ct 0x87t
        0x4dt 0x87t
        0x4et 0x87t
        0x4ft 0x87t
        0x50t 0x87t
        0x51t 0x87t
        0x52t 0x87t
        0x53t 0x87t
        0x54t 0x87t
        0x55t 0x87t
        0x56t 0x87t
        0x57t 0x87t
        0x58t 0x87t
        0x59t 0x87t
        0x5at 0x87t
        0x5bt 0x87t
        0x5ct 0x87t
        0x5dt 0x87t
        0x5ft 0x87t
        0x60t 0x87t
        0x61t 0x87t
        0x62t 0x87t
        0x63t 0x87t
        0x64t 0x87t
        0x65t 0x87t
        0x66t 0x87t
        0x67t 0x87t
        0x68t 0x87t
        0x69t 0x87t
        0x6at 0x87t
        0x6bt 0x87t
        0x6ct 0x87t
        0x6dt 0x87t
        0x6et 0x87t
        0x6ft 0x87t
        0x70t 0x87t
        0x71t 0x87t
        0x72t 0x87t
        0x73t 0x87t
        0x74t 0x87t
        0x75t 0x87t
        0x7et 0x87t
        0x7ft 0x87t
        0x80t 0x87t
        0x81t 0x87t
        0x82t 0x87t
        0x83t 0x87t
        0x84t 0x87t
        0x85t 0x87t
        0x86t 0x87t
        0x87t 0x87t
        0x88t 0x87t
        0x89t 0x87t
        0x8at 0x87t
        0x8bt 0x87t
        0x8ct 0x87t
        0x8dt 0x87t
        0x8et 0x87t
        0x8ft 0x87t
        0xe0t 0x81t
        0xdft 0x81t
        0xe7t 0x81t
        0x93t 0x87t
        0x94t 0x87t
        0xe3t 0x81t
        0xdbt 0x81t
        0xdat 0x81t
        0x98t 0x87t
        0x99t 0x87t
        0xe6t 0x81t
        0xbft 0x81t
        0xbet 0x81t
    .end array-data

    .line 175
    :array_2
    .array-data 0x2
        0x60t 0x24t
        0x61t 0x24t
        0x62t 0x24t
        0x63t 0x24t
        0x64t 0x24t
        0x65t 0x24t
        0x66t 0x24t
        0x67t 0x24t
        0x68t 0x24t
        0x69t 0x24t
        0x6at 0x24t
        0x6bt 0x24t
        0x6ct 0x24t
        0x6dt 0x24t
        0x6et 0x24t
        0x6ft 0x24t
        0x70t 0x24t
        0x71t 0x24t
        0x72t 0x24t
        0x73t 0x24t
        0x60t 0x21t
        0x61t 0x21t
        0x62t 0x21t
        0x63t 0x21t
        0x64t 0x21t
        0x65t 0x21t
        0x66t 0x21t
        0x67t 0x21t
        0x68t 0x21t
        0x69t 0x21t
        0x49t 0x33t
        0x14t 0x33t
        0x22t 0x33t
        0x4dt 0x33t
        0x18t 0x33t
        0x27t 0x33t
        0x3t 0x33t
        0x36t 0x33t
        0x51t 0x33t
        0x57t 0x33t
        0xdt 0x33t
        0x26t 0x33t
        0x23t 0x33t
        0x2bt 0x33t
        0x4at 0x33t
        0x3bt 0x33t
        0x9ct 0x33t
        0x9dt 0x33t
        0x9et 0x33t
        0x8et 0x33t
        0x8ft 0x33t
        0xc4t 0x33t
        0xa1t 0x33t
        0x7bt 0x33t
        0x1dt 0x30t
        0x1ft 0x30t
        0x16t 0x21t
        0xcdt 0x33t
        0x21t 0x21t
        0xa4t 0x32t
        0xa5t 0x32t
        0xa6t 0x32t
        0xa7t 0x32t
        0xa8t 0x32t
        0x31t 0x32t
        0x32t 0x32t
        0x39t 0x32t
        0x7et 0x33t
        0x7dt 0x33t
        0x7ct 0x33t
        0x52t 0x22t
        0x61t 0x22t
        0x2bt 0x22t
        0x2et 0x22t
        0x11t 0x22t
        0x1at 0x22t
        0xa5t 0x22t
        0x20t 0x22t
        0x1ft 0x22t
        0xbft 0x22t
        0x35t 0x22t
        0x29t 0x22t
        0x2at 0x22t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    return-void
.end method

.method public static LanguageSize(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 2366
    const-string v0, "MessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System locale = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2367
    const-string v0, "de"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2368
    const/4 v0, 0x1

    .line 2440
    :goto_0
    return v0

    .line 2369
    :cond_0
    const-string v0, "ru"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2370
    const/4 v0, 0x2

    goto :goto_0

    .line 2371
    :cond_1
    const-string v0, "bg"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2372
    const/4 v0, 0x3

    goto :goto_0

    .line 2373
    :cond_2
    const-string v0, "pt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2374
    const/4 v0, 0x4

    goto :goto_0

    .line 2375
    :cond_3
    const-string v0, "ro"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2376
    const/4 v0, 0x5

    goto :goto_0

    .line 2377
    :cond_4
    const-string v0, "el"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2378
    const/4 v0, 0x6

    goto :goto_0

    .line 2379
    :cond_5
    const-string v0, "uk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2380
    const/4 v0, 0x7

    goto :goto_0

    .line 2381
    :cond_6
    const-string v0, "lt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2382
    const/16 v0, 0x8

    goto :goto_0

    .line 2383
    :cond_7
    const-string v0, "hu"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2384
    const/16 v0, 0x9

    goto :goto_0

    .line 2385
    :cond_8
    const-string v0, "cs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2386
    const/16 v0, 0xa

    goto :goto_0

    .line 2387
    :cond_9
    const-string v0, "es"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2388
    const/16 v0, 0xb

    goto :goto_0

    .line 2389
    :cond_a
    const-string v0, "fr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2390
    const/16 v0, 0xc

    goto :goto_0

    .line 2391
    :cond_b
    const-string v0, "it"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2392
    const/16 v0, 0xd

    goto :goto_0

    .line 2393
    :cond_c
    const-string v0, "sk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2394
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 2395
    :cond_d
    const-string v0, "et"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2396
    const/16 v0, 0xf

    goto/16 :goto_0

    .line 2397
    :cond_e
    const-string v0, "tr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2398
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 2399
    :cond_f
    const-string v0, "sr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2400
    const/16 v0, 0x11

    goto/16 :goto_0

    .line 2401
    :cond_10
    const-string v0, "nl"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2402
    const/16 v0, 0x12

    goto/16 :goto_0

    .line 2403
    :cond_11
    const-string v0, "hr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2404
    const/16 v0, 0x13

    goto/16 :goto_0

    .line 2405
    :cond_12
    const-string v0, "fi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2406
    const/16 v0, 0x14

    goto/16 :goto_0

    .line 2407
    :cond_13
    const-string v0, "da"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2408
    const/16 v0, 0x15

    goto/16 :goto_0

    .line 2409
    :cond_14
    const-string v0, "is"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2410
    const/16 v0, 0x16

    goto/16 :goto_0

    .line 2411
    :cond_15
    const-string v0, "ga"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2412
    const/16 v0, 0x17

    goto/16 :goto_0

    .line 2413
    :cond_16
    const-string v0, "kk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2414
    const/16 v0, 0x18

    goto/16 :goto_0

    .line 2415
    :cond_17
    const-string v0, "lv"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2416
    const/16 v0, 0x19

    goto/16 :goto_0

    .line 2417
    :cond_18
    const-string v0, "mk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2418
    const/16 v0, 0x1a

    goto/16 :goto_0

    .line 2419
    :cond_19
    const-string v0, "no"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2420
    const/16 v0, 0x1b

    goto/16 :goto_0

    .line 2421
    :cond_1a
    const-string v0, "pl"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2422
    const/16 v0, 0x1c

    goto/16 :goto_0

    .line 2423
    :cond_1b
    const-string v0, "sl"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2424
    const/16 v0, 0x1d

    goto/16 :goto_0

    .line 2425
    :cond_1c
    const-string v0, "sv"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2426
    const/16 v0, 0x1e

    goto/16 :goto_0

    .line 2427
    :cond_1d
    const-string v0, "ko"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2428
    const/16 v0, 0x1f

    goto/16 :goto_0

    .line 2429
    :cond_1e
    const-string v0, "vi"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2430
    const/16 v0, 0x20

    goto/16 :goto_0

    .line 2431
    :cond_1f
    const-string v0, "th"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2432
    const/16 v0, 0x21

    goto/16 :goto_0

    .line 2433
    :cond_20
    const-string v0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2434
    const/16 v0, 0x22

    goto/16 :goto_0

    .line 2435
    :cond_21
    const-string v0, "id"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2436
    const/16 v0, 0x23

    goto/16 :goto_0

    .line 2437
    :cond_22
    const-string v0, "ja"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2438
    const/16 v0, 0x24

    goto/16 :goto_0

    .line 2440
    :cond_23
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public static canAddToContacts(Lcom/android/mms/data/Contact;)Z
    .locals 4
    .parameter "contact"

    .prologue
    const/4 v3, 0x0

    .line 1546
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1547
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1548
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1549
    .local v0, c:C
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isSpecialChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 1563
    .end local v0           #c:C
    :goto_0
    return v2

    .line 1553
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1554
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1555
    .restart local v0       #c:C
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isSpecialChar(C)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 1556
    goto :goto_0

    .line 1560
    .end local v0           #c:C
    :cond_1
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isValidMmsAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    .line 1561
    goto :goto_0

    .line 1563
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static confirmReadReportDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1310
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1311
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1312
    const v1, 0x7f0900de

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1313
    const v1, 0x7f0900df

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1314
    const v1, 0x7f090069

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1315
    const v1, 0x7f09006a

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1316
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1317
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1318
    return-void
.end method

.method public static convertCharToSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter

    .prologue
    const v11, 0xdfff

    const v10, 0xd800

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x20

    .line 2001
    const-string v0, "MessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[convertCharaterforNTT] msgText.length() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v8

    move v2, v7

    .line 2008
    :goto_0
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_c

    .line 2009
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2010
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v9

    if-ge v1, v4, :cond_0

    .line 2011
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :cond_0
    move v4, v8

    .line 2014
    :goto_1
    sget-object v5, Lcom/android/mms/ui/MessageUtils;->PART_13_CHARS_SJIS:[C

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 2015
    sget-object v5, Lcom/android/mms/ui/MessageUtils;->part13charsMap_SJIS:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    move v3, v7

    :cond_1
    move v4, v8

    .line 2020
    :goto_2
    sget-object v5, Lcom/android/mms/ui/MessageUtils;->PART_13_CHARS_UNICODE:[C

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 2021
    sget-object v5, Lcom/android/mms/ui/MessageUtils;->part13charsMap_UNICIDE:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_6

    move v3, v7

    .line 2027
    :cond_2
    const/16 v4, 0xd

    if-eq v3, v4, :cond_3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_4

    :cond_3
    move v3, v7

    .line 2032
    :cond_4
    if-gt v10, v3, :cond_8

    if-lt v11, v3, :cond_8

    if-gt v10, v2, :cond_8

    if-lt v11, v2, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v9

    if-ge v1, v4, :cond_8

    .line 2036
    const v4, 0xdbba

    if-ne v4, v3, :cond_9

    .line 2037
    const v4, 0xdf1a

    if-ne v4, v2, :cond_7

    .line 2038
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2039
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2040
    add-int/lit8 v1, v1, 0x1

    .line 2008
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2014
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2020
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2045
    :cond_7
    add-int/lit8 v1, v1, 0x1

    move v3, v7

    .line 2066
    :cond_8
    :goto_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2047
    :cond_9
    const v4, 0xdbb9

    if-ne v4, v3, :cond_b

    .line 2048
    const v4, 0xdd23

    if-ne v4, v2, :cond_a

    .line 2049
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2050
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2051
    add-int/lit8 v1, v1, 0x1

    .line 2052
    goto :goto_3

    .line 2056
    :cond_a
    add-int/lit8 v1, v1, 0x1

    move v3, v7

    goto :goto_4

    .line 2061
    :cond_b
    add-int/lit8 v1, v1, 0x1

    move v3, v7

    goto :goto_4

    .line 2068
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2069
    const-string v1, "MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[convertCharaterforNTT] stringBuilder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    return-object v0
.end method

.method public static createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 2452
    const/4 v0, 0x0

    .line 2453
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 2455
    .local v1, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v1, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2456
    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2477
    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2482
    :goto_0
    return-object v0

    .line 2473
    :catch_0
    move-exception v2

    .line 2477
    :try_start_2
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2478
    :catch_1
    move-exception v2

    goto :goto_0

    .line 2476
    :catchall_0
    move-exception v2

    .line 2477
    :try_start_3
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2480
    :goto_1
    throw v2

    .line 2478
    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v3

    goto :goto_1
.end method

.method private static extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "value"

    .prologue
    .line 1335
    if-eqz p1, :cond_0

    .line 1336
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    .line 1338
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;
    .locals 4
    .parameter "cursor"
    .parameter "columnRawBytes"
    .parameter "columnCharset"

    .prologue
    .line 1322
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1323
    .local v1, rawBytes:Ljava/lang/String;
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1325
    .local v0, charset:I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1326
    const-string v2, ""

    .line 1330
    :goto_0
    return-object v2

    .line 1327
    :cond_0
    if-nez v0, :cond_1

    move-object v2, v1

    .line 1328
    goto :goto_0

    .line 1330
    :cond_1
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static extractNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 1778
    const-string v0, ""

    .line 1781
    if-nez p0, :cond_1

    .line 1798
    :cond_0
    :goto_0
    return-object v0

    .line 1783
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1786
    const/16 v1, 0x3c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1787
    const/16 v2, 0x3e

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1789
    if-gez v1, :cond_3

    const/4 v1, 0x0

    .line 1790
    :goto_1
    if-gez v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1792
    :cond_2
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1789
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1794
    :catch_0
    move-exception v1

    .line 1795
    const-string v2, "MessageUtils"

    const-string v3, "Illegal name and number format!"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
    invoke-virtual {v1}, Ljava/lang/StringIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0
.end method

.method public static extractUris([Landroid/text/style/URLSpan;)Ljava/util/ArrayList;
    .locals 4
    .parameter "spans"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/text/style/URLSpan;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1343
    array-length v2, p0

    .line 1344
    .local v2, size:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1346
    .local v0, accumulator:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1347
    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1346
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1349
    :cond_0
    return-object v0
.end method

.method public static formatDate(J)Ljava/lang/String;
    .locals 10
    .parameter "when"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 665
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 666
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 667
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 668
    .local v3, year:I
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 669
    .local v2, month:I
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 671
    .local v1, day:I
    const-string v4, "%d/%02d/%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static formatDateTime2(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "when"
    .parameter "formatFlags"

    .prologue
    .line 680
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 681
    .local v0, result:Ljava/lang/StringBuffer;
    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    move v2, v1

    .line 682
    .local v2, showTime:Z
    :goto_0
    and-int/lit8 v1, p3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    move v3, v1

    .line 683
    .local v3, showYear:Z
    :goto_1
    and-int/lit8 p3, p3, 0x10

    const/16 v1, 0x10

    if-ne p3, v1, :cond_3

    .end local p3
    const/4 p3, 0x1

    move v1, p3

    .line 684
    .local v1, showDate:Z
    :goto_2
    const p3, 0x80b00

    .line 688
    .local p3, baseFormatFlags:I
    if-eqz v2, :cond_0

    .line 689
    or-int/lit8 p3, p3, 0x1

    invoke-static {p0, p1, p2, p3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .end local p3           #baseFormatFlags:I
    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 694
    :cond_0
    if-nez v3, :cond_4

    if-nez v1, :cond_4

    .line 695
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 750
    .end local v2           #showTime:Z
    .end local p0
    .end local p1
    :goto_3
    return-object p0

    .line 681
    .end local v1           #showDate:Z
    .end local v3           #showYear:Z
    .restart local p0
    .restart local p1
    .local p3, formatFlags:I
    :cond_1
    const/4 v1, 0x0

    move v2, v1

    goto :goto_0

    .line 682
    .restart local v2       #showTime:Z
    :cond_2
    const/4 v1, 0x0

    move v3, v1

    goto :goto_1

    .line 683
    .end local p3           #formatFlags:I
    .restart local v3       #showYear:Z
    :cond_3
    const/4 p3, 0x0

    move v1, p3

    goto :goto_2

    .line 699
    .restart local v1       #showDate:Z
    :cond_4
    const/4 p3, 0x1

    if-ne p3, v2, :cond_5

    .line 700
    const-string p3, ", "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 703
    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    .line 704
    .local p3, cNow:Ljava/util/Calendar;
    invoke-virtual {p3, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 706
    const-string v2, ""

    .line 707
    .local v2, strY:Ljava/lang/String;
    const-string p2, ""

    .line 708
    .end local p1
    .local p2, strM:Ljava/lang/String;
    const-string p1, ""

    .line 710
    .local p1, strD:Ljava/lang/String;
    if-eqz v3, :cond_9

    .line 711
    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Ljava/util/Calendar;->get(I)I

    .end local v2           #strY:Ljava/lang/String;
    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #strY:Ljava/lang/String;
    move-object v4, v2

    .line 713
    .end local v2           #strY:Ljava/lang/String;
    .local v4, strY:Ljava/lang/String;
    :goto_4
    if-eqz v1, :cond_8

    .line 714
    const/4 p1, 0x2

    invoke-virtual {p3, p1}, Ljava/util/Calendar;->get(I)I

    .end local p1           #strD:Ljava/lang/String;
    move-result p1

    const/high16 p2, 0x1

    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    .end local p2           #strM:Ljava/lang/String;
    move-result-object p2

    .line 717
    .restart local p2       #strM:Ljava/lang/String;
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x5

    invoke-virtual {p3, v2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    .end local p3           #cNow:Ljava/util/Calendar;
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v2, 0x7f090215

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .restart local p1       #strD:Ljava/lang/String;
    move-object p3, p1

    .end local p1           #strD:Ljava/lang/String;
    .local p3, strD:Ljava/lang/String;
    move-object v2, p2

    .line 721
    .end local p2           #strM:Ljava/lang/String;
    .local v2, strM:Ljava/lang/String;
    :goto_5
    const-string p1, ""

    .line 722
    .local p1, delimeter:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object p2

    .line 724
    .local p2, order:[C
    const/4 p0, 0x0

    .local p0, i:I
    move v6, p0

    .end local p0           #i:I
    .local v6, i:I
    move-object p0, p1

    .end local p1           #delimeter:Ljava/lang/String;
    .local p0, delimeter:Ljava/lang/String;
    move p1, v6

    .end local v6           #i:I
    .local p1, i:I
    :goto_6
    array-length v5, p2

    if-ge p1, v5, :cond_7

    .line 725
    aget-char v5, p2, p1

    sparse-switch v5, :sswitch_data_0

    .line 724
    :cond_6
    :goto_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 727
    :sswitch_0
    if-eqz v3, :cond_6

    .line 728
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 729
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 730
    const-string p0, " "

    goto :goto_7

    .line 734
    :sswitch_1
    if-eqz v1, :cond_6

    .line 735
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 736
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 737
    const-string p0, " "

    goto :goto_7

    .line 741
    :sswitch_2
    if-eqz v1, :cond_6

    .line 742
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 743
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 744
    const-string p0, " "

    goto :goto_7

    .line 750
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    .end local v2           #strM:Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    .local p1, strD:Ljava/lang/String;
    .local p2, strM:Ljava/lang/String;
    .local p3, cNow:Ljava/util/Calendar;
    :cond_8
    move-object p3, p1

    .end local p1           #strD:Ljava/lang/String;
    .local p3, strD:Ljava/lang/String;
    move-object v2, p2

    .end local p2           #strM:Ljava/lang/String;
    .restart local v2       #strM:Ljava/lang/String;
    goto :goto_5

    .end local v4           #strY:Ljava/lang/String;
    .local v2, strY:Ljava/lang/String;
    .restart local p1       #strD:Ljava/lang/String;
    .restart local p2       #strM:Ljava/lang/String;
    .local p3, cNow:Ljava/util/Calendar;
    :cond_9
    move-object v4, v2

    .end local v2           #strY:Ljava/lang/String;
    .restart local v4       #strY:Ljava/lang/String;
    goto :goto_4

    .line 725
    nop

    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_1
        0x64 -> :sswitch_2
        0x79 -> :sswitch_0
    .end sparse-switch
.end method

.method public static formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "when"

    .prologue
    .line 628
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "when"
    .parameter "fullFormat"

    .prologue
    .line 632
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 633
    .local v2, then:Landroid/text/format/Time;
    invoke-virtual {v2, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 634
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 635
    .local v1, now:Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 639
    const v0, 0x80b00

    .line 643
    .local v0, format_flags:I
    iget v3, v2, Landroid/text/format/Time;->year:I

    iget v4, v1, Landroid/text/format/Time;->year:I

    if-eq v3, v4, :cond_1

    .line 644
    or-int/lit8 v0, v0, 0x14

    .line 656
    :goto_0
    if-eqz p3, :cond_0

    .line 657
    or-int/lit8 v0, v0, 0x11

    .line 660
    :cond_0
    invoke-static {p0, p1, p2, v0}, Lcom/android/mms/ui/MessageUtils;->formatDateTime2(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 645
    :cond_1
    iget v3, v2, Landroid/text/format/Time;->yearDay:I

    iget v4, v1, Landroid/text/format/Time;->yearDay:I

    if-eq v3, v4, :cond_2

    .line 647
    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 650
    :cond_2
    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getAttachmentType(Lcom/android/mms/model/SlideshowModel;)I
    .locals 6
    .parameter "model"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 593
    if-nez p0, :cond_0

    move v2, v3

    .line 624
    :goto_0
    return v2

    .line 597
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 598
    .local v0, numberOfSlides:I
    if-le v0, v4, :cond_1

    move v2, v5

    .line 599
    goto :goto_0

    .line 600
    :cond_1
    if-ne v0, v4, :cond_6

    .line 602
    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 603
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 604
    const/4 v2, 0x2

    goto :goto_0

    .line 607
    :cond_2
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v5

    .line 608
    goto :goto_0

    .line 611
    :cond_3
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 612
    const/4 v2, 0x3

    goto :goto_0

    .line 615
    :cond_4
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v4

    .line 616
    goto :goto_0

    .line 619
    :cond_5
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    .line 620
    goto :goto_0

    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_6
    move v2, v3

    .line 624
    goto :goto_0
.end method

.method public static getAvailableStorage()J
    .locals 7

    .prologue
    .line 2102
    const-string v0, "/data"

    .line 2103
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2104
    const-string v0, "MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Available Storage Size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static getCidTextIndex(Lcom/android/mms/model/SlideshowModel;)I
    .locals 9
    .parameter

    .prologue
    const/4 v6, 0x0

    const-string v8, "cid:"

    const-string v7, "Cid:"

    const-string v0, ""

    .line 2210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2211
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v6

    .line 2216
    :goto_0
    if-ge v2, v1, :cond_3

    .line 2217
    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    .line 2218
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v3

    .line 2219
    if-eqz v3, :cond_1

    .line 2220
    invoke-virtual {v3}, Lcom/android/mms/model/TextModel;->getSrc()Ljava/lang/String;

    move-result-object v3

    .line 2222
    const-string v4, "cid:"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2223
    const-string v4, "cid:"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 2228
    :cond_0
    :goto_1
    :try_start_0
    const-string v4, "text_"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".txt"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 2232
    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2216
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2224
    :cond_2
    const-string v4, "Cid:"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2225
    const-string v4, "Cid:"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 2229
    :catch_0
    move-exception v3

    move v3, v2

    .line 2230
    goto :goto_2

    .line 2236
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2238
    if-lez v1, :cond_6

    move v2, v6

    move v3, v6

    .line 2239
    :goto_3
    if-ge v2, v1, :cond_5

    .line 2240
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v3, v4, :cond_4

    .line 2241
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2239
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2244
    :cond_5
    add-int/lit8 v0, v3, 0x1

    .line 2246
    :goto_4
    return v0

    :cond_6
    move v0, v6

    goto :goto_4
.end method

.method public static getLocalNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1136
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1137
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    .line 1140
    :cond_0
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ILjava/lang/String;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "cursor"
    .parameter "size"
    .parameter "address"
    .parameter "msgItem"

    .prologue
    const/4 v3, 0x0

    .line 220
    if-nez p1, :cond_0

    .line 221
    const/4 v0, 0x0

    .line 236
    :goto_0
    return-object v0

    .line 222
    :cond_0
    const-string v0, "mms"

    iget-object v1, p4, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    iget v6, p4, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    .line 224
    .local v6, type:I
    packed-switch v6, :pswitch_data_0

    .line 231
    :pswitch_0
    const-string v0, "MessageUtils"

    const-string v1, "No details could be retrieved."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v0, ""

    goto :goto_0

    .line 226
    :pswitch_1
    invoke-static {p0, p1, v3, p3, p4}, Lcom/android/mms/ui/MessageUtils;->getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;ZLjava/lang/String;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 229
    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->getMultimediaMessageDetails(Landroid/content/Context;Landroid/database/Cursor;IZLjava/lang/String;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 236
    .end local v6           #type:I
    :cond_1
    invoke-static {p0, p1, v3, p3, p4}, Lcom/android/mms/ui/MessageUtils;->getTextMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ZLjava/lang/String;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static getMultimediaMessageDetails(Landroid/content/Context;Landroid/database/Cursor;IZLjava/lang/String;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 20
    .parameter "context"
    .parameter "cursor"
    .parameter "size"
    .parameter "isView"
    .parameter "address"
    .parameter "msgItem"

    .prologue
    .line 339
    const/4 v5, 0x0

    .line 340
    .local v5, type:I
    if-eqz p3, :cond_0

    .line 341
    const/4 v5, 0x1

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .end local v5           #type:I
    move-result v5

    .restart local v5       #type:I
    move v15, v5

    .line 345
    .end local v5           #type:I
    .local v15, type:I
    :goto_0
    const/16 v5, 0x82

    if-ne v15, v5, :cond_1

    .line 346
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;ZLjava/lang/String;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object p0

    .line 483
    .end local p0
    .end local p1
    .end local p3
    .end local p5
    :goto_1
    return-object p0

    .line 343
    .end local v15           #type:I
    .restart local v5       #type:I
    .restart local p0
    .restart local p1
    .restart local p3
    .restart local p5
    :cond_0
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    move v5, v0

    move v15, v5

    .end local v5           #type:I
    .restart local v15       #type:I
    goto :goto_0

    .line 349
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    .local v6, details:Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 351
    .local v13, res:Landroid/content/res/Resources;
    const-wide/16 v7, 0x0

    .line 352
    .local v7, id:J
    if-eqz p3, :cond_4

    .line 353
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    move-wide v8, v7

    .line 357
    .end local v7           #id:J
    .local v8, id:J
    :goto_2
    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 361
    .local v5, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v11

    check-cast v11, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    .local v11, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    const v5, 0x7f09009b

    invoke-virtual {v13, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local v5           #uri:Landroid/net/Uri;
    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    const/16 v5, 0x20

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 370
    const v5, 0x7f09009d

    invoke-virtual {v13, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    instance-of v5, v11, Lcom/google/android/mms/pdu/RetrieveConf;

    if-eqz v5, :cond_2

    .line 374
    move-object v0, v11

    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v5

    .line 375
    .local v5, from:Ljava/lang/String;
    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    const v7, 0x7f09009f

    invoke-virtual {v13, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 378
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .end local v5           #from:Ljava/lang/String;
    :goto_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    :cond_2
    const/16 v5, 0xa

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 384
    const v5, 0x7f0900a0

    invoke-virtual {v13, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    const/16 v5, 0x20

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 387
    if-nez p4, :cond_7

    .line 388
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object p4

    .line 389
    .local p4, to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    .local v14, sb:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 392
    .local v5, count:I
    if-eqz p4, :cond_a

    .line 393
    move-object/from16 p4, p4

    .local p4, arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object/from16 v0, p4

    array-length v0, v0

    move v10, v0

    .local v10, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_4
    if-ge v7, v10, :cond_6

    aget-object v12, p4, v7

    .line 394
    .local v12, recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-lez v5, :cond_3

    .line 395
    const-string v16, ", "

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    :cond_3
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v12

    .end local v12           #recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-static {v12}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    add-int/lit8 v5, v5, 0x1

    .line 393
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 355
    .end local v5           #count:I
    .end local v8           #id:J
    .end local v10           #len$:I
    .end local v11           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v14           #sb:Ljava/lang/StringBuilder;
    .local v7, id:J
    .local p4, address:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p5

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide v7, v0

    move-wide v8, v7

    .end local v7           #id:J
    .restart local v8       #id:J
    goto/16 :goto_2

    .line 362
    .local v5, uri:Landroid/net/Uri;
    :catch_0
    move-exception p1

    .line 363
    .local p1, e:Lcom/google/android/mms/MmsException;
    const-string p3, "MessageUtils"

    .end local p3
    new-instance p5, Ljava/lang/StringBuilder;

    .end local p5
    invoke-direct/range {p5 .. p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load the message: "

    .end local v6           #details:Ljava/lang/StringBuilder;
    move-object/from16 v0, p5

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    move-object/from16 v0, p5

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 364
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .end local p0
    const p1, 0x7f090099

    invoke-virtual/range {p0 .. p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p1           #e:Lcom/google/android/mms/MmsException;
    move-result-object p0

    goto/16 :goto_1

    .line 378
    .local v5, from:Ljava/lang/String;
    .restart local v6       #details:Ljava/lang/StringBuilder;
    .restart local v11       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .restart local p0
    .local p1, cursor:Landroid/database/Cursor;
    .restart local p3
    .restart local p5
    :cond_5
    const v5, 0x7f090068

    invoke-virtual {v13, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local v5           #from:Ljava/lang/String;
    move-result-object v5

    goto/16 :goto_3

    .line 400
    .local v5, count:I
    .local v7, i$:I
    .restart local v10       #len$:I
    .restart local v14       #sb:Ljava/lang/StringBuilder;
    .local p4, arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_6
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 407
    .end local v5           #count:I
    .end local v7           #i$:I
    .end local v10           #len$:I
    .end local v14           #sb:Ljava/lang/StringBuilder;
    .local p4, address:Ljava/lang/String;
    :cond_7
    :goto_5
    if-eqz p4, :cond_b

    .line 408
    move-object v0, v6

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    :goto_6
    instance-of v5, v11, Lcom/google/android/mms/pdu/SendReq;

    if-eqz v5, :cond_8

    .line 414
    move-object v0, v11

    check-cast v0, Lcom/google/android/mms/pdu/SendReq;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/SendReq;->getBcc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    .line 415
    .local v5, values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v5, :cond_8

    array-length v7, v5

    if-lez v7, :cond_8

    .line 416
    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 417
    const v7, 0x7f0900a1

    invoke-virtual {v13, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 419
    invoke-static {v5}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v5

    .end local v5           #values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    :cond_8
    const/16 v5, 0xa

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 425
    const/4 v5, 0x0

    .line 426
    .local v5, msgBox:I
    if-eqz p3, :cond_c

    .line 427
    const/16 p3, 0x2

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .end local p3
    move-result p1

    .line 431
    .end local v5           #msgBox:I
    .local p1, msgBox:I
    :goto_7
    const/16 p3, 0x3

    move/from16 v0, p1

    move/from16 v1, p3

    if-ne v0, v1, :cond_d

    .line 432
    const p1, 0x7f0900a4

    move-object v0, v13

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p1           #msgBox:I
    move-result-object p1

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    :goto_8
    const/16 p1, 0x20

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getDate()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    mul-long v16, v16, v18

    const/16 p1, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object p1

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    const/16 p1, 0xa

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 449
    const p1, 0x7f0900a5

    move-object v0, v13

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    const/16 p1, 0x20

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object p1

    .line 453
    .local p1, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz p1, :cond_f

    .line 454
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object p1

    .line 456
    .local p1, subStr:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result p3

    add-int p2, p2, p3

    .line 457
    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .end local p1           #subStr:Ljava/lang/String;
    :goto_9
    const/16 p1, 0xa

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 464
    const p1, 0x7f0900a7

    move-object v0, v13

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    const/16 p1, 0x20

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getPriority()I

    move-result p1

    invoke-static/range {p0 .. p1}, Lcom/android/mms/ui/MessageUtils;->getPriorityDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    const/16 p1, 0xa

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 470
    const p1, 0x7f0900a6

    move-object v0, v13

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    const/16 p1, 0x20

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 472
    move/from16 v0, p2

    add-int/lit16 v0, v0, 0x3ff

    move/from16 p1, v0

    move/from16 v0, p1

    div-int/lit16 v0, v0, 0x400

    move/from16 p1, v0

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 474
    const-string p1, " KB"

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    const/16 p1, 0x80

    move v0, v15

    move/from16 v1, p1

    if-ne v0, v1, :cond_9

    const-wide/16 v10, 0x0

    cmp-long p1, v8, v10

    if-lez p1, :cond_9

    .line 478
    move-object/from16 v0, p0

    move-wide v1, v8

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/DeliveryReadReport;->getMmsReportText(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    .line 479
    .local p0, statusStr:Ljava/lang/String;
    if-eqz p0, :cond_9

    .line 480
    move-object v0, v6

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .end local p0           #statusStr:Ljava/lang/String;
    :cond_9
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_1

    .line 403
    .local v5, count:I
    .restart local v14       #sb:Ljava/lang/StringBuilder;
    .local p0, context:Landroid/content/Context;
    .local p1, cursor:Landroid/database/Cursor;
    .restart local p3
    .local p4, to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_a
    const p4, 0x7f090159

    move-object v0, v13

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p4           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    move-result-object p4

    .local p4, address:Ljava/lang/String;
    goto/16 :goto_5

    .line 410
    .end local v5           #count:I
    .end local v14           #sb:Ljava/lang/StringBuilder;
    :cond_b
    const-string v5, "MessageUtils"

    const-string v7, "recipient list is empty!"

    invoke-static {v5, v7}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 429
    .local v5, msgBox:I
    :cond_c
    invoke-virtual/range {p5 .. p5}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result p1

    .end local v5           #msgBox:I
    .local p1, msgBox:I
    goto/16 :goto_7

    .line 433
    .end local p3
    :cond_d
    const/16 p3, 0x1

    move/from16 v0, p1

    move/from16 v1, p3

    if-ne v0, v1, :cond_e

    .line 436
    const p1, 0x7f0900a2

    move-object v0, v13

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p1           #msgBox:I
    move-result-object p1

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 441
    .restart local p1       #msgBox:I
    :cond_e
    const p1, 0x7f0900a2

    move-object v0, v13

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p1           #msgBox:I
    move-result-object p1

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    .line 459
    .local p1, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_f
    const p1, 0x7f090182

    move-object v0, v13

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p1           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-result-object p1

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9
.end method

.method private static getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;ZLjava/lang/String;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "cursor"
    .parameter "isView"
    .parameter "from"
    .parameter "msgItem"

    .prologue
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .local v0, details:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 244
    .local v3, res:Landroid/content/res/Resources;
    const-wide/16 v1, 0x0

    .line 245
    .local v1, id:J
    if-eqz p2, :cond_1

    .line 246
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    .end local p2
    move-result-wide p1

    .line 250
    .end local v1           #id:J
    .local p1, id:J
    :goto_0
    sget-object p4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .end local p4
    invoke-static {p4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    .line 254
    .end local p1           #id:J
    .local p2, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object p1

    check-cast p1, Lcom/google/android/mms/pdu/NotificationInd;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .local p1, nInd:Lcom/google/android/mms/pdu/NotificationInd;
    const p2, 0x7f09009b

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p2           #uri:Landroid/net/Uri;
    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const/16 p2, 0x20

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 263
    const p2, 0x7f09009e

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    if-nez p3, :cond_0

    .line 267
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/mms/ui/MessageUtils;->extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object p3

    .line 268
    invoke-static {p3}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    .line 271
    :cond_0
    const/16 p2, 0xa

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 272
    const p2, 0x7f09009f

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    const/16 p2, 0x20

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    move-object p2, p3

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const/16 p2, 0xa

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    const p2, 0x7f090016

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    const/4 v2, 0x1

    invoke-static {p0, v4, v5, v2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p4, v1

    invoke-virtual {v3, p2, p4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    const/16 p2, 0xa

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 284
    const p2, 0x7f0900a5

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    const/16 p2, 0x20

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object p2

    .line 288
    .local p2, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz p2, :cond_3

    .line 289
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object p2

    .end local p2           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :goto_2
    const/16 p2, 0xa

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    const p2, 0x7f0900a6

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    const/16 p2, 0x20

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide p1

    .end local p1           #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    const-wide/16 v1, 0x3ff

    add-long/2addr p1, v1

    const-wide/16 v1, 0x400

    div-long/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const p1, 0x7f090017

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .end local v0           #details:Ljava/lang/StringBuilder;
    :goto_3
    return-object p0

    .line 248
    .restart local v0       #details:Ljava/lang/StringBuilder;
    .restart local v1       #id:J
    .restart local p0
    .local p1, cursor:Landroid/database/Cursor;
    .local p2, isView:Z
    .restart local p4
    :cond_1
    iget-wide p1, p4, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    .end local v1           #id:J
    .end local p2           #isView:Z
    .local p1, id:J
    goto/16 :goto_0

    .line 255
    .end local p1           #id:J
    .end local p4
    .local p2, uri:Landroid/net/Uri;
    :catch_0
    move-exception p1

    .line 256
    .local p1, e:Lcom/google/android/mms/MmsException;
    const-string p4, "MessageUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #details:Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to load the message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    .end local p2           #uri:Landroid/net/Uri;
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2, p1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .end local p0
    const p1, 0x7f090099

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p1           #e:Lcom/google/android/mms/MmsException;
    move-result-object p0

    goto :goto_3

    .line 274
    .restart local v0       #details:Ljava/lang/StringBuilder;
    .restart local p0
    .local p1, nInd:Lcom/google/android/mms/pdu/NotificationInd;
    :cond_2
    const p2, 0x7f090068

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    .line 291
    .local p2, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_3
    const p2, 0x7f090182

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p2           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static getPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "address"

    .prologue
    .line 1586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1587
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1589
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 1590
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1593
    .local v1, c:C
    const/16 v4, 0x2b

    if-ne v1, v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 1594
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1589
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1598
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1599
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1603
    :cond_2
    sget-object v4, Lcom/android/mms/ui/MessageUtils;->numericSugarMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 1607
    .end local v1           #c:C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getPriorityDescription(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "PriorityValue"

    .prologue
    .line 580
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 581
    .local v0, res:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 588
    :pswitch_0
    const v1, 0x7f0900a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 583
    :pswitch_1
    const v1, 0x7f0900a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 585
    :pswitch_2
    const v1, 0x7f0900aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 581
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getRecipientsFromPDU(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "uri"
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 320
    :try_start_0
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    check-cast v1, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .local v1, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    instance-of v3, v1, Lcom/google/android/mms/pdu/SendReq;

    if-eqz v3, :cond_0

    .line 327
    check-cast v1, Lcom/google/android/mms/pdu/SendReq;

    .end local v1           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/SendReq;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 328
    .local v2, values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 330
    invoke-static {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v3

    .line 333
    .end local v2           #values:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_0
    return-object v3

    .line 321
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 322
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v3, "MessageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load the message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v6

    .line 323
    goto :goto_0

    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :cond_0
    move-object v3, v6

    .line 333
    goto :goto_0
.end method

.method public static getScreenHeight()I
    .locals 2

    .prologue
    .line 2340
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Lcom/android/mms/MmsApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2342
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    return v0
.end method

.method public static getScreenOrientation()I
    .locals 2

    .prologue
    .line 2346
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/MmsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 2347
    .local v0, orientation:I
    return v0
.end method

.method public static getScreenWidth()I
    .locals 2

    .prologue
    .line 2328
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Lcom/android/mms/MmsApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2330
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    return v0
.end method

.method private static getTextMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ZLjava/lang/String;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "isView"
    .parameter "address"
    .parameter "msgItem"

    .prologue
    .line 489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 490
    .local v2, details:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 493
    .local v3, res:Landroid/content/res/Resources;
    const v0, 0x7f09009b

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 495
    const v0, 0x7f09009c

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 499
    const/4 v0, 0x0

    .line 500
    .local v0, smsType:I
    if-eqz p2, :cond_2

    .line 501
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    .end local v0           #smsType:I
    move-result v0

    .restart local v0       #smsType:I
    move v4, v0

    .line 505
    .end local v0           #smsType:I
    .local v4, smsType:I
    :goto_0
    invoke-static {v4}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 506
    const v0, 0x7f0900a0

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    :goto_1
    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 511
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 512
    if-eqz p2, :cond_4

    .line 513
    const/4 p3, 0x2

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .end local p3
    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    :goto_2
    const/16 p3, 0xa

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 523
    const/4 p3, 0x3

    if-ne v4, p3, :cond_6

    .line 524
    const p3, 0x7f0900a4

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    :goto_3
    const/16 p3, 0x20

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 537
    const-wide/16 v0, 0x0

    .line 538
    .local v0, date:J
    if-eqz p2, :cond_8

    .line 539
    const/4 p3, 0x3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 543
    :goto_4
    const/4 p3, 0x1

    invoke-static {p0, v0, v1, p3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-static {v4}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 547
    invoke-virtual {p4}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 548
    iget-wide v0, p4, Lcom/android/mms/ui/MessageItem;->mGroupId:J

    .end local v0           #date:J
    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/DeliveryReadReport;->getGroupSmsDeliveryReportText(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    .line 559
    .local p0, deliveryStatus:Ljava/lang/String;
    :goto_5
    if-eqz p0, :cond_0

    .line 560
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    :cond_0
    const/4 p0, 0x0

    .line 565
    .local p0, errorCode:I
    if-eqz p2, :cond_b

    .line 566
    const/4 p0, 0x4

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    .end local p0           #errorCode:I
    move-result p0

    .line 570
    .restart local p0       #errorCode:I
    :goto_6
    if-eqz p0, :cond_1

    .line 571
    const/16 p1, 0xa

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local p1
    move-result-object p1

    const p2, 0x7f0900ab

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p2
    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 576
    .end local p0           #errorCode:I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 503
    .end local v4           #smsType:I
    .local v0, smsType:I
    .local p0, context:Landroid/content/Context;
    .restart local p1
    .restart local p2
    .restart local p3
    :cond_2
    invoke-virtual {p4}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v0

    move v4, v0

    .end local v0           #smsType:I
    .restart local v4       #smsType:I
    goto/16 :goto_0

    .line 508
    :cond_3
    const v0, 0x7f09009f

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 515
    :cond_4
    iget-object p3, p4, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .end local p3
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 518
    .restart local p3
    :cond_5
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 525
    .end local p3
    :cond_6
    const/4 p3, 0x1

    if-ne v4, p3, :cond_7

    .line 528
    const p3, 0x7f0900a2

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 533
    :cond_7
    const p3, 0x7f0900a2

    invoke-virtual {v3, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 541
    .local v0, date:J
    :cond_8
    iget-wide v0, p4, Lcom/android/mms/ui/MessageItem;->mTime:J

    goto :goto_4

    .line 550
    :cond_9
    if-eqz p2, :cond_a

    .line 551
    const/4 p3, 0x0

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .end local v0           #date:J
    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/DeliveryReadReport;->getSmsDeliveryReportText(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    .local p0, deliveryStatus:Ljava/lang/String;
    goto :goto_5

    .line 554
    .restart local v0       #date:J
    .local p0, context:Landroid/content/Context;
    :cond_a
    iget-wide v0, p4, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    .end local v0           #date:J
    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/DeliveryReadReport;->getSmsDeliveryReportText(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    .local p0, deliveryStatus:Ljava/lang/String;
    goto :goto_5

    .line 568
    .local p0, errorCode:I
    :cond_b
    iget p0, p4, Lcom/android/mms/ui/MessageItem;->mErrorCode:I

    goto :goto_6
.end method

.method public static getViewTitleStrings(Landroid/content/Context;J)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v4, "MessageUtils"

    .line 1884
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 1885
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1916
    :goto_0
    return-object v0

    .line 1887
    :cond_0
    const-string v0, ""

    .line 1888
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1892
    :try_start_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1898
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1899
    instance-of v2, v0, Lcom/google/android/mms/pdu/RetrieveConf;

    if-eqz v2, :cond_2

    .line 1901
    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v0

    .line 1902
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    move-object v0, v1

    .line 1916
    goto :goto_0

    .line 1893
    :catch_0
    move-exception v0

    .line 1894
    const-string v2, "MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load the message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1895
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 1906
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    .line 1907
    if-eqz v0, :cond_3

    .line 1908
    const/4 v2, 0x0

    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 1909
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1908
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1912
    :cond_3
    const-string v0, "MessageUtils"

    const-string v0, "getViewTitleString : recipient list is empty!"

    invoke-static {v4, v0}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static handleReadReport(Landroid/content/Context;JILjava/lang/Runnable;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v3, 0x3d

    const-string v4, " AND "

    .line 1161
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1162
    const-string v1, "m_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x84

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "seen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=0 AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1166
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    .line 1167
    const-string v1, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "thread_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1169
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1171
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v6

    const-string v0, "m_id"

    aput-object v0, v3, v7

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1176
    if-nez v0, :cond_2

    .line 1236
    :cond_1
    :goto_0
    return-void

    .line 1180
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1182
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 1186
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1188
    if-eqz p4, :cond_3

    .line 1189
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1199
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1200
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1194
    :cond_4
    :goto_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1195
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1196
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1199
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1200
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1

    .line 1199
    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1200
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1204
    :cond_7
    new-instance v0, Lcom/android/mms/ui/MessageUtils$4;

    invoke-direct {v0, v1, p0, p3, p4}, Lcom/android/mms/ui/MessageUtils$4;-><init>(Ljava/util/Map;Landroid/content/Context;ILjava/lang/Runnable;)V

    .line 1217
    new-instance v1, Lcom/android/mms/ui/MessageUtils$5;

    invoke-direct {v1, p4}, Lcom/android/mms/ui/MessageUtils$5;-><init>(Ljava/lang/Runnable;)V

    .line 1226
    new-instance v2, Lcom/android/mms/ui/MessageUtils$6;

    invoke-direct {v2, p4}, Lcom/android/mms/ui/MessageUtils$6;-><init>(Ljava/lang/Runnable;)V

    .line 1235
    invoke-static {p0, v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->confirmReadReportDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0
.end method

.method public static handleReadReportOne(Landroid/content/Context;JILjava/lang/Runnable;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v3, 0x3d

    const-string v4, " AND "

    .line 1242
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 1243
    if-eqz p4, :cond_0

    .line 1244
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    .line 1306
    :cond_0
    :goto_0
    return-void

    .line 1249
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1250
    const-string v1, "m_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x84

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "seen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=0 AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1256
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "m_id"

    aput-object v0, v3, v6

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1261
    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1262
    :cond_2
    if-eqz p4, :cond_3

    .line 1263
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1272
    :cond_3
    if-eqz v0, :cond_0

    .line 1273
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1267
    :cond_4
    :try_start_1
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1268
    invoke-static {p0, v1}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 1269
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 1272
    if-eqz v0, :cond_5

    .line 1273
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1276
    :cond_5
    new-instance v0, Lcom/android/mms/ui/MessageUtils$7;

    move-object v1, p0

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils$7;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 1287
    new-instance v1, Lcom/android/mms/ui/MessageUtils$8;

    invoke-direct {v1, p4}, Lcom/android/mms/ui/MessageUtils$8;-><init>(Ljava/lang/Runnable;)V

    .line 1296
    new-instance v2, Lcom/android/mms/ui/MessageUtils$9;

    invoke-direct {v2, p4}, Lcom/android/mms/ui/MessageUtils$9;-><init>(Ljava/lang/Runnable;)V

    .line 1305
    invoke-static {p0, v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->confirmReadReportDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 1272
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_6

    .line 1273
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1
.end method

.method public static hasNonGSMCharaterExceptKorean(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    const-string v5, "MessageUtils"

    .line 1969
    const-string v0, "MessageUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[hasNonGSMCharater] msgText.length() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v4

    .line 1975
    :goto_0
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1976
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1981
    const/16 v3, 0x3130

    if-ge v3, v2, :cond_0

    const/16 v3, 0x318d

    if-lt v2, v3, :cond_1

    :cond_0
    const v3, 0xabff

    if-ge v3, v2, :cond_2

    const v3, 0xd7a4

    if-ge v2, v3, :cond_2

    :cond_1
    move v0, v4

    .line 1996
    :goto_1
    return v0

    .line 1985
    :cond_2
    invoke-static {v2}, Lcom/android/internal/telephony/GsmAlphabet;->convertEachCharacter(C)C

    move-result v2

    .line 1986
    const v3, 0xfeff

    if-ne v3, v2, :cond_3

    .line 1989
    const/4 v0, 0x1

    goto :goto_1

    .line 1992
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1975
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1994
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1995
    const-string v1, "MessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[hasNonGSMCharater] stringBuilder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    .line 1996
    goto :goto_1
.end method

.method public static isAlias(Ljava/lang/String;)Z
    .locals 3
    .parameter "string"

    .prologue
    const/4 v2, 0x0

    .line 1475
    invoke-static {}, Lcom/android/mms/MmsConfig;->isAliasEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 1501
    :goto_0
    return v1

    .line 1479
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 1480
    goto :goto_0

    .line 1487
    :cond_1
    invoke-static {p0}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 1488
    goto :goto_0

    .line 1491
    :cond_2
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isAlphaNumeric(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    .line 1492
    goto :goto_0

    .line 1495
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1497
    .local v0, len:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAliasMinChars()I

    move-result v1

    if-lt v0, v1, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getAliasMaxChars()I

    move-result v1

    if-le v0, v1, :cond_5

    :cond_4
    move v1, v2

    .line 1498
    goto :goto_0

    .line 1501
    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isAlphaNumeric(Ljava/lang/String;)Z
    .locals 4
    .parameter "s"

    .prologue
    .line 1524
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1525
    .local v1, chars:[C
    const/4 v2, 0x0

    .local v2, x:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_4

    .line 1526
    aget-char v0, v1, v2

    .line 1528
    .local v0, c:C
    const/16 v3, 0x61

    if-lt v0, v3, :cond_1

    const/16 v3, 0x7a

    if-gt v0, v3, :cond_1

    .line 1525
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1531
    :cond_1
    const/16 v3, 0x41

    if-lt v0, v3, :cond_2

    const/16 v3, 0x5a

    if-le v0, v3, :cond_0

    .line 1534
    :cond_2
    const/16 v3, 0x30

    if-lt v0, v3, :cond_3

    const/16 v3, 0x39

    if-le v0, v3, :cond_0

    .line 1538
    :cond_3
    const/4 v3, 0x0

    .line 1540
    .end local v0           #c:C
    :goto_1
    return v3

    :cond_4
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static isAnimatedImage(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 7
    .parameter "contentResolver"
    .parameter "uri"

    .prologue
    const/4 v6, 0x0

    .line 2285
    const/4 v1, 0x0

    .line 2286
    .local v1, is:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 2289
    .local v4, streamSize:I
    const/4 v3, 0x0

    .line 2292
    .local v3, movie:Landroid/graphics/Movie;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2294
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 2299
    :goto_0
    :try_start_2
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-static {v1, v4}, Lcom/android/mms/ui/MessageUtils;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2300
    .end local v1           #is:Ljava/io/InputStream;
    .local v2, is:Ljava/io/InputStream;
    :try_start_3
    invoke-static {v2}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v3

    .line 2306
    if-eqz v2, :cond_4

    .line 2308
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-object v1, v2

    .line 2315
    .end local v2           #is:Ljava/io/InputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    :cond_0
    :goto_1
    if-nez v3, :cond_2

    move v5, v6

    .line 2317
    :goto_2
    return v5

    .line 2295
    :catch_0
    move-exception v0

    .line 2297
    .local v0, e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 2302
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 2304
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2306
    if-eqz v1, :cond_0

    .line 2308
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    .line 2309
    :catch_2
    move-exception v0

    .line 2311
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 2309
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    :catch_3
    move-exception v0

    .line 2311
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 2312
    .end local v2           #is:Ljava/io/InputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    goto :goto_1

    .line 2306
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v1, :cond_1

    .line 2308
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 2312
    :cond_1
    :goto_5
    throw v5

    .line 2309
    :catch_4
    move-exception v0

    .line 2311
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 2317
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Movie;->duration()I

    move-result v5

    if-lez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    move v5, v6

    goto :goto_2

    .line 2306
    .end local v1           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #is:Ljava/io/InputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    goto :goto_4

    .line 2302
    .end local v1           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    :catch_5
    move-exception v5

    move-object v0, v5

    move-object v1, v2

    .end local v2           #is:Ljava/io/InputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    goto :goto_3

    .end local v1           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    :cond_4
    move-object v1, v2

    .end local v2           #is:Ljava/io/InputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    goto :goto_1
.end method

.method public static isAnimationEnable()Z
    .locals 4

    .prologue
    .line 2445
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "window_animation_scale"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2447
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCBMessageAddress(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 1649
    const-string v0, "CBmessages"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1650
    const/4 v0, 0x1

    .line 1652
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isContainKoreanChar(Ljava/lang/String;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2133
    .line 2135
    if-eqz p0, :cond_4

    .line 2136
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    move v1, v4

    .line 2138
    :goto_1
    if-ge v1, v0, :cond_3

    .line 2139
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2144
    const/16 v3, 0x3130

    if-ge v3, v2, :cond_0

    const/16 v3, 0x318d

    if-lt v2, v3, :cond_1

    :cond_0
    const v3, 0xabff

    if-ge v3, v2, :cond_2

    const v3, 0xd7a4

    if-ge v2, v3, :cond_2

    .line 2146
    :cond_1
    const/4 v0, 0x1

    .line 2149
    :goto_2
    return v0

    .line 2138
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v0, v4

    .line 2149
    goto :goto_2

    :cond_4
    move v0, v4

    goto :goto_0
.end method

.method public static isLocalNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 1144
    if-nez p0, :cond_0

    move v0, v1

    .line 1156
    :goto_0
    return v0

    .line 1152
    :cond_0
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    move v0, v1

    .line 1153
    goto :goto_0

    .line 1156
    :cond_1
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isLockmessage(Ljava/lang/String;JLandroid/content/ContentResolver;)J
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-string v4, "locked"

    .line 1805
    const-string v0, "mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1806
    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "locked"

    aput-object v4, v2, v1

    .line 1809
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p3

    move-object v4, v3

    move-object v5, v3

    .line 1810
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1812
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1813
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 1815
    if-eqz v0, :cond_0

    .line 1816
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    move-wide v0, v1

    .line 1834
    :goto_0
    return-wide v0

    .line 1815
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 1816
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v1

    .line 1820
    :cond_2
    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "locked"

    aput-object v4, v2, v1

    .line 1823
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p3

    move-object v4, v3

    move-object v5, v3

    .line 1824
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1826
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1827
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v1

    .line 1829
    if-eqz v0, :cond_4

    .line 1830
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-wide v0, v1

    goto :goto_0

    .line 1829
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_3

    .line 1830
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    :cond_4
    move-wide v0, v1

    goto :goto_0
.end method

.method public static isNameAndNumber(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1757
    const-string v0, " <"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1758
    const/16 v1, 0x3e

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1759
    const/4 v2, -0x1

    .line 1761
    if-ne v0, v2, :cond_0

    move v0, v3

    .line 1766
    :goto_0
    return v0

    .line 1763
    :cond_0
    if-eq v1, v2, :cond_1

    if-le v1, v0, :cond_2

    .line 1764
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    .line 1766
    goto :goto_0
.end method

.method public static isNumberCanAddToContact(Ljava/lang/String;)Z
    .locals 3
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    .line 1567
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 1578
    :goto_0
    return v1

    .line 1570
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1571
    .local v0, c:C
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isSpecialChar(C)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 1572
    goto :goto_0

    .line 1575
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isValidMmsAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    .line 1576
    goto :goto_0

    .line 1578
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isSpecialChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 1582
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x25

    if-eq p0, v0, :cond_0

    const/16 v0, 0x24

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidMmsAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "address"

    .prologue
    .line 1644
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->parseMmsAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1645
    .local v0, retVal:Ljava/lang/String;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isValidSmsAddress(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    .line 1702
    invoke-static {p0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1704
    const/4 v0, 0x0

    .line 1706
    .local v0, ret:Z
    const/4 v0, 0x1

    move v2, v0

    .line 1712
    .end local v0           #ret:Z
    :goto_0
    return v2

    .line 1711
    :cond_0
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->parseSmsAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1712
    .local v1, retVal:Ljava/lang/String;
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isWapPushMessageAddress(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 1656
    const-string v0, "Push message"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1657
    const/4 v0, 0x1

    .line 1659
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeCall(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const-string v4, "MessageUtils"

    .line 2488
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2503
    :goto_0
    return-void

    .line 2490
    :cond_0
    const-string v0, "MessageUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Make a call:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2492
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2493
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2496
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2497
    :catch_0
    move-exception v1

    .line 2498
    const-string v1, "MessageUtils"

    const-string v1, "Call privilige not permitted, use ACTION_CALL instead"

    invoke-static {v4, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2499
    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2500
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static parseMmsAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 1669
    invoke-static {p0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p0

    .line 1694
    :goto_0
    return-object v1

    .line 1673
    :cond_0
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isNameAndNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1674
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->extractNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1678
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->parsePhoneNumberForMms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1680
    .local v0, retVal:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v2

    .line 1681
    goto :goto_0

    .line 1684
    :cond_2
    if-eqz v0, :cond_3

    move-object v1, v0

    .line 1685
    goto :goto_0

    .line 1689
    :cond_3
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, p0

    .line 1690
    goto :goto_0

    :cond_4
    move-object v1, v2

    .line 1694
    goto :goto_0
.end method

.method private static parsePhoneNumberForMms(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "address"

    .prologue
    .line 1616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1617
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1619
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 1620
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1623
    .local v1, c:C
    const/16 v4, 0x2b

    if-ne v1, v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 1624
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1619
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1628
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1629
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1633
    :cond_2
    sget-object v4, Lcom/android/mms/ui/MessageUtils;->numericSugarMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1634
    const/4 v4, 0x0

    .line 1637
    .end local v1           #c:C
    :goto_2
    return-object v4

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method public static parseSmsAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "address"

    .prologue
    const/4 v2, 0x0

    .line 1722
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isNameAndNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1723
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->extractNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1727
    :cond_0
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->parsePhoneNumberForMms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1729
    .local v0, retVal:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v2

    .line 1743
    :goto_0
    return-object v1

    .line 1733
    :cond_1
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 1734
    goto :goto_0

    .line 1738
    :cond_2
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p0

    .line 1739
    goto :goto_0

    :cond_3
    move-object v1, v2

    .line 1743
    goto :goto_0
.end method

.method public static replaceInvalidFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 2252
    const/16 v0, 0xb

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 2254
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v8

    move-object v3, p0

    .line 2256
    :goto_0
    if-ge v2, v1, :cond_2

    .line 2257
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move-object v5, v3

    move v3, v8

    .line 2259
    :goto_1
    array-length v6, v0

    if-ge v3, v6, :cond_1

    .line 2260
    aget-char v6, v0, v3

    if-ne v4, v6, :cond_0

    .line 2261
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5f

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 2259
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2256
    :cond_1
    add-int/lit8 v2, v2, 0x1

    move-object v3, v5

    goto :goto_0

    .line 2266
    :cond_2
    const-string v0, "MessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "replaceInvalidFilename(),from="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",to="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2267
    return-object v3

    .line 2252
    nop

    :array_0
    .array-data 0x2
        0x5ct 0x0t
        0x2ft 0x0t
        0x3at 0x0t
        0x2at 0x0t
        0x3ft 0x0t
        0x22t 0x0t
        0x3ct 0x0t
        0x3et 0x0t
        0x7ct 0x0t
        0x3bt 0x0t
        0xat 0x0t
    .end array-data
.end method

.method public static showDiscardDraftConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 1101
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->mDiscardDraftConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/ui/MessageUtils;->mDiscardDraftConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1110
    :goto_0
    return-void

    .line 1104
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09004b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09004c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090069

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09006a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->mDiscardDraftConfirmDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public static showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "title"
    .parameter "message"

    .prologue
    .line 981
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 983
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 984
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 985
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 986
    const v1, 0x104000a

    new-instance v2, Lcom/android/mms/ui/MessageUtils$1;

    invoke-direct {v2}, Lcom/android/mms/ui/MessageUtils$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 993
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 994
    return-void
.end method

.method public static showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 2
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "listener"
    .parameter "cancellistener"
    .parameter "dismissListener"

    .prologue
    .line 1011
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020091

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090069

    invoke-virtual {v0, v1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1016
    return-void
.end method

.method public static showInputMothodConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "context"
    .parameter "listener_send"

    .prologue
    .line 1127
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090161

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090162

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090163

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090164

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1131
    return-void
.end method

.method static streamToBytes(Ljava/io/InputStream;I)[B
    .locals 3
    .parameter "is"
    .parameter "streamSize"

    .prologue
    .line 2275
    new-array v0, p1, [B

    .line 2277
    .local v0, buffer:[B
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v2, p1}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2281
    :goto_0
    return-object v0

    .line 2278
    :catch_0
    move-exception v1

    .line 2279
    .local v1, e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static textScaleX(Landroid/widget/TextView;)V
    .locals 2
    .parameter

    .prologue
    .line 2077
    invoke-virtual {p0}, Landroid/widget/TextView;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2096
    :cond_0
    :goto_0
    return-void

    .line 2079
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 2081
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    .line 2082
    const v0, 0x3f666666

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto :goto_0

    .line 2084
    :cond_1
    const v0, 0x3f4ccccd

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto :goto_0

    .line 2088
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 2091
    const v0, 0x3f333333

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto :goto_0

    .line 2077
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080020 -> :sswitch_0
        0x7f0800be -> :sswitch_1
    .end sparse-switch
.end method

.method public static viewMediaContents(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;II)V
    .locals 10
    .parameter "context"
    .parameter "slideshow"
    .parameter "slideIndex"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v8, 0x7f09018a

    const/4 v6, 0x5

    const/4 v7, 0x1

    const-string v9, "android.intent.action.VIEW"

    .line 2155
    invoke-virtual {p1, p2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    .line 2156
    .local v4, slide:Lcom/android/mms/model/SlideModel;
    const/4 v3, 0x0

    .line 2157
    .local v3, mm:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v5

    if-eqz v5, :cond_1

    if-ne p3, v6, :cond_1

    .line 2158
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v3

    .line 2164
    :cond_0
    :goto_0
    if-nez v3, :cond_3

    .line 2206
    :goto_1
    return-void

    .line 2159
    :cond_1
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x6

    if-ne p3, v5, :cond_2

    .line 2160
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v3

    goto :goto_0

    .line 2161
    :cond_2
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x7

    if-ne p3, v5, :cond_0

    .line 2162
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v3

    goto :goto_0

    .line 2167
    :cond_3
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v5

    if-eqz v5, :cond_5

    if-ne p3, v6, :cond_5

    .line 2169
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2170
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 2174
    .local v0, contentType:Ljava/lang/String;
    :goto_2
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2175
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2176
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2177
    const-string v5, "android.intent.extra.showActionIcons"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2178
    const-string v5, "single_mode"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2181
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2182
    :catch_0
    move-exception v1

    .line 2183
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 2172
    .end local v0           #contentType:Ljava/lang/String;
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #contentType:Ljava/lang/String;
    goto :goto_2

    .line 2188
    .end local v0           #contentType:Ljava/lang/String;
    :cond_5
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2189
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2191
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2192
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 2196
    .restart local v0       #contentType:Ljava/lang/String;
    :goto_3
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2199
    :try_start_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 2200
    :catch_1
    move-exception v1

    .line 2201
    .restart local v1       #e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2194
    .end local v0           #contentType:Ljava/lang/String;
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_6
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #contentType:Ljava/lang/String;
    goto :goto_3
.end method

.method public static viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1367
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 1368
    :goto_0
    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    .line 1371
    :try_start_0
    invoke-static {p0, p2}, Lcom/android/mms/ui/MessageUtils;->viewSimpleSlideshow(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V
    :try_end_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1398
    :goto_1
    return-void

    .line 1367
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v0

    goto :goto_0

    .line 1372
    :catch_0
    move-exception v0

    .line 1374
    invoke-virtual {v0}, Landroid/drm/mobile2/OMADRMException;->printStackTrace()V

    goto :goto_1

    .line 1375
    :catch_1
    move-exception v0

    .line 1377
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1381
    :cond_1
    if-eqz p2, :cond_2

    .line 1382
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 1384
    :try_start_1
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 1385
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V

    .line 1386
    invoke-virtual {p2, v1}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1393
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1394
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1395
    const-string v1, "preview"

    const-string v2, "previewLaunch"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1396
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1387
    :catch_2
    move-exception v0

    .line 1388
    const-string v0, "MessageUtils"

    const-string v1, "Unable to save message for preview"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;ZJJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1402
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 1403
    :goto_0
    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    .line 1406
    :try_start_0
    invoke-static {p0, p2}, Lcom/android/mms/ui/MessageUtils;->viewSimpleSlideshow(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V
    :try_end_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1435
    :goto_1
    return-void

    .line 1402
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v0

    goto :goto_0

    .line 1407
    :catch_0
    move-exception v0

    .line 1409
    invoke-virtual {v0}, Landroid/drm/mobile2/OMADRMException;->printStackTrace()V

    goto :goto_1

    .line 1410
    :catch_1
    move-exception v0

    .line 1412
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1416
    :cond_1
    if-eqz p2, :cond_2

    .line 1417
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 1419
    :try_start_1
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 1420
    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V

    .line 1421
    invoke-virtual {p2, v1}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1428
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1429
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1430
    const-string v1, "msgId"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1431
    const-string v1, "thread_id"

    invoke-virtual {v0, v1, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1432
    const-string v1, "preview"

    const-string v2, "previewLaunch"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1433
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1422
    :catch_2
    move-exception v0

    .line 1423
    const-string v0, "MessageUtils"

    const-string v1, "Unable to save message for preview"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static viewSimpleSlideshow(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V
    .locals 10
    .parameter "context"
    .parameter "slideshow"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile2/OMADRMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v8, 0x7f09018a

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v9, "android.intent.action.VIEW"

    .line 923
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v5

    if-nez v5, :cond_0

    .line 924
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "viewSimpleSlideshow() called on a non-simple slideshow"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 927
    :cond_0
    invoke-virtual {p1, v7}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    .line 928
    .local v4, slide:Lcom/android/mms/model/SlideModel;
    const/4 v3, 0x0

    .line 929
    .local v3, mm:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 930
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v3

    .line 936
    :cond_1
    :goto_0
    if-nez v3, :cond_4

    .line 978
    :goto_1
    return-void

    .line 931
    :cond_2
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 932
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v3

    goto :goto_0

    .line 933
    :cond_3
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 934
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v3

    goto :goto_0

    .line 939
    :cond_4
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 941
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 942
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 946
    .local v0, contentType:Ljava/lang/String;
    :goto_2
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 947
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 948
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 949
    const-string v5, "android.intent.extra.showActionIcons"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 950
    const-string v5, "single_mode"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 953
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 954
    :catch_0
    move-exception v1

    .line 955
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 944
    .end local v0           #contentType:Ljava/lang/String;
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_5
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #contentType:Ljava/lang/String;
    goto :goto_2

    .line 960
    .end local v0           #contentType:Ljava/lang/String;
    :cond_6
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 961
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 963
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 964
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 968
    .restart local v0       #contentType:Ljava/lang/String;
    :goto_3
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 971
    :try_start_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 972
    :catch_1
    move-exception v1

    .line 973
    .restart local v1       #e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 966
    .end local v0           #contentType:Ljava/lang/String;
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_7
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #contentType:Ljava/lang/String;
    goto :goto_3
.end method

.method public static writeHprofDataToFile()V
    .locals 5

    .prologue
    const-string v4, "MessageUtils"

    .line 1464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mms_oom_hprof_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1467
    :try_start_0
    invoke-static {v0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    .line 1468
    const-string v1, "MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##### written hprof data to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1472
    :goto_0
    return-void

    .line 1469
    :catch_0
    move-exception v0

    .line 1470
    const-string v1, "MessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeHprofDataToFile: caught "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
