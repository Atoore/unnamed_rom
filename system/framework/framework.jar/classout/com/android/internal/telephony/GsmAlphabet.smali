.class public Lcom/android/internal/telephony/GsmAlphabet;
.super Ljava/lang/Object;
.source "GsmAlphabet.java"


# static fields
.field public static final GSM_EXTENDED_ESCAPE:B = 0x1bt

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final charToGsm:Landroid/util/SparseIntArray;

.field private static final charToGsmExtended:Landroid/util/SparseIntArray;

.field private static final charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

.field private static final charToGsmSpanishExtended:Landroid/util/SparseIntArray;

.field private static final charToGsmTurkishExtended:Landroid/util/SparseIntArray;

.field private static final gsmExtendedToChar:Landroid/util/SparseIntArray;

.field private static final gsmPortugueseExtendedToChar:Landroid/util/SparseIntArray;

.field private static final gsmSpanishExtendedToChar:Landroid/util/SparseIntArray;

.field private static final gsmToChar:Landroid/util/SparseIntArray;

.field private static final gsmTurkishExtendedToChar:Landroid/util/SparseIntArray;

.field private static sGsmSpaceChar:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .prologue
    const/16 v11, 0x47

    const/16 v10, 0x41

    const/16 v9, 0xe7

    const/16 v8, 0x69

    const/16 v7, 0x49

    .line 1185
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    .line 1186
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    .line 1187
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    .line 1188
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    .line 1191
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    .line 1192
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/GsmAlphabet;->gsmTurkishExtendedToChar:Landroid/util/SparseIntArray;

    .line 1195
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    .line 1196
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/GsmAlphabet;->gsmSpanishExtendedToChar:Landroid/util/SparseIntArray;

    .line 1198
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    .line 1199
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/GsmAlphabet;->gsmPortugueseExtendedToChar:Landroid/util/SparseIntArray;

    .line 1203
    const/4 v0, 0x0

    .line 1205
    .local v0, i:I
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x40

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1206
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xa3

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1207
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x24

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1208
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xa5

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1209
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xe8

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1210
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xe9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1211
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xf9

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1212
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xec

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1213
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xf2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1214
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xc7

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1215
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xa

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1216
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xd8

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1217
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xf8

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1218
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xd

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1219
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xc5

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1220
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xe5

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1222
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x394

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1223
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x5f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1224
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1225
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x393

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1226
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x39b

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1227
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1228
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a0

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1229
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a8

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1230
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a3

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1231
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x398

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1232
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x39e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1233
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const v5, 0xffff

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1234
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xc6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1235
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xe6

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1236
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xdf

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1237
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xc9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1239
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x20

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1240
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x21

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1241
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x22

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1242
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x23

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1243
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xa4

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1244
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x25

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1245
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x26

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1246
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x27

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1247
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x28

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1248
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x29

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1249
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x2a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1250
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x2b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1251
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x2c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1252
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x2d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1253
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x2e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1254
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x2f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1256
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x30

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1257
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x31

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1258
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x32

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1259
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x33

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1260
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x34

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1261
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x35

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1262
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x36

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1263
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x37

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1264
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x38

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1265
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x39

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1266
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1267
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1268
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1269
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1270
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1271
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1273
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xa1

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1274
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v10, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1275
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x42

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1276
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x43

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1277
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x44

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1278
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x45

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1279
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x46

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1280
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v11, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1281
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x48

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1282
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1283
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x4a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1284
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x4b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1285
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x4c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1286
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x4d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1287
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x4e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1288
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x4f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1290
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x50

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1291
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x51

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1292
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x52

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1293
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x53

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1294
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x54

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1295
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x55

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1296
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x56

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1297
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x57

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1298
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x58

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1299
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x59

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1300
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x5a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1301
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xc4

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1302
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xd6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1303
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xd1

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1304
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xdc

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1305
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xa7

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1307
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xbf

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1308
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x61

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1309
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x62

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1310
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x63

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1311
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x64

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1312
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x65

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1313
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x66

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1314
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x67

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1315
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x68

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1316
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1317
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x6a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1318
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x6b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1319
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x6c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1320
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x6d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1321
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x6e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1322
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x6f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1324
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x70

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1325
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x71

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1326
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x72

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1327
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x73

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1328
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x74

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1329
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x75

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1330
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x76

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1331
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x77

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1332
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x78

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1333
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x79

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1334
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x7a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1335
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xe4

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1336
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xf6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1337
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xf1

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1338
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xfc

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1339
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xe0

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1342
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xc

    const/16 v6, 0xa

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1343
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x5e

    const/16 v6, 0x14

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1344
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x7b

    const/16 v6, 0x28

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1345
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x7d

    const/16 v6, 0x29

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1346
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x5c

    const/16 v6, 0x2f

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1347
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x5b

    const/16 v6, 0x3c

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1348
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x7e

    const/16 v6, 0x3d

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1349
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x5d

    const/16 v6, 0x3e

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1350
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x7c

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1351
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x20ac

    const/16 v6, 0x65

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1355
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xc7

    const/16 v6, 0x43

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1356
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x11e

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1357
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x130

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1358
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x15e

    const/16 v6, 0x53

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1359
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x63

    invoke-virtual {v4, v9, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1360
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x131

    const/16 v6, 0x67

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1361
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x11f

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1362
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x15f

    const/16 v6, 0x73

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1366
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x11e

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1367
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x130

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1368
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x15e

    const/16 v6, 0x53

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1369
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x63

    invoke-virtual {v4, v9, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1370
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x11f

    const/16 v6, 0x67

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1371
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x131

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1372
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x15f

    const/16 v6, 0x73

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1375
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x9

    invoke-virtual {v4, v9, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1376
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xc1

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1377
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xcd

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1378
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xd3

    const/16 v6, 0x4f

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1379
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xda

    const/16 v6, 0x55

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1380
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xe1

    const/16 v6, 0x61

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1381
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xed

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1382
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xf3

    const/16 v6, 0x6f

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1383
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xfa

    const/16 v6, 0x75

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1386
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xea

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1387
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x9

    invoke-virtual {v4, v9, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1388
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xd4

    const/16 v6, 0xb

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1389
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xf4

    const/16 v6, 0xc

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1390
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xc1

    const/16 v6, 0xe

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1391
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xe1

    const/16 v6, 0xf

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1392
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xca

    const/16 v6, 0x1f

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1393
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xc0

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1394
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xcd

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1395
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xd3

    const/16 v6, 0x4f

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1396
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xda

    const/16 v6, 0x55

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1397
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xc3

    const/16 v6, 0x5b

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1398
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xd5

    const/16 v6, 0x5c

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1399
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xc2

    const/16 v6, 0x61

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1400
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xed

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1401
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xf3

    const/16 v6, 0x6f

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1402
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xfa

    const/16 v6, 0x75

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1403
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xe3

    const/16 v6, 0x7b

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1404
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xf5

    const/16 v6, 0x7c

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1405
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xe2

    const/16 v6, 0x7f

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1407
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a6

    const/16 v6, 0x12

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1408
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x393

    const/16 v6, 0x13

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1409
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a9

    const/16 v6, 0x15

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1410
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a0

    const/16 v6, 0x16

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1411
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a8

    const/16 v6, 0x17

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1412
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a3

    const/16 v6, 0x18

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1413
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x398

    const/16 v6, 0x19

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1416
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 1417
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_6d5
    if-ge v2, v3, :cond_6eb

    .line 1418
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1417
    add-int/lit8 v2, v2, 0x1

    goto :goto_6d5

    .line 1421
    :cond_6eb
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 1422
    const/4 v2, 0x0

    :goto_6f2
    if-ge v2, v3, :cond_708

    .line 1423
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1422
    add-int/lit8 v2, v2, 0x1

    goto :goto_6f2

    .line 1427
    :cond_708
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 1428
    const/4 v2, 0x0

    :goto_70f
    if-ge v2, v3, :cond_725

    .line 1429
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->gsmTurkishExtendedToChar:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1428
    add-int/lit8 v2, v2, 0x1

    goto :goto_70f

    .line 1432
    :cond_725
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 1433
    const/4 v2, 0x0

    :goto_72c
    if-ge v2, v3, :cond_742

    .line 1434
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->gsmSpanishExtendedToChar:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1433
    add-int/lit8 v2, v2, 0x1

    goto :goto_72c

    .line 1437
    :cond_742
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 1438
    const/4 v2, 0x0

    :goto_749
    if-ge v2, v3, :cond_75f

    .line 1439
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->gsmPortugueseExtendedToChar:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1438
    add-int/lit8 v2, v2, 0x1

    goto :goto_749

    .line 1443
    :cond_75f
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    sput v4, Lcom/android/internal/telephony/GsmAlphabet;->sGsmSpaceChar:I

    .line 1444
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static charToGsm(C)I
    .registers 3
    .parameter "c"

    .prologue
    .line 65
    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(CZ)I
    :try_end_4
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_4} :catch_6

    move-result v1

    .line 68
    :goto_5
    return v1

    .line 66
    :catch_6
    move-exception v0

    .line 68
    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    sget v1, Lcom/android/internal/telephony/GsmAlphabet;->sGsmSpaceChar:I

    goto :goto_5
.end method

.method public static charToGsm(CZ)I
    .registers 5
    .parameter "c"
    .parameter "throwException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 86
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 88
    .local v0, ret:I
    if-ne v0, v2, :cond_1f

    .line 89
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 91
    if-ne v0, v2, :cond_1c

    .line 92
    if-eqz p1, :cond_19

    .line 93
    new-instance v1, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v1

    .line 95
    :cond_19
    sget v1, Lcom/android/internal/telephony/GsmAlphabet;->sGsmSpaceChar:I

    .line 102
    :goto_1b
    return v1

    .line 98
    :cond_1c
    const/16 v1, 0x1b

    goto :goto_1b

    :cond_1f
    move v1, v0

    .line 102
    goto :goto_1b
.end method

.method public static charToGsm(CZI)I
    .registers 6
    .parameter "c"
    .parameter "throwException"
    .parameter "nationalLanguage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 111
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 113
    .local v0, ret:I
    if-ne v0, v2, :cond_37

    .line 114
    packed-switch p2, :pswitch_data_3a

    .line 125
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 128
    :goto_12
    if-ne v0, v2, :cond_34

    .line 129
    if-eqz p1, :cond_31

    .line 130
    new-instance v1, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v1

    .line 116
    :pswitch_1c
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 117
    goto :goto_12

    .line 119
    :pswitch_23
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 120
    goto :goto_12

    .line 122
    :pswitch_2a
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 123
    goto :goto_12

    .line 132
    :cond_31
    sget v1, Lcom/android/internal/telephony/GsmAlphabet;->sGsmSpaceChar:I

    .line 139
    :goto_33
    return v1

    .line 135
    :cond_34
    const/16 v1, 0x1b

    goto :goto_33

    :cond_37
    move v1, v0

    .line 139
    goto :goto_33

    .line 114
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_23
        :pswitch_2a
    .end packed-switch
.end method

.method public static charToGsmExtended(C)I
    .registers 4
    .parameter "c"

    .prologue
    const/4 v2, -0x1

    .line 204
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 206
    .local v0, ret:I
    if-ne v0, v2, :cond_c

    .line 207
    sget v1, Lcom/android/internal/telephony/GsmAlphabet;->sGsmSpaceChar:I

    .line 210
    :goto_b
    return v1

    :cond_c
    move v1, v0

    goto :goto_b
.end method

.method public static charToGsmNationalLanguageExtendCheck(Ljava/lang/CharSequence;)I
    .registers 9
    .parameter "s"

    .prologue
    const/4 v7, -0x1

    .line 150
    const/4 v1, 0x0

    .line 151
    .local v1, charIndex:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 152
    .local v3, sz:I
    const/4 v0, 0x0

    .line 154
    .local v0, charCheck:I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, language:Ljava/lang/String;
    const-string/jumbo v5, "tr"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 157
    :goto_18
    if-ge v1, v3, :cond_27

    .line 158
    sget-object v5, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 159
    .local v4, val:I
    if-eq v4, v7, :cond_28

    .line 160
    const/4 v0, 0x1

    .line 188
    .end local v4           #val:I
    :cond_27
    :goto_27
    return v0

    .line 163
    .restart local v4       #val:I
    :cond_28
    add-int/lit8 v1, v1, 0x1

    .line 164
    goto :goto_18

    .line 166
    .end local v4           #val:I
    :cond_2b
    const-string v5, "es"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 167
    :goto_33
    if-ge v1, v3, :cond_27

    .line 168
    sget-object v5, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 169
    .restart local v4       #val:I
    if-eq v4, v7, :cond_43

    .line 170
    const/4 v0, 0x2

    .line 171
    goto :goto_27

    .line 173
    :cond_43
    add-int/lit8 v1, v1, 0x1

    .line 174
    goto :goto_33

    .line 176
    .end local v4           #val:I
    :cond_46
    const-string/jumbo v5, "pt"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 177
    :goto_4f
    if-ge v1, v3, :cond_27

    .line 178
    sget-object v5, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 179
    .restart local v4       #val:I
    if-eq v4, v7, :cond_5f

    .line 180
    const/4 v0, 0x3

    .line 181
    goto :goto_27

    .line 183
    :cond_5f
    add-int/lit8 v1, v1, 0x1

    .line 184
    goto :goto_4f
.end method

.method public static charToGsmPortugueseExtended(C)I
    .registers 4
    .parameter "c"

    .prologue
    const/4 v2, -0x1

    .line 246
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 247
    .local v0, ret:I
    if-ne v0, v2, :cond_f

    .line 248
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 250
    :cond_f
    if-ne v0, v2, :cond_14

    .line 251
    sget v1, Lcom/android/internal/telephony/GsmAlphabet;->sGsmSpaceChar:I

    .line 253
    :goto_13
    return v1

    :cond_14
    move v1, v0

    goto :goto_13
.end method

.method public static charToGsmSpanishExtended(C)I
    .registers 4
    .parameter "c"

    .prologue
    const/4 v2, -0x1

    .line 232
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 233
    .local v0, ret:I
    if-ne v0, v2, :cond_f

    .line 234
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 236
    :cond_f
    if-ne v0, v2, :cond_14

    .line 237
    sget v1, Lcom/android/internal/telephony/GsmAlphabet;->sGsmSpaceChar:I

    .line 239
    :goto_13
    return v1

    :cond_14
    move v1, v0

    goto :goto_13
.end method

.method public static charToGsmTurkishExtended(C)I
    .registers 4
    .parameter "c"

    .prologue
    const/4 v2, -0x1

    .line 218
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 219
    .local v0, ret:I
    if-ne v0, v2, :cond_f

    .line 220
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 222
    :cond_f
    if-ne v0, v2, :cond_14

    .line 223
    sget v1, Lcom/android/internal/telephony/GsmAlphabet;->sGsmSpaceChar:I

    .line 225
    :goto_13
    return v1

    :cond_14
    move v1, v0

    goto :goto_13
.end method

.method public static convertEachCharacter(C)C
    .registers 4
    .parameter "c"

    .prologue
    const/4 v2, -0x1

    .line 968
    move v0, p0

    .line 992
    .local v0, ret:C
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_c

    .line 993
    move v0, p0

    .line 1001
    :goto_b
    return v0

    .line 994
    :cond_c
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_16

    .line 995
    move v0, p0

    goto :goto_b

    .line 998
    :cond_16
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->convertNonGSMCharacter(C)C

    move-result v0

    goto :goto_b
.end method

.method private static convertNonGSMCharacter(C)C
    .registers 6
    .parameter "c"

    .prologue
    const-string/jumbo v4, "temp char :"

    .line 1008
    move v0, p0

    .line 1009
    .local v0, temp:C
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "temp char :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1010
    packed-switch v0, :pswitch_data_1a0

    .line 1161
    :pswitch_20
    const/16 v1, 0x7f

    if-le v0, v1, :cond_2a

    .line 1163
    const/16 v1, 0x80

    if-ne v0, v1, :cond_19a

    .line 1166
    const/16 v0, 0x20

    .line 1176
    :cond_2a
    :goto_2a
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "temp char :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1178
    return v0

    .line 1022
    :pswitch_44
    const/16 v0, 0x61

    goto :goto_2a

    .line 1023
    :pswitch_47
    const/16 v0, 0x61

    goto :goto_2a

    .line 1024
    :pswitch_4a
    const/16 v0, 0x61

    goto :goto_2a

    .line 1025
    :pswitch_4d
    const/16 v0, 0x61

    goto :goto_2a

    .line 1026
    :pswitch_50
    const/16 v0, 0x61

    goto :goto_2a

    .line 1028
    :pswitch_53
    const/16 v0, 0x41

    goto :goto_2a

    .line 1029
    :pswitch_56
    const/16 v0, 0x41

    goto :goto_2a

    .line 1030
    :pswitch_59
    const/16 v0, 0x41

    goto :goto_2a

    .line 1031
    :pswitch_5c
    const/16 v0, 0x41

    goto :goto_2a

    .line 1032
    :pswitch_5f
    const/16 v0, 0x41

    goto :goto_2a

    .line 1033
    :pswitch_62
    const/16 v0, 0x41

    goto :goto_2a

    .line 1035
    :pswitch_65
    const/16 v0, 0x63

    goto :goto_2a

    .line 1036
    :pswitch_68
    const/16 v0, 0x63

    goto :goto_2a

    .line 1037
    :pswitch_6b
    const/16 v0, 0x63

    goto :goto_2a

    .line 1039
    :pswitch_6e
    const/16 v0, 0x43

    goto :goto_2a

    .line 1040
    :pswitch_71
    const/16 v0, 0x43

    goto :goto_2a

    .line 1042
    :pswitch_74
    const/16 v0, 0x64

    goto :goto_2a

    .line 1044
    :pswitch_77
    const/16 v0, 0x44

    goto :goto_2a

    .line 1046
    :pswitch_7a
    const/16 v0, 0x65

    goto :goto_2a

    .line 1047
    :pswitch_7d
    const/16 v0, 0x65

    goto :goto_2a

    .line 1048
    :pswitch_80
    const/16 v0, 0x65

    goto :goto_2a

    .line 1049
    :pswitch_83
    const/16 v0, 0x65

    goto :goto_2a

    .line 1050
    :pswitch_86
    const/16 v0, 0x65

    goto :goto_2a

    .line 1052
    :pswitch_89
    const/16 v0, 0x45

    goto :goto_2a

    .line 1053
    :pswitch_8c
    const/16 v0, 0x45

    goto :goto_2a

    .line 1054
    :pswitch_8f
    const/16 v0, 0x45

    goto :goto_2a

    .line 1055
    :pswitch_92
    const/16 v0, 0x45

    goto :goto_2a

    .line 1056
    :pswitch_95
    const/16 v0, 0x45

    goto :goto_2a

    .line 1057
    :pswitch_98
    const/16 v0, 0x45

    goto :goto_2a

    .line 1059
    :pswitch_9b
    const/16 v0, 0x67

    goto :goto_2a

    .line 1061
    :pswitch_9e
    const/16 v0, 0x47

    goto :goto_2a

    .line 1063
    :pswitch_a1
    const/16 v0, 0x69

    goto :goto_2a

    .line 1064
    :pswitch_a4
    const/16 v0, 0x69

    goto :goto_2a

    .line 1065
    :pswitch_a7
    const/16 v0, 0x69

    goto :goto_2a

    .line 1066
    :pswitch_aa
    const/16 v0, 0x69

    goto/16 :goto_2a

    .line 1067
    :pswitch_ae
    const/16 v0, 0x69

    goto/16 :goto_2a

    .line 1069
    :pswitch_b2
    const/16 v0, 0x49

    goto/16 :goto_2a

    .line 1070
    :pswitch_b6
    const/16 v0, 0x49

    goto/16 :goto_2a

    .line 1071
    :pswitch_ba
    const/16 v0, 0x49

    goto/16 :goto_2a

    .line 1072
    :pswitch_be
    const/16 v0, 0x49

    goto/16 :goto_2a

    .line 1073
    :pswitch_c2
    const/16 v0, 0x49

    goto/16 :goto_2a

    .line 1074
    :pswitch_c6
    const/16 v0, 0x49

    goto/16 :goto_2a

    .line 1076
    :pswitch_ca
    const/16 v0, 0x6c

    goto/16 :goto_2a

    .line 1077
    :pswitch_ce
    const/16 v0, 0x6c

    goto/16 :goto_2a

    .line 1078
    :pswitch_d2
    const/16 v0, 0x6c

    goto/16 :goto_2a

    .line 1080
    :pswitch_d6
    const/16 v0, 0x4c

    goto/16 :goto_2a

    .line 1081
    :pswitch_da
    const/16 v0, 0x4c

    goto/16 :goto_2a

    .line 1082
    :pswitch_de
    const/16 v0, 0x4c

    goto/16 :goto_2a

    .line 1084
    :pswitch_e2
    const/16 v0, 0x6e

    goto/16 :goto_2a

    .line 1085
    :pswitch_e6
    const/16 v0, 0x6e

    goto/16 :goto_2a

    .line 1087
    :pswitch_ea
    const/16 v0, 0x4e

    goto/16 :goto_2a

    .line 1088
    :pswitch_ee
    const/16 v0, 0x4e

    goto/16 :goto_2a

    .line 1090
    :pswitch_f2
    const/16 v0, 0x6f

    goto/16 :goto_2a

    .line 1091
    :pswitch_f6
    const/16 v0, 0x6f

    goto/16 :goto_2a

    .line 1092
    :pswitch_fa
    const/16 v0, 0x6f

    goto/16 :goto_2a

    .line 1093
    :pswitch_fe
    const/16 v0, 0x6f

    goto/16 :goto_2a

    .line 1094
    :pswitch_102
    const/16 v0, 0x6f

    goto/16 :goto_2a

    .line 1096
    :pswitch_106
    const/16 v0, 0x4f

    goto/16 :goto_2a

    .line 1097
    :pswitch_10a
    const/16 v0, 0x4f

    goto/16 :goto_2a

    .line 1098
    :pswitch_10e
    const/16 v0, 0x4f

    goto/16 :goto_2a

    .line 1099
    :pswitch_112
    const/16 v0, 0x4f

    goto/16 :goto_2a

    .line 1100
    :pswitch_116
    const/16 v0, 0x4f

    goto/16 :goto_2a

    .line 1101
    :pswitch_11a
    const/16 v0, 0x4f

    goto/16 :goto_2a

    .line 1103
    :pswitch_11e
    const/16 v0, 0x72

    goto/16 :goto_2a

    .line 1104
    :pswitch_122
    const/16 v0, 0x72

    goto/16 :goto_2a

    .line 1106
    :pswitch_126
    const/16 v0, 0x52

    goto/16 :goto_2a

    .line 1107
    :pswitch_12a
    const/16 v0, 0x52

    goto/16 :goto_2a

    .line 1109
    :pswitch_12e
    const/16 v0, 0x73

    goto/16 :goto_2a

    .line 1110
    :pswitch_132
    const/16 v0, 0x73

    goto/16 :goto_2a

    .line 1111
    :pswitch_136
    const/16 v0, 0x73

    goto/16 :goto_2a

    .line 1113
    :pswitch_13a
    const/16 v0, 0x53

    goto/16 :goto_2a

    .line 1114
    :pswitch_13e
    const/16 v0, 0x53

    goto/16 :goto_2a

    .line 1115
    :pswitch_142
    const/16 v0, 0x53

    goto/16 :goto_2a

    .line 1117
    :pswitch_146
    const/16 v0, 0x74

    goto/16 :goto_2a

    .line 1119
    :pswitch_14a
    const/16 v0, 0x54

    goto/16 :goto_2a

    .line 1121
    :pswitch_14e
    const/16 v0, 0x75

    goto/16 :goto_2a

    .line 1122
    :pswitch_152
    const/16 v0, 0x75

    goto/16 :goto_2a

    .line 1123
    :pswitch_156
    const/16 v0, 0x75

    goto/16 :goto_2a

    .line 1124
    :pswitch_15a
    const/16 v0, 0x75

    goto/16 :goto_2a

    .line 1126
    :pswitch_15e
    const/16 v0, 0x55

    goto/16 :goto_2a

    .line 1127
    :pswitch_162
    const/16 v0, 0x55

    goto/16 :goto_2a

    .line 1128
    :pswitch_166
    const/16 v0, 0x55

    goto/16 :goto_2a

    .line 1129
    :pswitch_16a
    const/16 v0, 0x55

    goto/16 :goto_2a

    .line 1130
    :pswitch_16e
    const/16 v0, 0x55

    goto/16 :goto_2a

    .line 1132
    :pswitch_172
    const/16 v0, 0x79

    goto/16 :goto_2a

    .line 1133
    :pswitch_176
    const/16 v0, 0x79

    goto/16 :goto_2a

    .line 1135
    :pswitch_17a
    const/16 v0, 0x59

    goto/16 :goto_2a

    .line 1136
    :pswitch_17e
    const/16 v0, 0x59

    goto/16 :goto_2a

    .line 1138
    :pswitch_182
    const/16 v0, 0x7a

    goto/16 :goto_2a

    .line 1139
    :pswitch_186
    const/16 v0, 0x7a

    goto/16 :goto_2a

    .line 1140
    :pswitch_18a
    const/16 v0, 0x7a

    goto/16 :goto_2a

    .line 1142
    :pswitch_18e
    const/16 v0, 0x5a

    goto/16 :goto_2a

    .line 1143
    :pswitch_192
    const/16 v0, 0x5a

    goto/16 :goto_2a

    .line 1144
    :pswitch_196
    const/16 v0, 0x5a

    goto/16 :goto_2a

    .line 1170
    :cond_19a
    const v0, 0xfeff

    goto/16 :goto_2a

    .line 1010
    nop

    :pswitch_data_1a0
    .packed-switch 0xc0
        :pswitch_53
        :pswitch_56
        :pswitch_59
        :pswitch_5c
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_89
        :pswitch_20
        :pswitch_8c
        :pswitch_8f
        :pswitch_b2
        :pswitch_b6
        :pswitch_ba
        :pswitch_be
        :pswitch_20
        :pswitch_20
        :pswitch_106
        :pswitch_10a
        :pswitch_10e
        :pswitch_112
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_15e
        :pswitch_162
        :pswitch_166
        :pswitch_20
        :pswitch_17a
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_44
        :pswitch_47
        :pswitch_4a
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_6b
        :pswitch_20
        :pswitch_20
        :pswitch_7a
        :pswitch_7d
        :pswitch_20
        :pswitch_a1
        :pswitch_a4
        :pswitch_a7
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_f2
        :pswitch_f6
        :pswitch_fa
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_14e
        :pswitch_152
        :pswitch_20
        :pswitch_172
        :pswitch_20
        :pswitch_176
        :pswitch_5f
        :pswitch_50
        :pswitch_20
        :pswitch_20
        :pswitch_62
        :pswitch_4d
        :pswitch_6e
        :pswitch_65
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_71
        :pswitch_68
        :pswitch_77
        :pswitch_74
        :pswitch_20
        :pswitch_20
        :pswitch_98
        :pswitch_86
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_92
        :pswitch_80
        :pswitch_95
        :pswitch_83
        :pswitch_20
        :pswitch_20
        :pswitch_9e
        :pswitch_9b
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_c6
        :pswitch_ae
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_c2
        :pswitch_aa
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_d6
        :pswitch_ca
        :pswitch_20
        :pswitch_20
        :pswitch_da
        :pswitch_ce
        :pswitch_20
        :pswitch_20
        :pswitch_de
        :pswitch_d2
        :pswitch_ea
        :pswitch_e2
        :pswitch_20
        :pswitch_20
        :pswitch_ee
        :pswitch_e6
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_116
        :pswitch_fe
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_11a
        :pswitch_102
        :pswitch_126
        :pswitch_11e
        :pswitch_20
        :pswitch_20
        :pswitch_12a
        :pswitch_122
        :pswitch_13a
        :pswitch_12e
        :pswitch_20
        :pswitch_20
        :pswitch_142
        :pswitch_136
        :pswitch_13e
        :pswitch_132
        :pswitch_20
        :pswitch_20
        :pswitch_14a
        :pswitch_146
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_16e
        :pswitch_15a
        :pswitch_20
        :pswitch_20
        :pswitch_16a
        :pswitch_156
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_17e
        :pswitch_18e
        :pswitch_182
        :pswitch_196
        :pswitch_18a
        :pswitch_192
        :pswitch_186
    .end packed-switch
.end method

.method public static countGsmNationalLanguageShiftSeptets(C)I
    .registers 4
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 870
    const/4 v1, 0x0

    :try_start_2
    invoke-static {p0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmNationalLanguageShiftSeptets(CZ)I
    :try_end_5
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_5} :catch_7

    move-result v1

    .line 873
    :goto_6
    return v1

    .line 871
    :catch_7
    move-exception v0

    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    move v1, v2

    .line 873
    goto :goto_6
.end method

.method public static countGsmNationalLanguageShiftSeptets(CZ)I
    .registers 7
    .parameter "c"
    .parameter "throwsException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, -0x1

    .line 879
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_d

    move v1, v4

    .line 909
    :goto_c
    return v1

    .line 883
    :cond_d
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 885
    .local v0, language:Ljava/lang/String;
    const-string/jumbo v1, "tr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 886
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_4d

    move v1, v3

    .line 887
    goto :goto_c

    .line 890
    :cond_28
    const-string v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 891
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_4d

    move v1, v3

    .line 892
    goto :goto_c

    .line 895
    :cond_3a
    const-string/jumbo v1, "pt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 896
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_4d

    move v1, v3

    .line 897
    goto :goto_c

    .line 901
    :cond_4d
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_57

    move v1, v3

    .line 902
    goto :goto_c

    .line 905
    :cond_57
    if-eqz p1, :cond_5f

    .line 906
    new-instance v1, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v1

    :cond_5f
    move v1, v4

    .line 909
    goto :goto_c
.end method

.method public static countGsmNationalLanguageShiftSeptets(Ljava/lang/CharSequence;Z)I
    .registers 6
    .parameter "s"
    .parameter "throwsException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 915
    const/4 v0, 0x0

    .line 916
    .local v0, charIndex:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 917
    .local v2, sz:I
    const/4 v1, 0x0

    .line 919
    .local v1, count:I
    :goto_6
    if-ge v0, v2, :cond_14

    .line 920
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmNationalLanguageShiftSeptets(CZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 921
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 924
    :cond_14
    return v1
.end method

.method public static countGsmSeptets(C)I
    .registers 4
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 801
    const/4 v1, 0x0

    :try_start_2
    invoke-static {p0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I
    :try_end_5
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_5} :catch_7

    move-result v1

    .line 804
    :goto_6
    return v1

    .line 802
    :catch_7
    move-exception v0

    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    move v1, v2

    .line 804
    goto :goto_6
.end method

.method public static countGsmSeptets(CZ)I
    .registers 5
    .parameter "c"
    .parameter "throwsException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 816
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_c

    move v0, v2

    .line 828
    :goto_b
    return v0

    .line 820
    :cond_c
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_16

    .line 821
    const/4 v0, 0x2

    goto :goto_b

    .line 824
    :cond_16
    if-eqz p1, :cond_1e

    .line 825
    new-instance v0, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v0

    :cond_1e
    move v0, v2

    .line 828
    goto :goto_b
.end method

.method public static countGsmSeptets(Ljava/lang/CharSequence;)I
    .registers 4
    .parameter "s"

    .prologue
    const/4 v2, 0x0

    .line 839
    const/4 v1, 0x0

    :try_start_2
    invoke-static {p0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)I
    :try_end_5
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_5} :catch_7

    move-result v1

    .line 842
    :goto_6
    return v1

    .line 840
    :catch_7
    move-exception v0

    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    move v1, v2

    .line 842
    goto :goto_6
.end method

.method public static countGsmSeptets(Ljava/lang/CharSequence;Z)I
    .registers 6
    .parameter "s"
    .parameter "throwsException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 854
    const/4 v0, 0x0

    .line 855
    .local v0, charIndex:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 856
    .local v2, sz:I
    const/4 v1, 0x0

    .line 858
    .local v1, count:I
    :goto_6
    if-ge v0, v2, :cond_14

    .line 859
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 860
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 863
    :cond_14
    return v1
.end method

.method public static findGsmSeptetLimitIndex(Ljava/lang/String;II)I
    .registers 7
    .parameter "s"
    .parameter "start"
    .parameter "limit"

    .prologue
    .line 943
    const/4 v0, 0x0

    .line 944
    .local v0, accumulator:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 957
    .local v2, size:I
    move v1, p1

    .local v1, i:I
    :goto_6
    if-ge v1, v2, :cond_18

    .line 958
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(C)I

    move-result v3

    add-int/2addr v0, v3

    .line 959
    if-le v0, p2, :cond_15

    move v3, v1

    .line 964
    :goto_14
    return v3

    .line 957
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_18
    move v3, v2

    .line 964
    goto :goto_14
.end method

.method public static gsm7BitPackedToString([BII)Ljava/lang/String;
    .registers 4
    .parameter "pdu"
    .parameter "offset"
    .parameter "lengthSeptets"

    .prologue
    .line 539
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gsm7BitPackedToString([BIII)Ljava/lang/String;
    .registers 15
    .parameter "pdu"
    .parameter "offset"
    .parameter "lengthSeptets"
    .parameter "numPaddingBits"

    .prologue
    const/4 v10, 0x1

    .line 557
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 561
    .local v6, ret:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 563
    .local v5, prevCharWasEscape:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_8
    if-ge v4, p2, :cond_54

    .line 564
    mul-int/lit8 v8, v4, 0x7

    add-int v0, v8, p3

    .line 566
    .local v0, bitOffset:I
    :try_start_e
    div-int/lit8 v1, v0, 0x8

    .line 567
    .local v1, byteOffset:I
    rem-int/lit8 v7, v0, 0x8

    .line 570
    .local v7, shift:I
    add-int v8, p1, v1

    aget-byte v8, p0, v8

    shr-int/2addr v8, v7

    and-int/lit8 v3, v8, 0x7f

    .line 573
    .local v3, gsmVal:I
    if-le v7, v10, :cond_2e

    .line 575
    const/16 v8, 0x7f

    sub-int v9, v7, v10

    shr-int/2addr v8, v9

    and-int/2addr v3, v8

    .line 577
    add-int v8, p1, v1

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, p0, v8

    const/16 v9, 0x8

    sub-int/2addr v9, v7

    shl-int/2addr v8, v9

    and-int/lit8 v8, v8, 0x7f

    or-int/2addr v3, v8

    .line 580
    :cond_2e
    if-eqz v5, :cond_3b

    .line 581
    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 582
    const/4 v5, 0x0

    .line 563
    :goto_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 583
    :cond_3b
    const/16 v8, 0x1b

    if-ne v3, v8, :cond_41

    .line 584
    const/4 v5, 0x1

    goto :goto_38

    .line 586
    :cond_41
    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_48
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_48} :catch_49

    goto :goto_38

    .line 589
    .end local v1           #byteOffset:I
    .end local v3           #gsmVal:I
    .end local v7           #shift:I
    :catch_49
    move-exception v8

    move-object v2, v8

    .line 590
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v8, "GSM"

    const-string v9, "Error GSM 7 bit packed: "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 591
    const/4 v8, 0x0

    .line 594
    .end local v0           #bitOffset:I
    .end local v2           #ex:Ljava/lang/RuntimeException;
    :goto_53
    return-object v8

    :cond_54
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_53
.end method

.method public static gsm7BitPackedToString([BIIII)Ljava/lang/String;
    .registers 16
    .parameter "pdu"
    .parameter "offset"
    .parameter "lengthSeptets"
    .parameter "numPaddingBits"
    .parameter "nationalLanguage"

    .prologue
    const/4 v10, 0x1

    .line 614
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 618
    .local v6, ret:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 620
    .local v5, prevCharWasEscape:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_8
    if-ge v4, p2, :cond_6f

    .line 621
    mul-int/lit8 v8, v4, 0x7

    add-int v0, v8, p3

    .line 623
    .local v0, bitOffset:I
    :try_start_e
    div-int/lit8 v1, v0, 0x8

    .line 624
    .local v1, byteOffset:I
    rem-int/lit8 v7, v0, 0x8

    .line 627
    .local v7, shift:I
    add-int v8, p1, v1

    aget-byte v8, p0, v8

    shr-int/2addr v8, v7

    and-int/lit8 v3, v8, 0x7f

    .line 630
    .local v3, gsmVal:I
    if-le v7, v10, :cond_2e

    .line 632
    const/16 v8, 0x7f

    sub-int v9, v7, v10

    shr-int/2addr v8, v9

    and-int/2addr v3, v8

    .line 634
    add-int v8, p1, v1

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, p0, v8

    const/16 v9, 0x8

    sub-int/2addr v9, v7

    shl-int/2addr v8, v9

    and-int/lit8 v8, v8, 0x7f

    or-int/2addr v3, v8

    .line 637
    :cond_2e
    if-eqz v5, :cond_61

    .line 638
    packed-switch p4, :pswitch_data_74

    .line 649
    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 652
    :goto_3a
    const/4 v5, 0x0

    .line 620
    :goto_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 640
    :pswitch_3e
    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsmTurkishLanguageShiftExtendedToChar(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_45
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_45} :catch_46

    goto :goto_3a

    .line 659
    .end local v1           #byteOffset:I
    .end local v3           #gsmVal:I
    .end local v7           #shift:I
    :catch_46
    move-exception v8

    move-object v2, v8

    .line 660
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v8, "GSM"

    const-string v9, "Error GSM 7 bit packed: "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 661
    const/4 v8, 0x0

    .line 664
    .end local v0           #bitOffset:I
    .end local v2           #ex:Ljava/lang/RuntimeException;
    :goto_50
    return-object v8

    .line 643
    .restart local v0       #bitOffset:I
    .restart local v1       #byteOffset:I
    .restart local v3       #gsmVal:I
    .restart local v7       #shift:I
    :pswitch_51
    :try_start_51
    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsmSpanishLanguageShiftExtendedToChar(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3a

    .line 646
    :pswitch_59
    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsmPortugueseLanguageShiftExtendedToChar(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3a

    .line 653
    :cond_61
    const/16 v8, 0x1b

    if-ne v3, v8, :cond_67

    .line 654
    const/4 v5, 0x1

    goto :goto_3b

    .line 656
    :cond_67
    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_6e
    .catch Ljava/lang/RuntimeException; {:try_start_51 .. :try_end_6e} :catch_46

    goto :goto_3b

    .line 664
    .end local v0           #bitOffset:I
    .end local v1           #byteOffset:I
    .end local v3           #gsmVal:I
    .end local v7           #shift:I
    :cond_6f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_50

    .line 638
    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_51
        :pswitch_59
    .end packed-switch
.end method

.method public static gsm8BitUnpackedToString([BII)Ljava/lang/String;
    .registers 9
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v5, 0x20

    .line 678
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 680
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 681
    .local v2, prevWasEscape:Z
    move v1, p1

    .local v1, i:I
    :goto_9
    add-int v4, p1, p2

    if-ge v1, v4, :cond_15

    .line 684
    aget-byte v4, p0, v1

    and-int/lit16 v0, v4, 0xff

    .line 686
    .local v0, c:I
    const/16 v4, 0xff

    if-ne v0, v4, :cond_1a

    .line 730
    .end local v0           #c:I
    :cond_15
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 688
    .restart local v0       #c:I
    :cond_1a
    const/16 v4, 0x1b

    if-ne v0, v4, :cond_29

    .line 689
    if-eqz v2, :cond_27

    .line 693
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 694
    const/4 v2, 0x0

    .line 681
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 696
    :cond_27
    const/4 v2, 0x1

    goto :goto_24

    .line 699
    :cond_29
    if-eqz v2, :cond_37

    .line 722
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 726
    :goto_35
    const/4 v2, 0x0

    goto :goto_24

    .line 724
    :cond_37
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_35
.end method

.method public static gsmExtendedToChar(I)C
    .registers 4
    .parameter "gsmChar"

    .prologue
    const/4 v2, -0x1

    .line 286
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 288
    .local v0, ret:I
    if-ne v0, v2, :cond_c

    .line 289
    const/16 v1, 0x20

    .line 292
    :goto_b
    return v1

    :cond_c
    int-to-char v1, v0

    goto :goto_b
.end method

.method public static gsmPortugueseLanguageShiftExtendedToChar(I)C
    .registers 4
    .parameter "gsmChar"

    .prologue
    const/4 v2, -0x1

    .line 336
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->gsmPortugueseExtendedToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 337
    .local v0, ret:I
    if-eq v0, v2, :cond_b

    .line 338
    int-to-char v1, v0

    .line 347
    :goto_a
    return v1

    .line 341
    :cond_b
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 343
    if-ne v0, v2, :cond_16

    .line 344
    const/16 v1, 0x20

    goto :goto_a

    .line 347
    :cond_16
    int-to-char v1, v0

    goto :goto_a
.end method

.method public static gsmSpanishLanguageShiftExtendedToChar(I)C
    .registers 4
    .parameter "gsmChar"

    .prologue
    const/4 v2, -0x1

    .line 318
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->gsmSpanishExtendedToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 319
    .local v0, ret:I
    if-eq v0, v2, :cond_b

    .line 320
    int-to-char v1, v0

    .line 329
    :goto_a
    return v1

    .line 323
    :cond_b
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 325
    if-ne v0, v2, :cond_16

    .line 326
    const/16 v1, 0x20

    goto :goto_a

    .line 329
    :cond_16
    int-to-char v1, v0

    goto :goto_a
.end method

.method public static gsmToChar(I)C
    .registers 3
    .parameter "gsmChar"

    .prologue
    .line 269
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public static gsmTurkishLanguageShiftExtendedToChar(I)C
    .registers 4
    .parameter "gsmChar"

    .prologue
    const/4 v2, -0x1

    .line 300
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->gsmTurkishExtendedToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 301
    .local v0, ret:I
    if-eq v0, v2, :cond_b

    .line 302
    int-to-char v1, v0

    .line 311
    :goto_a
    return v1

    .line 305
    :cond_b
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 307
    if-ne v0, v2, :cond_16

    .line 308
    const/16 v1, 0x20

    goto :goto_a

    .line 311
    :cond_16
    int-to-char v1, v0

    goto :goto_a
.end method

.method private static packSmsChar([BII)V
    .registers 7
    .parameter "packedChars"
    .parameter "bitOffset"
    .parameter "value"

    .prologue
    .line 516
    div-int/lit8 v0, p1, 0x8

    .line 517
    .local v0, byteOffset:I
    rem-int/lit8 v1, p1, 0x8

    .line 519
    .local v1, shift:I
    add-int/lit8 v0, v0, 0x1

    aget-byte v2, p0, v0

    shl-int v3, p2, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 521
    const/4 v2, 0x1

    if-le v1, v2, :cond_1b

    .line 522
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x8

    sub-int/2addr v2, v1

    shr-int v2, p2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 524
    :cond_1b
    return-void
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;)[B
    .registers 3
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 461
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;IZ)[B
    .registers 14
    .parameter "data"
    .parameter "startingSeptetOffset"
    .parameter "throwException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x1b

    .line 483
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 484
    .local v3, dataLen:I
    invoke-static {p0, p2}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)I

    move-result v9

    add-int v6, v9, p1

    .line 485
    .local v6, septetCount:I
    const/16 v9, 0xff

    if-le v6, v9, :cond_18

    .line 486
    new-instance v9, Lcom/android/internal/telephony/EncodeException;

    const-string v10, "Payload cannot exceed 255 septets"

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 488
    :cond_18
    mul-int/lit8 v9, v6, 0x7

    add-int/lit8 v9, v9, 0x7

    div-int/lit8 v1, v9, 0x8

    .line 489
    .local v1, byteCount:I
    add-int/lit8 v9, v1, 0x1

    new-array v5, v9, [B

    .line 490
    .local v5, ret:[B
    const/4 v4, 0x0

    .local v4, i:I
    move v7, p1

    .local v7, septets:I
    mul-int/lit8 v0, p1, 0x7

    .line 491
    .local v0, bitOffset:I
    :goto_26
    if-ge v4, v3, :cond_49

    if-ge v7, v6, :cond_49

    .line 493
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 494
    .local v2, c:C
    invoke-static {v2, p2}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(CZ)I

    move-result v8

    .line 495
    .local v8, v:I
    if-ne v8, v10, :cond_3f

    .line 496
    invoke-static {v2}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended(C)I

    move-result v8

    .line 497
    invoke-static {v5, v0, v10}, Lcom/android/internal/telephony/GsmAlphabet;->packSmsChar([BII)V

    .line 498
    add-int/lit8 v0, v0, 0x7

    .line 499
    add-int/lit8 v7, v7, 0x1

    .line 501
    :cond_3f
    invoke-static {v5, v0, v8}, Lcom/android/internal/telephony/GsmAlphabet;->packSmsChar([BII)V

    .line 502
    add-int/lit8 v7, v7, 0x1

    .line 492
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v0, 0x7

    goto :goto_26

    .line 504
    .end local v2           #c:C
    .end local v8           #v:I
    :cond_49
    const/4 v9, 0x0

    int-to-byte v10, v6

    aput-byte v10, v5, v9

    .line 505
    return-object v5
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;IZI)[B
    .registers 13
    .parameter "data"
    .parameter "startingSeptetOffset"
    .parameter "throwException"
    .parameter "nationalLanguage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 353
    .local v1, dataLen:I
    invoke-static {p0, p2}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmNationalLanguageShiftSeptets(Ljava/lang/CharSequence;Z)I

    move-result v0

    add-int v4, v0, p1

    .line 354
    .local v4, septetCount:I
    const/16 v0, 0xff

    if-le v4, v0, :cond_16

    .line 355
    new-instance p0, Lcom/android/internal/telephony/EncodeException;

    .end local p0
    const-string p1, "Payload cannot exceed 255 septets"

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 357
    .restart local p0
    .restart local p1
    :cond_16
    mul-int/lit8 v0, v4, 0x7

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    .line 358
    .local v0, byteCount:I
    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [B

    .line 360
    .end local v0           #byteCount:I
    .local v3, ret:[B
    const-string v0, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stringToGsm7BitPacked startingSeptetOffset = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v0, 0x0

    .local v0, i:I
    move v2, p1

    .local v2, septets:I
    mul-int/lit8 p1, p1, 0x7

    .local p1, bitOffset:I
    move v5, v2

    .end local v2           #septets:I
    .local v5, septets:I
    move v2, v0

    .line 363
    .end local v0           #i:I
    .local v2, i:I
    :goto_3f
    if-ge v2, v1, :cond_a1

    if-ge v5, v4, :cond_a1

    .line 365
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 366
    .local v0, c:C
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stringToGsm7BitPacked for ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-static {v0, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(CZI)I

    move-result v6

    .line 368
    .local v6, v:I
    const/16 v7, 0x1b

    if-ne v6, v7, :cond_a6

    .line 369
    packed-switch p3, :pswitch_data_aa

    .line 381
    invoke-static {v0}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended(C)I

    move-result v0

    .end local v6           #v:I
    .local v0, v:I
    move v6, v0

    .line 384
    .end local v0           #v:I
    .restart local v6       #v:I
    :goto_7a
    const/16 v0, 0x1b

    invoke-static {v3, p1, v0}, Lcom/android/internal/telephony/GsmAlphabet;->packSmsChar([BII)V

    .line 385
    add-int/lit8 p1, p1, 0x7

    .line 386
    add-int/lit8 v0, v5, 0x1

    .end local v5           #septets:I
    .local v0, septets:I
    move v5, v6

    .line 388
    .end local v6           #v:I
    .local v5, v:I
    :goto_84
    invoke-static {v3, p1, v5}, Lcom/android/internal/telephony/GsmAlphabet;->packSmsChar([BII)V

    .line 389
    add-int/lit8 v5, v0, 0x1

    .line 364
    .end local v0           #septets:I
    .local v5, septets:I
    add-int/lit8 v0, v2, 0x1

    .end local v2           #i:I
    .local v0, i:I
    add-int/lit8 p1, p1, 0x7

    move v2, v0

    .end local v0           #i:I
    .restart local v2       #i:I
    goto :goto_3f

    .line 372
    .local v0, c:C
    .restart local v6       #v:I
    :pswitch_8f
    invoke-static {v0}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended(C)I

    move-result v0

    .end local v6           #v:I
    .local v0, v:I
    move v6, v0

    .line 373
    .end local v0           #v:I
    .restart local v6       #v:I
    goto :goto_7a

    .line 375
    .local v0, c:C
    :pswitch_95
    invoke-static {v0}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended(C)I

    move-result v0

    .end local v6           #v:I
    .local v0, v:I
    move v6, v0

    .line 376
    .end local v0           #v:I
    .restart local v6       #v:I
    goto :goto_7a

    .line 378
    .local v0, c:C
    :pswitch_9b
    invoke-static {v0}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended(C)I

    move-result v0

    .end local v6           #v:I
    .local v0, v:I
    move v6, v0

    .line 379
    .end local v0           #v:I
    .restart local v6       #v:I
    goto :goto_7a

    .line 391
    .end local v6           #v:I
    :cond_a1
    const/4 p0, 0x0

    int-to-byte p1, v4

    aput-byte p1, v3, p0

    .line 392
    .end local p0
    .end local p1           #bitOffset:I
    return-object v3

    .local v0, c:C
    .restart local v6       #v:I
    .restart local p0
    .restart local p1       #bitOffset:I
    :cond_a6
    move v0, v5

    .end local v5           #septets:I
    .local v0, septets:I
    move v5, v6

    .end local v6           #v:I
    .local v5, v:I
    goto :goto_84

    .line 369
    nop

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_8f
        :pswitch_95
        :pswitch_9b
    .end packed-switch
.end method

.method public static stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B
    .registers 8
    .parameter "data"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 418
    if-eqz p1, :cond_6

    array-length v3, p1

    if-nez v3, :cond_b

    .line 419
    :cond_6
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v3

    .line 442
    :goto_a
    return-object v3

    .line 422
    :cond_b
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v0, v3, 0x8

    .line 423
    .local v0, headerBits:I
    add-int/lit8 v3, v0, 0x6

    div-int/lit8 v1, v3, 0x7

    .line 435
    .local v1, headerSeptets:I
    invoke-static {p0, v1, v4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZ)[B

    move-result-object v2

    .line 440
    .local v2, ret:[B
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 441
    const/4 v3, 0x0

    const/4 v4, 0x2

    array-length v5, p1

    invoke-static {p1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v2

    .line 442
    goto :goto_a
.end method

.method public static stringToGsm8BitPacked(Ljava/lang/String;)[B
    .registers 5
    .parameter "s"

    .prologue
    .line 741
    const/4 v1, 0x0

    .line 743
    .local v1, septets:I
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;)I

    move-result v1

    .line 746
    new-array v0, v1, [B

    .line 748
    .local v0, ret:[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V

    .line 750
    return-object v0
.end method

.method public static stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V
    .registers 12
    .parameter "s"
    .parameter "dest"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v7, 0x1b

    .line 763
    move v2, p2

    .line 766
    .local v2, outByteIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, sz:I
    move v3, v2

    .line 767
    .end local v2           #outByteIndex:I
    .local v3, outByteIndex:I
    :goto_9
    if-ge v1, v4, :cond_1e

    sub-int v6, v3, p2

    if-ge v6, p3, :cond_1e

    .line 770
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 772
    .local v0, c:C
    invoke-static {v0}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(C)I

    move-result v5

    .line 774
    .local v5, v:I
    if-ne v5, v7, :cond_3a

    .line 776
    add-int/lit8 v6, v3, 0x1

    sub-int/2addr v6, p2

    if-lt v6, p3, :cond_29

    .line 789
    .end local v0           #c:C
    .end local v5           #v:I
    :cond_1e
    :goto_1e
    sub-int v6, v3, p2

    if-ge v6, p3, :cond_39

    .line 790
    add-int/lit8 v2, v3, 0x1

    .end local v3           #outByteIndex:I
    .restart local v2       #outByteIndex:I
    const/4 v6, -0x1

    aput-byte v6, p1, v3

    move v3, v2

    .end local v2           #outByteIndex:I
    .restart local v3       #outByteIndex:I
    goto :goto_1e

    .line 780
    .restart local v0       #c:C
    .restart local v5       #v:I
    :cond_29
    add-int/lit8 v2, v3, 0x1

    .end local v3           #outByteIndex:I
    .restart local v2       #outByteIndex:I
    aput-byte v7, p1, v3

    .line 782
    invoke-static {v0}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended(C)I

    move-result v5

    .line 785
    :goto_31
    add-int/lit8 v3, v2, 0x1

    .end local v2           #outByteIndex:I
    .restart local v3       #outByteIndex:I
    int-to-byte v6, v5

    aput-byte v6, p1, v2

    .line 768
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 792
    .end local v0           #c:C
    .end local v5           #v:I
    :cond_39
    return-void

    .restart local v0       #c:C
    .restart local v5       #v:I
    :cond_3a
    move v2, v3

    .end local v3           #outByteIndex:I
    .restart local v2       #outByteIndex:I
    goto :goto_31
.end method
