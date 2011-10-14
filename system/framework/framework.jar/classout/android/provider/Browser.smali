.class public Landroid/provider/Browser;
.super Ljava/lang/Object;
.source "Browser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Browser$SearchColumns;,
        Landroid/provider/Browser$FolderColumns;,
        Landroid/provider/Browser$BookmarkColumns;
    }
.end annotation


# static fields
.field public static final BOOKMARKS_URI:Landroid/net/Uri; = null

.field public static final EXTRA_APPLICATION_ID:Ljava/lang/String; = "com.android.browser.application_id"

.field public static final EXTRA_HEADERS:Ljava/lang/String; = "com.android.browser.headers"

.field public static final EXTRA_SHARE_FAVICON:Ljava/lang/String; = "share_favicon"

.field public static final EXTRA_SHARE_SCREENSHOT:Ljava/lang/String; = "share_screenshot"

.field public static final FOLDERS_URI:Landroid/net/Uri; = null

.field public static final FOLDER_PROJECTION:[Ljava/lang/String; = null

.field public static final FOLDER_PROJECTION_CREATED_INDEX:I = 0x2

.field public static final FOLDER_PROJECTION_ID_INDEX:I = 0x0

.field public static final FOLDER_PROJECTION_POSITION_INDEX:I = 0x3

.field public static final FOLDER_PROJECTION_TITLE_INDEX:I = 0x1

.field public static final HISTORY_PROJECTION:[Ljava/lang/String; = null

.field public static final HISTORY_PROJECTION_BOOKMARK_INDEX:I = 0x4

.field public static final HISTORY_PROJECTION_CREATED:I = 0xb

.field public static final HISTORY_PROJECTION_DATE_INDEX:I = 0x3

.field public static final HISTORY_PROJECTION_FAVICON_INDEX:I = 0x6

.field public static final HISTORY_PROJECTION_FOLDER_INDEX:I = 0xa

.field public static final HISTORY_PROJECTION_ID_INDEX:I = 0x0

.field public static final HISTORY_PROJECTION_THUMBNAIL_INDEX:I = 0x7

.field public static final HISTORY_PROJECTION_TITLE_INDEX:I = 0x5

.field public static final HISTORY_PROJECTION_TOUCH_ICON_INDEX:I = 0x8

.field public static final HISTORY_PROJECTION_URL_INDEX:I = 0x1

.field public static final HISTORY_PROJECTION_VISITS_INDEX:I = 0x2

.field public static final INITIAL_ZOOM_LEVEL:Ljava/lang/String; = "browser.initialZoomLevel"

.field private static final LOGTAG:Ljava/lang/String; = "browser"

.field private static final MAX_HISTORY_COUNT:I = 0xfa

.field public static final SEARCHES_PROJECTION:[Ljava/lang/String; = null

.field public static final SEARCHES_PROJECTION_DATE_INDEX:I = 0x2

.field public static final SEARCHES_PROJECTION_SEARCH_INDEX:I = 0x1

.field public static final SEARCHES_URI:Landroid/net/Uri; = null

.field private static final SEARCHES_WHERE_CLAUSE:Ljava/lang/String; = "search = ?"

.field public static final TRUNCATE_HISTORY_PROJECTION:[Ljava/lang/String; = null

.field public static final TRUNCATE_HISTORY_PROJECTION_ID_INDEX:I = 0x0

.field public static final TRUNCATE_N_OLDEST:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "_id"

    .line 34
    const-string v0, "content://browser/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    .line 73
    const-string v0, "content://browser/folders"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    .line 78
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    const-string v1, "created"

    aput-object v1, v0, v5

    const-string/jumbo v1, "position"

    aput-object v1, v0, v7

    sput-object v0, Landroid/provider/Browser;->FOLDER_PROJECTION:[Ljava/lang/String;

    .line 100
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string/jumbo v1, "url"

    aput-object v1, v0, v4

    const-string/jumbo v1, "visits"

    aput-object v1, v0, v5

    const-string v1, "date"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "bookmark"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "favicon"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "thumbnail"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "touch_icon"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "user_entered"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "folder"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "created"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    .line 138
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    sput-object v0, Landroid/provider/Browser;->TRUNCATE_HISTORY_PROJECTION:[Ljava/lang/String;

    .line 145
    const-string v0, "content://browser/searches"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Browser;->SEARCHES_URI:Landroid/net/Uri;

    .line 150
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string/jumbo v1, "search"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    sput-object v0, Landroid/provider/Browser;->SEARCHES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 704
    return-void
.end method

.method private static final addOrUrlEquals(Ljava/lang/StringBuilder;)V
    .registers 2
    .parameter "sb"

    .prologue
    .line 275
    const-string v0, " OR url = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    return-void
.end method

.method public static final addSearchUrl(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 13
    .parameter "cr"
    .parameter "search"

    .prologue
    .line 606
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    .line 607
    .local v9, now:J
    const/4 v6, 0x0

    .line 609
    .local v6, c:Landroid/database/Cursor;
    :try_start_a
    sget-object v1, Landroid/provider/Browser;->SEARCHES_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->SEARCHES_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "search = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 615
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 616
    .local v8, map:Landroid/content/ContentValues;
    const-string/jumbo v0, "search"

    invoke-virtual {v8, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const-string v0, "date"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 619
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 620
    sget-object v0, Landroid/provider/Browser;->SEARCHES_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v8, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_a .. :try_end_55} :catchall_70
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_55} :catch_61

    .line 627
    :goto_55
    if-eqz v6, :cond_5a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 629
    .end local v8           #map:Landroid/content/ContentValues;
    :cond_5a
    :goto_5a
    return-void

    .line 622
    .restart local v8       #map:Landroid/content/ContentValues;
    :cond_5b
    :try_start_5b
    sget-object v0, Landroid/provider/Browser;->SEARCHES_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_60
    .catchall {:try_start_5b .. :try_end_60} :catchall_70
    .catch Ljava/lang/IllegalStateException; {:try_start_5b .. :try_end_60} :catch_61

    goto :goto_55

    .line 624
    .end local v8           #map:Landroid/content/ContentValues;
    :catch_61
    move-exception v0

    move-object v7, v0

    .line 625
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_63
    const-string v0, "browser"

    const-string v1, "addSearchUrl"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_70

    .line 627
    if-eqz v6, :cond_5a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5a

    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catchall_70
    move-exception v0

    if-eqz v6, :cond_76

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_76
    throw v0
.end method

.method public static final canClearHistory(Landroid/content/ContentResolver;)Z
    .registers 10
    .parameter "cr"

    .prologue
    .line 459
    const/4 v6, 0x0

    .line 460
    .local v6, c:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 462
    .local v8, ret:Z
    :try_start_2
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "bookmark"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v3, "visits"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "date"

    aput-object v3, v2, v0

    const-string v3, "bookmark = 0 OR (visits > 0 AND date > 0)"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 472
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_28
    .catchall {:try_start_2 .. :try_end_28} :catchall_3e
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_28} :catch_2f

    move-result v8

    .line 476
    if-eqz v6, :cond_2e

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 478
    :cond_2e
    :goto_2e
    return v8

    .line 473
    :catch_2f
    move-exception v0

    move-object v7, v0

    .line 474
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_31
    const-string v0, "browser"

    const-string v1, "canClearHistory"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_3e

    .line 476
    if-eqz v6, :cond_2e

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2e

    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catchall_3e
    move-exception v0

    if-eqz v6, :cond_44

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_44
    throw v0
.end method

.method public static final clearHistory(Landroid/content/ContentResolver;)V
    .registers 2
    .parameter "cr"

    .prologue
    .line 488
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/provider/Browser;->deleteHistoryWhere(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method public static final clearSearches(Landroid/content/ContentResolver;)V
    .registers 5
    .parameter "cr"

    .prologue
    .line 639
    :try_start_0
    sget-object v1, Landroid/provider/Browser;->SEARCHES_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_7} :catch_8

    .line 643
    :goto_7
    return-void

    .line 640
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 641
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "browser"

    const-string v2, "clearSearches"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public static final deleteFromHistory(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 5
    .parameter "cr"
    .parameter "url"

    .prologue
    .line 592
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "url = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 593
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-static {v1, p1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 594
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, matchesUrl:Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/provider/Browser;->deleteHistoryWhere(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 596
    return-void
.end method

.method public static final deleteHistoryTimeFrame(Landroid/content/ContentResolver;JJ)V
    .registers 12
    .parameter "cr"
    .parameter "begin"
    .parameter "end"

    .prologue
    const-wide/16 v3, -0x1

    const-string v6, " >= "

    const-string v5, " < "

    .line 568
    const-string v0, "date"

    .line 569
    .local v0, date:Ljava/lang/String;
    cmp-long v2, v3, p1

    if-nez v2, :cond_33

    .line 570
    cmp-long v2, v3, p3

    if-nez v2, :cond_14

    .line 571
    invoke-static {p0}, Landroid/provider/Browser;->clearHistory(Landroid/content/ContentResolver;)V

    .line 582
    :goto_13
    return-void

    .line 574
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 581
    .local v1, whereClause:Ljava/lang/String;
    :goto_2f
    invoke-static {p0, v1}, Landroid/provider/Browser;->deleteHistoryWhere(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_13

    .line 575
    .end local v1           #whereClause:Ljava/lang/String;
    :cond_33
    cmp-long v2, v3, p3

    if-nez v2, :cond_53

    .line 576
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #whereClause:Ljava/lang/String;
    goto :goto_2f

    .line 578
    .end local v1           #whereClause:Ljava/lang/String;
    :cond_53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #whereClause:Ljava/lang/String;
    goto :goto_2f
.end method

.method private static final deleteHistoryWhere(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 9
    .parameter "cr"
    .parameter "whereClause"

    .prologue
    .line 502
    const/4 v6, 0x0

    .line 504
    .local v6, c:Landroid/database/Cursor;
    :try_start_1
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_bb
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_c} :catch_c1

    move-result-object v0

    .line 509
    .end local v6           #c:Landroid/database/Cursor;
    .local v0, c:Landroid/database/Cursor;
    :try_start_d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 510
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v2

    .line 514
    .local v2, iconDb:Landroid/webkit/WebIconDatabase;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 515
    .local v4, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .line 517
    .local v1, firstTime:Z
    :cond_1d
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 518
    .local v5, url:Ljava/lang/String;
    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_96

    const/4 v3, 0x1

    .line 520
    .local v3, isBookmark:Z
    :goto_2b
    if-eqz v3, :cond_ae

    .line 521
    if-eqz v1, :cond_98

    .line 522
    const/4 v1, 0x0

    .line 526
    .end local v3           #isBookmark:Z
    :goto_30
    const-string v3, "( _id = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 527
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 528
    const-string v3, " )"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 532
    :goto_42
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 534
    if-nez v1, :cond_6e

    .line 535
    new-instance v1, Landroid/content/ContentValues;

    .end local v1           #firstTime:Z
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 536
    .local v1, map:Landroid/content/ContentValues;
    const-string/jumbo v2, "visits"

    .end local v2           #iconDb:Landroid/webkit/WebIconDatabase;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 537
    const-string v2, "date"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 539
    sget-object v2, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 542
    .end local v1           #map:Landroid/content/ContentValues;
    .end local v4           #sb:Ljava/lang/StringBuffer;
    :cond_6e
    const-string v1, "bookmark = 0"

    .line 543
    .local v1, deleteWhereClause:Ljava/lang/String;
    if-eqz p1, :cond_c5

    .line 544
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .end local v1           #deleteWhereClause:Ljava/lang/String;
    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 546
    .local p1, deleteWhereClause:Ljava/lang/String;
    :goto_89
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8f
    .catchall {:try_start_d .. :try_end_8f} :catchall_b2
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_8f} :catch_9e

    .line 552
    .end local v5           #url:Ljava/lang/String;
    .end local p1           #deleteWhereClause:Ljava/lang/String;
    :cond_8f
    if-eqz v0, :cond_94

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_94
    move-object p0, v0

    .line 554
    .end local v0           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    :cond_95
    :goto_95
    return-void

    .line 518
    .restart local v0       #c:Landroid/database/Cursor;
    .local v1, firstTime:Z
    .restart local v2       #iconDb:Landroid/webkit/WebIconDatabase;
    .restart local v4       #sb:Ljava/lang/StringBuffer;
    .restart local v5       #url:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, whereClause:Ljava/lang/String;
    :cond_96
    const/4 v3, 0x0

    goto :goto_2b

    .line 524
    .restart local v3       #isBookmark:Z
    :cond_98
    :try_start_98
    const-string v3, " OR "

    .end local v3           #isBookmark:Z
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_9d
    .catchall {:try_start_98 .. :try_end_9d} :catchall_b2
    .catch Ljava/lang/IllegalStateException; {:try_start_98 .. :try_end_9d} :catch_9e

    goto :goto_30

    .line 548
    .end local v1           #firstTime:Z
    .end local v2           #iconDb:Landroid/webkit/WebIconDatabase;
    .end local v4           #sb:Ljava/lang/StringBuffer;
    .end local v5           #url:Ljava/lang/String;
    .end local p1           #whereClause:Ljava/lang/String;
    :catch_9e
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .line 549
    .end local v0           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    .local p1, e:Ljava/lang/IllegalStateException;
    :goto_a1
    :try_start_a1
    const-string v0, "browser"

    const-string v1, "deleteHistoryWhere"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a8
    .catchall {:try_start_a1 .. :try_end_a8} :catchall_bf

    .line 552
    if-eqz p0, :cond_95

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_95

    .line 530
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v1       #firstTime:Z
    .restart local v2       #iconDb:Landroid/webkit/WebIconDatabase;
    .restart local v3       #isBookmark:Z
    .restart local v4       #sb:Ljava/lang/StringBuffer;
    .restart local v5       #url:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, whereClause:Ljava/lang/String;
    :cond_ae
    :try_start_ae
    invoke-virtual {v2, v5}, Landroid/webkit/WebIconDatabase;->releaseIconForPageUrl(Ljava/lang/String;)V
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_b2
    .catch Ljava/lang/IllegalStateException; {:try_start_ae .. :try_end_b1} :catch_9e

    goto :goto_42

    .line 552
    .end local v1           #firstTime:Z
    .end local v2           #iconDb:Landroid/webkit/WebIconDatabase;
    .end local v3           #isBookmark:Z
    .end local v4           #sb:Ljava/lang/StringBuffer;
    .end local v5           #url:Ljava/lang/String;
    .end local p1           #whereClause:Ljava/lang/String;
    :catchall_b2
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .end local v0           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    :goto_b5
    if-eqz p0, :cond_ba

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_ba
    throw p1

    .restart local v6       #c:Landroid/database/Cursor;
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1       #whereClause:Ljava/lang/String;
    :catchall_bb
    move-exception p0

    move-object p1, p0

    move-object p0, v6

    .end local v6           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto :goto_b5

    .local p1, e:Ljava/lang/IllegalStateException;
    :catchall_bf
    move-exception p1

    goto :goto_b5

    .line 548
    .restart local v6       #c:Landroid/database/Cursor;
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, whereClause:Ljava/lang/String;
    :catch_c1
    move-exception p0

    move-object p1, p0

    move-object p0, v6

    .end local v6           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto :goto_a1

    .restart local v0       #c:Landroid/database/Cursor;
    .local v1, deleteWhereClause:Ljava/lang/String;
    .restart local v5       #url:Ljava/lang/String;
    .local p0, cr:Landroid/content/ContentResolver;
    :cond_c5
    move-object p1, v1

    .end local v1           #deleteWhereClause:Ljava/lang/String;
    .local p1, deleteWhereClause:Ljava/lang/String;
    goto :goto_89
.end method

.method public static final getAllBookmarks(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .registers 7
    .parameter "cr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 235
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "url"

    aput-object v3, v2, v0

    const-string v3, "bookmark = 1"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getAllBookmarksWithFields(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .parameter "cr"
    .parameter "whereClause"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 248
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bookmark = 1 and "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getAllFoldersWithFields(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .parameter "cr"
    .parameter "whereClause"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 257
    sget-object v1, Landroid/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->FOLDER_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getAllVisitedUrls(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .registers 7
    .parameter "cr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 270
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v4, "url"

    aput-object v4, v2, v0

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getVisitedHistory(Landroid/content/ContentResolver;)[Ljava/lang/String;
    .registers 11
    .parameter "cr"

    .prologue
    .line 389
    const/4 v6, 0x0

    .line 390
    .local v6, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 392
    .local v9, str:[Ljava/lang/String;
    const/4 v0, 0x1

    :try_start_3
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "url"

    aput-object v1, v2, v0

    .line 395
    .local v2, projection:[Ljava/lang/String;
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const-string/jumbo v3, "visits > 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 397
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v9, v0, [Ljava/lang/String;

    .line 398
    const/4 v8, 0x0

    .line 399
    .local v8, i:I
    :goto_1e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 400
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v8
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_46
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_2b} :catch_34

    .line 401
    add-int/lit8 v8, v8, 0x1

    goto :goto_1e

    .line 407
    :cond_2e
    if-eqz v6, :cond_33

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 409
    .end local v2           #projection:[Ljava/lang/String;
    .end local v8           #i:I
    :cond_33
    :goto_33
    return-object v9

    .line 403
    :catch_34
    move-exception v0

    move-object v7, v0

    .line 404
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_36
    const-string v0, "browser"

    const-string v1, "getVisitedHistory"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 405
    const/4 v0, 0x0

    new-array v9, v0, [Ljava/lang/String;
    :try_end_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_46

    .line 407
    if-eqz v6, :cond_33

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_33

    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catchall_46
    move-exception v0

    if-eqz v6, :cond_4c

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4c
    throw v0
.end method

.method public static final getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .parameter "cr"
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    const-string/jumbo v5, "www."

    const-string/jumbo v1, "url = "

    const-string v3, "https://"

    const-string v2, "http://"

    .line 287
    const/4 v7, 0x0

    .line 288
    .local v7, secure:Z
    move-object v6, p1

    .line 289
    .local v6, compareString:Ljava/lang/String;
    const-string v0, "http://"

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 290
    const/4 v0, 0x7

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 295
    :cond_1a
    :goto_1a
    const-string/jumbo v0, "www."

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 296
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 298
    :cond_28
    const/4 v8, 0x0

    .line 299
    .local v8, whereClause:Ljava/lang/StringBuilder;
    if-eqz v7, :cond_81

    .line 300
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8           #whereClause:Ljava/lang/StringBuilder;
    const-string/jumbo v0, "url = "

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    .restart local v8       #whereClause:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 303
    invoke-static {v8}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 321
    :goto_62
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 291
    .end local v8           #whereClause:Ljava/lang/StringBuilder;
    :cond_71
    const-string v0, "https://"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 292
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 293
    const/4 v7, 0x1

    goto :goto_1a

    .line 307
    .restart local v8       #whereClause:Ljava/lang/StringBuilder;
    :cond_81
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8           #whereClause:Ljava/lang/StringBuilder;
    const-string/jumbo v0, "url = "

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    .restart local v8       #whereClause:Ljava/lang/StringBuilder;
    invoke-static {v8, v6}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 310
    invoke-static {v8}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "www."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 312
    .local v9, wwwString:Ljava/lang/String;
    invoke-static {v8, v9}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 314
    invoke-static {v8}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 317
    invoke-static {v8}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_62
.end method

.method public static final requestAllIcons(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V
    .registers 4
    .parameter "cr"
    .parameter "where"
    .parameter "listener"

    .prologue
    .line 658
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/webkit/WebIconDatabase;->bulkRequestIconForPageUrl(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V

    .line 660
    return-void
.end method

.method public static final saveBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "c"
    .parameter "title"
    .parameter "url"

    .prologue
    .line 178
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 179
    .local v0, i:Landroid/content/Intent;
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 182
    return-void
.end method

.method public static final sendString(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter "c"
    .parameter "s"

    .prologue
    .line 201
    const v0, 0x10403af

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public static final sendString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "c"
    .parameter "stringToSend"
    .parameter "chooserDialogTitle"

    .prologue
    .line 217
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, send:Landroid/content/Intent;
    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    :try_start_12
    invoke-static {v0, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_19
    .catch Landroid/content/ActivityNotFoundException; {:try_start_12 .. :try_end_19} :catch_1a

    .line 226
    :goto_19
    return-void

    .line 223
    :catch_1a
    move-exception v1

    goto :goto_19
.end method

.method public static final truncateHistory(Landroid/content/ContentResolver;)V
    .registers 10
    .parameter "cr"

    .prologue
    .line 424
    const/4 v6, 0x0

    .line 427
    .local v6, c:Landroid/database/Cursor;
    :try_start_1
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->TRUNCATE_HISTORY_PROJECTION:[Ljava/lang/String;

    const-string v3, "bookmark = 0"

    const/4 v4, 0x0

    const-string v5, "date"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 434
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0xfa

    if-lt v0, v1, :cond_45

    .line 436
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1e
    const/4 v0, 0x5

    if-ge v8, v0, :cond_45

    .line 439
    sget-object v0, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 442
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_5e
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_42} :catch_4e

    move-result v0

    if-nez v0, :cond_4b

    .line 448
    .end local v8           #i:I
    :cond_45
    if-eqz v6, :cond_4a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 450
    :cond_4a
    :goto_4a
    return-void

    .line 436
    .restart local v8       #i:I
    :cond_4b
    add-int/lit8 v8, v8, 0x1

    goto :goto_1e

    .line 445
    .end local v8           #i:I
    :catch_4e
    move-exception v0

    move-object v7, v0

    .line 446
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_50
    const-string v0, "browser"

    const-string/jumbo v1, "truncateHistory"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catchall {:try_start_50 .. :try_end_58} :catchall_5e

    .line 448
    if-eqz v6, :cond_4a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4a

    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catchall_5e
    move-exception v0

    if-eqz v6, :cond_64

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_64
    throw v0
.end method

.method public static final updateVisitedHistory(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .registers 13
    .parameter "cr"
    .parameter "url"
    .parameter "real"

    .prologue
    const-string/jumbo v8, "visits"

    const-string/jumbo v8, "user_entered"

    const-string v8, "date"

    .line 337
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 338
    .local v3, now:J
    const/4 v0, 0x0

    .line 340
    .local v0, c:Landroid/database/Cursor;
    :try_start_12
    invoke-static {p0, p1}, Landroid/provider/Browser;->getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 342
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_79

    .line 343
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 344
    .local v2, map:Landroid/content/ContentValues;
    if-eqz p2, :cond_5d

    .line 345
    const-string/jumbo v8, "visits"

    const/4 v9, 0x2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 350
    :goto_34
    const-string v8, "date"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 351
    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    .line 353
    .local v5, projection:[Ljava/lang/String;
    sget-object v8, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const-string v9, "_id = ?"

    invoke-virtual {p0, v8, v2, v9, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_12 .. :try_end_57} :catchall_c8
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_57} :catch_69

    .line 378
    .end local v5           #projection:[Ljava/lang/String;
    :goto_57
    if-eqz v0, :cond_5c

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 380
    .end local v2           #map:Landroid/content/ContentValues;
    :cond_5c
    :goto_5c
    return-void

    .line 348
    .restart local v2       #map:Landroid/content/ContentValues;
    :cond_5d
    :try_start_5d
    const-string/jumbo v8, "user_entered"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_68
    .catchall {:try_start_5d .. :try_end_68} :catchall_c8
    .catch Ljava/lang/IllegalStateException; {:try_start_5d .. :try_end_68} :catch_69

    goto :goto_34

    .line 375
    .end local v2           #map:Landroid/content/ContentValues;
    :catch_69
    move-exception v8

    move-object v1, v8

    .line 376
    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_6b
    const-string v8, "browser"

    const-string/jumbo v9, "updateVisitedHistory"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_73
    .catchall {:try_start_6b .. :try_end_73} :catchall_c8

    .line 378
    if-eqz v0, :cond_5c

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_5c

    .line 355
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :cond_79
    :try_start_79
    invoke-static {p0}, Landroid/provider/Browser;->truncateHistory(Landroid/content/ContentResolver;)V

    .line 356
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 359
    .restart local v2       #map:Landroid/content/ContentValues;
    if-eqz p2, :cond_cf

    .line 360
    const/4 v7, 0x1

    .line 361
    .local v7, visits:I
    const/4 v6, 0x0

    .line 366
    .local v6, user_entered:I
    :goto_85
    const-string/jumbo v8, "url"

    invoke-virtual {v2, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string/jumbo v8, "visits"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 368
    const-string v8, "date"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 369
    const-string v8, "bookmark"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 370
    const-string/jumbo v8, "title"

    invoke-virtual {v2, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v8, "created"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 372
    const-string/jumbo v8, "user_entered"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 373
    sget-object v8, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {p0, v8, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_c7
    .catchall {:try_start_79 .. :try_end_c7} :catchall_c8
    .catch Ljava/lang/IllegalStateException; {:try_start_79 .. :try_end_c7} :catch_69

    goto :goto_57

    .line 378
    .end local v2           #map:Landroid/content/ContentValues;
    .end local v6           #user_entered:I
    .end local v7           #visits:I
    :catchall_c8
    move-exception v8

    if-eqz v0, :cond_ce

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_ce
    throw v8

    .line 363
    .restart local v2       #map:Landroid/content/ContentValues;
    :cond_cf
    const/4 v7, 0x0

    .line 364
    .restart local v7       #visits:I
    const/4 v6, 0x1

    .restart local v6       #user_entered:I
    goto :goto_85
.end method
