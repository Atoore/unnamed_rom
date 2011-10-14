.class Lcom/android/internal/widget/RandomString;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static rand(II)I
    .registers 6
    .parameter "lo"
    .parameter "hi"

    .prologue
    .line 1506
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 1509
    .local v2, rn:Ljava/security/SecureRandom;
    sub-int v3, p1, p0

    add-int/lit8 v1, v3, 0x1

    .line 1510
    .local v1, n:I
    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    .line 1511
    .local v0, i:I
    if-gez v0, :cond_10

    .line 1512
    neg-int v0, v0

    .line 1513
    :cond_10
    add-int v3, p0, v0

    return v3
.end method

.method public static randomNumericString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1492
    const/4 v0, 0x5

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/android/internal/widget/RandomString;->randomNumericString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomNumericString(II)Ljava/lang/String;
    .registers 7
    .parameter "lo"
    .parameter "hi"

    .prologue
    .line 1496
    invoke-static {p0, p1}, Lcom/android/internal/widget/RandomString;->rand(II)I

    move-result v2

    .line 1497
    .local v2, n:I
    new-array v0, v2, [B

    .line 1498
    .local v0, b:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v2, :cond_17

    .line 1499
    const/16 v3, 0x30

    const/16 v4, 0x39

    invoke-static {v3, v4}, Lcom/android/internal/widget/RandomString;->rand(II)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1498
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1501
    :cond_17
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    return-object v3
.end method

.method public static randomstring()Ljava/lang/String;
    .registers 1

    .prologue
    const/16 v0, 0xa

    .line 1523
    invoke-static {v0, v0}, Lcom/android/internal/widget/RandomString;->randomstring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static randomstring(II)Ljava/lang/String;
    .registers 7
    .parameter "lo"
    .parameter "hi"

    .prologue
    .line 1479
    invoke-static {p0, p1}, Lcom/android/internal/widget/RandomString;->rand(II)I

    move-result v2

    .line 1480
    .local v2, n:I
    new-array v0, v2, [B

    .line 1481
    .local v0, b:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v2, :cond_2e

    .line 1482
    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lcom/android/internal/widget/RandomString;->rand(II)I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_22

    .line 1483
    const/16 v3, 0x30

    const/16 v4, 0x39

    invoke-static {v3, v4}, Lcom/android/internal/widget/RandomString;->rand(II)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 1481
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1485
    :cond_22
    const/16 v3, 0x61

    const/16 v4, 0x7a

    invoke-static {v3, v4}, Lcom/android/internal/widget/RandomString;->rand(II)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    goto :goto_1f

    .line 1488
    :cond_2e
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    return-object v3
.end method
