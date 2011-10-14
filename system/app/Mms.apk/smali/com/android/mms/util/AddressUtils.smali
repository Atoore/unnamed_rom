.class public Lcom/android/mms/util/AddressUtils;
.super Ljava/lang/Object;
.source "AddressUtils.java"


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "charset"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/util/AddressUtils;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method private static getAddressMulti(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "uri"
    .parameter "where"
    .parameter "orderBy"

    .prologue
    .line 69
    const/4 v7, 0x0

    .line 70
    .local v7, addresses:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, msgId:Ljava/lang/String;
    sget-object p1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .end local p1
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 73
    .local p1, builder:Landroid/net/Uri$Builder;
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .end local v0           #msgId:Ljava/lang/String;
    const-string v1, "addr"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/mms/util/AddressUtils;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    .line 78
    .local p3, cursor:Landroid/database/Cursor;
    if-eqz p3, :cond_1

    .line 80
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    .end local p1           #builder:Landroid/net/Uri$Builder;
    if-eqz p1, :cond_0

    .line 82
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result p0

    .end local p0
    new-array p0, p0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .end local v7           #addresses:[Ljava/lang/String;
    .local p0, addresses:[Ljava/lang/String;
    const/4 p1, 0x0

    .local p1, i:I
    move v1, p1

    .line 92
    .end local p1           #i:I
    .end local p2
    .local v1, i:I
    :goto_0
    const/4 p1, 0x0

    :try_start_1
    invoke-interface {p3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 93
    .local p1, bytes:[B
    const/4 p2, 0x1

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 94
    .local p2, charset:I
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .local v0, i:I
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v2, p2, p1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object p1

    .end local p1           #bytes:[B
    aput-object p1, p0, v1

    .line 96
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result p1

    if-nez p1, :cond_2

    .line 102
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    move-object p1, p0

    .line 109
    .end local v0           #i:I
    .end local p0           #addresses:[Ljava/lang/String;
    .end local p2           #charset:I
    .end local p3           #cursor:Landroid/database/Cursor;
    :goto_1
    return-object p1

    .line 102
    .restart local v7       #addresses:[Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    .local p2, where:Ljava/lang/String;
    .restart local p3       #cursor:Landroid/database/Cursor;
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 106
    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    .line 108
    .end local v7           #addresses:[Ljava/lang/String;
    .local p1, addresses:[Ljava/lang/String;
    const/4 p2, 0x0

    const p3, 0x7f090068

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local p2           #where:Ljava/lang/String;
    .end local p3           #cursor:Landroid/database/Cursor;
    move-result-object p0

    .end local p0           #context:Landroid/content/Context;
    aput-object p0, p1, p2

    move-object p0, p1

    .line 109
    .end local p1           #addresses:[Ljava/lang/String;
    .local p0, addresses:[Ljava/lang/String;
    goto :goto_1

    .line 102
    .end local p0           #addresses:[Ljava/lang/String;
    .restart local v7       #addresses:[Ljava/lang/String;
    .restart local p2       #where:Ljava/lang/String;
    .restart local p3       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, v7

    .end local v7           #addresses:[Ljava/lang/String;
    .end local p2           #where:Ljava/lang/String;
    .restart local p0       #addresses:[Ljava/lang/String;
    :goto_2
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_2

    .restart local v0       #i:I
    .local p2, charset:I
    :cond_2
    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0
.end method

.method public static getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/android/mms/util/AddressUtils;->getFromMulti(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getFromMulti(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 59
    const-string v0, "type=137"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/mms/util/AddressUtils;->getAddressMulti(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getToMulti(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 64
    const-string v0, "type=151"

    const-string v1, "_id"

    invoke-static {p0, p1, v0, v1}, Lcom/android/mms/util/AddressUtils;->getAddressMulti(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
