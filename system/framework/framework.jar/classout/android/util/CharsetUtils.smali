.class public final Landroid/util/CharsetUtils;
.super Ljava/lang/Object;
.source "CharsetUtils.java"


# static fields
.field private static final VENDOR_DOCOMO:Ljava/lang/String; = "docomo"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static charsetForVendor(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 2
    .parameter "charsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/UnsupportedCharsetException;,
            Ljava/nio/charset/IllegalCharsetNameException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-static {}, Landroid/util/CharsetUtils;->getDefaultVendor()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public static charsetForVendor(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 3
    .parameter "charsetName"
    .parameter "vendor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/UnsupportedCharsetException;,
            Ljava/nio/charset/IllegalCharsetNameException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {p0, p1}, Landroid/util/CharsetUtils;->nameForVendor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 118
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultVendor()Ljava/lang/String;
    .registers 1

    .prologue
    .line 172
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method private static isShiftJis(Ljava/lang/String;)Z
    .registers 4
    .parameter "charsetName"

    .prologue
    const/4 v2, 0x0

    .line 153
    if-nez p0, :cond_5

    move v1, v2

    .line 161
    :goto_4
    return v1

    .line 156
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 157
    .local v0, length:I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_12

    const/16 v1, 0x9

    if-eq v0, v1, :cond_12

    move v1, v2

    .line 158
    goto :goto_4

    .line 161
    :cond_12
    const-string/jumbo v1, "shift_jis"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d

    const-string/jumbo v1, "shift-jis"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d

    const-string/jumbo v1, "sjis"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    :cond_2d
    const/4 v1, 0x1

    goto :goto_4

    :cond_2f
    move v1, v2

    goto :goto_4
.end method

.method public static nameForDefaultVendor(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "charsetName"

    .prologue
    .line 93
    invoke-static {}, Landroid/util/CharsetUtils;->getDefaultVendor()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/CharsetUtils;->nameForVendor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static nameForVendor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "charsetName"
    .parameter "vendor"

    .prologue
    .line 72
    const-string v0, "docomo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p0}, Landroid/util/CharsetUtils;->isShiftJis(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 74
    const-string v0, "docomo-shift_jis-2007"

    .line 77
    :goto_10
    return-object v0

    :cond_11
    move-object v0, p0

    goto :goto_10
.end method
