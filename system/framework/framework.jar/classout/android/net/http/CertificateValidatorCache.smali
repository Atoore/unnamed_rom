.class Landroid/net/http/CertificateValidatorCache;
.super Ljava/lang/Object;
.source "CertificateValidatorCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/CertificateValidatorCache$CacheEntry;
    }
.end annotation


# static fields
.field private static final CACHE_ENTRY_LIFETIME:J = 0x927c0L

.field public static mCost:J

.field public static mSave:J

.field private static sCertificateFactory:Ljava/security/cert/CertificateFactory;


# instance fields
.field private mBigScrew:I

.field private mCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/http/CertificateValidatorCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const-wide/16 v0, 0x0

    .line 45
    sput-wide v0, Landroid/net/http/CertificateValidatorCache;->mSave:J

    .line 46
    sput-wide v0, Landroid/net/http/CertificateValidatorCache;->mCost:J

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 124
    .local v0, random:Ljava/util/Random;
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v1

    iput v1, p0, Landroid/net/http/CertificateValidatorCache;->mBigScrew:I

    .line 126
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/net/http/CertificateValidatorCache;->mCacheMap:Ljava/util/HashMap;

    .line 127
    return-void
.end method

.method public static secureHash([Ljava/security/cert/Certificate;)[B
    .registers 13
    .parameter "certificates"

    .prologue
    .line 75
    const/4 v7, 0x0

    .line 78
    .local v7, secureHash:[B
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 81
    .local v0, beg:J
    if-eqz p0, :cond_36

    array-length v8, p0

    if-eqz v8, :cond_36

    .line 82
    const/4 v3, 0x0

    .line 84
    .local v3, encodedCertPath:[B
    :try_start_b
    const-class v8, Landroid/net/http/CertificateValidatorCache;

    monitor-enter v8
    :try_end_e
    .catch Ljava/security/GeneralSecurityException; {:try_start_b .. :try_end_e} :catch_45

    .line 85
    :try_start_e
    sget-object v9, Landroid/net/http/CertificateValidatorCache;->sCertificateFactory:Ljava/security/cert/CertificateFactory;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_42

    if-nez v9, :cond_1a

    .line 87
    :try_start_12
    const-string v9, "X.509"

    invoke-static {v9}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v9

    sput-object v9, Landroid/net/http/CertificateValidatorCache;->sCertificateFactory:Ljava/security/cert/CertificateFactory;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_42
    .catch Ljava/security/GeneralSecurityException; {:try_start_12 .. :try_end_1a} :catch_47

    .line 96
    :cond_1a
    :goto_1a
    :try_start_1a
    monitor-exit v8
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_42

    .line 98
    :try_start_1b
    sget-object v8, Landroid/net/http/CertificateValidatorCache;->sCertificateFactory:Ljava/security/cert/CertificateFactory;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v2

    .line 100
    .local v2, certPath:Ljava/security/cert/CertPath;
    if-eqz v2, :cond_36

    .line 101
    invoke-virtual {v2}, Ljava/security/cert/CertPath;->getEncoded()[B

    move-result-object v3

    .line 102
    if-eqz v3, :cond_36

    .line 103
    new-instance v6, Landroid/security/Sha1MessageDigest;

    invoke-direct {v6}, Landroid/security/Sha1MessageDigest;-><init>()V

    .line 105
    .local v6, messageDigest:Landroid/security/Sha1MessageDigest;
    invoke-virtual {v6, v3}, Landroid/security/Sha1MessageDigest;->digest([B)[B
    :try_end_35
    .catch Ljava/security/GeneralSecurityException; {:try_start_1b .. :try_end_35} :catch_45

    move-result-object v7

    .line 112
    .end local v2           #certPath:Ljava/security/cert/CertPath;
    .end local v3           #encodedCertPath:[B
    .end local v6           #messageDigest:Landroid/security/Sha1MessageDigest;
    :cond_36
    :goto_36
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 113
    .local v4, end:J
    sget-wide v8, Landroid/net/http/CertificateValidatorCache;->mCost:J

    sub-long v10, v4, v0

    add-long/2addr v8, v10

    sput-wide v8, Landroid/net/http/CertificateValidatorCache;->mCost:J

    .line 116
    return-object v7

    .line 96
    .end local v4           #end:J
    .restart local v3       #encodedCertPath:[B
    :catchall_42
    move-exception v9

    :try_start_43
    monitor-exit v8
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    :try_start_44
    throw v9
    :try_end_45
    .catch Ljava/security/GeneralSecurityException; {:try_start_44 .. :try_end_45} :catch_45

    .line 108
    :catch_45
    move-exception v8

    goto :goto_36

    .line 89
    :catch_47
    move-exception v9

    goto :goto_1a
.end method


# virtual methods
.method public has(Ljava/lang/String;[B)Z
    .registers 9
    .parameter "domain"
    .parameter "secureHash"

    .prologue
    .line 136
    const/4 v1, 0x0

    .line 138
    .local v1, rval:Z
    if-eqz p1, :cond_37

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_37

    .line 139
    if-eqz p2, :cond_37

    array-length v2, p2

    if-eqz v2, :cond_37

    .line 140
    iget-object v2, p0, Landroid/net/http/CertificateValidatorCache;->mCacheMap:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Landroid/net/http/CertificateValidatorCache;->mBigScrew:I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/http/CertificateValidatorCache$CacheEntry;

    .line 142
    .local v0, cacheEntry:Landroid/net/http/CertificateValidatorCache$CacheEntry;
    if-eqz v0, :cond_37

    .line 143
    invoke-virtual {v0}, Landroid/net/http/CertificateValidatorCache$CacheEntry;->expired()Z

    move-result v2

    if-nez v2, :cond_38

    .line 144
    invoke-virtual {v0, p1, p2}, Landroid/net/http/CertificateValidatorCache$CacheEntry;->has(Ljava/lang/String;[B)Z

    move-result v1

    .line 146
    if-eqz v1, :cond_37

    .line 147
    sget-wide v2, Landroid/net/http/CertificateValidatorCache;->mSave:J

    iget-wide v4, v0, Landroid/net/http/CertificateValidatorCache$CacheEntry;->mSave:J

    add-long/2addr v2, v4

    sput-wide v2, Landroid/net/http/CertificateValidatorCache;->mSave:J

    .line 157
    .end local v0           #cacheEntry:Landroid/net/http/CertificateValidatorCache$CacheEntry;
    :cond_37
    :goto_37
    return v1

    .line 151
    .restart local v0       #cacheEntry:Landroid/net/http/CertificateValidatorCache$CacheEntry;
    :cond_38
    iget-object v2, p0, Landroid/net/http/CertificateValidatorCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37
.end method

.method public put(Ljava/lang/String;[BJ)Z
    .registers 13
    .parameter "domain"
    .parameter "secureHash"
    .parameter "save"

    .prologue
    .line 167
    if-eqz p1, :cond_29

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_29

    .line 168
    if-eqz p2, :cond_29

    array-length v0, p2

    if-eqz v0, :cond_29

    .line 169
    iget-object v6, p0, Landroid/net/http/CertificateValidatorCache;->mCacheMap:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/Integer;

    iget v0, p0, Landroid/net/http/CertificateValidatorCache;->mBigScrew:I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-direct {v7, v0}, Ljava/lang/Integer;-><init>(I)V

    new-instance v0, Landroid/net/http/CertificateValidatorCache$CacheEntry;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/net/http/CertificateValidatorCache$CacheEntry;-><init>(Landroid/net/http/CertificateValidatorCache;Ljava/lang/String;[BJ)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const/4 v0, 0x1

    .line 177
    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method
