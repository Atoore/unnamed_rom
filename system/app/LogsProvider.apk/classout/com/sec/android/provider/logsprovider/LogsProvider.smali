.class public Lcom/sec/android/provider/logsprovider/LogsProvider;
.super Landroid/content/ContentProvider;
.source "LogsProvider.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final SNS_GET_MSG_RECEIVERS:Landroid/net/Uri;

.field private static final SNS_GET_THREADMSG_RECEIVERS:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String;

.field private static final sDurationProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sIdSearchProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLogsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSevenAccountType:[Ljava/lang/String;

.field private static final sSnsAccountType:[Ljava/lang/String;

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

.field private mLogInserter:Landroid/database/DatabaseUtils$InsertHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const-string v6, "duration"

    const-string v5, "_id"

    const-string v3, "logs"

    .line 47
    const-class v0, Lcom/sec/android/provider/logsprovider/LogsProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    .line 49
    const-string v0, "ro.debuggable"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_3cb

    move v0, v4

    :goto_19
    sput-boolean v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->DBG:Z

    .line 58
    const-string v0, "com.sec.android.app.provider.sns/message/message/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->SNS_GET_MSG_RECEIVERS:Landroid/net/Uri;

    .line 59
    const-string v0, "com.sec.android.app.provider.sns/thread_message/message/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->SNS_GET_THREADMSG_RECEIVERS:Landroid/net/Uri;

    .line 208
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 210
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const-string v1, "historys"

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 211
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const-string v1, "historys/#"

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 213
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const-string v1, "call"

    const/16 v2, 0x14

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 214
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const-string v1, "allcalls"

    const/16 v2, 0x16

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 215
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const-string v1, "call/#"

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 216
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const-string v1, "call/frequent"

    const/16 v2, 0xf

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 217
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const-string v1, "call/del"

    const/16 v2, 0x1a

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 218
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const-string v1, "call/search_log"

    const/16 v2, 0x1f

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 220

    .line 221

    .line 222
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const-string v1, "email"

    const/16 v2, 0xb

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 223
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const-string v1, "email_seven"

    const/16 v2, 0x13

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 224
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const-string v1, "video_call"

    const/16 v2, 0xd

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 225
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const-string v1, "voip"

    const/16 v2, 0xe

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 227
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const-string v1, "sns"

    const/16 v2, 0x15

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 228
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const-string v1, "im"

    const/16 v2, 0x17

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 229
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const-string v1, "sns_msg_receiver_map"

    const/16 v2, 0x20

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 231
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const-string v1, "search_log"

    const/16 v2, 0x21

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 232
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const-string v1, "msg/receiver/#/*"

    const/16 v2, 0x19

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 233
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const-string v1, "duration"

    const/16 v1, 0x22

    invoke-virtual {v0, v3, v6, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 234
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "logs"

    const-string v1, "addcall"

    const/16 v2, 0x23

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    .line 242
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "number"

    const-string v2, "number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "address"

    const-string v2, "address"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "date"

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "duration"

    const-string v1, "duration"

    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "new"

    const-string v2, "new"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "name_reversed"

    const-string v2, "name_reversed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "numbertype"

    const-string v2, "numbertype"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "numberlabel"

    const-string v2, "numberlabel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "messageid"

    const-string v2, "messageid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "logtype"

    const-string v2, "logtype"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "frequent"

    const-string v2, "frequent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "contactid"

    const-string v2, "contactid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "raw_contact_id"

    const-string v2, "raw_contact_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "m_subject"

    const-string v2, "m_subject"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "m_content"

    const-string v2, "m_content"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sns_tid"

    const-string v2, "sns_tid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sp_type"

    const-string v2, "sp_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sns_pkey"

    const-string v2, "sns_pkey"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "account_name"

    const-string v2, "account_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "account_id"

    const-string v2, "account_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "sns_receiver_count"

    const-string v2, "sns_receiver_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cnap_name"

    const-string v2, "cnap_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cdnip_number"

    const-string v2, "cdnip_number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "service_type"

    const-string v2, "service_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "cityid"

    const-string v2, "cityid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "fname"

    const-string v2, "fname"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "lname"

    const-string v2, "lname"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    const-string v1, "bname"

    const-string v2, "bname"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    .line 283
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "logs._id AS _id"

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "number"

    const-string v2, "number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "address"

    const-string v2, "address"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "date"

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "duration"

    const-string v1, "duration"

    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "new"

    const-string v2, "new"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "name_reversed"

    const-string v2, "name_reversed"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "numbertype"

    const-string v2, "numbertype"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "numberlabel"

    const-string v2, "numberlabel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "messageid"

    const-string v2, "logs.messageid AS messageid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "logtype"

    const-string v2, "logtype"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "frequent"

    const-string v2, "frequent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "contactid"

    const-string v2, "contactid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "raw_contact_id"

    const-string v2, "raw_contact_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "m_subject"

    const-string v2, "m_subject"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "m_content"

    const-string v2, "m_content"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "sns_tid"

    const-string v2, "sns_tid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "sp_type"

    const-string v2, "sp_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "receiver_id"

    const-string v2, "receiver_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "receiver_name"

    const-string v2, "receiver_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "account_name"

    const-string v2, "account_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    const-string v1, "account_id"

    const-string v2, "account_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    .line 313
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v1, "last_voice"

    const-string v2, "last_voice"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v1, "last_video"

    const-string v2, "last_video"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v1, "last_voip"

    const-string v2, "last_voip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v1, "dial_voice"

    const-string v2, "dial_voice"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v1, "dial_video"

    const-string v2, "dial_video"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v1, "dial_voip"

    const-string v2, "dial_voip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v1, "rece_voice"

    const-string v2, "rece_voice"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v1, "rece_video"

    const-string v2, "rece_video"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v1, "rece_voip"

    const-string v2, "rece_voip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v1, "all_voice"

    const-string v2, "all_voice"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v1, "all_video"

    const-string v2, "all_video"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v1, "all_voip"

    const-string v2, "all_voip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    const-string v1, "reset_date"

    const-string v2, "reset_date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.sec.android.app.snsaccountfacebook.account_type"

    aput-object v1, v0, v7

    const-string v1, "com.sec.android.app.snsaccountmyspace.account_type"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "com.sec.android.app.snsaccounttwitter.account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.sec.android.app.snsaccountkaixin.account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.sec.android.app.snsaccountrenren.account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.sec.android.app.snsaccountqzone.account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSnsAccountType:[Ljava/lang/String;

    .line 362
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.seven.Z7.msn"

    aput-object v1, v0, v7

    const-string v1, "com.seven.Z7.yahoo"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "com.seven.Z7"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSevenAccountType:[Ljava/lang/String;

    return-void

    :cond_3cb
    move v0, v7

    .line 49
    goto/16 :goto_19
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 61
    return-void
.end method

.method public static concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 1371
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p1

    .line 1378
    :goto_7
    return-object v0

    .line 1374
    :cond_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    move-object v0, p0

    .line 1375
    goto :goto_7

    .line 1378
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static updateLogInfoWithIM(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 12
    .parameter "cr"
    .parameter "value"
    .parameter "address"

    .prologue
    .line 1591
    const-string v0, "content://com.android.contacts/data/email_im/lookup/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "contact_id"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1594
    .local v8, imCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_195

    .line 1595
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_155

    .line 1596
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1597
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1598
    .local v6, id:J
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1600
    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTACT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1601
    .local v0, c2:Landroid/database/Cursor;
    if-eqz v0, :cond_109

    .line 1602
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .end local v1           #uri:Landroid/net/Uri;
    if-lez v1, :cond_b7

    .line 1603
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1604
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1605
    .local v1, name:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1606
    .local v2, nameReversed:Ljava/lang/String;
    const-string v3, "name"

    invoke-virtual {p1, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    const-string v1, "name_reversed"

    .end local v1           #name:Ljava/lang/String;
    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    const-string v1, "contactid"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .end local v2           #nameReversed:Ljava/lang/String;
    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1609
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "raw_contact_id"

    aput-object v2, v4, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data1=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .end local p2
    const-string v1, "\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v6           #id:J
    move-result-object p0

    .line 1614
    .local p0, rawCursor:Landroid/database/Cursor;
    if-eqz p0, :cond_b0

    .line 1615
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_ad

    .line 1616
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1617
    const-string p2, "raw_contact_id"

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1619
    :cond_ad
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1621
    :cond_b0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1622
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1692
    .end local v0           #c2:Landroid/database/Cursor;
    .end local p0           #rawCursor:Landroid/database/Cursor;
    :cond_b6
    :goto_b6
    return-object p1

    .line 1625
    .restart local v0       #c2:Landroid/database/Cursor;
    .restart local v6       #id:J
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p2
    :cond_b7
    const-string p0, "contactid"

    .end local p0           #cr:Landroid/content/ContentResolver;
    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p2
    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1626
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_ce

    .line 1627
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1629
    :cond_ce
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_db

    .line 1630
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1632
    :cond_db
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e8

    .line 1633
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1635
    :cond_e8
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f5

    .line 1636
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1638
    :cond_f5
    const-string p0, "raw_contact_id"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_102

    .line 1639
    const-string p0, "raw_contact_id"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1642
    :cond_102
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1676
    .end local v0           #c2:Landroid/database/Cursor;
    .end local v6           #id:J
    :cond_105
    :goto_105
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_b6

    .line 1644
    .restart local v0       #c2:Landroid/database/Cursor;
    .local v1, uri:Landroid/net/Uri;
    .restart local v6       #id:J
    .restart local p0       #cr:Landroid/content/ContentResolver;
    .restart local p2
    :cond_109
    const-string p0, "contactid"

    .end local p0           #cr:Landroid/content/ContentResolver;
    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p2
    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1645
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_120

    .line 1646
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1648
    :cond_120
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12d

    .line 1649
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1651
    :cond_12d
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_13a

    .line 1652
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1654
    :cond_13a
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_147

    .line 1655
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1657
    :cond_147
    const-string p0, "raw_contact_id"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_105

    .line 1658
    const-string p0, "raw_contact_id"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_105

    .line 1662
    .end local v0           #c2:Landroid/database/Cursor;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #id:J
    .restart local p0       #cr:Landroid/content/ContentResolver;
    .restart local p2
    :cond_155
    const-string p0, "contactid"

    .end local p0           #cr:Landroid/content/ContentResolver;
    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p2
    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1663
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16c

    .line 1664
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1666
    :cond_16c
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_179

    .line 1667
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1669
    :cond_179
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_186

    .line 1670
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1672
    :cond_186
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_105

    .line 1673
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto/16 :goto_105

    .line 1679
    .restart local p0       #cr:Landroid/content/ContentResolver;
    .restart local p2
    :cond_195
    const-string p0, "contactid"

    .end local p0           #cr:Landroid/content/ContentResolver;
    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p2
    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1680
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1ac

    .line 1681
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1683
    :cond_1ac
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1b9

    .line 1684
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1686
    :cond_1b9
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1c6

    .line 1687
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1689
    :cond_1c6
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b6

    .line 1690
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto/16 :goto_b6
.end method

.method public static updateLogInfoWithNumber(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 10
    .parameter "cr"
    .parameter "value"
    .parameter "number"

    .prologue
    .line 1382
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1384
    .local v6, phonesCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_ef

    .line 1385
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_a3

    .line 1386
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1387
    const-string v0, "contactid"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1388
    const-string v0, "name"

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    const-string v0, "name_reversed"

    const/4 v1, 0x5

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    const-string v0, "numberlabel"

    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    const-string v0, "numbertype"

    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1393
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "raw_contact_id"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data1=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .end local p2
    const-string v0, "\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 1398
    .local p0, rawCursor:Landroid/database/Cursor;
    if-eqz p0, :cond_9f

    .line 1399
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_9c

    .line 1400
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1401
    const-string p2, "raw_contact_id"

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1403
    :cond_9c
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1423
    .end local p0           #rawCursor:Landroid/database/Cursor;
    :cond_9f
    :goto_9f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1442
    :cond_a2
    :goto_a2
    return-object p1

    .line 1406
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p2
    :cond_a3
    const-string p0, "contactid"

    .end local p0           #cr:Landroid/content/ContentResolver;
    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p2
    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1407
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_ba

    .line 1408
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1410
    :cond_ba
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c7

    .line 1411
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1413
    :cond_c7
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d4

    .line 1414
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1416
    :cond_d4
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e1

    .line 1417
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1419
    :cond_e1
    const-string p0, "raw_contact_id"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9f

    .line 1420
    const-string p0, "raw_contact_id"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_9f

    .line 1426
    .restart local p0       #cr:Landroid/content/ContentResolver;
    .restart local p2
    :cond_ef
    const-string p0, "contactid"

    .end local p0           #cr:Landroid/content/ContentResolver;
    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p2
    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1427
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_106

    .line 1428
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1430
    :cond_106
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_113

    .line 1431
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1433
    :cond_113
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_120

    .line 1434
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1436
    :cond_120
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12d

    .line 1437
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1439
    :cond_12d
    const-string p0, "raw_contact_id"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a2

    .line 1440
    const-string p0, "raw_contact_id"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto/16 :goto_a2
.end method

.method public static updateLogInfoWithNumberAndEmail(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 12
    .parameter "cr"
    .parameter "value"
    .parameter "number"

    .prologue
    .line 1446
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1448
    .local v6, phonesCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_a6

    .line 1449
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_a3

    .line 1450
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1451
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1452
    .local v0, id:J
    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1453
    .local v3, name:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1454
    .local v5, numberType:I
    const/4 v2, 0x3

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1455
    .local v2, label:Ljava/lang/String;
    const/4 v4, 0x5

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1457
    .local v4, nameReversed:Ljava/lang/String;
    const-string v7, "contactid"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .end local v0           #id:J
    invoke-virtual {p1, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1458
    const-string v0, "name"

    invoke-virtual {p1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    const-string v0, "name_reversed"

    invoke-virtual {p1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    const-string v0, "numberlabel"

    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    const-string v0, "numbertype"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1462
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .end local v2           #label:Ljava/lang/String;
    const/4 v0, 0x0

    const-string v3, "raw_contact_id"

    .end local v3           #name:Ljava/lang/String;
    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data1=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .end local p2
    const-string v0, "\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v4           #nameReversed:Ljava/lang/String;
    .end local v5           #numberType:I
    move-result-object p0

    .line 1467
    .local p0, rawCursor:Landroid/database/Cursor;
    if-eqz p0, :cond_9f

    .line 1468
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_9c

    .line 1469
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1470
    const-string p2, "raw_contact_id"

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1472
    :cond_9c
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1474
    :cond_9f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1587
    .end local v6           #phonesCursor:Landroid/database/Cursor;
    .end local p0           #rawCursor:Landroid/database/Cursor;
    :cond_a2
    :goto_a2
    return-object p1

    .line 1477
    .restart local v6       #phonesCursor:Landroid/database/Cursor;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p2
    :cond_a3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1480
    :cond_a6
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->EMAIL_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1482
    .local v8, emailCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_23f

    .line 1483
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1f2

    .line 1484
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1485
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1486
    .local v6, id:J
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1487
    .local v0, lookupkey:Ljava/lang/String;
    invoke-static {v6, v7, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1488
    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTACT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v0           #lookupkey:Ljava/lang/String;
    move-result-object v0

    .line 1489
    .local v0, c2:Landroid/database/Cursor;
    if-eqz v0, :cond_1a6

    .line 1490
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .end local v1           #uri:Landroid/net/Uri;
    if-lez v1, :cond_153

    .line 1491
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1492
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1493
    .local v1, name:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1494
    .local v2, nameReversed:Ljava/lang/String;
    const-string v3, "name"

    invoke-virtual {p1, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    const-string v1, "name_reversed"

    .end local v1           #name:Ljava/lang/String;
    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    const-string v1, "contactid"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .end local v2           #nameReversed:Ljava/lang/String;
    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1498
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "raw_contact_id"

    aput-object v2, v4, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data1=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .end local p2
    const-string v1, "\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .end local v6           #id:J
    move-result-object p0

    .line 1503
    .local p0, rawCursor:Landroid/database/Cursor;
    if-eqz p0, :cond_14b

    .line 1504
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_148

    .line 1505
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1506
    const-string p2, "raw_contact_id"

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1508
    :cond_148
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1510
    :cond_14b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1511
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_a2

    .line 1514
    .restart local v6       #id:J
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p2
    :cond_153
    const-string p0, "contactid"

    .end local p0           #cr:Landroid/content/ContentResolver;
    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p2
    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1515
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16a

    .line 1516
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1518
    :cond_16a
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_177

    .line 1519
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1521
    :cond_177
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_184

    .line 1522
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1524
    :cond_184
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_191

    .line 1525
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1527
    :cond_191
    const-string p0, "raw_contact_id"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19e

    .line 1528
    const-string p0, "raw_contact_id"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1531
    :cond_19e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1568
    .end local v0           #c2:Landroid/database/Cursor;
    .end local v6           #id:J
    :cond_1a1
    :goto_1a1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_a2

    .line 1533
    .restart local v0       #c2:Landroid/database/Cursor;
    .local v1, uri:Landroid/net/Uri;
    .restart local v6       #id:J
    .restart local p0       #cr:Landroid/content/ContentResolver;
    .restart local p2
    :cond_1a6
    const-string p0, "contactid"

    .end local p0           #cr:Landroid/content/ContentResolver;
    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p2
    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1534
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1bd

    .line 1535
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1537
    :cond_1bd
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1ca

    .line 1538
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1540
    :cond_1ca
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1d7

    .line 1541
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1543
    :cond_1d7
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1e4

    .line 1544
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1546
    :cond_1e4
    const-string p0, "raw_contact_id"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1a1

    .line 1547
    const-string p0, "raw_contact_id"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_1a1

    .line 1551
    .end local v0           #c2:Landroid/database/Cursor;
    .end local v1           #uri:Landroid/net/Uri;
    .local v6, phonesCursor:Landroid/database/Cursor;
    .restart local p0       #cr:Landroid/content/ContentResolver;
    .restart local p2
    :cond_1f2
    const-string p0, "contactid"

    .end local p0           #cr:Landroid/content/ContentResolver;
    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p2
    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1552
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_209

    .line 1553
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1555
    :cond_209
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_216

    .line 1556
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1558
    :cond_216
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_223

    .line 1559
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1561
    :cond_223
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_230

    .line 1562
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1564
    :cond_230
    const-string p0, "raw_contact_id"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1a1

    .line 1565
    const-string p0, "raw_contact_id"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto/16 :goto_1a1

    .line 1571
    .restart local p0       #cr:Landroid/content/ContentResolver;
    .restart local p2
    :cond_23f
    const-string p0, "contactid"

    .end local p0           #cr:Landroid/content/ContentResolver;
    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p2
    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1572
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_256

    .line 1573
    const-string p0, "name"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1575
    :cond_256
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_263

    .line 1576
    const-string p0, "numberlabel"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1578
    :cond_263
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_270

    .line 1579
    const-string p0, "numbertype"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1581
    :cond_270
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_27d

    .line 1582
    const-string p0, "name_reversed"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1584
    :cond_27d
    const-string p0, "raw_contact_id"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a2

    .line 1585
    const-string p0, "raw_contact_id"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto/16 :goto_a2
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 14
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 1012
    iget-object v7, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    invoke-virtual {v7}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1013
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 1015
    .local v3, matchedUriId:I
    const/4 v4, 0x0

    .line 1016
    .local v4, nValue_length:I
    array-length v4, p2

    .line 1017
    sparse-switch v3, :sswitch_data_1c0

    .line 1119
    const/4 v7, -0x1

    :goto_12
    return v7

    .line 1019
    :sswitch_13
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1021
    const-wide/16 v5, 0x0

    .line 1022
    .local v5, rowId:J
    :try_start_18
    array-length v7, p2

    const/16 v8, 0x1f4

    if-le v7, v8, :cond_1f

    .line 1023
    const/16 v4, 0x1f4

    .line 1024
    :cond_1f
    const/4 v1, 0x0

    .local v1, index:I
    :goto_20
    if-ge v1, v4, :cond_15e

    .line 1025
    aget-object v7, p2, v1

    const-string v8, "logtype"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1026
    .local v2, logType:I
    aget-object v7, p2, v1

    const-string v8, "logtype"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_44

    .line 1027
    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v8, "pleses insert \'logtype\'"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_18 .. :try_end_3f} :catchall_146

    .line 1028
    const/4 v7, -0x1

    .line 1085
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_12

    .line 1030
    :cond_44
    const/16 v7, 0x64

    if-eq v2, v7, :cond_70

    const/16 v7, 0x190

    if-eq v2, v7, :cond_70

    const/16 v7, 0x258

    if-eq v2, v7, :cond_70

    const/16 v7, 0xc8

    if-eq v2, v7, :cond_70

    const/16 v7, 0x12c

    if-eq v2, v7, :cond_70

    const/16 v7, 0x2bc

    if-eq v2, v7, :cond_70

    const/16 v7, 0x1f4

    if-eq v2, v7, :cond_70

    const/16 v7, 0x320

    if-eq v2, v7, :cond_70

    .line 1038
    :try_start_64
    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v8, "wrong \'logtype\'"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_64 .. :try_end_6b} :catchall_146

    .line 1039
    const/4 v7, -0x1

    .line 1085
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_12

    .line 1042
    :cond_70
    const/16 v7, 0x64

    if-eq v2, v7, :cond_7c

    const/16 v7, 0x1f4

    if-eq v2, v7, :cond_7c

    const/16 v7, 0x320

    if-ne v2, v7, :cond_d0

    .line 1045
    :cond_7c
    :try_start_7c
    aget-object v7, p2, v1

    const-string v8, "duration"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_92

    .line 1046
    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v8, "pleses insert \'duration\'"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d
    .catchall {:try_start_7c .. :try_end_8d} :catchall_146

    .line 1047
    const/4 v7, -0x1

    .line 1085
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_12

    .line 1049
    :cond_92
    :try_start_92
    aget-object v7, p2, v1

    const-string v8, "new"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a8

    .line 1050
    aget-object v7, p2, v1

    const-string v8, "new"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1052
    :cond_a8
    aget-object v7, p2, v1

    const-string v8, "frequent"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1053
    iget-object v7, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    aget-object v8, p2, v1

    aget-object v9, p2, v1

    const-string v10, "number"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/android/provider/logsprovider/LogsProvider;->updateLogInfoWithNumber(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 1081
    :goto_c3
    const-string v7, "logs"

    const/4 v8, 0x0

    aget-object v9, p2, v1

    invoke-virtual {v0, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 1024
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_20

    .line 1054
    :cond_d0
    const/16 v7, 0x190

    if-eq v2, v7, :cond_e4

    const/16 v7, 0xc8

    if-eq v2, v7, :cond_e4

    const/16 v7, 0x12c

    if-eq v2, v7, :cond_e4

    const/16 v7, 0x258

    if-eq v2, v7, :cond_e4

    const/16 v7, 0x2bc

    if-ne v2, v7, :cond_155

    .line 1059
    :cond_e4
    aget-object v7, p2, v1

    const-string v8, "messageid"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_fb

    .line 1060
    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v8, "pleses insert \'messageid\'"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f5
    .catchall {:try_start_92 .. :try_end_f5} :catchall_146

    .line 1061
    const/4 v7, -0x1

    .line 1085
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_12

    .line 1063
    :cond_fb
    :try_start_fb
    aget-object v7, p2, v1

    const-string v8, "sp_type"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_112

    .line 1064
    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v8, "insert \'sp_type\'"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10c
    .catchall {:try_start_fb .. :try_end_10c} :catchall_146

    .line 1065
    const/4 v7, -0x1

    .line 1085
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_12

    .line 1067
    :cond_112
    const/16 v7, 0x190

    if-ne v2, v7, :cond_14b

    .line 1068
    :try_start_116
    aget-object v7, p2, v1

    const-string v8, "new"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_129

    .line 1069
    aget-object v7, p2, v1

    const-string v8, "new"

    const-string v9, "1"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    :cond_129
    :goto_129
    aget-object v7, p2, v1

    const-string v8, "duration"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1076
    iget-object v7, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    aget-object v8, p2, v1

    aget-object v9, p2, v1

    const-string v10, "number"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/android/provider/logsprovider/LogsProvider;->updateLogInfoWithNumberAndEmail(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;
    :try_end_144
    .catchall {:try_start_116 .. :try_end_144} :catchall_146

    goto/16 :goto_c3

    .line 1085
    .end local v1           #index:I
    .end local v2           #logType:I
    :catchall_146
    move-exception v7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 1073
    .restart local v1       #index:I
    .restart local v2       #logType:I
    :cond_14b
    :try_start_14b
    aget-object v7, p2, v1

    const-string v8, "new"

    const-string v9, "1"

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_129

    .line 1078
    :cond_155
    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v8, "wrong \'logtype\'"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c3

    .line 1083
    .end local v2           #logType:I
    :cond_15e
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_161
    .catchall {:try_start_14b .. :try_end_161} :catchall_146

    .line 1085
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1087
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyChange()V

    .line 1088
    array-length v7, p2

    goto/16 :goto_12

    .line 1090
    .end local v1           #index:I
    .end local v5           #rowId:J
    :sswitch_16a
    array-length v7, p2

    const/16 v8, 0xbb8

    if-le v7, v8, :cond_171

    .line 1091
    const/16 v4, 0xbb8

    .line 1092
    :cond_171
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1094
    const-wide/16 v5, 0x0

    .line 1095
    .restart local v5       #rowId:J
    const/4 v1, 0x0

    .restart local v1       #index:I
    :goto_177
    if-ge v1, v4, :cond_185

    .line 1096
    :try_start_179
    const-string v7, "logs"

    const/4 v8, 0x0

    aget-object v9, p2, v1

    invoke-virtual {v0, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 1095
    add-int/lit8 v1, v1, 0x1

    goto :goto_177

    .line 1098
    :cond_185
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_188
    .catchall {:try_start_179 .. :try_end_188} :catchall_191

    .line 1100
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1102
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyChange()V

    .line 1103
    array-length v7, p2

    goto/16 :goto_12

    .line 1100
    :catchall_191
    move-exception v7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 1105
    .end local v1           #index:I
    .end local v5           #rowId:J
    :sswitch_196
    array-length v7, p2

    const/16 v8, 0xbb8

    if-le v7, v8, :cond_19d

    .line 1106
    const/16 v4, 0xbb8

    .line 1107
    :cond_19d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1109
    const-wide/16 v5, 0x0

    .line 1110
    .restart local v5       #rowId:J
    const/4 v1, 0x0

    .restart local v1       #index:I
    :goto_1a3
    if-ge v1, v4, :cond_1b1

    .line 1111
    :try_start_1a5
    const-string v7, "sns_msg_receiver_map"

    const/4 v8, 0x0

    aget-object v9, p2, v1

    invoke-virtual {v0, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 1110
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a3

    .line 1113
    :cond_1b1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1b4
    .catchall {:try_start_1a5 .. :try_end_1b4} :catchall_1ba

    .line 1115
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1117
    array-length v7, p2

    goto/16 :goto_12

    .line 1115
    :catchall_1ba
    move-exception v7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 1017
    nop

    :sswitch_data_1c0
    .sparse-switch
        0x1 -> :sswitch_13
        0x15 -> :sswitch_16a
        0x20 -> :sswitch_196
    .end sparse-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 21
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 1203
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v14, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    .line 1204
    .local v7, match:I
    const/4 v5, 0x0

    .line 1205
    .local v5, count:I
    const-wide/16 v8, 0x0

    .line 1206
    .local v8, t:J
    const-wide/16 v10, 0x0

    .line 1207
    .local v10, t2:J
    const-string v4, " (logtype=500 OR logtype=800 OR logtype=100 OR (logs.logtype=200 AND number NOT IN (SELECT number FROM logs WHERE number LIKE \'%@%\')) OR logtype=300)"

    .line 1213
    .local v4, addedSelection:Ljava/lang/String;
    sparse-switch v7, :sswitch_data_2a6

    .line 1352
    new-instance v14, Ljava/lang/UnsupportedOperationException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot delete that URL: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1215
    :sswitch_38
    move-object/from16 v0, p2

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/sec/android/provider/logsprovider/LogsProvider;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1216
    .local v12, where:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1218
    :try_start_42
    const-string v14, "logs"

    move-object v0, v6

    move-object v1, v14

    move-object v2, v12

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1219
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_50
    .catchall {:try_start_42 .. :try_end_50} :catchall_5c

    .line 1221
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1354
    .end local v12           #where:Ljava/lang/String;
    :goto_53
    if-lez v5, :cond_5b

    .line 1355
    sparse-switch v7, :sswitch_data_2cc

    .line 1365
    :goto_58
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyChange()V

    .line 1367
    :cond_5b
    return v5

    .line 1221
    .restart local v12       #where:Ljava/lang/String;
    :catchall_5c
    move-exception v14

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    .line 1226
    .end local v12           #where:Ljava/lang/String;
    :sswitch_61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1227
    if-eqz p2, :cond_b5

    .line 1228
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v14

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " AND"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1232
    :goto_81
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1234
    :try_start_84
    const-string v14, "logs"

    move-object v0, v6

    move-object v1, v14

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1235
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_93
    .catchall {:try_start_84 .. :try_end_93} :catchall_b8

    .line 1237
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v10, v14, v8

    .line 1240
    sget-object v14, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "delete time : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 1230
    :cond_b5
    move-object/from16 p2, v4

    goto :goto_81

    .line 1237
    :catchall_b8
    move-exception v14

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    .line 1245
    :sswitch_bd
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1246
    if-eqz p2, :cond_112

    .line 1247
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v14

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " AND"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1251
    :goto_dd
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1253
    :try_start_e0
    const-string v14, "logs"

    move-object v0, v6

    move-object v1, v14

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1254
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_ef
    .catchall {:try_start_e0 .. :try_end_ef} :catchall_115

    .line 1256
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v10, v14, v8

    .line 1259
    sget-object v14, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "delete time : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_53

    .line 1249
    :cond_112
    move-object/from16 p2, v4

    goto :goto_dd

    .line 1256
    :catchall_115
    move-exception v14

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    .line 1263
    :sswitch_11a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1264
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1266
    :try_start_121
    sget-object v14, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "delete : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    const-string v14, "logs"

    move-object v0, v6

    move-object v1, v14

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1268
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_14b
    .catchall {:try_start_121 .. :try_end_14b} :catchall_16e

    .line 1270
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v10, v14, v8

    .line 1273
    sget-object v14, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "delete time : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_53

    .line 1270
    :catchall_16e
    move-exception v14

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    .line 1277
    :sswitch_173
    const-string v13, " (logtype=400)"

    .line 1278
    .local v13, where3:Ljava/lang/String;
    if-eqz p2, :cond_1a8

    .line 1279
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v14

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " AND"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1283
    :goto_191
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1285
    :try_start_194
    const-string v14, "logs"

    move-object v0, v6

    move-object v1, v14

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1286
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1a3
    .catchall {:try_start_194 .. :try_end_1a3} :catchall_1ab

    .line 1288
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_53

    .line 1281
    :cond_1a8
    move-object/from16 p2, v13

    goto :goto_191

    .line 1288
    :catchall_1ab
    move-exception v14

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    .line 1293
    .end local v13           #where3:Ljava/lang/String;
    :sswitch_1b0
    const-string v13, " (logtype=410)"

    .line 1294
    .restart local v13       #where3:Ljava/lang/String;
    if-eqz p2, :cond_1e5

    .line 1295
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v14

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " AND"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1299
    :goto_1ce
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1301
    :try_start_1d1
    const-string v14, "logs"

    move-object v0, v6

    move-object v1, v14

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1302
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1e0
    .catchall {:try_start_1d1 .. :try_end_1e0} :catchall_1e8

    .line 1304
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_53

    .line 1297
    :cond_1e5
    move-object/from16 p2, v13

    goto :goto_1ce

    .line 1304
    :catchall_1e8
    move-exception v14

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    .line 1309
    .end local v13           #where3:Ljava/lang/String;
    :sswitch_1ed
    const-string v13, " (logtype=600)"

    .line 1310
    .restart local v13       #where3:Ljava/lang/String;
    if-eqz p2, :cond_222

    .line 1311
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v14

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " AND"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1315
    :goto_20b
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1317
    :try_start_20e
    const-string v14, "logs"

    move-object v0, v6

    move-object v1, v14

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1318
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_21d
    .catchall {:try_start_20e .. :try_end_21d} :catchall_225

    .line 1320
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_53

    .line 1313
    :cond_222
    move-object/from16 p2, v13

    goto :goto_20b

    .line 1320
    :catchall_225
    move-exception v14

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    .line 1325
    .end local v13           #where3:Ljava/lang/String;
    :sswitch_22a
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1327
    :try_start_22d
    const-string v14, "sns_msg_receiver_map"

    move-object v0, v6

    move-object v1, v14

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1328
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_23c
    .catchall {:try_start_22d .. :try_end_23c} :catchall_241

    .line 1330
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_53

    :catchall_241
    move-exception v14

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    .line 1335
    :sswitch_246
    const-string v12, " (logtype=700)"

    .line 1336
    .restart local v12       #where:Ljava/lang/String;
    if-eqz p2, :cond_296

    .line 1337
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v14

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " AND"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1341
    :goto_264
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1343
    :try_start_267
    sget-object v14, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "delete : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    const-string v14, "logs"

    move-object v0, v6

    move-object v1, v14

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 1345
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_291
    .catchall {:try_start_267 .. :try_end_291} :catchall_299

    .line 1347
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_53

    .line 1339
    :cond_296
    move-object/from16 p2, v12

    goto :goto_264

    .line 1347
    :catchall_299
    move-exception v14

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    .line 1361
    .end local v12           #where:Ljava/lang/String;
    :sswitch_29e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyAllCallsChange()V

    .line 1362
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyCallChange()V

    goto/16 :goto_58

    .line 1213
    :sswitch_data_2a6
    .sparse-switch
        0x1 -> :sswitch_11a
        0xb -> :sswitch_173
        0x13 -> :sswitch_1b0
        0x14 -> :sswitch_38
        0x15 -> :sswitch_1ed
        0x16 -> :sswitch_61
        0x17 -> :sswitch_246
        0x1a -> :sswitch_bd
        0x20 -> :sswitch_22a
    .end sparse-switch

    .line 1355
    :sswitch_data_2cc
    .sparse-switch
        0x7 -> :sswitch_29e
        0x9 -> :sswitch_29e
        0x14 -> :sswitch_29e
        0x16 -> :sswitch_29e
        0x1a -> :sswitch_29e
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 6
    .parameter "uri"

    .prologue
    .line 666
    sget-object v1, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 667
    .local v0, match:I
    packed-switch v0, :pswitch_data_26

    .line 671
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 669
    :pswitch_22
    const-string v1, "vnd.android.cursor.item/calls"

    return-object v1

    .line 667
    nop

    :pswitch_data_26
    .packed-switch 0x4
        :pswitch_22
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 15
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v9, 0x0

    const-string v11, "logtype"

    const-string v8, "duration"

    const-string v10, "number"

    const-string v7, "new"

    .line 677
    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 679
    .local v3, match:I
    const-string v6, "type"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_20

    .line 680
    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v7, "pleses insert \'type\' data"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 1007
    :goto_1f
    return-object v6

    .line 684
    :cond_20
    sparse-switch v3, :sswitch_data_54e

    .line 912
    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v7, "wrong uri"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 913
    goto :goto_1f

    .line 686
    :sswitch_2c
    const-string v6, "number"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3d

    .line 687
    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v7, "pleses insert \'number\' data"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 688
    goto :goto_1f

    .line 690
    :cond_3d
    const-string v6, "duration"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4e

    .line 691
    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v7, "pleses insert \'duration\' data"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 692
    goto :goto_1f

    .line 694
    :cond_4e
    const-string v6, "new"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_60

    .line 695
    const-string v6, "new"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 697
    :cond_60
    const-string v6, "logtype"

    const/16 v6, 0x1f4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 698
    const-string v6, "frequent"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 916
    :goto_75
    packed-switch v3, :pswitch_data_57c

    .line 945
    :cond_78
    :goto_78
    :pswitch_78
    iget-object v6, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mLogInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v6, p2}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 947
    .local v4, rowId:J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_544

    .line 948
    sparse-switch v3, :sswitch_data_5a2

    .line 961
    :goto_87
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyChange()V

    .line 962
    sget-boolean v6, Lcom/sec/android/provider/logsprovider/LogsProvider;->DBG:Z

    if-eqz v6, :cond_ec

    .line 963
    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insert data - logtype : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "logtype"

    invoke-virtual {p2, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " number : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "number"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " contactid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "contactid"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "name"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " messageid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "messageid"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :cond_ec
    sparse-switch v3, :sswitch_data_5b8

    .line 1003
    :goto_ef
    invoke-static {p1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    goto/16 :goto_1f

    .line 703
    .end local v4           #rowId:J
    :sswitch_f5
    const-string v6, "number"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_107

    .line 704
    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v7, "pleses insert \'number\' data"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 705
    goto/16 :goto_1f

    .line 707
    :cond_107
    const-string v6, "duration"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_119

    .line 708
    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v7, "pleses insert \'duration\' data"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 709
    goto/16 :goto_1f

    .line 711
    :cond_119
    const-string v6, "new"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_12b

    .line 712
    const-string v6, "new"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 714
    :cond_12b
    const-string v6, "logtype"

    const/16 v6, 0x320

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 715
    const-string v6, "frequent"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_75

    .line 720
    :sswitch_142
    const-string v6, "number"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_154

    .line 721
    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v7, "pleses insert \'number\' data"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 722
    goto/16 :goto_1f

    .line 724
    :cond_154
    const-string v6, "duration"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_166

    .line 725
    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v7, "pleses insert \'duration\' data"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 726
    goto/16 :goto_1f

    .line 728
    :cond_166
    const-string v6, "new"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_178

    .line 729
    const-string v6, "new"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 731
    :cond_178
    const-string v6, "logtype"

    const/16 v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 732
    const-string v6, "frequent"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_75

    .line 735
    :sswitch_18f
    const-string v6, "number"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1a1

    .line 736
    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v7, "pleses insert \'number\' data"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 737
    goto/16 :goto_1f

    .line 739
    :cond_1a1
    const-string v6, "messageid"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1b3

    .line 740
    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v7, "pleses insert \'messageid\'"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 741
    goto/16 :goto_1f

    .line 743
    :cond_1b3
    const-string v6, "logtype"

    const/16 v6, 0x12c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 744
    const-string v6, "duration"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 745
    const-string v6, "new"

    const-string v6, "1"

    invoke-virtual {p2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_75

    .line 748
    :sswitch_1d1
    const-string v6, "number"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1e3

    .line 749
    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v7, "pleses insert \'number\' data"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 750
    goto/16 :goto_1f

    .line 752
    :cond_1e3
    const-string v6, "messageid"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1f5

    .line 753
    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v7, "pleses insert \'messageid\'"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 754
    goto/16 :goto_1f

    .line 756
    :cond_1f5
    const-string v6, "logtype"

    const/16 v6, 0xc8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 757
    const-string v6, "duration"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 758
    const-string v6, "new"

    const-string v6, "1"

    invoke-virtual {p2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_75

    .line 761
    :sswitch_213
    const-string v6, "address"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_225

    .line 762
    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v7, "pleses insert \'address\' data"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 763
    goto/16 :goto_1f

    .line 765
    :cond_225
    const-string v6, "address"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 766
    .local v0, ad:Ljava/lang/String;
    const-string v6, "number"

    invoke-virtual {p2, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const-string v6, "messageid"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_242

    .line 769
    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v7, "pleses insert \'messageid\'"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 770
    goto/16 :goto_1f

    .line 772
    :cond_242
    const-string v6, "sp_type"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_254

    .line 773
    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v7, "pleses insert \'sp_type\'"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 774
    goto/16 :goto_1f

    .line 776
    :cond_254
    const-string v6, "logtype"

    const/16 v6, 0x2bc

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 777
    const-string v6, "duration"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 778
    const-string v6, "new"

    const-string v6, "1"

    invoke-virtual {p2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_75

    .line 781
    .end local v0           #ad:Ljava/lang/String;
    :sswitch_272
    const-string v6, "number"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_284

    .line 782
    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v7, "pleses insert \'number\' data"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 783
    goto/16 :goto_1f

    .line 785
    :cond_284
    const-string v6, "messageid"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_296

    .line 786
    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v7, "pleses insert \'messageid\'"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 787
    goto/16 :goto_1f

    .line 789
    :cond_296
    const-string v6, "new"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2a5

    .line 790
    const-string v6, "new"

    const-string v6, "1"

    invoke-virtual {p2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    :cond_2a5
    const-string v6, "logtype"

    const/16 v6, 0x190

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 793
    const-string v6, "duration"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_75

    .line 796
    :sswitch_2bc
    const-string v6, "address"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2ce

    .line 797
    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v7, "pleses insert \'address\' data"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 798
    goto/16 :goto_1f

    .line 800
    :cond_2ce
    const-string v6, "address"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 801
    .restart local v0       #ad:Ljava/lang/String;
    const-string v6, "number"

    invoke-virtual {p2, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    const-string v6, "messageid"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2eb

    .line 805
    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v7, "pleses insert \'messageid\'"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 806
    goto/16 :goto_1f

    .line 808
    :cond_2eb
    const-string v6, "account_name"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2fd

    .line 809
    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v7, "pleses insert \'account_name\'"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 810
    goto/16 :goto_1f

    .line 812
    :cond_2fd
    const-string v6, "sp_type"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_30f

    .line 813
    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v7, "pleses insert \'sp_type\'"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 814
    goto/16 :goto_1f

    .line 816
    :cond_30f
    const-string v6, "new"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_31e

    .line 817
    const-string v6, "new"

    const-string v6, "1"

    invoke-virtual {p2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    :cond_31e
    const-string v6, "logtype"

    const/16 v6, 0x19a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 820
    const-string v6, "duration"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_75

    .line 823
    .end local v0           #ad:Ljava/lang/String;
    :sswitch_335
    const-string v6, "number"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_347

    .line 824
    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v7, "pleses insert \'number\' data"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 825
    goto/16 :goto_1f

    .line 827
    :cond_347
    const-string v6, "messageid"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_359

    .line 828
    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v7, "pleses insert \'messageid\'"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 829
    goto/16 :goto_1f

    .line 831
    :cond_359
    const-string v6, "sp_type"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_36b

    .line 832
    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v7, "pleses insert \'sp_type\'"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 833
    goto/16 :goto_1f

    .line 835
    :cond_36b
    const-string v6, "contactid"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_376

    move-object v6, v9

    .line 836
    goto/16 :goto_1f

    .line 838
    :cond_376
    const-string v6, "logtype"

    const/16 v6, 0x258

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 839
    const-string v6, "duration"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 840
    const-string v6, "new"

    const-string v6, "1"

    invoke-virtual {p2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_75

    .line 843
    :sswitch_394
    const-string v6, "logtype"

    invoke-virtual {p2, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 844
    .local v2, logType:I
    const-string v6, "logtype"

    invoke-virtual {p2, v11}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3b0

    .line 845
    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v7, "pleses insert \'logtype\'"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 846
    goto/16 :goto_1f

    .line 848
    :cond_3b0
    const/16 v6, 0x64

    if-eq v2, v6, :cond_3d6

    const/16 v6, 0x190

    if-eq v2, v6, :cond_3d6

    const/16 v6, 0x258

    if-eq v2, v6, :cond_3d6

    const/16 v6, 0xc8

    if-eq v2, v6, :cond_3d6

    const/16 v6, 0x12c

    if-eq v2, v6, :cond_3d6

    const/16 v6, 0x2bc

    if-eq v2, v6, :cond_3d6

    const/16 v6, 0x1f4

    if-eq v2, v6, :cond_3d6

    .line 855
    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v7, "wrong \'logtype\'"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 856
    goto/16 :goto_1f

    .line 859
    :cond_3d6
    const/16 v6, 0x64

    if-eq v2, v6, :cond_3de

    const/16 v6, 0x1f4

    if-ne v2, v6, :cond_40e

    .line 861
    :cond_3de
    const-string v6, "duration"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3f0

    .line 862
    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v7, "pleses insert \'duration\'"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 863
    goto/16 :goto_1f

    .line 865
    :cond_3f0
    const-string v6, "new"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_402

    .line 866
    const-string v6, "new"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 868
    :cond_402
    const-string v6, "frequent"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_75

    .line 870
    :cond_40e
    const/16 v6, 0x190

    if-eq v2, v6, :cond_422

    const/16 v6, 0xc8

    if-eq v2, v6, :cond_422

    const/16 v6, 0x12c

    if-eq v2, v6, :cond_422

    const/16 v6, 0x258

    if-eq v2, v6, :cond_422

    const/16 v6, 0x2bc

    if-ne v2, v6, :cond_46d

    .line 875
    :cond_422
    const-string v6, "messageid"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_434

    .line 876
    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v7, "pleses insert \'messageid\'"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 877
    goto/16 :goto_1f

    .line 879
    :cond_434
    const-string v6, "sp_type"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_446

    .line 880
    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v7, "insert \'sp_type\'"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 881
    goto/16 :goto_1f

    .line 883
    :cond_446
    const/16 v6, 0x190

    if-ne v2, v6, :cond_465

    .line 884
    const-string v6, "new"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_459

    .line 885
    const-string v6, "new"

    const-string v6, "1"

    invoke-virtual {p2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    :cond_459
    :goto_459
    const-string v6, "duration"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_75

    .line 889
    :cond_465
    const-string v6, "new"

    const-string v6, "1"

    invoke-virtual {p2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_459

    .line 893
    :cond_46d
    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v7, "wrong \'logtype\'"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_75

    .line 897
    .end local v2           #logType:I
    :sswitch_476
    const-string v6, "number"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_488

    .line 898
    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v7, "pleses insert \'number\' data"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 899
    goto/16 :goto_1f

    .line 901
    :cond_488
    const-string v6, "duration"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_49a

    .line 902
    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v7, "pleses insert \'duration\' data"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 903
    goto/16 :goto_1f

    .line 905
    :cond_49a
    const-string v6, "new"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4ac

    .line 906
    const-string v6, "new"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 908
    :cond_4ac
    const-string v6, "frequent"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_75

    .line 921
    :pswitch_4b8
    const/4 v1, 0x0

    .line 922
    .local v1, cname:Ljava/lang/String;
    const-string v6, "name"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4c7

    .line 923
    const-string v6, "name"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 925
    :cond_4c7
    iget-object v6, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "number"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, p2, v7}, Lcom/sec/android/provider/logsprovider/LogsProvider;->updateLogInfoWithNumber(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 927
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_78

    .line 929
    const-string v6, "name"

    invoke-virtual {p2, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    const-string v6, "name_reversed"

    const-string v7, "cnap"

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_78

    .line 938
    .end local v1           #cname:Ljava/lang/String;
    :pswitch_4e6
    iget-object v6, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "number"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, p2, v7}, Lcom/sec/android/provider/logsprovider/LogsProvider;->updateLogInfoWithNumberAndEmail(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    goto/16 :goto_78

    .line 941
    :pswitch_4f3
    iget-object v6, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "number"

    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, p2, v7}, Lcom/sec/android/provider/logsprovider/LogsProvider;->updateLogInfoWithIM(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    goto/16 :goto_78

    .line 953
    .restart local v4       #rowId:J
    :sswitch_500
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyAllCallsChange()V

    goto/16 :goto_87

    .line 956
    :sswitch_505
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyAllCallsChange()V

    .line 957
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyCallChange()V

    goto/16 :goto_87

    .line 972
    :sswitch_50d
    iget-object v6, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "_id in (select _id from logs where logtype=100 OR logtype=500 OR logtype=800 ORDER BY date DESC limit -1 offset 500)"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_ef

    .line 980
    :sswitch_518
    iget-object v6, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "_id in (select _id from logs where logtype=300 OR logtype=200 ORDER BY date DESC limit -1 offset 500)"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_ef

    .line 986
    :sswitch_523
    iget-object v6, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "_id in (select _id from logs where logtype=700 ORDER BY date DESC limit -1 offset 500)"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_ef

    .line 992
    :sswitch_52e
    iget-object v6, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "_id in (select _id from logs where logtype=400 OR logtype=410 ORDER BY date DESC limit -1 offset 500)"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_ef

    .line 998
    :sswitch_539
    iget-object v6, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "_id in (select _id from logs where logtype=600 ORDER BY date DESC limit -1 offset 3000)"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_ef

    .line 1005
    :cond_544
    sget-object v6, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v7, "insert falled. check input data"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 1007
    goto/16 :goto_1f

    .line 684
    :sswitch_data_54e
    .sparse-switch
        0x1 -> :sswitch_394
        0x7 -> :sswitch_1d1
        0x9 -> :sswitch_18f
        0xb -> :sswitch_272
        0xd -> :sswitch_2c
        0xe -> :sswitch_f5
        0x13 -> :sswitch_2bc
        0x14 -> :sswitch_142
        0x15 -> :sswitch_335
        0x17 -> :sswitch_213
        0x23 -> :sswitch_476
    .end sparse-switch

    .line 916
    :pswitch_data_57c
    .packed-switch 0x7
        :pswitch_4e6
        :pswitch_78
        :pswitch_4e6
        :pswitch_78
        :pswitch_4e6
        :pswitch_78
        :pswitch_4b8
        :pswitch_4b8
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_4e6
        :pswitch_4b8
        :pswitch_78
        :pswitch_78
        :pswitch_4f3
    .end packed-switch

    .line 948
    :sswitch_data_5a2
    .sparse-switch
        0x7 -> :sswitch_500
        0x9 -> :sswitch_500
        0xd -> :sswitch_500
        0xe -> :sswitch_500
        0x14 -> :sswitch_505
    .end sparse-switch

    .line 967
    :sswitch_data_5b8
    .sparse-switch
        0x7 -> :sswitch_518
        0x9 -> :sswitch_518
        0xb -> :sswitch_52e
        0xd -> :sswitch_50d
        0xe -> :sswitch_50d
        0x13 -> :sswitch_52e
        0x14 -> :sswitch_50d
        0x15 -> :sswitch_539
        0x17 -> :sswitch_523
        0x23 -> :sswitch_50d
    .end sparse-switch
.end method

.method protected notifyAllCallsChange()V
    .registers 5

    .prologue
    .line 1703
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://logs/allcalls"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1704
    return-void
.end method

.method protected notifyCallChange()V
    .registers 5

    .prologue
    .line 1700
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1701
    return-void
.end method

.method protected notifyChange()V
    .registers 5

    .prologue
    .line 1697
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1698
    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .registers 28
    .parameter "arg0"

    .prologue
    .line 372
    const/16 v17, 0x0

    .line 373
    .local v17, accountsOnMgr:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v18

    .line 375
    .local v18, am:Landroid/accounts/AccountManager;
    if-nez v18, :cond_e

    .line 459
    :cond_d
    :goto_d
    return-void

    .line 378
    :cond_e
    const/16 v25, 0x0

    .local v25, spType:I
    :goto_10
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSnsAccountType:[Ljava/lang/String;

    array-length v5, v5

    move/from16 v0, v25

    move v1, v5

    if-ge v0, v1, :cond_9f

    .line 379
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSnsAccountType:[Ljava/lang/String;

    aget-object v5, v5, v25

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v13

    .line 380
    .local v13, accountSNS:[Landroid/accounts/Account;
    array-length v5, v13

    if-nez v5, :cond_91

    .line 381
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    .local v24, sb:Ljava/lang/StringBuilder;
    const-string v5, "logtype=600"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND sp_type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 386
    :try_start_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    const-string v6, "logs"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 387
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onAccountsUpdated: Delete SNS log : spType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_89
    .catchall {:try_start_57 .. :try_end_89} :catchall_95

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 378
    .end local v24           #sb:Ljava/lang/StringBuilder;
    :cond_91
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_10

    .line 390
    .restart local v24       #sb:Ljava/lang/StringBuilder;
    :catchall_95
    move-exception v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 395
    .end local v13           #accountSNS:[Landroid/accounts/Account;
    .end local v24           #sb:Ljava/lang/StringBuilder;
    :cond_9f
    const/16 v25, 0x0

    :goto_a1
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSevenAccountType:[Ljava/lang/String;

    array-length v5, v5

    move/from16 v0, v25

    move v1, v5

    if-ge v0, v1, :cond_bc

    .line 396
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSevenAccountType:[Ljava/lang/String;

    aget-object v5, v5, v25

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v14

    .line 397
    .local v14, accountSeven:[Landroid/accounts/Account;
    if-eqz v14, :cond_b9

    .line 398
    array-length v5, v14

    add-int v17, v17, v5

    .line 395
    :cond_b9
    add-int/lit8 v25, v25, 0x1

    goto :goto_a1

    .line 401
    .end local v14           #accountSeven:[Landroid/accounts/Account;
    :cond_bc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 402
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v20, 0x0

    .line 403
    .local v20, c:Landroid/database/Cursor;
    const-string v5, "logs"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "logtype"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "account_name"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "sp_type"

    aput-object v8, v6, v7

    const-string v7, "logtype=410 AND sp_type != 4 AND sp_type != 3 AND sp_type !=  0"

    const/4 v8, 0x0

    const-string v9, "account_name"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 414
    const/16 v16, -0x1

    .line 415
    .local v16, accountsOnLogs:I
    if-eqz v20, :cond_d

    .line 416
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 420
    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1c6

    if-lez v16, :cond_1c6

    .line 422
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    .line 424
    const/16 v21, 0x0

    .local v21, i:I
    move/from16 v22, v21

    .end local v21           #i:I
    .local v22, i:I
    :goto_103
    add-int/lit8 v21, v22, 0x1

    .end local v22           #i:I
    .restart local v21       #i:I
    move/from16 v0, v22

    move/from16 v1, v16

    if-ge v0, v1, :cond_1c6

    .line 425
    const/16 v19, 0x0

    .line 426
    .local v19, bExist:Z
    const/4 v15, 0x0

    .line 427
    .local v15, accounts:Ljava/lang/String;
    const/4 v5, 0x2

    move-object/from16 v0, v20

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 429
    if-nez v15, :cond_11e

    .line 424
    :cond_118
    :goto_118
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move/from16 v22, v21

    .end local v21           #i:I
    .restart local v22       #i:I
    goto :goto_103

    .line 432
    .end local v22           #i:I
    .restart local v21       #i:I
    :cond_11e
    const/16 v25, 0x0

    :goto_120
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSevenAccountType:[Ljava/lang/String;

    array-length v5, v5

    move/from16 v0, v25

    move v1, v5

    if-ge v0, v1, :cond_182

    .line 433
    if-nez v19, :cond_17c

    .line 434
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSevenAccountType:[Ljava/lang/String;

    aget-object v5, v5, v25

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v14

    .line 435
    .restart local v14       #accountSeven:[Landroid/accounts/Account;
    if-eqz v14, :cond_17c

    .line 436
    array-length v5, v14

    if-lez v5, :cond_17c

    .line 438
    const/16 v23, 0x0

    .local v23, index:I
    :goto_13c
    array-length v5, v14

    move/from16 v0, v23

    move v1, v5

    if-ge v0, v1, :cond_17c

    .line 439
    aget-object v5, v14, v23

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17f

    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSevenAccountType:[Ljava/lang/String;

    aget-object v5, v5, v25

    aget-object v6, v14, v23

    iget-object v6, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17f

    .line 441
    const/16 v19, 0x1

    .line 442
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is existed on AccountManager and sp_type is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/provider/logsprovider/LogsProvider;->sSevenAccountType:[Ljava/lang/String;

    aget-object v7, v7, v25

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    .end local v14           #accountSeven:[Landroid/accounts/Account;
    .end local v23           #index:I
    :cond_17c
    add-int/lit8 v25, v25, 0x1

    goto :goto_120

    .line 438
    .restart local v14       #accountSeven:[Landroid/accounts/Account;
    .restart local v23       #index:I
    :cond_17f
    add-int/lit8 v23, v23, 0x1

    goto :goto_13c

    .line 451
    .end local v14           #accountSeven:[Landroid/accounts/Account;
    .end local v23           #index:I
    :cond_182
    if-nez v19, :cond_118

    .line 453
    const-string v5, "content://logs/email_seven"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "account_name=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/provider/logsprovider/LogsProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 454
    sget-object v5, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Delete from Logs account_name = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_118

    .line 458
    .end local v15           #accounts:Ljava/lang/String;
    .end local v19           #bExist:Z
    .end local v21           #i:I
    :cond_1c6
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_d
.end method

.method public onCreate()Z
    .registers 4

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContext:Landroid/content/Context;

    .line 338
    new-instance v0, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    .line 339
    iget-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 340
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    iget-object v1, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "logs"

    invoke-direct {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mLogInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 341
    iget-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    .line 342
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->verifyAccounts()V

    .line 345
    const/4 v0, 0x1

    return v0
.end method

.method public onLowMemory()V
    .registers 3

    .prologue
    .line 463
    sget-object v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v1, "LOWMEMORY"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-super {p0}, Landroid/content/ContentProvider;->onLowMemory()V

    .line 465
    return-void
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 31
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 470
    new-instance v11, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v11}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 471
    .local v11, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v3, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v22

    .line 474
    .local v22, match:I
    packed-switch v22, :pswitch_data_1f8

    .line 503
    :pswitch_11
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 506
    :pswitch_2d
    const/4 v10, 0x0

    .line 507
    .local v10, groupby:Ljava/lang/String;
    const-string v3, "logs"

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 508
    packed-switch v22, :pswitch_data_240

    .line 621
    :pswitch_36
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 511
    :pswitch_52
    const-string v10, "number"

    .line 513
    :pswitch_54
    const-string v3, "logs.logtype=100"

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 514
    const-string v3, " OR logs.logtype=500"

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 515
    const-string v3, " OR logs.logtype=800"

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 516
    const-string v3, " OR (logs.logtype=200 AND number NOT IN (SELECT number FROM logs WHERE number LIKE \'%@%\'))"

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 517
    const-string v3, " OR logs.logtype=300"

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 624
    .end local p1
    :goto_6d
    :pswitch_6d
    const/16 v3, 0x21

    move/from16 v0, v22

    move v1, v3

    if-ne v0, v1, :cond_1b2

    .line 625
    sget-object v3, Lcom/sec/android/provider/logsprovider/LogsProvider;->sIdSearchProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 634
    :goto_79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 636
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez p5, :cond_86

    .line 637
    const-string p5, "date DESC"

    .line 641
    :cond_86
    const/16 v20, 0x0

    .line 642
    .local v20, c:Landroid/database/Cursor;
    const/16 v3, 0xf

    move/from16 v0, v22

    move v1, v3

    if-ne v0, v1, :cond_1c7

    .line 643
    const-string v6, "logs"

    const/4 v3, 0x6

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "1 as _id"

    aput-object v4, v7, v3

    const/4 v3, 0x1

    const-string v4, "name"

    aput-object v4, v7, v3

    const/4 v3, 0x2

    const-string v4, "number"

    aput-object v4, v7, v3

    const/4 v3, 0x3

    const-string v4, "COUNT(number)AS count"

    aput-object v4, v7, v3

    const/4 v3, 0x4

    const-string v4, "contactid"

    aput-object v4, v7, v3

    const/4 v3, 0x5

    const-string v4, "name_reversed"

    aput-object v4, v7, v3

    const-string v8, "type=2 AND frequent=1"

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-string v12, "count desc"

    .end local v11           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v13, "12"

    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 658
    :goto_be
    if-eqz v20, :cond_d1

    .line 659
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/provider/logsprovider/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v20

    move-object v1, v3

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_d1
    move-object/from16 v3, v20

    .line 661
    .end local v5           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v20           #c:Landroid/database/Cursor;
    .end local p2
    :goto_d3
    return-object v3

    .line 523
    .restart local v11       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local p1
    .restart local p2
    :pswitch_d4
    const-string v3, "logs left outer join sns_msg_receiver_map on logs.sns_pkey=sns_msg_receiver_map.message_id"

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 524
    const-string v10, "logs._id"

    .line 525
    goto :goto_6d

    .line 529
    :pswitch_dc
    const-string v3, "(logs.logtype=100"

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 530
    const-string v3, "OR logs.logtype=500)"

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 531
    const-string v3, " AND logs._id="

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 532
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/CharSequence;

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_6d

    .line 536
    .restart local p1
    :pswitch_fe
    const-string v10, "number"

    .line 537
    goto/16 :goto_6d

    .line 540
    :pswitch_102
    const-string v3, "logs.logtype=300"

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_6d

    .line 544
    :pswitch_109
    const-string v3, "logs.logtype=200"

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_6d

    .line 548
    :pswitch_110
    const-string v3, "logs.logtype=400 OR logs.logtype=410"

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_6d

    .line 553
    :pswitch_117
    const-string v3, "logs.logtype=410"

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_6d

    .line 557
    :pswitch_11e
    const-string v3, "logs.logtype=500"

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_6d

    .line 561
    :pswitch_125
    const-string v3, "logs.logtype=800"

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_6d

    .line 565
    :pswitch_12c
    const-string v3, "logs.logtype=600"

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_6d

    .line 569
    :pswitch_133
    const-string v3, "logs.logtype=700"

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_6d

    .line 587
    :pswitch_13a
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 588
    .local v23, sp:I
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 589
    .local v21, id:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/receiver"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 590
    .local v24, uriPath:Ljava/lang/String;
    const/4 v4, 0x0

    .line 591
    .local v4, msgReceiver:Landroid/net/Uri;
    if-eqz v23, :cond_189

    .line 592
    sget-object v3, Lcom/sec/android/provider/logsprovider/LogsProvider;->SNS_GET_MSG_RECEIVERS:Landroid/net/Uri;

    move-object v0, v3

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 596
    :goto_17a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mContentResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_d3

    .line 594
    :cond_189
    sget-object v3, Lcom/sec/android/provider/logsprovider/LogsProvider;->SNS_GET_THREADMSG_RECEIVERS:Landroid/net/Uri;

    move-object v0, v3

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_17a

    .line 612
    .end local v4           #msgReceiver:Landroid/net/Uri;
    .end local v21           #id:Ljava/lang/String;
    .end local v23           #sp:I
    .end local v24           #uriPath:Ljava/lang/String;
    .restart local p2
    :pswitch_193
    const-string v3, "logs._id="

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 613
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/CharSequence;

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_6d

    .line 617
    .restart local p1
    :pswitch_1ab
    const-string v3, "duration_table"

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_6d

    .line 627
    .end local p1
    :cond_1b2
    const/16 v3, 0x22

    move/from16 v0, v22

    move v1, v3

    if-ne v0, v1, :cond_1c0

    .line 628
    sget-object v3, Lcom/sec/android/provider/logsprovider/LogsProvider;->sDurationProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_79

    .line 630
    :cond_1c0
    sget-object v3, Lcom/sec/android/provider/logsprovider/LogsProvider;->sLogsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_79

    .line 652
    .restart local v5       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v20       #c:Landroid/database/Cursor;
    :cond_1c7
    const/16 v3, 0x22

    move/from16 v0, v22

    move v1, v3

    if-ne v0, v1, :cond_1e3

    .line 653
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v12, v5

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    invoke-virtual/range {v11 .. v19}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    goto/16 :goto_be

    .line 655
    :cond_1e3
    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object v12, v5

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, v10

    move-object/from16 v18, p5

    invoke-virtual/range {v11 .. v19}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    goto/16 :goto_be

    .line 474
    :pswitch_data_1f8
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_2d
        :pswitch_11
        :pswitch_2d
        :pswitch_11
        :pswitch_11
        :pswitch_2d
        :pswitch_11
        :pswitch_2d
        :pswitch_11
        :pswitch_2d
        :pswitch_11
        :pswitch_2d
        :pswitch_11
        :pswitch_2d
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_11
        :pswitch_2d
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_2d
        :pswitch_11
        :pswitch_2d
        :pswitch_2d
    .end packed-switch

    .line 508
    :pswitch_data_240
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_193
        :pswitch_36
        :pswitch_dc
        :pswitch_36
        :pswitch_36
        :pswitch_109
        :pswitch_36
        :pswitch_102
        :pswitch_36
        :pswitch_110
        :pswitch_36
        :pswitch_11e
        :pswitch_125
        :pswitch_fe
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_117
        :pswitch_54
        :pswitch_12c
        :pswitch_36
        :pswitch_133
        :pswitch_36
        :pswitch_13a
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_52
        :pswitch_36
        :pswitch_d4
        :pswitch_1ab
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 12
    .parameter "url"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1125
    iget-object v4, p0, Lcom/sec/android/provider/logsprovider/LogsProvider;->mDbHelper:Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1127
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Lcom/sec/android/provider/logsprovider/LogsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 1128
    .local v2, matchedUriId:I
    sparse-switch v2, :sswitch_data_92

    .line 1163
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot update URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1156
    :sswitch_28
    move-object v3, p3

    .line 1165
    .local v3, where:Ljava/lang/String;
    :goto_29
    const/4 v0, 0x0

    .line 1166
    .local v0, count:I
    const-string v4, "number"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 1167
    sget-object v4, Lcom/sec/android/provider/logsprovider/LogsProvider;->TAG:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    const/4 v4, -0x1

    .line 1197
    :goto_3a
    return v4

    .line 1159
    .end local v0           #count:I
    .end local v3           #where:Ljava/lang/String;
    :sswitch_3b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p3, v4}, Lcom/sec/android/provider/logsprovider/LogsProvider;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1161
    .restart local v3       #where:Ljava/lang/String;
    goto :goto_29

    .line 1170
    .restart local v0       #count:I
    :cond_5e
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1172
    const/16 v4, 0x22

    if-ne v2, v4, :cond_7b

    .line 1173
    :try_start_65
    const-string v4, "duration_table"

    invoke-virtual {v1, v4, p2, v3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1177
    :goto_6b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6e
    .catchall {:try_start_65 .. :try_end_6e} :catchall_82

    .line 1179
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1182
    if-lez v0, :cond_79

    .line 1183
    sparse-switch v2, :sswitch_data_c4

    .line 1195
    :goto_76
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyChange()V

    :cond_79
    move v4, v0

    .line 1197
    goto :goto_3a

    .line 1175
    :cond_7b
    :try_start_7b
    const-string v4, "logs"

    invoke-virtual {v1, v4, p2, v3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_80
    .catchall {:try_start_7b .. :try_end_80} :catchall_82

    move-result v0

    goto :goto_6b

    .line 1179
    :catchall_82
    move-exception v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 1187
    :sswitch_87
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyAllCallsChange()V

    goto :goto_76

    .line 1190
    :sswitch_8b
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyAllCallsChange()V

    .line 1191
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->notifyCallChange()V

    goto :goto_76

    .line 1128
    :sswitch_data_92
    .sparse-switch
        0x1 -> :sswitch_28
        0x4 -> :sswitch_3b
        0x7 -> :sswitch_28
        0x9 -> :sswitch_28
        0xb -> :sswitch_28
        0xd -> :sswitch_28
        0xe -> :sswitch_28
        0x13 -> :sswitch_28
        0x14 -> :sswitch_28
        0x15 -> :sswitch_28
        0x17 -> :sswitch_28
        0x22 -> :sswitch_28
    .end sparse-switch

    .line 1183
    :sswitch_data_c4
    .sparse-switch
        0x7 -> :sswitch_87
        0x9 -> :sswitch_87
        0xd -> :sswitch_87
        0x14 -> :sswitch_8b
    .end sparse-switch
.end method

.method protected verifyAccounts()V
    .registers 4

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 350
    invoke-virtual {p0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/provider/logsprovider/LogsProvider;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 351
    return-void
.end method
