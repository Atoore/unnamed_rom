.class public Lcom/sec/android/app/twlauncher/MultipleSize;
.super Ljava/lang/Object;
.source "MultipleSize.java"


# instance fields
.field private mBits:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .parameter "bits"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-wide p1, p0, Lcom/sec/android/app/twlauncher/MultipleSize;->mBits:J

    .line 49
    return-void
.end method

.method static getIndexBit(II)J
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x1

    .line 217
    invoke-static {p0, p1}, Lcom/sec/android/app/twlauncher/MultipleSize;->isInvalidSize(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    const-wide/16 v2, 0x0

    .line 222
    :goto_0
    return-wide v2

    .line 220
    :cond_0
    sub-int v2, p0, v3

    shl-int v2, v3, v2

    int-to-long v0, v2

    .line 221
    .local v0, bit:J
    sub-int v2, p1, v3

    mul-int/lit8 v2, v2, 0x8

    shl-long/2addr v0, v2

    move-wide v2, v0

    .line 222
    goto :goto_0
.end method

.method static isInvalidSize(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x1

    .line 203
    if-lt p0, v0, :cond_0

    if-ge v1, p0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v0

    .line 206
    :cond_1
    if-lt p1, v0, :cond_0

    if-lt v1, p1, :cond_0

    .line 209
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public countAvailableSizes()I
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 92
    const/4 v2, 0x0

    .line 93
    .local v2, count:I
    iget-wide v0, p0, Lcom/sec/android/app/twlauncher/MultipleSize;->mBits:J

    .line 94
    .local v0, bits:J
    :goto_0
    cmp-long v3, v5, v0

    if-eqz v3, :cond_1

    .line 95
    const-wide/16 v3, 0x1

    and-long/2addr v3, v0

    cmp-long v3, v5, v3

    if-eqz v3, :cond_0

    .line 96
    add-int/lit8 v2, v2, 0x1

    .line 98
    :cond_0
    const/4 v3, 0x1

    shr-long/2addr v0, v3

    goto :goto_0

    .line 100
    :cond_1
    return v2
.end method

.method public getBestFit(II)[I
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    .line 104
    const v5, 0xffff

    .line 105
    .local v5, minDiff:I
    const/4 v0, -0x1

    .local v0, bestX:I
    const/4 v1, -0x1

    .line 107
    .local v1, bestY:I
    const/4 v4, 0x1

    .local v4, iy:I
    :goto_0
    if-gt v4, p2, :cond_1

    .line 108
    const/4 v3, 0x1

    .local v3, ix:I
    :goto_1
    if-gt v3, p1, :cond_3

    .line 109
    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/twlauncher/MultipleSize;->isAvailableSize(II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 110
    sub-int v7, p1, v3

    sub-int v8, p2, v4

    add-int v2, v7, v8

    .line 111
    .local v2, diff:I
    if-ge v2, v5, :cond_0

    .line 112
    move v0, v3

    .line 113
    move v1, v4

    .line 114
    move v5, v2

    .line 116
    :cond_0
    if-nez v2, :cond_2

    .line 123
    .end local v2           #diff:I
    .end local v3           #ix:I
    :cond_1
    const/4 v7, 0x2

    new-array v6, v7, [I

    .line 124
    .local v6, xy:[I
    const/4 v7, 0x0

    aput v0, v6, v7

    .line 125
    const/4 v7, 0x1

    aput v1, v6, v7

    .line 126
    return-object v6

    .line 108
    .end local v6           #xy:[I
    .restart local v3       #ix:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 107
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getMaxX()I
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 130
    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lcom/sec/android/app/twlauncher/MultipleSize;->mBits:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 131
    const/4 v3, 0x1

    .line 144
    :goto_0
    return v3

    .line 133
    :cond_0
    const/4 v0, 0x1

    .line 134
    .local v0, maxX:I
    const/4 v2, 0x1

    .local v2, y:I
    :goto_1
    if-gt v2, v7, :cond_1

    .line 135
    add-int/lit8 v1, v0, 0x1

    .local v1, x:I
    :goto_2
    if-gt v1, v7, :cond_3

    .line 136
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/twlauncher/MultipleSize;->isAvailableSize(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 137
    move v0, v1

    .line 138
    if-ne v7, v0, :cond_2

    .end local v1           #x:I
    :cond_1
    move v3, v0

    .line 144
    goto :goto_0

    .line 135
    .restart local v1       #x:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 134
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getMaxY()I
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 148
    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lcom/sec/android/app/twlauncher/MultipleSize;->mBits:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 149
    const/4 v3, 0x1

    .line 162
    :goto_0
    return v3

    .line 151
    :cond_0
    const/4 v0, 0x1

    .line 152
    .local v0, maxY:I
    const/4 v1, 0x1

    .local v1, x:I
    :goto_1
    if-gt v1, v7, :cond_1

    .line 153
    add-int/lit8 v2, v0, 0x1

    .local v2, y:I
    :goto_2
    if-gt v2, v7, :cond_3

    .line 154
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/twlauncher/MultipleSize;->isAvailableSize(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 155
    move v0, v2

    .line 156
    if-ne v7, v0, :cond_2

    .end local v2           #y:I
    :cond_1
    move v3, v0

    .line 162
    goto :goto_0

    .line 153
    .restart local v2       #y:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 152
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getMinX()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 167
    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lcom/sec/android/app/twlauncher/MultipleSize;->mBits:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move v3, v7

    .line 181
    :goto_0
    return v3

    .line 170
    :cond_0
    const/16 v0, 0x8

    .line 171
    .local v0, minX:I
    const/4 v2, 0x1

    .local v2, y:I
    :goto_1
    const/16 v3, 0x8

    if-gt v2, v3, :cond_1

    .line 172
    const/4 v1, 0x1

    .local v1, x:I
    :goto_2
    if-ge v1, v0, :cond_3

    .line 173
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/twlauncher/MultipleSize;->isAvailableSize(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 174
    move v0, v1

    .line 175
    if-ne v7, v0, :cond_2

    .end local v1           #x:I
    :cond_1
    move v3, v0

    .line 181
    goto :goto_0

    .line 172
    .restart local v1       #x:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 171
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getMinY()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 185
    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lcom/sec/android/app/twlauncher/MultipleSize;->mBits:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move v3, v7

    .line 199
    :goto_0
    return v3

    .line 188
    :cond_0
    const/16 v0, 0x8

    .line 189
    .local v0, minY:I
    const/4 v1, 0x1

    .local v1, x:I
    :goto_1
    const/16 v3, 0x8

    if-gt v1, v3, :cond_1

    .line 190
    const/4 v2, 0x1

    .local v2, y:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 191
    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/twlauncher/MultipleSize;->isAvailableSize(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 192
    move v0, v2

    .line 193
    if-ne v7, v0, :cond_2

    .end local v2           #y:I
    :cond_1
    move v3, v0

    .line 199
    goto :goto_0

    .line 190
    .restart local v2       #y:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 189
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public isAvailableSize(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 88
    const-wide/16 v0, 0x0

    invoke-static {p1, p2}, Lcom/sec/android/app/twlauncher/MultipleSize;->getIndexBit(II)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/app/twlauncher/MultipleSize;->mBits:J

    and-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSize(II)Z
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 64
    invoke-static {p1, p2}, Lcom/sec/android/app/twlauncher/MultipleSize;->getIndexBit(II)J

    move-result-wide v0

    .line 65
    .local v0, bit:J
    cmp-long v2, v0, v5

    if-nez v2, :cond_0

    move v2, v4

    .line 72
    :goto_0
    return v2

    .line 68
    :cond_0
    iget-wide v2, p0, Lcom/sec/android/app/twlauncher/MultipleSize;->mBits:J

    and-long/2addr v2, v0

    cmp-long v2, v5, v2

    if-eqz v2, :cond_1

    move v2, v4

    .line 69
    goto :goto_0

    .line 71
    :cond_1
    iget-wide v2, p0, Lcom/sec/android/app/twlauncher/MultipleSize;->mBits:J

    or-long/2addr v2, v0

    iput-wide v2, p0, Lcom/sec/android/app/twlauncher/MultipleSize;->mBits:J

    .line 72
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public toLong()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/sec/android/app/twlauncher/MultipleSize;->mBits:J

    return-wide v0
.end method
