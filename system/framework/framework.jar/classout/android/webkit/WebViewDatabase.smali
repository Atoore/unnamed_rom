.class public Landroid/webkit/WebViewDatabase;
.super Ljava/lang/Object;
.source "WebViewDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewDatabase$CacheAccessStat;
    }
.end annotation


# static fields
.field private static final CACHE_ACCESSCOUNTER_COL:Ljava/lang/String; = "accesscounter"

.field private static CACHE_ADVANCE_STEP_PRIO:J = 0x0L

.field private static CACHE_ADVANCE_STEP_WEIGHT:J = 0x0L

.field private static final CACHE_CONTENTDISPOSITION_COL:Ljava/lang/String; = "contentdisposition"

.field private static final CACHE_CONTENTLENGTH_COL:Ljava/lang/String; = "contentlength"

.field private static final CACHE_CROSSDOMAIN_COL:Ljava/lang/String; = "crossdomain"

.field private static final CACHE_DATABASE_FILE:Ljava/lang/String; = "webviewCache.db"

.field private static final CACHE_DATABASE_VERSION:I = 0x5

.field private static final CACHE_ENCODING_COL:Ljava/lang/String; = "encoding"

.field private static final CACHE_ETAG_COL:Ljava/lang/String; = "etag"

.field private static CACHE_EVICT_EXPIRED:I = 0x0

.field private static final CACHE_EVICT_EXPIRED_DEF:I = 0x0

.field private static final CACHE_EXPIRES_COL:Ljava/lang/String; = "expires"

.field private static final CACHE_EXPIRES_STRING_COL:Ljava/lang/String; = "expiresstring"

.field private static final CACHE_FILE_PATH_COL:Ljava/lang/String; = "filepath"

.field private static final CACHE_HTTP_STATUS_COL:Ljava/lang/String; = "httpstatus"

.field private static final CACHE_LASTACCESSTIME_COL:Ljava/lang/String; = "lastaccesstime"

.field private static final CACHE_LAST_MODIFY_COL:Ljava/lang/String; = "lastmodify"

.field private static final CACHE_LOCATION_COL:Ljava/lang/String; = "location"

.field private static final CACHE_MIMETYPE_COL:Ljava/lang/String; = "mimetype"

.field private static CACHE_ORDER_BY:Ljava/lang/String; = null

.field private static final CACHE_ORDER_BY_DEF:Ljava/lang/String; = "expires"

.field private static final CACHE_PRIO_ADVANCE_STEP_DEF:J = 0x0L

.field private static final CACHE_STAT_ID_CSS:I = 0x2

.field private static final CACHE_STAT_ID_HTML:I = 0x1

.field private static final CACHE_STAT_ID_IMAGE:I = 0x4

.field private static final CACHE_STAT_ID_JS:I = 0x3

.field private static final CACHE_STAT_ID_OTHER:I = 0x0

.field private static final CACHE_URL_COL:Ljava/lang/String; = "url"

.field private static final CACHE_WEIGHT_ADVANCE_STEP_DEF:J = 0x0L

.field private static final CACHE_WEIGHT_COL:Ljava/lang/String; = "weight"

.field private static final COOKIES_DOMAIN_COL:Ljava/lang/String; = "domain"

.field private static final COOKIES_EXPIRES_COL:Ljava/lang/String; = "expires"

.field private static final COOKIES_NAME_COL:Ljava/lang/String; = "name"

.field private static final COOKIES_PATH_COL:Ljava/lang/String; = "path"

.field private static final COOKIES_SECURE_COL:Ljava/lang/String; = "secure"

.field private static final COOKIES_VALUE_COL:Ljava/lang/String; = "value"

.field private static final DATABASE_FILE:Ljava/lang/String; = "webview.db"

.field private static final DATABASE_VERSION:I = 0xa

.field private static final FORMDATA_NAME_COL:Ljava/lang/String; = "name"

.field private static final FORMDATA_URLID_COL:Ljava/lang/String; = "urlid"

.field private static final FORMDATA_VALUE_COL:Ljava/lang/String; = "value"

.field private static final FORMURL_URL_COL:Ljava/lang/String; = "url"

.field private static final HTTPAUTH_HOST_COL:Ljava/lang/String; = "host"

.field private static final HTTPAUTH_PASSWORD_COL:Ljava/lang/String; = "password"

.field private static final HTTPAUTH_REALM_COL:Ljava/lang/String; = "realm"

.field private static final HTTPAUTH_USERNAME_COL:Ljava/lang/String; = "username"

.field private static final ID_COL:Ljava/lang/String; = "_id"

.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field protected static final LOGTAG:Ljava/lang/String; = "webviewdatabase"

.field private static final PASSWORD_HOST_COL:Ljava/lang/String; = "host"

.field private static final PASSWORD_PASSWORD_COL:Ljava/lang/String; = "password"

.field private static final PASSWORD_USERNAME_COL:Ljava/lang/String; = "username"

.field private static final TABLE_COOKIES_ID:I = 0x0

.field private static final TABLE_FORMDATA_ID:I = 0x3

.field private static final TABLE_FORMURL_ID:I = 0x2

.field private static final TABLE_HTTPAUTH_ID:I = 0x4

.field private static final TABLE_PASSWORD_ID:I = 0x1

.field private static mCacheAccessCounterIndex:I

.field private static mCacheContentDispositionColIndex:I

.field private static mCacheContentLengthColIndex:I

.field private static mCacheCrossDomainColIndex:I

.field private static mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private static mCacheETagColIndex:I

.field private static mCacheEncodingColIndex:I

.field private static mCacheExpiresColIndex:I

.field private static mCacheExpiresStringColIndex:I

.field private static mCacheFilePathColIndex:I

.field private static mCacheHttpStatusColIndex:I

.field private static mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private static mCacheLastAccessTimeIndex:I

.field private static mCacheLastModifyColIndex:I

.field private static mCacheLocationColIndex:I

.field private static mCacheMimeTypeColIndex:I

.field private static mCacheStat:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/webkit/WebViewDatabase$CacheAccessStat;",
            ">;"
        }
    .end annotation
.end field

.field private static mCacheTransactionRefcount:I

.field private static mCacheUrlColIndex:I

.field private static mCacheWeightIndex:I

.field private static mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private static mInstance:Landroid/webkit/WebViewDatabase;

.field private static final mTableNames:[Ljava/lang/String;


# instance fields
.field private final mCacheStatLock:Ljava/lang/Object;

.field private final mCookieLock:Ljava/lang/Object;

.field private final mFormLock:Ljava/lang/Object;

.field private final mHttpAuthLock:Ljava/lang/Object;

.field private final mPasswordLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 76
    sput-object v0, Landroid/webkit/WebViewDatabase;->mInstance:Landroid/webkit/WebViewDatabase;

    .line 78
    sput-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 79
    sput-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 87
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "cookies"

    aput-object v1, v0, v3

    const-string/jumbo v1, "password"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "formurl"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "formdata"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "httpauth"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    .line 105
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Landroid/webkit/WebViewDatabase;->ID_PROJECTION:[Ljava/lang/String;

    .line 213
    const-string v0, "expires"

    sput-object v0, Landroid/webkit/WebViewDatabase;->CACHE_ORDER_BY:Ljava/lang/String;

    .line 219
    sput v3, Landroid/webkit/WebViewDatabase;->CACHE_EVICT_EXPIRED:I

    .line 220
    sput-wide v5, Landroid/webkit/WebViewDatabase;->CACHE_ADVANCE_STEP_PRIO:J

    .line 221
    sput-wide v5, Landroid/webkit/WebViewDatabase;->CACHE_ADVANCE_STEP_WEIGHT:J

    .line 296
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/webkit/WebViewDatabase;->mCacheStat:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewDatabase;->mPasswordLock:Ljava/lang/Object;

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewDatabase;->mFormLock:Ljava/lang/Object;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewDatabase;->mHttpAuthLock:Ljava/lang/Object;

    .line 295
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebViewDatabase;->mCacheStatLock:Ljava/lang/Object;

    .line 302
    return-void
.end method

.method static synthetic access$000()J
    .registers 2

    .prologue
    .line 49
    sget-wide v0, Landroid/webkit/WebViewDatabase;->CACHE_ADVANCE_STEP_PRIO:J

    return-wide v0
.end method

.method static synthetic access$100()J
    .registers 2

    .prologue
    .line 49
    sget-wide v0, Landroid/webkit/WebViewDatabase;->CACHE_ADVANCE_STEP_WEIGHT:J

    return-wide v0
.end method

.method private static bootstrapCacheDatabase()V
    .registers 2

    .prologue
    .line 515
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_12

    .line 516
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE cache (_id INTEGER PRIMARY KEY, url TEXT, filepath TEXT, lastmodify TEXT, etag TEXT, expires INTEGER, expiresstring TEXT, mimetype TEXT, encoding TEXT,httpstatus INTEGER, location TEXT, contentlength INTEGER, contentdisposition TEXT, crossdomain TEXT,lastaccesstime INTEGER,accesscounter INTEGER,weight INTEGER, UNIQUE (url) ON CONFLICT REPLACE);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 533
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX cacheUrlIndex ON cache (url)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 536
    :cond_12
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;
    .registers 6
    .parameter "context"

    .prologue
    const-string/jumbo v1, "webviewCache.db"

    const-string/jumbo v1, "webview.db"

    .line 305
    const-class v1, Landroid/webkit/WebViewDatabase;

    monitor-enter v1

    :try_start_9
    sget-object v2, Landroid/webkit/WebViewDatabase;->mInstance:Landroid/webkit/WebViewDatabase;

    if-nez v2, :cond_163

    .line 306
    new-instance v2, Landroid/webkit/WebViewDatabase;

    invoke-direct {v2}, Landroid/webkit/WebViewDatabase;-><init>()V

    sput-object v2, Landroid/webkit/WebViewDatabase;->mInstance:Landroid/webkit/WebViewDatabase;

    .line 308
    const-string/jumbo v2, "nw.cache.evictexpired"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->CACHE_EVICT_EXPIRED:I

    .line 309
    const-string/jumbo v2, "nw.cache.prioadvstep"

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Landroid/webkit/WebViewDatabase;->CACHE_ADVANCE_STEP_PRIO:J

    .line 310
    const-string/jumbo v2, "nw.cache.weightadvstep"

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Landroid/webkit/WebViewDatabase;->CACHE_ADVANCE_STEP_WEIGHT:J

    .line 311
    const-string/jumbo v2, "nw.cache.orderby"

    const-string v3, "expires"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/webkit/WebViewDatabase;->CACHE_ORDER_BY:Ljava/lang/String;
    :try_end_3f
    .catchall {:try_start_9 .. :try_end_3f} :catchall_17f

    .line 315
    :try_start_3f
    const-string/jumbo v2, "webview.db"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4a
    .catchall {:try_start_3f .. :try_end_4a} :catchall_17f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3f .. :try_end_4a} :catch_167

    .line 327
    :cond_4a
    :goto_4a
    :try_start_4a
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_6a

    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_6a

    .line 328
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_5d
    .catchall {:try_start_4a .. :try_end_5d} :catchall_17f

    .line 330
    :try_start_5d
    invoke-static {}, Landroid/webkit/WebViewDatabase;->upgradeDatabase()V

    .line 331
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_65
    .catchall {:try_start_5d .. :try_end_65} :catchall_182

    .line 333
    :try_start_65
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 337
    :cond_6a
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_74

    .line 340
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V
    :try_end_74
    .catchall {:try_start_65 .. :try_end_74} :catchall_17f

    .line 344
    :cond_74
    :try_start_74
    const-string/jumbo v2, "webviewCache.db"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7f
    .catchall {:try_start_74 .. :try_end_7f} :catchall_17f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_74 .. :try_end_7f} :catch_189

    .line 356
    :cond_7f
    :goto_7f
    :try_start_7f
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_a4

    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_a4

    .line 358
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_91
    .catchall {:try_start_7f .. :try_end_91} :catchall_17f

    .line 360
    :try_start_91
    invoke-static {}, Landroid/webkit/WebViewDatabase;->upgradeCacheDatabase()V

    .line 361
    invoke-static {}, Landroid/webkit/WebViewDatabase;->bootstrapCacheDatabase()V

    .line 362
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9c
    .catchall {:try_start_91 .. :try_end_9c} :catchall_1a1

    .line 364
    :try_start_9c
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 369
    invoke-static {}, Landroid/webkit/CacheManager;->removeAllCacheFiles()Z

    .line 372
    :cond_a4
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_163

    .line 374
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "PRAGMA read_uncommitted = true;"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 378
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    .line 381
    new-instance v2, Landroid/database/DatabaseUtils$InsertHelper;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "cache"

    invoke-direct {v2, v3, v4}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    sput-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 383
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheUrlColIndex:I

    .line 385
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "filepath"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheFilePathColIndex:I

    .line 387
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "lastmodify"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheLastModifyColIndex:I

    .line 389
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "etag"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheETagColIndex:I

    .line 391
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "expires"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheExpiresColIndex:I

    .line 393
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "expiresstring"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheExpiresStringColIndex:I

    .line 395
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string/jumbo v3, "mimetype"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheMimeTypeColIndex:I

    .line 397
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "encoding"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheEncodingColIndex:I

    .line 399
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "httpstatus"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheHttpStatusColIndex:I

    .line 401
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheLocationColIndex:I

    .line 403
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "contentlength"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheContentLengthColIndex:I

    .line 405
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "contentdisposition"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheContentDispositionColIndex:I

    .line 407
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "crossdomain"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheCrossDomainColIndex:I

    .line 410
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "lastaccesstime"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheLastAccessTimeIndex:I

    .line 412
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "accesscounter"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheAccessCounterIndex:I

    .line 414
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    const-string/jumbo v3, "weight"

    invoke-virtual {v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    sput v2, Landroid/webkit/WebViewDatabase;->mCacheWeightIndex:I

    .line 420
    :cond_163
    sget-object v2, Landroid/webkit/WebViewDatabase;->mInstance:Landroid/webkit/WebViewDatabase;
    :try_end_165
    .catchall {:try_start_9c .. :try_end_165} :catchall_17f

    monitor-exit v1

    return-object v2

    .line 317
    :catch_167
    move-exception v2

    move-object v0, v2

    .line 319
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    :try_start_169
    const-string/jumbo v2, "webview.db"

    invoke-virtual {p0, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 320
    const-string/jumbo v2, "webview.db"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_17d
    .catchall {:try_start_169 .. :try_end_17d} :catchall_17f

    goto/16 :goto_4a

    .line 305
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_17f
    move-exception v2

    monitor-exit v1

    throw v2

    .line 333
    :catchall_182
    move-exception v2

    :try_start_183
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 346
    :catch_189
    move-exception v2

    move-object v0, v2

    .line 348
    .restart local v0       #e:Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v2, "webviewCache.db"

    invoke-virtual {p0, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 349
    const-string/jumbo v2, "webviewCache.db"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    goto/16 :goto_7f

    .line 364
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_1a1
    move-exception v2

    sget-object v3, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
    :try_end_1a8
    .catchall {:try_start_183 .. :try_end_1a8} :catchall_17f
.end method

.method private hasEntries(I)Z
    .registers 15
    .parameter "tableId"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 581
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_8

    move v0, v11

    .line 596
    :goto_7
    return v0

    .line 585
    :cond_8
    const/4 v8, 0x0

    .line 586
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 588
    .local v10, ret:Z
    :try_start_a
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    sget-object v2, Landroid/webkit/WebViewDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 590
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_3b
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_1e} :catch_2b

    move-result v0

    if-ne v0, v12, :cond_29

    move v10, v12

    .line 594
    :goto_22
    if-eqz v8, :cond_27

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_27
    :goto_27
    move v0, v10

    .line 596
    goto :goto_7

    :cond_29
    move v10, v11

    .line 590
    goto :goto_22

    .line 591
    :catch_2b
    move-exception v0

    move-object v9, v0

    .line 592
    .local v9, e:Ljava/lang/IllegalStateException;
    :try_start_2d
    const-string/jumbo v0, "webviewdatabase"

    const-string v1, "hasEntries"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_3b

    .line 594
    if-eqz v8, :cond_27

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_27

    .end local v9           #e:Ljava/lang/IllegalStateException;
    :catchall_3b
    move-exception v0

    if-eqz v8, :cond_41

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_41
    throw v0
.end method

.method private static upgradeCacheDatabase()V
    .registers 4

    .prologue
    .line 504
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    .line 505
    .local v0, oldVersion:I
    if-eqz v0, :cond_33

    .line 506
    const-string/jumbo v1, "webviewdatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrading cache database from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", which will destroy all old data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_33
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS cache"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 511
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 512
    return-void
.end method

.method private static upgradeDatabase()V
    .registers 12

    .prologue
    const-string v11, "DROP TABLE IF EXISTS "

    const-string v10, "CREATE TABLE "

    const-string v9, " INTEGER PRIMARY KEY, "

    const-string v8, " ("

    const-string v7, " TEXT, "

    .line 424
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    .line 425
    .local v2, oldVersion:I
    if-eqz v2, :cond_3d

    .line 426
    const-string/jumbo v3, "webviewdatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upgrading database from version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", which will destroy old data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_3d
    const/16 v3, 0x8

    if-ne v3, v2, :cond_41

    :cond_41
    const/4 v1, 0x0

    .line 431
    .local v1, justPasswords:Z
    const/16 v3, 0x9

    if-ne v3, v2, :cond_e9

    const/4 v3, 0x1

    move v0, v3

    .line 432
    .local v0, justAuth:Z
    :goto_48
    if-eqz v0, :cond_ed

    .line 433
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROP TABLE IF EXISTS "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 435
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE TABLE "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " INTEGER PRIMARY KEY, "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "host"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "realm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "username"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "password"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " UNIQUE ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "host"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "realm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") ON CONFLICT REPLACE);"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 501
    :goto_e8
    return-void

    .line 431
    .end local v0           #justAuth:Z
    :cond_e9
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_48

    .line 445
    .restart local v0       #justAuth:Z
    :cond_ed
    if-nez v1, :cond_16a

    .line 446
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROP TABLE IF EXISTS "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 448
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "DROP TABLE IF EXISTS cache"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 449
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROP TABLE IF EXISTS "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 451
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROP TABLE IF EXISTS "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 453
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROP TABLE IF EXISTS "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 456
    :cond_16a
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROP TABLE IF EXISTS "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 459
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 461
    if-nez v1, :cond_37a

    .line 463
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE TABLE "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " INTEGER PRIMARY KEY, "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "domain"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "path"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "expires"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " INTEGER, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "secure"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " INTEGER"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ");"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 469
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE INDEX cookiesIndex ON "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (path)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 473
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE TABLE "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " INTEGER PRIMARY KEY, "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "url"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ");"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 478
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE TABLE "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " INTEGER PRIMARY KEY, "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "urlid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " INTEGER, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " UNIQUE ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "urlid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") ON CONFLICT IGNORE);"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 486
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE TABLE "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " INTEGER PRIMARY KEY, "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "host"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "realm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "username"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "password"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " UNIQUE ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "host"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "realm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") ON CONFLICT REPLACE);"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 495
    :cond_37a
    sget-object v3, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE TABLE "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " INTEGER PRIMARY KEY, "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "host"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "username"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT, "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "password"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " UNIQUE ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "host"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "username"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") ON CONFLICT REPLACE);"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_e8
.end method


# virtual methods
.method addCache(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)V
    .registers 8
    .parameter "url"
    .parameter "c"

    .prologue
    .line 876
    if-eqz p1, :cond_6

    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_7

    .line 910
    :cond_6
    :goto_6
    return-void

    .line 880
    :cond_7
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v1}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForInsert()V

    .line 881
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v2, Landroid/webkit/WebViewDatabase;->mCacheUrlColIndex:I

    invoke-virtual {v1, v2, p1}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 882
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v2, Landroid/webkit/WebViewDatabase;->mCacheFilePathColIndex:I

    iget-object v3, p2, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 883
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v2, Landroid/webkit/WebViewDatabase;->mCacheLastModifyColIndex:I

    iget-object v3, p2, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 884
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v2, Landroid/webkit/WebViewDatabase;->mCacheETagColIndex:I

    iget-object v3, p2, Landroid/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 885
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v2, Landroid/webkit/WebViewDatabase;->mCacheExpiresColIndex:I

    iget-wide v3, p2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    .line 886
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v2, Landroid/webkit/WebViewDatabase;->mCacheExpiresStringColIndex:I

    iget-object v3, p2, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 887
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v2, Landroid/webkit/WebViewDatabase;->mCacheMimeTypeColIndex:I

    iget-object v3, p2, Landroid/webkit/CacheManager$CacheResult;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 888
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v2, Landroid/webkit/WebViewDatabase;->mCacheEncodingColIndex:I

    iget-object v3, p2, Landroid/webkit/CacheManager$CacheResult;->encoding:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 889
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v2, Landroid/webkit/WebViewDatabase;->mCacheHttpStatusColIndex:I

    iget v3, p2, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    invoke-virtual {v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    .line 890
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v2, Landroid/webkit/WebViewDatabase;->mCacheLocationColIndex:I

    iget-object v3, p2, Landroid/webkit/CacheManager$CacheResult;->location:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 891
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v2, Landroid/webkit/WebViewDatabase;->mCacheContentLengthColIndex:I

    iget-wide v3, p2, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    .line 892
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v2, Landroid/webkit/WebViewDatabase;->mCacheContentDispositionColIndex:I

    iget-object v3, p2, Landroid/webkit/CacheManager$CacheResult;->contentdisposition:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 894
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v2, Landroid/webkit/WebViewDatabase;->mCacheCrossDomainColIndex:I

    iget-object v3, p2, Landroid/webkit/CacheManager$CacheResult;->crossDomain:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 896
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebViewDatabase;->updateCacheStat(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)Landroid/webkit/WebViewDatabase$CacheAccessStat;

    move-result-object v0

    .line 897
    .local v0, cacheStat:Landroid/webkit/WebViewDatabase$CacheAccessStat;
    if-nez v0, :cond_aa

    .line 898
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v2, Landroid/webkit/WebViewDatabase;->mCacheLastAccessTimeIndex:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    .line 899
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v2, Landroid/webkit/WebViewDatabase;->mCacheAccessCounterIndex:I

    iget v3, p2, Landroid/webkit/CacheManager$CacheResult;->accessCounter:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    .line 900
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v2, Landroid/webkit/WebViewDatabase;->mCacheWeightIndex:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    .line 909
    :goto_a3
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v1}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J

    goto/16 :goto_6

    .line 903
    :cond_aa
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v2, Landroid/webkit/WebViewDatabase;->mCacheLastAccessTimeIndex:I

    iget-wide v3, v0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mLastAccessTime:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    .line 904
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v2, Landroid/webkit/WebViewDatabase;->mCacheAccessCounterIndex:I

    iget v3, v0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mCacheAccessCounter:I

    invoke-virtual {v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    .line 905
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheInserter:Landroid/database/DatabaseUtils$InsertHelper;

    sget v2, Landroid/webkit/WebViewDatabase;->mCacheWeightIndex:I

    iget-wide v3, v0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mWeight:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    goto :goto_a3
.end method

.method addCookie(Landroid/webkit/CookieManager$Cookie;)V
    .registers 8
    .parameter "cookie"

    .prologue
    .line 689
    iget-object v1, p1, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v1, p1, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v1, p1, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    if-eqz v1, :cond_10

    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_11

    .line 706
    :cond_10
    :goto_10
    return-void

    .line 694
    :cond_11
    iget-object v1, p0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    monitor-enter v1

    .line 695
    :try_start_14
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 696
    .local v0, cookieVal:Landroid/content/ContentValues;
    const-string v2, "domain"

    iget-object v3, p1, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    const-string/jumbo v2, "path"

    iget-object v3, p1, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    const-string/jumbo v2, "name"

    iget-object v3, p1, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const-string/jumbo v2, "value"

    iget-object v3, p1, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    iget-wide v2, p1, Landroid/webkit/CookieManager$Cookie;->expires:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4b

    .line 701
    const-string v2, "expires"

    iget-wide v3, p1, Landroid/webkit/CookieManager$Cookie;->expires:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 703
    :cond_4b
    const-string/jumbo v2, "secure"

    iget-boolean v3, p1, Landroid/webkit/CookieManager$Cookie;->secure:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 704
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 705
    monitor-exit v1

    goto :goto_10

    .end local v0           #cookieVal:Landroid/content/ContentValues;
    :catchall_64
    move-exception v2

    monitor-exit v1
    :try_end_66
    .catchall {:try_start_14 .. :try_end_66} :catchall_64

    throw v2
.end method

.method clearCache()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 916
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_6

    .line 927
    :goto_5
    return-void

    .line 920
    :cond_6
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 922
    iget-object v0, p0, Landroid/webkit/WebViewDatabase;->mCacheStatLock:Ljava/lang/Object;

    monitor-enter v0

    .line 923
    :try_start_10
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheStat:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 924
    monitor-exit v0

    goto :goto_5

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw v1
.end method

.method clearCookies()V
    .registers 6

    .prologue
    .line 723
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_5

    .line 730
    :goto_4
    return-void

    .line 727
    :cond_5
    iget-object v0, p0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    monitor-enter v0

    .line 728
    :try_start_8
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 729
    monitor-exit v0

    goto :goto_4

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_16

    throw v1
.end method

.method clearExpiredCookies(J)V
    .registers 11
    .parameter "now"

    .prologue
    .line 753
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_5

    .line 762
    :goto_4
    return-void

    .line 757
    :cond_5
    const-string v0, "expires <= ?"

    .line 758
    .local v0, expires:Ljava/lang/String;
    iget-object v1, p0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    monitor-enter v1

    .line 759
    :try_start_a
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string v4, "expires <= ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 761
    monitor-exit v1

    goto :goto_4

    :catchall_22
    move-exception v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_a .. :try_end_24} :catchall_22

    throw v2
.end method

.method public clearFormData()V
    .registers 6

    .prologue
    .line 1390
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_5

    .line 1398
    :goto_4
    return-void

    .line 1394
    :cond_5
    iget-object v0, p0, Landroid/webkit/WebViewDatabase;->mFormLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1395
    :try_start_8
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1396
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1397
    monitor-exit v0

    goto :goto_4

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public clearHttpAuthUsernamePassword()V
    .registers 6

    .prologue
    .line 1230
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_5

    .line 1237
    :goto_4
    return-void

    .line 1234
    :cond_5
    iget-object v0, p0, Landroid/webkit/WebViewDatabase;->mHttpAuthLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1235
    :try_start_8
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1236
    monitor-exit v0

    goto :goto_4

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_16

    throw v1
.end method

.method clearSessionCookies()V
    .registers 7

    .prologue
    .line 736
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_5

    .line 745
    :goto_4
    return-void

    .line 740
    :cond_5
    const-string v0, "expires ISNULL"

    .line 741
    .local v0, sessionExpired:Ljava/lang/String;
    iget-object v1, p0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    monitor-enter v1

    .line 742
    :try_start_a
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string v4, "expires ISNULL"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 744
    monitor-exit v1

    goto :goto_4

    :catchall_19
    move-exception v2

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_19

    throw v2
.end method

.method public clearUsernamePassword()V
    .registers 6

    .prologue
    .line 1133
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_5

    .line 1140
    :goto_4
    return-void

    .line 1137
    :cond_5
    iget-object v0, p0, Landroid/webkit/WebViewDatabase;->mPasswordLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1138
    :try_start_8
    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1139
    monitor-exit v0

    goto :goto_4

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_16

    throw v1
.end method

.method deleteCookies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "domain"
    .parameter "path"
    .parameter "name"

    .prologue
    .line 670
    if-eqz p1, :cond_6

    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_7

    .line 681
    :cond_6
    :goto_6
    return-void

    .line 674
    :cond_7
    iget-object v1, p0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    monitor-enter v1

    .line 675
    :try_start_a
    const-string v0, "(domain == ?) AND (path == ?) AND (name == ?)"

    .line 678
    .local v0, where:Ljava/lang/String;
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string v4, "(domain == ?) AND (path == ?) AND (name == ?)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 680
    monitor-exit v1

    goto :goto_6

    .end local v0           #where:Ljava/lang/String;
    :catchall_26
    move-exception v2

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_26

    throw v2
.end method

.method endCacheTransaction()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 785
    sget v0, Landroid/webkit/WebViewDatabase;->mCacheTransactionRefcount:I

    sub-int/2addr v0, v3

    sput v0, Landroid/webkit/WebViewDatabase;->mCacheTransactionRefcount:I

    if-nez v0, :cond_52

    .line 786
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewWorker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 788
    const-string/jumbo v0, "webviewdatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endCacheTransaction should be called from WebViewWorkerThread instead of from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_3f
    :try_start_3f
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_4b

    .line 795
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v3

    .line 799
    :goto_4a
    return v0

    .line 795
    :catchall_4b
    move-exception v0

    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 799
    :cond_52
    const/4 v0, 0x0

    goto :goto_4a
.end method

.method flushCacheStat()V
    .registers 10

    .prologue
    const-string v4, "="

    const-string v4, ","

    .line 563
    iget-object v4, p0, Landroid/webkit/WebViewDatabase;->mCacheStatLock:Ljava/lang/Object;

    monitor-enter v4

    .line 564
    :try_start_7
    sget-object v5, Landroid/webkit/WebViewDatabase;->mCacheStat:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a1

    .line 565
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 566
    .local v2, start:J
    sget-object v5, Landroid/webkit/WebViewDatabase;->mCacheStat:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, i$:Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 567
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/webkit/WebViewDatabase$CacheAccessStat;>;"
    sget-object v5, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE cache SET lastaccesstime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;

    iget-wide v7, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mLastAccessTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "accesscounter"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;

    iget v7, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mCacheAccessCounter:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "weight"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;

    iget-wide v7, p0, Landroid/webkit/WebViewDatabase$CacheAccessStat;->mWeight:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE url = ?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1d

    .line 575
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/webkit/WebViewDatabase$CacheAccessStat;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #start:J
    :catchall_99
    move-exception v5

    monitor-exit v4
    :try_end_9b
    .catchall {:try_start_7 .. :try_end_9b} :catchall_99

    throw v5

    .line 573
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #start:J
    :cond_9c
    :try_start_9c
    sget-object v5, Landroid/webkit/WebViewDatabase;->mCacheStat:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 575
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #start:J
    :cond_a1
    monitor-exit v4
    :try_end_a2
    .catchall {:try_start_9c .. :try_end_a2} :catchall_99

    .line 576
    return-void
.end method

.method getAllCacheFileNames()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1032
    const/4 v2, 0x0

    .line 1033
    .local v2, pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1035
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_2
    sget-object v4, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT filepath FROM cache"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1037
    if-eqz v0, :cond_2b

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1038
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_41
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_1c} :catch_31

    .line 1040
    .end local v2           #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v3, pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1c
    const/4 v4, 0x0

    :try_start_1d
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1041
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_48
    .catch Ljava/lang/IllegalStateException; {:try_start_1d .. :try_end_27} :catch_4b

    move-result v4

    if-nez v4, :cond_1c

    move-object v2, v3

    .line 1046
    .end local v3           #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2b
    if-eqz v0, :cond_30

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1048
    :cond_30
    :goto_30
    return-object v2

    .line 1043
    :catch_31
    move-exception v4

    move-object v1, v4

    .line 1044
    .local v1, e:Ljava/lang/IllegalStateException;
    :goto_33
    :try_start_33
    const-string/jumbo v4, "webviewdatabase"

    const-string v5, "getAllCacheFileNames"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_41

    .line 1046
    if-eqz v0, :cond_30

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_30

    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catchall_41
    move-exception v4

    :goto_42
    if-eqz v0, :cond_47

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_47
    throw v4

    .end local v2           #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_48
    move-exception v4

    move-object v2, v3

    .end local v3           #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_42

    .line 1043
    .end local v2           #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_4b
    move-exception v4

    move-object v1, v4

    move-object v2, v3

    .end local v3           #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_33
.end method

.method getCache(Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;
    .registers 11
    .parameter "url"

    .prologue
    const/4 v8, 0x0

    .line 809
    if-eqz p1, :cond_7

    sget-object v4, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_9

    :cond_7
    move-object v4, v8

    .line 848
    :goto_8
    return-object v4

    .line 813
    :cond_9
    const/4 v0, 0x0

    .line 814
    .local v0, cursor:Landroid/database/Cursor;
    const-string v2, "SELECT filepath, lastmodify, etag, expires, expiresstring, mimetype, encoding, httpstatus, location, contentlength, contentdisposition, crossdomain, accesscounter FROM cache WHERE url = ?"

    .line 822
    .local v2, query:Ljava/lang/String;
    :try_start_c
    sget-object v4, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT filepath, lastmodify, etag, expires, expiresstring, mimetype, encoding, httpstatus, location, contentlength, contentdisposition, crossdomain, accesscounter FROM cache WHERE url = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 823
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_90

    .line 824
    new-instance v3, Landroid/webkit/CacheManager$CacheResult;

    invoke-direct {v3}, Landroid/webkit/CacheManager$CacheResult;-><init>()V

    .line 825
    .local v3, ret:Landroid/webkit/CacheManager$CacheResult;
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    .line 826
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    .line 827
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    .line 828
    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/webkit/CacheManager$CacheResult;->expires:J

    .line 829
    const/4 v4, 0x4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    .line 830
    const/4 v4, 0x5

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->mimeType:Ljava/lang/String;

    .line 831
    const/4 v4, 0x6

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->encoding:Ljava/lang/String;

    .line 832
    const/4 v4, 0x7

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    .line 833
    const/16 v4, 0x8

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->location:Ljava/lang/String;

    .line 834
    const/16 v4, 0x9

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    .line 835
    const/16 v4, 0xa

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->contentdisposition:Ljava/lang/String;

    .line 836
    const/16 v4, 0xb

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->crossDomain:Ljava/lang/String;

    .line 838
    const/16 v4, 0xc

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Landroid/webkit/CacheManager$CacheResult;->accessCounter:I

    .line 839
    invoke-virtual {p0, p1, v3}, Landroid/webkit/WebViewDatabase;->updateCacheStat(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)Landroid/webkit/WebViewDatabase$CacheAccessStat;
    :try_end_88
    .catchall {:try_start_c .. :try_end_88} :catchall_a8
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_88} :catch_98

    .line 846
    if-eqz v0, :cond_8d

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8d
    move-object v4, v3

    goto/16 :goto_8

    .end local v3           #ret:Landroid/webkit/CacheManager$CacheResult;
    :cond_90
    if-eqz v0, :cond_95

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_95
    :goto_95
    move-object v4, v8

    .line 848
    goto/16 :goto_8

    .line 843
    :catch_98
    move-exception v4

    move-object v1, v4

    .line 844
    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_9a
    const-string/jumbo v4, "webviewdatabase"

    const-string v5, "getCache"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a2
    .catchall {:try_start_9a .. :try_end_a2} :catchall_a8

    .line 846
    if-eqz v0, :cond_95

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_95

    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catchall_a8
    move-exception v4

    if-eqz v0, :cond_ae

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_ae
    throw v4
.end method

.method getCacheTotalSize()J
    .registers 9

    .prologue
    .line 949
    sget-object v5, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_7

    .line 950
    const-wide/16 v5, 0x0

    .line 965
    :goto_6
    return-wide v5

    .line 952
    :cond_7
    const-wide/16 v3, 0x0

    .line 953
    .local v3, size:J
    const/4 v0, 0x0

    .line 954
    .local v0, cursor:Landroid/database/Cursor;
    const-string v2, "SELECT SUM(contentlength) as sum FROM cache"

    .line 956
    .local v2, query:Ljava/lang/String;
    :try_start_c
    sget-object v5, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "SELECT SUM(contentlength) as sum FROM cache"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 957
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 958
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_37
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_1f} :catch_27

    move-result-wide v3

    .line 963
    :cond_20
    if-eqz v0, :cond_25

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_25
    :goto_25
    move-wide v5, v3

    .line 965
    goto :goto_6

    .line 960
    :catch_27
    move-exception v5

    move-object v1, v5

    .line 961
    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_29
    const-string/jumbo v5, "webviewdatabase"

    const-string v6, "getCacheTotalSize"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_37

    .line 963
    if-eqz v0, :cond_25

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_25

    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catchall_37
    move-exception v5

    if-eqz v0, :cond_3d

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3d
    throw v5
.end method

.method getCookiesForDomain(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 24
    .parameter "domain"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/CookieManager$Cookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 610
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 611
    .local v15, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    if-eqz p1, :cond_b

    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_c

    .line 656
    :cond_b
    :goto_b
    return-object v15

    .line 615
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 616
    const/4 v2, 0x7

    :try_start_14
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "domain"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "path"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "name"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "value"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "expires"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "secure"

    aput-object v3, v4, v2

    .line 621
    .local v4, columns:[Ljava/lang/String;
    const-string v19, "(domain GLOB \'*\' || ?)"
    :try_end_3f
    .catchall {:try_start_14 .. :try_end_3f} :catchall_d4

    .line 623
    .local v19, selection:Ljava/lang/String;
    const/4 v11, 0x0

    .line 625
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_40
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    const-string v5, "(domain GLOB \'*\' || ?)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 628
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 629
    const-string v2, "domain"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 630
    .local v12, domainCol:I
    const-string/jumbo v2, "path"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 631
    .local v17, pathCol:I
    const-string/jumbo v2, "name"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 632
    .local v16, nameCol:I
    const-string/jumbo v2, "value"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 633
    .local v20, valueCol:I
    const-string v2, "expires"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 634
    .local v14, expiresCol:I
    const-string/jumbo v2, "secure"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 636
    .local v18, secureCol:I
    :cond_84
    new-instance v10, Landroid/webkit/CookieManager$Cookie;

    invoke-direct {v10}, Landroid/webkit/CookieManager$Cookie;-><init>()V

    .line 637
    .local v10, cookie:Landroid/webkit/CookieManager$Cookie;
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Landroid/webkit/CookieManager$Cookie;->domain:Ljava/lang/String;

    .line 638
    move-object v0, v11

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Landroid/webkit/CookieManager$Cookie;->path:Ljava/lang/String;

    .line 639
    move-object v0, v11

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Landroid/webkit/CookieManager$Cookie;->name:Ljava/lang/String;

    .line 640
    move-object v0, v11

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Landroid/webkit/CookieManager$Cookie;->value:Ljava/lang/String;

    .line 641
    invoke-interface {v11, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 642
    const-wide/16 v2, -0x1

    iput-wide v2, v10, Landroid/webkit/CookieManager$Cookie;->expires:J

    .line 646
    :goto_b4
    move-object v0, v11

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v2

    if-eqz v2, :cond_ee

    const/4 v2, 0x1

    :goto_be
    iput-boolean v2, v10, Landroid/webkit/CookieManager$Cookie;->secure:Z

    .line 647
    const/4 v2, 0x1

    iput-byte v2, v10, Landroid/webkit/CookieManager$Cookie;->mode:B

    .line 648
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_c9
    .catchall {:try_start_40 .. :try_end_c9} :catchall_f0
    .catch Ljava/lang/IllegalStateException; {:try_start_40 .. :try_end_c9} :catch_de

    move-result v2

    if-nez v2, :cond_84

    .line 654
    .end local v10           #cookie:Landroid/webkit/CookieManager$Cookie;
    .end local v12           #domainCol:I
    .end local v14           #expiresCol:I
    .end local v16           #nameCol:I
    .end local v17           #pathCol:I
    .end local v18           #secureCol:I
    .end local v20           #valueCol:I
    :cond_cc
    if-eqz v11, :cond_d1

    :try_start_ce
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 656
    :cond_d1
    :goto_d1
    monitor-exit v21

    goto/16 :goto_b

    .line 657
    .end local v4           #columns:[Ljava/lang/String;
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v19           #selection:Ljava/lang/String;
    :catchall_d4
    move-exception v2

    monitor-exit v21
    :try_end_d6
    .catchall {:try_start_ce .. :try_end_d6} :catchall_d4

    throw v2

    .line 644
    .restart local v4       #columns:[Ljava/lang/String;
    .restart local v10       #cookie:Landroid/webkit/CookieManager$Cookie;
    .restart local v11       #cursor:Landroid/database/Cursor;
    .restart local v12       #domainCol:I
    .restart local v14       #expiresCol:I
    .restart local v16       #nameCol:I
    .restart local v17       #pathCol:I
    .restart local v18       #secureCol:I
    .restart local v19       #selection:Ljava/lang/String;
    .restart local v20       #valueCol:I
    :cond_d7
    :try_start_d7
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v10, Landroid/webkit/CookieManager$Cookie;->expires:J
    :try_end_dd
    .catchall {:try_start_d7 .. :try_end_dd} :catchall_f0
    .catch Ljava/lang/IllegalStateException; {:try_start_d7 .. :try_end_dd} :catch_de

    goto :goto_b4

    .line 651
    .end local v10           #cookie:Landroid/webkit/CookieManager$Cookie;
    .end local v12           #domainCol:I
    .end local v14           #expiresCol:I
    .end local v16           #nameCol:I
    .end local v17           #pathCol:I
    .end local v18           #secureCol:I
    .end local v20           #valueCol:I
    :catch_de
    move-exception v2

    move-object v13, v2

    .line 652
    .local v13, e:Ljava/lang/IllegalStateException;
    :try_start_e0
    const-string/jumbo v2, "webviewdatabase"

    const-string v3, "getCookiesForDomain"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e8
    .catchall {:try_start_e0 .. :try_end_e8} :catchall_f0

    .line 654
    if-eqz v11, :cond_d1

    :try_start_ea
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_d1

    .line 646
    .end local v13           #e:Ljava/lang/IllegalStateException;
    .restart local v10       #cookie:Landroid/webkit/CookieManager$Cookie;
    .restart local v12       #domainCol:I
    .restart local v14       #expiresCol:I
    .restart local v16       #nameCol:I
    .restart local v17       #pathCol:I
    .restart local v18       #secureCol:I
    .restart local v20       #valueCol:I
    :cond_ee
    const/4 v2, 0x0

    goto :goto_be

    .line 654
    .end local v10           #cookie:Landroid/webkit/CookieManager$Cookie;
    .end local v12           #domainCol:I
    .end local v14           #expiresCol:I
    .end local v16           #nameCol:I
    .end local v17           #pathCol:I
    .end local v18           #secureCol:I
    .end local v20           #valueCol:I
    :catchall_f0
    move-exception v2

    if-eqz v11, :cond_f6

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_f6
    throw v2
    :try_end_f7
    .catchall {:try_start_ea .. :try_end_f7} :catchall_d4
.end method

.method getFormData(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 25
    .parameter "url"
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1314
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1315
    .local v21, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_e

    .line 1371
    :cond_d
    :goto_d
    return-object v21

    .line 1321
    :cond_e
    const/4 v10, 0x0

    .line 1323
    .local v10, aURL:Ljava/net/URL;
    :try_start_f
    new-instance v11, Ljava/net/URL;

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/net/MalformedURLException; {:try_start_f .. :try_end_17} :catch_ee

    .line 1324
    .end local v10           #aURL:Ljava/net/URL;
    .local v11, aURL:Ljava/net/URL;
    :try_start_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3d
    .catch Ljava/net/MalformedURLException; {:try_start_17 .. :try_end_3d} :catch_12a

    move-result-object v16

    .local v16, finalurl:Ljava/lang/String;
    move-object v10, v11

    .line 1330
    .end local v11           #aURL:Ljava/net/URL;
    .restart local v10       #aURL:Ljava/net/URL;
    :goto_3f
    sget-boolean v2, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v2, :cond_5f

    .line 1331
    const-string/jumbo v2, "webviewdatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFormData url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    :cond_5f
    const-string v17, "(url == ?)"

    .line 1335
    .local v17, urlSelection:Ljava/lang/String;
    const-string v14, "(urlid == ?) AND (name == ?)"

    .line 1337
    .local v14, dataSelection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewDatabase;->mFormLock:Ljava/lang/Object;

    move-object v10, v0

    .end local v10           #aURL:Ljava/net/URL;
    monitor-enter v10

    .line 1338
    const/4 v12, 0x0

    .line 1340
    .local v12, cursor:Landroid/database/Cursor;
    :try_start_6a
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    sget-object v4, Landroid/webkit/WebViewDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string v5, "(url == ?)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v16, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1343
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_e3

    .line 1344
    const-string v2, "_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_91
    .catchall {:try_start_6a .. :try_end_91} :catchall_123
    .catch Ljava/lang/IllegalStateException; {:try_start_6a .. :try_end_91} :catch_10c

    move-result-wide v18

    .line 1345
    .local v18, urlid:J
    const/4 v13, 0x0

    .line 1347
    .local v13, dataCursor:Landroid/database/Cursor;
    :try_start_93
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "value"

    aput-object v6, v4, v5

    const-string v5, "(urlid == ?) AND (name == ?)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1353
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_de

    .line 1354
    const-string/jumbo v2, "value"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 1357
    .local v20, valueCol:I
    :cond_cb
    move-object v0, v13

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1358
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_db
    .catchall {:try_start_93 .. :try_end_db} :catchall_11c
    .catch Ljava/lang/IllegalStateException; {:try_start_93 .. :try_end_db} :catch_fc

    move-result v2

    if-nez v2, :cond_cb

    .line 1363
    .end local v20           #valueCol:I
    :cond_de
    if-eqz v13, :cond_e3

    :try_start_e0
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_e3
    .catchall {:try_start_e0 .. :try_end_e3} :catchall_123
    .catch Ljava/lang/IllegalStateException; {:try_start_e0 .. :try_end_e3} :catch_10c

    .line 1369
    .end local v13           #dataCursor:Landroid/database/Cursor;
    .end local v18           #urlid:J
    :cond_e3
    :goto_e3
    if-eqz v12, :cond_e8

    :try_start_e5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1371
    :cond_e8
    :goto_e8
    monitor-exit v10

    goto/16 :goto_d

    .line 1372
    :catchall_eb
    move-exception v2

    monitor-exit v10
    :try_end_ed
    .catchall {:try_start_e5 .. :try_end_ed} :catchall_eb

    throw v2

    .line 1325
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v14           #dataSelection:Ljava/lang/String;
    .end local v16           #finalurl:Ljava/lang/String;
    .end local v17           #urlSelection:Ljava/lang/String;
    .restart local v10       #aURL:Ljava/net/URL;
    :catch_ee
    move-exception v2

    move-object v15, v2

    .line 1326
    .local v15, e:Ljava/net/MalformedURLException;
    :goto_f0
    const-string/jumbo v2, "webviewdatabase"

    const-string v3, "Failed in getFormData"

    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1327
    move-object/from16 v16, p1

    .restart local v16       #finalurl:Ljava/lang/String;
    goto/16 :goto_3f

    .line 1360
    .end local v10           #aURL:Ljava/net/URL;
    .end local v15           #e:Ljava/net/MalformedURLException;
    .restart local v12       #cursor:Landroid/database/Cursor;
    .restart local v13       #dataCursor:Landroid/database/Cursor;
    .restart local v14       #dataSelection:Ljava/lang/String;
    .restart local v17       #urlSelection:Ljava/lang/String;
    .restart local v18       #urlid:J
    :catch_fc
    move-exception v2

    move-object v15, v2

    .line 1361
    .local v15, e:Ljava/lang/IllegalStateException;
    :try_start_fe
    const-string/jumbo v2, "webviewdatabase"

    const-string v3, "getFormData dataCursor"

    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_106
    .catchall {:try_start_fe .. :try_end_106} :catchall_11c

    .line 1363
    if-eqz v13, :cond_e3

    :try_start_108
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_10b
    .catchall {:try_start_108 .. :try_end_10b} :catchall_123
    .catch Ljava/lang/IllegalStateException; {:try_start_108 .. :try_end_10b} :catch_10c

    goto :goto_e3

    .line 1366
    .end local v13           #dataCursor:Landroid/database/Cursor;
    .end local v15           #e:Ljava/lang/IllegalStateException;
    .end local v18           #urlid:J
    :catch_10c
    move-exception v2

    move-object v15, v2

    .line 1367
    .restart local v15       #e:Ljava/lang/IllegalStateException;
    :try_start_10e
    const-string/jumbo v2, "webviewdatabase"

    const-string v3, "getFormData cursor"

    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_116
    .catchall {:try_start_10e .. :try_end_116} :catchall_123

    .line 1369
    if-eqz v12, :cond_e8

    :try_start_118
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_11b
    .catchall {:try_start_118 .. :try_end_11b} :catchall_eb

    goto :goto_e8

    .line 1363
    .end local v15           #e:Ljava/lang/IllegalStateException;
    .restart local v13       #dataCursor:Landroid/database/Cursor;
    .restart local v18       #urlid:J
    :catchall_11c
    move-exception v2

    if-eqz v13, :cond_122

    :try_start_11f
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_122
    throw v2
    :try_end_123
    .catchall {:try_start_11f .. :try_end_123} :catchall_123
    .catch Ljava/lang/IllegalStateException; {:try_start_11f .. :try_end_123} :catch_10c

    .line 1369
    .end local v13           #dataCursor:Landroid/database/Cursor;
    .end local v18           #urlid:J
    :catchall_123
    move-exception v2

    if-eqz v12, :cond_129

    :try_start_126
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_129
    throw v2
    :try_end_12a
    .catchall {:try_start_126 .. :try_end_12a} :catchall_eb

    .line 1325
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v14           #dataSelection:Ljava/lang/String;
    .end local v16           #finalurl:Ljava/lang/String;
    .end local v17           #urlSelection:Ljava/lang/String;
    .restart local v11       #aURL:Ljava/net/URL;
    :catch_12a
    move-exception v2

    move-object v15, v2

    move-object v10, v11

    .end local v11           #aURL:Ljava/net/URL;
    .restart local v10       #aURL:Ljava/net/URL;
    goto :goto_f0
.end method

.method getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 16
    .parameter "host"
    .parameter "realm"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const-string/jumbo v6, "password"

    .line 1183
    if-eqz p1, :cond_f

    if-eqz p2, :cond_f

    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_11

    :cond_f
    move-object v0, v1

    .line 1211
    :goto_10
    return-object v0

    .line 1187
    :cond_11
    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v0, "username"

    aput-object v0, v2, v3

    const-string/jumbo v0, "password"

    aput-object v6, v2, v4

    .line 1190
    .local v2, columns:[Ljava/lang/String;
    const-string v11, "(host == ?) AND (realm == ?)"

    .line 1192
    .local v11, selection:Ljava/lang/String;
    iget-object v12, p0, Landroid/webkit/WebViewDatabase;->mHttpAuthLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1193
    const/4 v10, 0x0

    .line 1194
    .local v10, ret:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 1196
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_24
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v1, v1, v3

    const-string v3, "(host == ?) AND (realm == ?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1199
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1200
    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/String;

    .line 1201
    const/4 v0, 0x0

    const-string/jumbo v1, "username"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0

    .line 1203
    const/4 v0, 0x1

    const-string/jumbo v1, "password"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0
    :try_end_62
    .catchall {:try_start_24 .. :try_end_62} :catchall_7d
    .catch Ljava/lang/IllegalStateException; {:try_start_24 .. :try_end_62} :catch_6a

    .line 1209
    :cond_62
    if-eqz v8, :cond_67

    :try_start_64
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1211
    :cond_67
    :goto_67
    monitor-exit v12
    :try_end_68
    .catchall {:try_start_64 .. :try_end_68} :catchall_7a

    move-object v0, v10

    goto :goto_10

    .line 1206
    :catch_6a
    move-exception v0

    move-object v9, v0

    .line 1207
    .local v9, e:Ljava/lang/IllegalStateException;
    :try_start_6c
    const-string/jumbo v0, "webviewdatabase"

    const-string v1, "getHttpAuthUsernamePassword"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_74
    .catchall {:try_start_6c .. :try_end_74} :catchall_7d

    .line 1209
    if-eqz v8, :cond_67

    :try_start_76
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_67

    .line 1212
    .end local v9           #e:Ljava/lang/IllegalStateException;
    :catchall_7a
    move-exception v0

    monitor-exit v12
    :try_end_7c
    .catchall {:try_start_76 .. :try_end_7c} :catchall_7a

    throw v0

    .line 1209
    :catchall_7d
    move-exception v0

    if-eqz v8, :cond_83

    :try_start_80
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_83
    throw v0
    :try_end_84
    .catchall {:try_start_80 .. :try_end_84} :catchall_7a
.end method

.method getUsernamePassword(Ljava/lang/String;)[Ljava/lang/String;
    .registers 15
    .parameter "schemePlusHost"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    const-string/jumbo v6, "password"

    .line 1087
    if-eqz p1, :cond_d

    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_f

    :cond_d
    move-object v0, v3

    .line 1114
    :goto_e
    return-object v0

    .line 1091
    :cond_f
    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v0, "username"

    aput-object v0, v2, v4

    const-string/jumbo v0, "password"

    aput-object v6, v2, v1

    .line 1094
    .local v2, columns:[Ljava/lang/String;
    const-string v11, "(host == ?)"

    .line 1095
    .local v11, selection:Ljava/lang/String;
    iget-object v12, p0, Landroid/webkit/WebViewDatabase;->mPasswordLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1096
    const/4 v10, 0x0

    .line 1097
    .local v10, ret:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 1099
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_22
    sget-object v0, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    const-string v3, "(host == ?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1102
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1103
    const/4 v0, 0x2

    new-array v10, v0, [Ljava/lang/String;

    .line 1104
    const/4 v0, 0x0

    const-string/jumbo v1, "username"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0

    .line 1106
    const/4 v0, 0x1

    const-string/jumbo v1, "password"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v0
    :try_end_5d
    .catchall {:try_start_22 .. :try_end_5d} :catchall_78
    .catch Ljava/lang/IllegalStateException; {:try_start_22 .. :try_end_5d} :catch_65

    .line 1112
    :cond_5d
    if-eqz v8, :cond_62

    :try_start_5f
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1114
    :cond_62
    :goto_62
    monitor-exit v12
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_75

    move-object v0, v10

    goto :goto_e

    .line 1109
    :catch_65
    move-exception v0

    move-object v9, v0

    .line 1110
    .local v9, e:Ljava/lang/IllegalStateException;
    :try_start_67
    const-string/jumbo v0, "webviewdatabase"

    const-string v1, "getUsernamePassword"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6f
    .catchall {:try_start_67 .. :try_end_6f} :catchall_78

    .line 1112
    if-eqz v8, :cond_62

    :try_start_71
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_62

    .line 1115
    .end local v9           #e:Ljava/lang/IllegalStateException;
    :catchall_75
    move-exception v0

    monitor-exit v12
    :try_end_77
    .catchall {:try_start_71 .. :try_end_77} :catchall_75

    throw v0

    .line 1112
    :catchall_78
    move-exception v0

    if-eqz v8, :cond_7e

    :try_start_7b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7e
    throw v0
    :try_end_7f
    .catchall {:try_start_7b .. :try_end_7f} :catchall_75
.end method

.method hasCache()Z
    .registers 14

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 930
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_8

    move v0, v11

    .line 945
    :goto_7
    return v0

    .line 934
    :cond_8
    const/4 v8, 0x0

    .line 935
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 937
    .local v10, ret:Z
    :try_start_a
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache"

    sget-object v2, Landroid/webkit/WebViewDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 939
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_39
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_1c} :catch_29

    move-result v0

    if-ne v0, v12, :cond_27

    move v10, v12

    .line 943
    :goto_20
    if-eqz v8, :cond_25

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_25
    :goto_25
    move v0, v10

    .line 945
    goto :goto_7

    :cond_27
    move v10, v11

    .line 939
    goto :goto_20

    .line 940
    :catch_29
    move-exception v0

    move-object v9, v0

    .line 941
    .local v9, e:Ljava/lang/IllegalStateException;
    :try_start_2b
    const-string/jumbo v0, "webviewdatabase"

    const-string v1, "hasCache"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_39

    .line 943
    if-eqz v8, :cond_25

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_25

    .end local v9           #e:Ljava/lang/IllegalStateException;
    :catchall_39
    move-exception v0

    if-eqz v8, :cond_3f

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3f
    throw v0
.end method

.method hasCookies()Z
    .registers 3

    .prologue
    .line 714
    iget-object v0, p0, Landroid/webkit/WebViewDatabase;->mCookieLock:Ljava/lang/Object;

    monitor-enter v0

    .line 715
    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, v1}, Landroid/webkit/WebViewDatabase;->hasEntries(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 716
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public hasFormData()Z
    .registers 3

    .prologue
    .line 1381
    iget-object v0, p0, Landroid/webkit/WebViewDatabase;->mFormLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1382
    const/4 v1, 0x2

    :try_start_4
    invoke-direct {p0, v1}, Landroid/webkit/WebViewDatabase;->hasEntries(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1383
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public hasHttpAuthUsernamePassword()Z
    .registers 3

    .prologue
    .line 1221
    iget-object v0, p0, Landroid/webkit/WebViewDatabase;->mHttpAuthLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1222
    const/4 v1, 0x4

    :try_start_4
    invoke-direct {p0, v1}, Landroid/webkit/WebViewDatabase;->hasEntries(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1223
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public hasUsernamePassword()Z
    .registers 3

    .prologue
    .line 1124
    iget-object v0, p0, Landroid/webkit/WebViewDatabase;->mPasswordLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1125
    const/4 v1, 0x1

    :try_start_4
    invoke-direct {p0, v1}, Landroid/webkit/WebViewDatabase;->hasEntries(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1126
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v1
.end method

.method removeCache(Ljava/lang/String;)V
    .registers 6
    .parameter "url"

    .prologue
    .line 857
    if-eqz p1, :cond_6

    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_7

    .line 867
    :cond_6
    :goto_6
    return-void

    .line 861
    :cond_7
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM cache WHERE url = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 863
    iget-object v0, p0, Landroid/webkit/WebViewDatabase;->mCacheStatLock:Ljava/lang/Object;

    monitor-enter v0

    .line 864
    :try_start_17
    sget-object v1, Landroid/webkit/WebViewDatabase;->mCacheStat:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    monitor-exit v0

    goto :goto_6

    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method setFormData(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 28
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1251
    .local p2, formdata:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    sget-object v4, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_9

    .line 1304
    .end local p0
    :cond_8
    :goto_8
    return-void

    .line 1257
    .restart local p0
    :cond_9
    const/4 v12, 0x0

    .line 1259
    .local v12, aURL:Ljava/net/URL;
    :try_start_a
    new-instance v13, Ljava/net/URL;

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_12} :catch_f6

    .line 1260
    .end local v12           #aURL:Ljava/net/URL;
    .local v13, aURL:Ljava/net/URL;
    :try_start_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_38
    .catch Ljava/net/MalformedURLException; {:try_start_12 .. :try_end_38} :catch_147

    move-result-object v18

    .local v18, finalurl:Ljava/lang/String;
    move-object v12, v13

    .line 1266
    .end local v13           #aURL:Ljava/net/URL;
    .restart local v12       #aURL:Ljava/net/URL;
    :goto_3a
    sget-boolean v4, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v4, :cond_5b

    .line 1267
    const-string/jumbo v4, "webviewdatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setFormData url="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    :cond_5b
    const-string v21, "(url == ?)"

    .line 1271
    .local v21, selection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewDatabase;->mFormLock:Ljava/lang/Object;

    move-object v12, v0

    .end local v12           #aURL:Ljava/net/URL;
    monitor-enter v12

    .line 1272
    const-wide/16 v23, -0x1

    .line 1273
    .local v23, urlid:J
    const/4 v15, 0x0

    .line 1275
    .local v15, cursor:Landroid/database/Cursor;
    :try_start_66
    sget-object v4, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    sget-object v6, Landroid/webkit/WebViewDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string v7, "(url == ?)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v18, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1278
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_109

    .line 1279
    const-string v4, "_id"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_8d
    .catchall {:try_start_66 .. :try_end_8d} :catchall_13d
    .catch Ljava/lang/IllegalStateException; {:try_start_66 .. :try_end_8d} :catch_126

    move-result-wide v23

    .line 1289
    :goto_8e
    if-eqz v15, :cond_93

    :try_start_90
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1291
    :cond_93
    :goto_93
    const-wide/16 v4, 0x0

    cmp-long v4, v23, v4

    if-ltz v4, :cond_144

    .line 1292
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v22

    .line 1293
    .local v22, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 1294
    .local v19, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 1295
    .local v20, map:Landroid/content/ContentValues;
    const-string/jumbo v4, "urlid"

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v20

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1296
    .end local p0
    :goto_b4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_144

    .line 1297
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 1298
    .local v17, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "name"

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object v1, v4

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    const-string/jumbo v4, "value"

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object v1, v4

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    sget-object v4, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const/4 v6, 0x0

    move-object v0, v4

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_b4

    .line 1303
    .end local v17           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v20           #map:Landroid/content/ContentValues;
    .end local v22           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catchall_f3
    move-exception v4

    monitor-exit v12
    :try_end_f5
    .catchall {:try_start_90 .. :try_end_f5} :catchall_f3

    throw v4

    .line 1261
    .end local v15           #cursor:Landroid/database/Cursor;
    .end local v18           #finalurl:Ljava/lang/String;
    .end local v21           #selection:Ljava/lang/String;
    .end local v23           #urlid:J
    .restart local v12       #aURL:Ljava/net/URL;
    .restart local p0
    :catch_f6
    move-exception v4

    move-object/from16 v16, v4

    .line 1262
    .local v16, e:Ljava/net/MalformedURLException;
    :goto_f9
    const-string/jumbo v4, "webviewdatabase"

    const-string v5, "Failed in setFormData"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1263
    move-object/from16 v18, p1

    .restart local v18       #finalurl:Ljava/lang/String;
    goto/16 :goto_3a

    .line 1281
    .end local v12           #aURL:Ljava/net/URL;
    .end local v16           #e:Ljava/net/MalformedURLException;
    .restart local v15       #cursor:Landroid/database/Cursor;
    .restart local v21       #selection:Ljava/lang/String;
    .restart local v23       #urlid:J
    :cond_109
    :try_start_109
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1282
    .local v14, c:Landroid/content/ContentValues;
    const-string/jumbo v4, "url"

    move-object v0, v14

    move-object v1, v4

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    sget-object v4, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v5, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_123
    .catchall {:try_start_109 .. :try_end_123} :catchall_13d
    .catch Ljava/lang/IllegalStateException; {:try_start_109 .. :try_end_123} :catch_126

    move-result-wide v23

    goto/16 :goto_8e

    .line 1286
    .end local v14           #c:Landroid/content/ContentValues;
    :catch_126
    move-exception v4

    move-object/from16 v16, v4

    .line 1287
    .local v16, e:Ljava/lang/IllegalStateException;
    :try_start_129
    const-string/jumbo v4, "webviewdatabase"

    const-string/jumbo v5, "setFormData"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_136
    .catchall {:try_start_129 .. :try_end_136} :catchall_13d

    .line 1289
    if-eqz v15, :cond_93

    :try_start_138
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_93

    .end local v16           #e:Ljava/lang/IllegalStateException;
    :catchall_13d
    move-exception v4

    if-eqz v15, :cond_143

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_143
    throw v4

    .line 1303
    .end local p0
    :cond_144
    monitor-exit v12
    :try_end_145
    .catchall {:try_start_138 .. :try_end_145} :catchall_f3

    goto/16 :goto_8

    .line 1261
    .end local v15           #cursor:Landroid/database/Cursor;
    .end local v18           #finalurl:Ljava/lang/String;
    .end local v21           #selection:Ljava/lang/String;
    .end local v23           #urlid:J
    .restart local v13       #aURL:Ljava/net/URL;
    .restart local p0
    :catch_147
    move-exception v4

    move-object/from16 v16, v4

    move-object v12, v13

    .end local v13           #aURL:Ljava/net/URL;
    .restart local v12       #aURL:Ljava/net/URL;
    goto :goto_f9
.end method

.method setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "host"
    .parameter "realm"
    .parameter "username"
    .parameter "password"

    .prologue
    const-string v1, "host"

    .line 1158
    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_b

    .line 1171
    :cond_a
    :goto_a
    return-void

    .line 1162
    :cond_b
    iget-object v1, p0, Landroid/webkit/WebViewDatabase;->mHttpAuthLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1163
    :try_start_e
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1164
    .local v0, c:Landroid/content/ContentValues;
    const-string v2, "host"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    const-string/jumbo v2, "realm"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    const-string/jumbo v2, "username"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    const-string/jumbo v2, "password"

    invoke-virtual {v0, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    const-string v4, "host"

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1170
    monitor-exit v1

    goto :goto_a

    .end local v0           #c:Landroid/content/ContentValues;
    :catchall_38
    move-exception v2

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_e .. :try_end_3a} :catchall_38

    throw v2
.end method

.method setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "schemePlusHost"
    .parameter "username"
    .parameter "password"

    .prologue
    const-string v1, "host"

    .line 1065
    if-eqz p1, :cond_8

    sget-object v1, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_9

    .line 1077
    :cond_8
    :goto_8
    return-void

    .line 1069
    :cond_9
    iget-object v1, p0, Landroid/webkit/WebViewDatabase;->mPasswordLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1070
    :try_start_c
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1071
    .local v0, c:Landroid/content/ContentValues;
    const-string v2, "host"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    const-string/jumbo v2, "username"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    const-string/jumbo v2, "password"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    sget-object v2, Landroid/webkit/WebViewDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Landroid/webkit/WebViewDatabase;->mTableNames:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const-string v4, "host"

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1076
    monitor-exit v1

    goto :goto_8

    .end local v0           #c:Landroid/content/ContentValues;
    :catchall_30
    move-exception v2

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_30

    throw v2
.end method

.method startCacheTransaction()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 770
    sget v0, Landroid/webkit/WebViewDatabase;->mCacheTransactionRefcount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/webkit/WebViewDatabase;->mCacheTransactionRefcount:I

    if-ne v0, v3, :cond_48

    .line 771
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewWorker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 773
    const-string/jumbo v0, "webviewdatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCacheTransaction should be called from WebViewWorkerThread instead of from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_41
    sget-object v0, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move v0, v3

    .line 780
    :goto_47
    return v0

    :cond_48
    const/4 v0, 0x0

    goto :goto_47
.end method

.method trimCache(J)Ljava/util/List;
    .registers 20
    .parameter "amount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 969
    new-instance v9, Ljava/util/ArrayList;

    const/16 v13, 0x64

    invoke-direct {v9, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 970
    .local v9, pathList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 973
    .local v1, cursor:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewDatabase;->flushCacheStat()V

    .line 974
    sget v13, Landroid/webkit/WebViewDatabase;->CACHE_EVICT_EXPIRED:I

    if-eqz v13, :cond_3d

    .line 975
    sget-object v13, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "UPDATE cache SET weight=lastaccesstime WHERE expires<="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " AND "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "expires"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "!=0"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 979
    :cond_3d
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SELECT contentlength, filepath FROM cache ORDER BY "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Landroid/webkit/WebViewDatabase;->CACHE_ORDER_BY:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ASC"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 982
    .local v11, query:Ljava/lang/String;
    :try_start_58
    sget-object v13, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v14, 0x0

    invoke-virtual {v13, v11, v14}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 983
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_b7

    .line 984
    const/16 v0, 0x64

    .line 985
    .local v0, batchSize:I
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v13, 0x14

    mul-int/lit8 v14, v0, 0x10

    add-int/lit16 v13, v13, 0x640

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 986
    .local v10, pathStr:Ljava/lang/StringBuilder;
    const-string v13, "DELETE FROM cache WHERE filepath IN (?"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    const/4 v4, 0x1

    .local v4, i:I
    :goto_78
    if-ge v4, v0, :cond_82

    .line 988
    const-string v13, ", ?"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    add-int/lit8 v4, v4, 0x1

    goto :goto_78

    .line 990
    :cond_82
    const-string v13, ")"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_87
    .catchall {:try_start_58 .. :try_end_87} :catchall_ff
    .catch Ljava/lang/IllegalStateException; {:try_start_58 .. :try_end_87} :catch_e7

    .line 991
    const/4 v12, 0x0

    .line 993
    .local v12, statement:Landroid/database/sqlite/SQLiteStatement;
    :try_start_88
    sget-object v13, Landroid/webkit/WebViewDatabase;->mCacheDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v12

    .line 996
    const/4 v5, 0x1

    .local v5, index:I
    move v6, v5

    .line 998
    .end local v5           #index:I
    .local v6, index:I
    :goto_94
    const/4 v13, 0x0

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 999
    .local v7, length:J
    const-wide/16 v13, 0x0

    cmp-long v13, v7, v13

    if-nez v13, :cond_bd

    move v5, v6

    .line 1011
    .end local v6           #index:I
    .restart local v5       #index:I
    :cond_a0
    :goto_a0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_ac

    const-wide/16 v13, 0x0

    cmp-long v13, p1, v13

    if-gtz v13, :cond_106

    .line 1012
    :cond_ac
    const/4 v13, 0x1

    if-le v5, v13, :cond_b2

    .line 1015
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_b2
    .catchall {:try_start_88 .. :try_end_b2} :catchall_f8
    .catch Ljava/lang/IllegalStateException; {:try_start_88 .. :try_end_b2} :catch_d6

    .line 1020
    :cond_b2
    if-eqz v12, :cond_b7

    :try_start_b4
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_b7
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_ff
    .catch Ljava/lang/IllegalStateException; {:try_start_b4 .. :try_end_b7} :catch_e7

    .line 1026
    .end local v0           #batchSize:I
    .end local v4           #i:I
    .end local v5           #index:I
    .end local v7           #length:J
    .end local v10           #pathStr:Ljava/lang/StringBuilder;
    .end local v12           #statement:Landroid/database/sqlite/SQLiteStatement;
    :cond_b7
    :goto_b7
    if-eqz v1, :cond_bc

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1028
    :cond_bc
    :goto_bc
    return-object v9

    .line 1002
    .restart local v0       #batchSize:I
    .restart local v4       #i:I
    .restart local v6       #index:I
    .restart local v7       #length:J
    .restart local v10       #pathStr:Ljava/lang/StringBuilder;
    .restart local v12       #statement:Landroid/database/sqlite/SQLiteStatement;
    :cond_bd
    sub-long p1, p1, v7

    .line 1003
    const/4 v13, 0x1

    :try_start_c0
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1004
    .local v3, filePath:Ljava/lang/String;
    invoke-virtual {v12, v6, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1005
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1006
    add-int/lit8 v5, v6, 0x1

    .end local v6           #index:I
    .restart local v5       #index:I
    if-ne v6, v0, :cond_a0

    .line 1007
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1008
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V
    :try_end_d4
    .catchall {:try_start_c0 .. :try_end_d4} :catchall_f8
    .catch Ljava/lang/IllegalStateException; {:try_start_c0 .. :try_end_d4} :catch_d6

    .line 1009
    const/4 v5, 0x1

    goto :goto_a0

    .line 1017
    .end local v3           #filePath:Ljava/lang/String;
    .end local v5           #index:I
    .end local v7           #length:J
    :catch_d6
    move-exception v13

    move-object v2, v13

    .line 1018
    .local v2, e:Ljava/lang/IllegalStateException;
    :try_start_d8
    const-string/jumbo v13, "webviewdatabase"

    const-string/jumbo v14, "trimCache SQLiteStatement"

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e1
    .catchall {:try_start_d8 .. :try_end_e1} :catchall_f8

    .line 1020
    if-eqz v12, :cond_b7

    :try_start_e3
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_e6
    .catchall {:try_start_e3 .. :try_end_e6} :catchall_ff
    .catch Ljava/lang/IllegalStateException; {:try_start_e3 .. :try_end_e6} :catch_e7

    goto :goto_b7

    .line 1023
    .end local v0           #batchSize:I
    .end local v2           #e:Ljava/lang/IllegalStateException;
    .end local v4           #i:I
    .end local v10           #pathStr:Ljava/lang/StringBuilder;
    .end local v12           #statement:Landroid/database/sqlite/SQLiteStatement;
    :catch_e7
    move-exception v13

    move-object v2, v13

    .line 1024
    .restart local v2       #e:Ljava/lang/IllegalStateException;
    :try_start_e9
    const-string/jumbo v13, "webviewdatabase"

    const-string/jumbo v14, "trimCache Cursor"

    invoke-static {v13, v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f2
    .catchall {:try_start_e9 .. :try_end_f2} :catchall_ff

    .line 1026
    if-eqz v1, :cond_bc

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_bc

    .line 1020
    .end local v2           #e:Ljava/lang/IllegalStateException;
    .restart local v0       #batchSize:I
    .restart local v4       #i:I
    .restart local v10       #pathStr:Ljava/lang/StringBuilder;
    .restart local v12       #statement:Landroid/database/sqlite/SQLiteStatement;
    :catchall_f8
    move-exception v13

    if-eqz v12, :cond_fe

    :try_start_fb
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_fe
    throw v13
    :try_end_ff
    .catchall {:try_start_fb .. :try_end_ff} :catchall_ff
    .catch Ljava/lang/IllegalStateException; {:try_start_fb .. :try_end_ff} :catch_e7

    .line 1026
    .end local v0           #batchSize:I
    .end local v4           #i:I
    .end local v10           #pathStr:Ljava/lang/StringBuilder;
    .end local v12           #statement:Landroid/database/sqlite/SQLiteStatement;
    :catchall_ff
    move-exception v13

    if-eqz v1, :cond_105

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_105
    throw v13

    .restart local v0       #batchSize:I
    .restart local v4       #i:I
    .restart local v5       #index:I
    .restart local v7       #length:J
    .restart local v10       #pathStr:Ljava/lang/StringBuilder;
    .restart local v12       #statement:Landroid/database/sqlite/SQLiteStatement;
    :cond_106
    move v6, v5

    .end local v5           #index:I
    .restart local v6       #index:I
    goto :goto_94
.end method

.method updateCacheStat(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)Landroid/webkit/WebViewDatabase$CacheAccessStat;
    .registers 8
    .parameter "url"
    .parameter "c"

    .prologue
    .line 543
    iget-wide v1, p2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_29

    .line 545
    iget-object v1, p0, Landroid/webkit/WebViewDatabase;->mCacheStatLock:Ljava/lang/Object;

    monitor-enter v1

    .line 546
    :try_start_b
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheStat:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebViewDatabase$CacheAccessStat;

    .line 547
    .local v0, cacheStat:Landroid/webkit/WebViewDatabase$CacheAccessStat;
    if-nez v0, :cond_22

    .line 548
    new-instance v0, Landroid/webkit/WebViewDatabase$CacheAccessStat;

    .end local v0           #cacheStat:Landroid/webkit/WebViewDatabase$CacheAccessStat;
    invoke-direct {v0, p2}, Landroid/webkit/WebViewDatabase$CacheAccessStat;-><init>(Landroid/webkit/CacheManager$CacheResult;)V

    .line 549
    .restart local v0       #cacheStat:Landroid/webkit/WebViewDatabase$CacheAccessStat;
    sget-object v2, Landroid/webkit/WebViewDatabase;->mCacheStat:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    :goto_1f
    monitor-exit v1

    move-object v1, v0

    .line 556
    .end local v0           #cacheStat:Landroid/webkit/WebViewDatabase$CacheAccessStat;
    :goto_21
    return-object v1

    .line 551
    .restart local v0       #cacheStat:Landroid/webkit/WebViewDatabase$CacheAccessStat;
    :cond_22
    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase$CacheAccessStat;->hit()V

    goto :goto_1f

    .line 553
    .end local v0           #cacheStat:Landroid/webkit/WebViewDatabase$CacheAccessStat;
    :catchall_26
    move-exception v2

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_26

    throw v2

    .line 556
    :cond_29
    const/4 v1, 0x0

    goto :goto_21
.end method
