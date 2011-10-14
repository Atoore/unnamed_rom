.class Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/LauncherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private final mContext:Landroid/content/Context;

.field private mCustomer:Lcom/sec/android/app/twlauncher/LauncherCustomer;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 241
    const-string v0, "launcher.db"

    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 242
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 243
    new-instance v0, Landroid/appwidget/AppWidgetHost;

    const/16 v1, 0x400

    invoke-direct {v0, p1, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 244
    return-void
.end method

.method private addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1019
    invoke-virtual {p3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1020
    invoke-virtual {p3, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1022
    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    const/4 v3, 0x0

    invoke-virtual {p4, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 1024
    invoke-virtual {p5, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1025
    const/high16 v2, 0x1020

    invoke-virtual {p5, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1027
    const-string v2, "intent"

    const/4 v4, 0x0

    invoke-virtual {p5, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    const-string v2, "title"

    invoke-virtual {v3, p4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    const-string v2, "itemType"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1030
    const-string v2, "spanX"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1031
    const-string v2, "spanY"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1032
    const-string v2, "favorites"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v5

    .line 1038
    :goto_0
    return v0

    .line 1033
    :catch_0
    move-exception v2

    .line 1034
    const-string v3, "Launcher.LauncherProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to add favorite: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1035
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move v0, v6

    .line 1036
    goto :goto_0
.end method

.method private addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z
    .locals 6
    .parameter "db"
    .parameter "values"
    .parameter "cn"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 1126
    const/4 v0, 0x0

    .line 1127
    .local v0, allocatedAppWidgets:Z
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 1130
    .local v2, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 1132
    .local v1, appWidgetId:I
    const-string v4, "itemType"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1133
    const-string v4, "spanX"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1134
    const-string v4, "spanY"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1135
    const-string v4, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1136
    const-string v4, "favorites"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1138
    const/4 v0, 0x1

    .line 1140
    invoke-virtual {v2, v1, p3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1145
    .end local v1           #appWidgetId:I
    :goto_0
    return v0

    .line 1141
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 1142
    .local v3, ex:Ljava/lang/RuntimeException;
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method private addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)Z
    .locals 10
    .parameter "db"
    .parameter "values"
    .parameter "a"

    .prologue
    const/4 v8, 0x0

    .line 983
    const/4 v7, 0x1

    invoke-virtual {p3, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 984
    .local v6, packageName:Ljava/lang/String;
    invoke-virtual {p3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 986
    .local v3, className:Ljava/lang/String;
    if-eqz v6, :cond_0

    if-nez v3, :cond_1

    :cond_0
    move v7, v8

    .line 1012
    :goto_0
    return v7

    .line 990
    :cond_1
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v6, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    .local v4, cn:Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 993
    .local v0, allocatedAppWidgets:Z
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 996
    .local v2, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    :try_start_0
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v7}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 998
    .local v1, appWidgetId:I
    const-string v7, "itemType"

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 999
    const-string v7, "spanX"

    const/4 v8, 0x5

    invoke-virtual {p3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    const-string v7, "spanY"

    const/4 v8, 0x6

    invoke-virtual {p3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    const-string v7, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1002
    const-string v7, "multipleSize"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->getWidgetMultipleSize(Landroid/content/ComponentName;)Lcom/sec/android/app/twlauncher/MultipleSize;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/MultipleSize;->toLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1003
    const-string v7, "favorites"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1004
    const/4 v0, 0x1

    .line 1006
    invoke-virtual {v2, v1, v4}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #appWidgetId:I
    :goto_1
    move v7, v0

    .line 1012
    goto :goto_0

    .line 1007
    :catch_0
    move-exception v7

    move-object v5, v7

    .line 1008
    .local v5, ex:Ljava/lang/RuntimeException;
    const-string v7, "Launcher.LauncherProvider"

    const-string v8, "Problem allocating appWidgetId"

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1009
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1
.end method

.method private addCSCAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;[Ljava/lang/String;)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1324
    aget-object v0, p3, v7

    .line 1325
    const/4 v1, 0x2

    aget-object v1, p3, v1

    .line 1327
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    move v0, v6

    .line 1354
    :goto_0
    return v0

    .line 1331
    :cond_1
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 1337
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 1339
    const-string v3, "itemType"

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1340
    const-string v3, "spanX"

    const/4 v4, 0x6

    aget-object v4, p3, v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    const-string v3, "spanY"

    const/4 v4, 0x7

    aget-object v4, p3, v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    const-string v3, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1343
    const-string v3, "multipleSize"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->getWidgetMultipleSize(Landroid/content/ComponentName;)Lcom/sec/android/app/twlauncher/MultipleSize;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/MultipleSize;->toLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1344
    const-string v3, "favorites"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1348
    :try_start_1
    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v7

    .line 1352
    goto :goto_0

    .line 1349
    :catch_0
    move-exception v0

    move v1, v6

    .line 1350
    :goto_1
    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "(CSC)Problem allocating appWidgetId"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1351
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    move v0, v1

    goto :goto_0

    .line 1349
    :catch_1
    move-exception v0

    move v1, v7

    goto :goto_1
.end method

.method private addCSCSamsungAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;[Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v0, "string"

    .line 1237
    aget-object v1, p3, v9

    .line 1238
    aget-object v2, p3, v6

    .line 1239
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1243
    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    const/16 v4, 0x80

    invoke-virtual {p4, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 1246
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1248
    const-string v3, "intent"

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    const-string v0, "itemType"

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1251
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 1253
    if-nez v3, :cond_0

    move v0, v8

    .line 1319
    :goto_0
    return v0

    .line 1257
    :cond_0
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1258
    if-eqz v0, :cond_5

    .line 1259
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1260
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1261
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1265
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-eq v4, v6, :cond_2

    if-ne v4, v9, :cond_1

    .line 1272
    :cond_2
    :goto_1
    const/4 v4, 0x0

    :try_start_2
    const-string v5, "width"

    const/4 v6, 0x0

    invoke-interface {v0, v4, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 1273
    const/4 v5, 0x0

    const-string v6, "height"

    const/4 v7, 0x0

    invoke-interface {v0, v5, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1274
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1275
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v3, v4

    .line 1292
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1294
    const v5, 0x7f0b0006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 1295
    const v6, 0x7f0b0007

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1297
    rem-int v6, v3, v5

    if-eqz v6, :cond_8

    div-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x1

    .line 1299
    :goto_3
    rem-int v5, v0, v4

    if-eqz v5, :cond_9

    div-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    .line 1302
    :goto_4
    sget v4, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_X:I

    if-le v3, v4, :cond_3

    .line 1303
    sget v3, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_X:I

    .line 1306
    :cond_3
    sget v4, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_Y:I

    if-le v0, v4, :cond_4

    .line 1307
    sget v0, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_Y:I

    .line 1310
    :cond_4
    const-string v4, "spanX"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1311
    const-string v3, "spanY"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1312
    const-string v0, "favorites"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move v0, v9

    .line 1319
    goto/16 :goto_0

    .line 1267
    :catch_0
    move-exception v4

    .line 1268
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1313
    :catch_1
    move-exception v0

    .line 1314
    const-string v3, "Launcher.LauncherProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(CSC)Unable to add samsungappwidget: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1316
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move v0, v8

    .line 1317
    goto/16 :goto_0

    .line 1269
    :catch_2
    move-exception v4

    .line 1270
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 1277
    :cond_5
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v4, "min_width"

    const-string v5, "string"

    invoke-virtual {v0, v4, v5, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1279
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v5, "min_height"

    const-string v6, "string"

    invoke-virtual {v0, v5, v6, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1281
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1282
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1284
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1286
    if-eqz v4, :cond_6

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    iget v4, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 1288
    :goto_5
    if-eqz v5, :cond_7

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    iget v4, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    :goto_6
    move v10, v3

    move v3, v0

    move v0, v10

    goto/16 :goto_2

    :cond_6
    move v0, v8

    .line 1286
    goto :goto_5

    :cond_7
    move v3, v8

    .line 1288
    goto :goto_6

    .line 1297
    :cond_8
    div-int/2addr v3, v5

    goto/16 :goto_3

    .line 1299
    :cond_9
    div-int/2addr v0, v4
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_4
.end method

.method private addCSCShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1361
    .line 1364
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p3, p4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    const/4 v1, 0x0

    invoke-virtual {p5, v0, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 1366
    invoke-virtual {p6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1367
    const/high16 v0, 0x1020

    invoke-virtual {p6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1369
    const-string v0, "intent"

    invoke-virtual {p6}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    const-string v0, "title"

    invoke-virtual {v1, p5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    const-string v0, "itemType"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1372
    const-string v0, "spanX"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1373
    const-string v0, "spanY"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1374
    const-string v0, "favorites"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    .line 1380
    :goto_0
    return v0

    .line 1375
    :catch_0
    move-exception v0

    .line 1376
    const-string v0, "Launcher.LauncherProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(CSC)Unable to add favorite: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". NameNotFoundException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 1378
    goto :goto_0
.end method

.method private addClockWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .locals 8
    .parameter "db"
    .parameter "values"

    .prologue
    const/16 v6, 0x3e8

    .line 1151
    const/4 v5, 0x1

    new-array v2, v5, [I

    const/4 v5, 0x0

    aput v6, v2, v5

    .line 1155
    .local v2, bindSources:[I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1156
    .local v3, bindTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.alarmclock"

    const-string v7, "com.android.alarmclock.AnalogAppWidgetProvider"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1159
    const/4 v0, 0x0

    .line 1163
    .local v0, allocatedAppWidgets:Z
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 1165
    .local v1, appWidgetId:I
    const-string v5, "itemType"

    const/16 v6, 0x3e8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1166
    const-string v5, "spanX"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1167
    const-string v5, "spanY"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1168
    const-string v5, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1169
    const-string v5, "favorites"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1171
    const/4 v0, 0x1

    .line 1178
    .end local v1           #appWidgetId:I
    :goto_0
    if-eqz v0, :cond_0

    .line 1179
    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->launchAppWidgetBinder([ILjava/util/ArrayList;)V

    .line 1182
    :cond_0
    return v0

    .line 1172
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 1173
    .local v4, ex:Ljava/lang/RuntimeException;
    const-string v5, "Launcher.LauncherProvider"

    const-string v6, "Problem allocating appWidgetId"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1174
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method private addMainApp(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;I)Z
    .locals 11
    .parameter "db"
    .parameter "values"
    .parameter "a"
    .parameter "packageManager"
    .parameter "index"

    .prologue
    .line 809
    const/4 v8, 0x1

    invoke-virtual {p3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 810
    .local v5, packageName:Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {p3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 812
    .local v1, className:Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 813
    .local v7, r:Landroid/content/res/Resources;
    const v8, 0x7f0a0004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    const v9, 0x7f0a0005

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    mul-int v4, v8, v9

    .line 814
    .local v4, itemsOnPage:I
    div-int v6, p5, v4

    .line 815
    .local v6, page:I
    rem-int v0, p5, v4

    .line 818
    .local v0, cell:I
    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v5, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    .local v2, cn:Landroid/content/ComponentName;
    const/4 v8, 0x0

    invoke-virtual {p4, v2, v8}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 820
    const-string v8, "component_name"

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    const-string v8, "page"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 822
    const-string v8, "cell"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 823
    const-string v8, "default_sort"

    add-int/lit8 v9, p5, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 824
    const-string v8, "menu_item"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    const/4 v8, 0x1

    .end local v2           #cn:Landroid/content/ComponentName;
    :goto_0
    return v8

    .line 825
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 826
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "Launcher.LauncherProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to add mainapp: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ". NameNotFoundException"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private addMenuFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;I)Z
    .locals 9
    .parameter "db"
    .parameter "values"
    .parameter "a"
    .parameter "index"

    .prologue
    const/4 v8, 0x0

    .line 837
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 838
    .local v4, r:Landroid/content/res/Resources;
    const v6, 0x7f0a0004

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const v7, 0x7f0a0005

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    mul-int v2, v6, v7

    .line 839
    .local v2, itemsOnPage:I
    div-int v3, p4, v2

    .line 840
    .local v3, page:I
    rem-int v0, p4, v2

    .line 842
    .local v0, cell:I
    const/4 v6, 0x2

    invoke-virtual {p3, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 844
    .local v5, titleResId:I
    if-nez v5, :cond_0

    .line 845
    const-string v6, "Launcher.LauncherModel"

    const-string v7, "menufolder is missing title resource ID"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 860
    :goto_0
    return v6

    .line 850
    :cond_0
    :try_start_0
    const-string v6, "title"

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    const-string v6, "page"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 852
    const-string v6, "cell"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 853
    const-string v6, "default_sort"

    add-int/lit8 v7, p4, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 854
    const-string v6, "menu_item"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    const/4 v6, 0x1

    goto :goto_0

    .line 855
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 856
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v6, "Launcher.LauncherProvider"

    const-string v7, "Problem addMenuFolder"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 857
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    move v6, v8

    .line 858
    goto :goto_0
.end method

.method private addSamsungAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;)Z
    .locals 30
    .parameter "db"
    .parameter "values"
    .parameter "a"
    .parameter "packageManager"

    .prologue
    .line 895
    const/16 v27, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 896
    .local v17, packageName:Ljava/lang/String;
    const/16 v27, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 897
    .local v8, className:Ljava/lang/String;
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 899
    .local v13, intent:Landroid/content/Intent;
    const/4 v7, 0x0

    .line 901
    .local v7, c:Landroid/content/Context;
    :try_start_0
    new-instance v9, Landroid/content/ComponentName;

    move-object v0, v9

    move-object/from16 v1, v17

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    .local v9, cn:Landroid/content/ComponentName;
    const/16 v27, 0x80

    move-object/from16 v0, p4

    move-object v1, v9

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v12

    .line 904
    .local v12, info:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v13, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 906
    const-string v27, "intent"

    const/16 v28, 0x0

    move-object v0, v13

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    const-string v27, "itemType"

    const/16 v28, 0x5

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const/16 v28, 0x3

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v7

    .line 911
    if-nez v7, :cond_0

    .line 912
    const/16 v27, 0x0

    .line 979
    .end local v9           #cn:Landroid/content/ComponentName;
    .end local v12           #info:Landroid/content/pm/ActivityInfo;
    :goto_0
    return v27

    .line 915
    .restart local v9       #cn:Landroid/content/ComponentName;
    .restart local v12       #info:Landroid/content/pm/ActivityInfo;
    :cond_0
    iget-object v6, v12, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 916
    .local v6, bundle:Landroid/os/Bundle;
    if-eqz v6, :cond_5

    .line 917
    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 918
    .local v15, keyset:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 919
    .local v14, key:Ljava/lang/String;
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v27

    move-object v0, v12

    move-object/from16 v1, v27

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v18

    .line 923
    .local v18, parser:Landroid/content/res/XmlResourceParser;
    :cond_1
    :try_start_1
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v24

    .local v24, type:I
    const/16 v27, 0x2

    move/from16 v0, v24

    move/from16 v1, v27

    if-eq v0, v1, :cond_2

    const/16 v27, 0x1

    move/from16 v0, v24

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 930
    .end local v24           #type:I
    :cond_2
    :goto_1
    const/16 v27, 0x0

    :try_start_2
    const-string v28, "width"

    const/16 v29, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v20

    .line 931
    .local v20, resWidth:I
    const/16 v27, 0x0

    const-string v28, "height"

    const/16 v29, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v19

    .line 932
    .local v19, resHeight:I
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    .line 933
    .local v25, width:I
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 950
    .end local v14           #key:Ljava/lang/String;
    .end local v15           #keyset:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v18           #parser:Landroid/content/res/XmlResourceParser;
    .local v11, height:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 952
    .local v21, resources:Landroid/content/res/Resources;
    const v27, 0x7f0b0006

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 953
    .local v5, actualWidth:I
    const v27, 0x7f0b0007

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 955
    .local v4, actualHeight:I
    rem-int v27, v25, v5

    if-eqz v27, :cond_8

    div-int v27, v25, v5

    add-int/lit8 v27, v27, 0x1

    move/from16 v22, v27

    .line 957
    .local v22, spanX:I
    :goto_3
    rem-int v27, v11, v4

    if-eqz v27, :cond_9

    div-int v27, v11, v4

    add-int/lit8 v27, v27, 0x1

    move/from16 v23, v27

    .line 960
    .local v23, spanY:I
    :goto_4
    sget v27, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_X:I

    move/from16 v0, v22

    move/from16 v1, v27

    if-le v0, v1, :cond_3

    .line 961
    sget v22, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_X:I

    .line 964
    :cond_3
    sget v27, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_Y:I

    move/from16 v0, v23

    move/from16 v1, v27

    if-le v0, v1, :cond_4

    .line 965
    sget v23, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_Y:I

    .line 968
    :cond_4
    const-string v27, "spanX"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 969
    const-string v27, "spanY"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 970
    const-string v27, "appWidgetId"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 972
    const-string v27, "favorites"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 979
    const/16 v27, 0x1

    goto/16 :goto_0

    .line 925
    .end local v4           #actualHeight:I
    .end local v5           #actualWidth:I
    .end local v11           #height:I
    .end local v19           #resHeight:I
    .end local v20           #resWidth:I
    .end local v21           #resources:Landroid/content/res/Resources;
    .end local v22           #spanX:I
    .end local v23           #spanY:I
    .end local v25           #width:I
    .restart local v14       #key:Ljava/lang/String;
    .restart local v15       #keyset:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v18       #parser:Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v10

    .line 926
    .local v10, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v10}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 973
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v9           #cn:Landroid/content/ComponentName;
    .end local v10           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v12           #info:Landroid/content/pm/ActivityInfo;
    .end local v14           #key:Ljava/lang/String;
    .end local v15           #keyset:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v18           #parser:Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v27

    move-object/from16 v10, v27

    .line 974
    .local v10, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v27, "Launcher.LauncherProvider"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Unable to add samsungappwidget: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object v2, v10

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 976
    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 977
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 927
    .end local v10           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6       #bundle:Landroid/os/Bundle;
    .restart local v9       #cn:Landroid/content/ComponentName;
    .restart local v12       #info:Landroid/content/pm/ActivityInfo;
    .restart local v14       #key:Ljava/lang/String;
    .restart local v15       #keyset:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v18       #parser:Landroid/content/res/XmlResourceParser;
    :catch_2
    move-exception v10

    .line 928
    .local v10, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 935
    .end local v10           #e:Ljava/io/IOException;
    .end local v14           #key:Ljava/lang/String;
    .end local v15           #keyset:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v18           #parser:Landroid/content/res/XmlResourceParser;
    :cond_5
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const-string v28, "min_width"

    const-string v29, "string"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    .line 937
    .restart local v20       #resWidth:I
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const-string v28, "min_height"

    const-string v29, "string"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    .line 939
    .restart local v19       #resHeight:I
    new-instance v16, Landroid/util/DisplayMetrics;

    invoke-direct/range {v16 .. v16}, Landroid/util/DisplayMetrics;-><init>()V

    .line 940
    .local v16, metrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string v28, "window"

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/WindowManager;

    .line 942
    .local v26, wm:Landroid/view/WindowManager;
    invoke-interface/range {v26 .. v26}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 944
    if-eqz v20, :cond_6

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v25, v27

    .line 946
    .restart local v25       #width:I
    :goto_5
    if-eqz v19, :cond_7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v28, v0

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v11, v27

    .restart local v11       #height:I
    :goto_6
    goto/16 :goto_2

    .line 944
    .end local v11           #height:I
    .end local v25           #width:I
    :cond_6
    const/16 v27, 0x0

    move/from16 v25, v27

    goto :goto_5

    .line 946
    .restart local v25       #width:I
    :cond_7
    const/16 v27, 0x0

    move/from16 v11, v27

    goto :goto_6

    .line 955
    .end local v16           #metrics:Landroid/util/DisplayMetrics;
    .end local v26           #wm:Landroid/view/WindowManager;
    .restart local v4       #actualHeight:I
    .restart local v5       #actualWidth:I
    .restart local v11       #height:I
    .restart local v21       #resources:Landroid/content/res/Resources;
    :cond_8
    div-int v27, v25, v5

    move/from16 v22, v27

    goto/16 :goto_3

    .line 957
    .restart local v22       #spanX:I
    :cond_9
    div-int v27, v11, v4
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    move/from16 v23, v27

    goto/16 :goto_4
.end method

.method private addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .locals 6
    .parameter "db"
    .parameter "values"

    .prologue
    .line 1088
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->getSearchWidgetProvider()Landroid/content/ComponentName;

    move-result-object v3

    .line 1089
    .local v3, cn:Landroid/content/ComponentName;
    const/4 v4, 0x4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z

    move-result v0

    return v0
.end method

.method private addShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)Z
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v8, "Launcher.LauncherModel"

    .line 1042
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1044
    const/4 v1, 0x7

    invoke-virtual {p3, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 1045
    const/16 v2, 0x8

    invoke-virtual {p3, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 1050
    const/16 v3, 0x9

    :try_start_0
    invoke-virtual {p3, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1051
    const/4 v4, 0x0

    :try_start_1
    invoke-static {v3, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 1058
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 1059
    :cond_0
    const-string v0, "Launcher.LauncherModel"

    const-string v0, "Shortcut is missing title or icon resource ID"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    .line 1075
    :goto_0
    return v0

    .line 1052
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 1053
    :goto_1
    const-string v2, "Launcher.LauncherModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shortcut has malformed uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    move v0, v5

    .line 1055
    goto :goto_0

    .line 1063
    :cond_1
    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1064
    const-string v4, "intent"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    const-string v3, "title"

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    const-string v0, "itemType"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1067
    const-string v0, "spanX"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1068
    const-string v0, "spanY"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1069
    const-string v0, "iconType"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1070
    const-string v0, "iconPackage"

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    const-string v0, "iconResource"

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    const-string v0, "favorites"

    invoke-virtual {p1, v0, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move v0, v6

    .line 1075
    goto :goto_0

    .line 1052
    :catch_1
    move-exception v0

    move-object v1, v3

    goto :goto_1
.end method

.method private addTopApp(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;I)Z
    .locals 8
    .parameter "db"
    .parameter "values"
    .parameter "a"
    .parameter "packageManager"
    .parameter "index"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 733
    invoke-virtual {p3, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 734
    .local v3, packageName:Ljava/lang/String;
    invoke-virtual {p3, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 736
    .local v0, className:Ljava/lang/String;
    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    .local v1, cn:Landroid/content/ComponentName;
    const/4 v4, 0x0

    invoke-virtual {p4, v1, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 738
    const-string v4, "component_name"

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const-string v4, "cell"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 740
    const-string v4, "default_sort"

    const/16 v5, 0x8

    sub-int v5, p5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 741
    const-string v4, "menu_item"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v6

    .line 747
    .end local v1           #cn:Landroid/content/ComponentName;
    :goto_0
    return v4

    .line 742
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 743
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "Launcher.LauncherProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add topapp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". NameNotFoundException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 745
    goto :goto_0
.end method

.method private addWorkspaceFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)Z
    .locals 7
    .parameter "db"
    .parameter "values"
    .parameter "a"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 865
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 866
    .local v1, r:Landroid/content/res/Resources;
    const/16 v3, 0x8

    invoke-virtual {p3, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 868
    .local v2, titleResId:I
    if-nez v2, :cond_0

    .line 869
    const-string v3, "Launcher.LauncherModel"

    const-string v4, "addWorkspaceFolder is missing title resource ID"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 887
    :goto_0
    return v3

    .line 874
    :cond_0
    :try_start_0
    const-string v3, "title"

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    const-string v3, "itemType"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 876
    const-string v3, "spanX"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 877
    const-string v3, "spanY"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 878
    const-string v3, "appWidgetId"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 879
    const-string v3, "multipleSize"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 880
    const-string v3, "iconType"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 881
    const-string v3, "favorites"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v6

    .line 887
    goto :goto_0

    .line 882
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 883
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v3, "Launcher.LauncherProvider"

    const-string v4, "Problem addWorkspaceFolder"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 884
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    move v3, v5

    .line 885
    goto :goto_0
.end method

.method private convertDatabase(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 11
    .parameter "db"

    .prologue
    const/4 v9, 0x0

    const-string v10, "Launcher.LauncherProvider"

    .line 317
    const-string v2, "Launcher.LauncherProvider"

    const-string v2, "converting database from an older format, but not onUpgrade"

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v6, 0x0

    .line 320
    .local v6, converted:Z
    const-string v2, "content://settings/old_favorites?notify=true"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 322
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 323
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 326
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 333
    :goto_0
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 335
    :try_start_1
    invoke-direct {p0, p1, v7}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->copyFromCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    move v6, v2

    .line 337
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 340
    if-eqz v6, :cond_0

    .line 341
    invoke-virtual {v0, v1, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 345
    :cond_0
    if-eqz v6, :cond_1

    .line 348
    const-string v2, "Launcher.LauncherProvider"

    const-string v2, "converted and now triggering widget upgrade"

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 352
    :cond_1
    return v6

    .line 327
    :catch_0
    move-exception v8

    .line 328
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 335
    .end local v8           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x0

    move v6, v2

    goto :goto_1

    .line 337
    :catchall_0
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 23
    .parameter "db"

    .prologue
    .line 485
    const/4 v5, 0x2

    new-array v15, v5, [I

    fill-array-data v15, :array_0

    .line 489
    .local v15, bindSources:[I
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 490
    .local v16, bindTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.alarmclock"

    const-string v7, "com.android.alarmclock.AnalogAppWidgetProvider"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.camera"

    const-string v7, "com.android.camera.PhotoAppWidgetProvider"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    const-string v5, "itemType"

    invoke-static {v5, v15}, Lcom/sec/android/app/twlauncher/LauncherProvider;->buildOrWhereString(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v8

    .line 497
    .local v8, selectWhere:Ljava/lang/String;
    const/16 v17, 0x0

    .line 498
    .local v17, c:Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 500
    .local v13, allocatedAppWidgets:Z
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 503
    :try_start_0
    const-string v6, "favorites"

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "_id"

    aput-object v9, v7, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 507
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 508
    .local v22, values:Landroid/content/ContentValues;
    :goto_0
    if-eqz v17, :cond_2

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 509
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v19

    .line 513
    .local v19, favoriteId:J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v14

    .line 516
    .local v14, appWidgetId:I
    const-string v5, "Launcher.LauncherProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allocated appWidgetId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for favoriteId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-virtual/range {v22 .. v22}, Landroid/content/ContentValues;->clear()V

    .line 520
    const-string v5, "appWidgetId"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 524
    const-string v5, "spanX"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 525
    const-string v5, "spanY"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 527
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "_id"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 529
    .local v21, updateWhere:Ljava/lang/String;
    const-string v5, "favorites"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, v22

    move-object/from16 v3, v21

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 531
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 532
    .end local v14           #appWidgetId:I
    .end local v21           #updateWhere:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object/from16 v18, v5

    .line 533
    .local v18, ex:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v5, "Launcher.LauncherProvider"

    const-string v6, "Problem allocating appWidgetId"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 534
    invoke-virtual/range {v18 .. v18}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 539
    .end local v18           #ex:Ljava/lang/RuntimeException;
    .end local v19           #favoriteId:J
    .end local v22           #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v5

    move-object/from16 v18, v5

    .line 540
    .local v18, ex:Landroid/database/SQLException;
    :try_start_3
    const-string v5, "Launcher.LauncherProvider"

    const-string v6, "Problem while allocating appWidgetIds for existing widgets"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 541
    invoke-virtual/range {v18 .. v18}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 543
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 544
    if-eqz v17, :cond_0

    .line 545
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 550
    .end local v18           #ex:Landroid/database/SQLException;
    :cond_0
    :goto_1
    if-eqz v13, :cond_1

    .line 551
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->launchAppWidgetBinder([ILjava/util/ArrayList;)V

    .line 553
    :cond_1
    return-void

    .line 538
    .restart local v22       #values:Landroid/content/ContentValues;
    :cond_2
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    .line 543
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 544
    if-eqz v17, :cond_0

    .line 545
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 543
    .end local v22           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 544
    if-eqz v17, :cond_3

    .line 545
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v5

    .line 485
    :array_0
    .array-data 0x4
        0xe8t 0x3t 0x0t 0x0t
        0xeat 0x3t 0x0t 0x0t
    .end array-data
.end method

.method private copyFromCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)I
    .locals 30
    .parameter "db"
    .parameter "c"

    .prologue
    .line 356
    const-string v26, "_id"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 357
    .local v15, idIndex:I
    const-string v26, "intent"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 358
    .local v16, intentIndex:I
    const-string v26, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 359
    .local v22, titleIndex:I
    const-string v26, "iconType"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 360
    .local v14, iconTypeIndex:I
    const-string v26, "icon"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 361
    .local v11, iconIndex:I
    const-string v26, "iconPackage"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 363
    .local v12, iconPackageIndex:I
    const-string v26, "iconResource"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 365
    .local v13, iconResourceIndex:I
    const-string v26, "container"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 367
    .local v7, containerIndex:I
    const-string v26, "itemType"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 368
    .local v17, itemTypeIndex:I
    const-string v26, "screen"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 369
    .local v21, screenIndex:I
    const-string v26, "cellX"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 370
    .local v5, cellXIndex:I
    const-string v26, "cellY"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 371
    .local v6, cellYIndex:I
    const-string v26, "uri"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 372
    .local v24, uriIndex:I
    const-string v26, "displayMode"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 374
    .local v8, displayModeIndex:I
    const-string v26, "appWidgetId"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 376
    .local v4, appWidgetIdIndex:I
    const-string v26, "multipleSize"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 379
    .local v18, longMsIndex:I
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v26

    move/from16 v0, v26

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v20, v0

    .line 380
    .local v20, rows:[Landroid/content/ContentValues;
    const/4 v9, 0x0

    .line 381
    .local v9, i:I
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v26

    if-eqz v26, :cond_0

    .line 382
    new-instance v25, Landroid/content/ContentValues;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v26

    invoke-direct/range {v25 .. v26}, Landroid/content/ContentValues;-><init>(I)V

    .line 383
    .local v25, values:Landroid/content/ContentValues;
    const-string v26, "_id"

    move-object/from16 v0, p2

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 384
    const-string v26, "intent"

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v26, "title"

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v26, "iconType"

    move-object/from16 v0, p2

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 387
    const-string v26, "icon"

    move-object/from16 v0, p2

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 388
    const-string v26, "iconPackage"

    move-object/from16 v0, p2

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v26, "iconResource"

    move-object/from16 v0, p2

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v26, "container"

    move-object/from16 v0, p2

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 391
    const-string v26, "itemType"

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 392
    const-string v26, "appWidgetId"

    move-object/from16 v0, p2

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 393
    const-string v26, "screen"

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 394
    const-string v26, "cellX"

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 395
    const-string v26, "cellY"

    move-object/from16 v0, p2

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 396
    const-string v26, "uri"

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v26, "displayMode"

    move-object/from16 v0, p2

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 398
    const-string v26, "multipleSize"

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 399
    add-int/lit8 v10, v9, 0x1

    .end local v9           #i:I
    .local v10, i:I
    aput-object v25, v20, v9

    move v9, v10

    .line 400
    .end local v10           #i:I
    .restart local v9       #i:I
    goto/16 :goto_0

    .line 402
    .end local v25           #values:Landroid/content/ContentValues;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 403
    const/16 v23, 0x0

    .line 405
    .local v23, total:I
    :try_start_0
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v19, v0

    .line 406
    .local v19, numValues:I
    const/4 v9, 0x0

    :goto_1
    move v0, v9

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 407
    const-string v26, "favorites"

    const/16 v27, 0x0

    aget-object v28, v20, v9

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-gez v26, :cond_1

    .line 408
    const/16 v26, 0x0

    .line 415
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 418
    :goto_2
    return v26

    .line 410
    :cond_1
    add-int/lit8 v23, v23, 0x1

    .line 406
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 413
    :cond_2
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move/from16 v26, v23

    .line 418
    goto :goto_2

    .line 415
    .end local v19           #numValues:I
    :catchall_0
    move-exception v26

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v26
.end method

.method private getProviderInPackage(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 7
    .parameter "packageName"

    .prologue
    const/4 v6, 0x0

    .line 1110
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 1111
    .local v0, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v4

    .line 1112
    .local v4, providers:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    if-nez v4, :cond_0

    move-object v5, v6

    .line 1121
    .end local p0
    :goto_0
    return-object v5

    .line 1114
    .restart local p0
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 1115
    .local v3, providerCount:I
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 1116
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v2, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 1117
    .local v2, provider:Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v2

    .line 1118
    goto :goto_0

    .line 1115
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #provider:Landroid/content/ComponentName;
    :cond_2
    move-object v5, v6

    .line 1121
    goto :goto_0
.end method

.method private getSearchWidgetProvider()Landroid/content/ComponentName;
    .locals 4

    .prologue
    .line 1096
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 1098
    .local v1, searchManager:Landroid/app/SearchManager;
    invoke-virtual {v1}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 1099
    .local v0, searchComponent:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 1100
    const/4 v2, 0x0

    .line 1101
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->getProviderInPackage(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_0
.end method

.method private launchAppWidgetBinder([ILjava/util/ArrayList;)V
    .locals 5
    .parameter "bindSources"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 562
    .local p2, bindTargets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 563
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.LauncherAppWidgetBinder"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 565
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 567
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 568
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "com.sec.android.app.twlauncher.settings.bindsources"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 569
    const-string v2, "com.sec.android.app.twlauncher.settings.bindtargets"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 570
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 572
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 573
    return-void
.end method

.method private loadCustomerFavorites(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1192
    const-string v0, "others.xml"

    invoke-static {v0, v10}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getInstance(Ljava/lang/String;I)Lcom/sec/android/app/twlauncher/LauncherCustomer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mCustomer:Lcom/sec/android/app/twlauncher/LauncherCustomer;

    .line 1193
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mCustomer:Lcom/sec/android/app/twlauncher/LauncherCustomer;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getCustomerCount()I

    move-result v7

    .line 1195
    if-gtz v7, :cond_0

    move v0, v9

    .line 1231
    :goto_0
    return v0

    .line 1199
    :cond_0
    new-instance v6, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    const/4 v1, 0x0

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1200
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1201
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1203
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move v8, v9

    .line 1205
    :goto_1
    if-ge v8, v7, :cond_6

    .line 1206
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    .line 1207
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mCustomer:Lcom/sec/android/app/twlauncher/LauncherCustomer;

    invoke-virtual {v1, v8, v0}, Lcom/sec/android/app/twlauncher/LauncherCustomer;->getCustomerFavoriteInfo(I[Ljava/lang/String;)V

    .line 1209
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 1210
    const-string v1, "container"

    const/16 v3, -0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1212
    const-string v1, "screen"

    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    const-string v1, "cellX"

    const/4 v3, 0x4

    aget-object v3, v0, v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    const-string v1, "cellY"

    const/4 v3, 0x5

    aget-object v3, v0, v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    const-string v1, "multipleSize"

    const/16 v3, 0x8

    aget-object v3, v0, v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    const-string v1, "favorite"

    aget-object v3, v0, v9

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1218
    aget-object v3, v0, v10

    const/4 v1, 0x2

    aget-object v4, v0, v1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addCSCShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    .line 1205
    :cond_1
    :goto_2
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    .line 1220
    :cond_2
    const-string v1, "search"

    aget-object v3, v0, v9

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1221
    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    goto :goto_2

    .line 1222
    :cond_3
    const-string v1, "clock"

    aget-object v3, v0, v9

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1223
    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addClockWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    goto :goto_2

    .line 1224
    :cond_4
    const-string v1, "appwidget"

    aget-object v3, v0, v9

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1225
    invoke-direct {p0, p1, v2, v0}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addCSCAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;[Ljava/lang/String;)Z

    goto :goto_2

    .line 1226
    :cond_5
    const-string v1, "samsungappwidget"

    aget-object v3, v0, v9

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1227
    invoke-direct {p0, p1, v2, v0, v5}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addCSCSamsungAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;[Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    goto :goto_2

    :cond_6
    move v0, v10

    .line 1231
    goto/16 :goto_0
.end method

.method private loadFavorites(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 14
    .parameter "db"

    .prologue
    .line 581
    new-instance v5, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    const/4 v1, 0x0

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 582
    .local v5, intent:Landroid/content/Intent;
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 597
    .local v2, values:Landroid/content/ContentValues;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 598
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    .line 600
    .local v10, i:I
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    .line 601
    .local v12, parser:Landroid/content/res/XmlResourceParser;
    invoke-static {v12}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    .line 602
    .local v7, attrs:Landroid/util/AttributeSet;
    const-string v0, "favorites"

    invoke-static {v12, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 604
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 608
    .local v8, depth:I
    :cond_0
    :goto_0
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    .local v13, type:I
    const/4 v0, 0x3

    if-ne v13, v0, :cond_1

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-le v0, v8, :cond_4

    :cond_1
    const/4 v0, 0x1

    if-eq v13, v0, :cond_4

    .line 610
    const/4 v0, 0x2

    if-ne v13, v0, :cond_0

    .line 614
    const/4 v6, 0x0

    .line 615
    .local v6, added:Z
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 617
    .local v11, name:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->Favorite:[I

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 629
    .local v3, a:Landroid/content/res/TypedArray;
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 630
    const-string v0, "container"

    const/16 v1, -0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 632
    const-string v0, "screen"

    const/4 v1, 0x2

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v0, "cellX"

    const/4 v1, 0x3

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string v0, "cellY"

    const/4 v1, 0x4

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v0, "multipleSize"

    const/16 v1, 0xa

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string v0, "favorite"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p0

    move-object v1, p1

    .line 642
    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v6

    .line 660
    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    .line 661
    add-int/lit8 v10, v10, 0x1

    .line 663
    :cond_3
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 665
    .end local v3           #a:Landroid/content/res/TypedArray;
    .end local v6           #added:Z
    .end local v7           #attrs:Landroid/util/AttributeSet;
    .end local v8           #depth:I
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #parser:Landroid/content/res/XmlResourceParser;
    .end local v13           #type:I
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 666
    .local v9, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v0, "Launcher.LauncherProvider"

    const-string v1, "Got exception parsing favorites."

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 667
    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 673
    .end local v9           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_4
    :goto_2
    return v10

    .line 643
    .restart local v3       #a:Landroid/content/res/TypedArray;
    .restart local v6       #added:Z
    .restart local v7       #attrs:Landroid/util/AttributeSet;
    .restart local v8       #depth:I
    .restart local v11       #name:Ljava/lang/String;
    .restart local v12       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v13       #type:I
    :cond_5
    :try_start_1
    const-string v0, "search"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 644
    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v6

    goto :goto_1

    .line 645
    :cond_6
    const-string v0, "clock"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 646
    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addClockWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v6

    goto :goto_1

    .line 647
    :cond_7
    const-string v0, "shortcut"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 648
    invoke-direct {p0, p1, v2, v3}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)Z

    move-result v6

    goto :goto_1

    .line 649
    :cond_8
    const-string v0, "appwidget"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 650
    invoke-direct {p0, p1, v2, v3}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)Z

    move-result v6

    goto :goto_1

    .line 651
    :cond_9
    const-string v0, "samsungappwidget"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 652
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addSamsungAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;)Z

    move-result v6

    goto :goto_1

    .line 653
    :cond_a
    const-string v0, "workspacefolder"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 657
    invoke-direct {p0, p1, v2, v3}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addWorkspaceFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    goto :goto_1

    .line 668
    .end local v3           #a:Landroid/content/res/TypedArray;
    .end local v6           #added:Z
    .end local v7           #attrs:Landroid/util/AttributeSet;
    .end local v8           #depth:I
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #parser:Landroid/content/res/XmlResourceParser;
    .end local v13           #type:I
    :catch_1
    move-exception v0

    move-object v9, v0

    .line 669
    .local v9, e:Ljava/io/IOException;
    const-string v0, "Launcher.LauncherProvider"

    const-string v1, "Got exception parsing favorites."

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 670
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private loadMainApps(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 13
    .parameter "db"

    .prologue
    .line 758
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 760
    .local v2, values:Landroid/content/ContentValues;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 761
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 763
    .local v5, i:I
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f05

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v11

    .line 765
    .local v11, parser:Landroid/content/res/XmlResourceParser;
    invoke-static {v11}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    .line 766
    .local v7, attrs:Landroid/util/AttributeSet;
    const-string v0, "mainapps"

    invoke-static {v11, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 768
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 772
    .local v8, depth:I
    :cond_0
    :goto_0
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    .local v12, type:I
    const/4 v0, 0x3

    if-ne v12, v0, :cond_1

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-le v0, v8, :cond_4

    :cond_1
    const/4 v0, 0x1

    if-eq v12, v0, :cond_4

    .line 774
    const/4 v0, 0x2

    if-ne v12, v0, :cond_0

    .line 778
    const/4 v6, 0x0

    .line 779
    .local v6, added:Z
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 781
    .local v10, name:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->MainApp:[I

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 782
    .local v3, a:Landroid/content/res/TypedArray;
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 783
    const-string v0, "mainapp"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p0

    move-object v1, p1

    .line 784
    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addMainApp(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;I)Z

    move-result v6

    .line 791
    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    .line 792
    add-int/lit8 v5, v5, 0x1

    .line 794
    :cond_3
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 796
    .end local v3           #a:Landroid/content/res/TypedArray;
    .end local v6           #added:Z
    .end local v7           #attrs:Landroid/util/AttributeSet;
    .end local v8           #depth:I
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #parser:Landroid/content/res/XmlResourceParser;
    .end local v12           #type:I
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 797
    .local v9, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v0, "Launcher.LauncherProvider"

    const-string v1, "Got exception parsing mainapps."

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 798
    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 804
    .end local v9           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_4
    :goto_2
    return v5

    .line 785
    .restart local v3       #a:Landroid/content/res/TypedArray;
    .restart local v6       #added:Z
    .restart local v7       #attrs:Landroid/util/AttributeSet;
    .restart local v8       #depth:I
    .restart local v10       #name:Ljava/lang/String;
    .restart local v11       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v12       #type:I
    :cond_5
    :try_start_1
    const-string v0, "menufolder"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 788
    invoke-direct {p0, p1, v2, v3, v5}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addMenuFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;I)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    goto :goto_1

    .line 799
    .end local v3           #a:Landroid/content/res/TypedArray;
    .end local v6           #added:Z
    .end local v7           #attrs:Landroid/util/AttributeSet;
    .end local v8           #depth:I
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #parser:Landroid/content/res/XmlResourceParser;
    .end local v12           #type:I
    :catch_1
    move-exception v0

    move-object v9, v0

    .line 800
    .local v9, e:Ljava/io/IOException;
    const-string v0, "Launcher.LauncherProvider"

    const-string v1, "Got exception parsing mainapps."

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 801
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private loadSupportCellSizes(Landroid/content/ComponentName;)[Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1398
    .line 1399
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1400
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1402
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1403
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.widgetapp.APPWIDGET_RESIZE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1404
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1405
    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 1412
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const/4 v4, 0x3

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1418
    :goto_0
    if-eqz v1, :cond_3

    .line 1419
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1420
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1421
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 1422
    iget-object v4, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1423
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const-string v2, "com.sec.android.appwidget.widgetinfo"

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 1425
    if-eqz v0, :cond_3

    .line 1429
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1437
    :cond_2
    :goto_1
    const-string v1, "supportCellSizes"

    const/4 v2, 0x0

    invoke-interface {v0, v5, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1439
    if-lez v0, :cond_3

    .line 1440
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1448
    :goto_2
    return-object v0

    .line 1414
    :catch_0
    move-exception v1

    .line 1415
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v1, v5

    goto :goto_0

    .line 1431
    :catch_1
    move-exception v1

    .line 1432
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_1

    .line 1433
    :catch_2
    move-exception v1

    .line 1434
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_3
    move-object v0, v5

    goto :goto_2
.end method

.method private loadTopApps(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 13
    .parameter "db"

    .prologue
    .line 683
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 685
    .local v2, values:Landroid/content/ContentValues;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 686
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 688
    .local v5, i:I
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v11

    .line 690
    .local v11, parser:Landroid/content/res/XmlResourceParser;
    invoke-static {v11}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    .line 691
    .local v7, attrs:Landroid/util/AttributeSet;
    const-string v0, "topapps"

    invoke-static {v11, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 693
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    .line 697
    .local v8, depth:I
    :cond_0
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    .local v12, type:I
    const/4 v0, 0x3

    if-ne v12, v0, :cond_1

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-le v0, v8, :cond_4

    :cond_1
    const/4 v0, 0x1

    if-eq v12, v0, :cond_4

    .line 699
    const/4 v0, 0x2

    if-ne v12, v0, :cond_0

    .line 703
    const/4 v6, 0x0

    .line 704
    .local v6, added:Z
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 706
    .local v10, name:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->TopApp:[I

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 707
    .local v3, a:Landroid/content/res/TypedArray;
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 708
    const-string v0, "topapp"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move-object v1, p1

    .line 709
    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->addTopApp(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;I)Z

    move-result v6

    .line 712
    :cond_2
    if-eqz v6, :cond_3

    .line 713
    add-int/lit8 v5, v5, 0x1

    .line 715
    :cond_3
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 717
    const/16 v0, 0x8

    if-lt v5, v0, :cond_0

    .line 728
    .end local v3           #a:Landroid/content/res/TypedArray;
    .end local v6           #added:Z
    .end local v7           #attrs:Landroid/util/AttributeSet;
    .end local v8           #depth:I
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #parser:Landroid/content/res/XmlResourceParser;
    .end local v12           #type:I
    :cond_4
    :goto_0
    return v5

    .line 720
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 721
    .local v9, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v0, "Launcher.LauncherProvider"

    const-string v1, "Got exception parsing topapps."

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 722
    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 723
    .end local v9           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    move-object v9, v0

    .line 724
    .local v9, e:Ljava/io/IOException;
    const-string v0, "Launcher.LauncherProvider"

    const-string v1, "Got exception parsing topapps."

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 725
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendAppWidgetResetNotify()V
    .locals 3

    .prologue
    .line 253
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 254
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 255
    return-void
.end method


# virtual methods
.method getWidgetMultipleSize(Landroid/content/ComponentName;)Lcom/sec/android/app/twlauncher/MultipleSize;
    .locals 11
    .parameter "componentName"

    .prologue
    const/16 v10, 0x78

    .line 1384
    new-instance v4, Lcom/sec/android/app/twlauncher/MultipleSize;

    invoke-direct {v4}, Lcom/sec/android/app/twlauncher/MultipleSize;-><init>()V

    .line 1385
    .local v4, ms:Lcom/sec/android/app/twlauncher/MultipleSize;
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->loadSupportCellSizes(Landroid/content/ComponentName;)[Ljava/lang/String;

    move-result-object v1

    .line 1386
    .local v1, array:[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1387
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 1389
    .local v5, parsed:Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1390
    .local v6, spanX:I
    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1391
    .local v7, spanY:I
    invoke-virtual {v4, v6, v7}, Lcom/sec/android/app/twlauncher/MultipleSize;->setSize(II)Z

    .line 1387
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1394
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #parsed:Ljava/lang/String;
    .end local v6           #spanX:I
    .end local v7           #spanY:I
    :cond_0
    return-object v4
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "db"

    .prologue
    .line 260
    const-string v2, "Launcher.LauncherProvider"

    const-string v3, "creating new launcher database"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string v2, "CREATE TABLE favorites (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,container INTEGER,screen INTEGER,cellX INTEGER,cellY INTEGER,spanX INTEGER,spanY INTEGER,itemType INTEGER,appWidgetId INTEGER NOT NULL DEFAULT -1,isShortcut INTEGER,iconType INTEGER,iconPackage TEXT,iconResource TEXT,icon BLOB,uri TEXT,displayMode INTEGER,multipleSize INTEGER);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 270
    const-string v2, "CREATE TABLE gestures (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,itemType INTEGER,iconType INTEGER,iconPackage TEXT,iconResource TEXT,icon BLOB);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 274
    const-string v2, "create table menu_item (_id integer primary key,parent_id integer not null default -1,page integer not null default -1,cell integer not null default -1,component_name text,title text,default_sort integer not null default 0,create_time integer not null default 0);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 286
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v2, :cond_0

    .line 287
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    .line 288
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->sendAppWidgetResetNotify()V

    .line 291
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v3, "launcher"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 292
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 293
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 294
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 296
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->convertDatabase(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 299
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->loadCustomerFavorites(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 300
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 302
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->loadTopApps(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 303
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->loadMainApps(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 305
    :cond_2
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v5, 0x3

    const-string v4, "Launcher.LauncherProvider"

    .line 424
    const-string v2, "Launcher.LauncherProvider"

    const-string v2, "onUpgrade triggered"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    move v1, p2

    .line 427
    .local v1, version:I
    if-ge v1, v5, :cond_0

    .line 429
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 432
    :try_start_0
    const-string v2, "ALTER TABLE favorites ADD COLUMN appWidgetId INTEGER NOT NULL DEFAULT -1;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    const/4 v1, 0x3

    .line 441
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 445
    :goto_0
    if-ne v1, v5, :cond_0

    .line 446
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->convertWidgets(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 450
    :cond_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 451
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 453
    :try_start_1
    const-string v2, "CREATE TABLE gestures (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,itemType INTEGER,iconType INTEGER,iconPackage TEXT,iconResource TEXT,icon BLOB);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 458
    const/4 v1, 0x4

    .line 464
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 467
    :cond_1
    :goto_1
    const/16 v2, 0xb

    if-eq v1, v2, :cond_2

    .line 468
    const-string v2, "Launcher.LauncherProvider"

    const-string v2, "Destroying all old data."

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const-string v2, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 470
    const-string v2, "DROP TABLE IF EXISTS gestures"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 471
    const-string v2, "DROP TABLE IF EXISTS menu_item"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 472
    const-string v2, "DROP TABLE IF EXISTS apps"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 473
    const-string v2, "DROP TABLE IF EXISTS mmfolder"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 474
    const-string v2, "DROP TABLE IF EXISTS mmfolderapp"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 477
    :cond_2
    return-void

    .line 436
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 438
    .local v0, ex:Landroid/database/SQLException;
    :try_start_2
    const-string v2, "Launcher.LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 439
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 441
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v0           #ex:Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 459
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 461
    .restart local v0       #ex:Landroid/database/SQLException;
    :try_start_3
    const-string v2, "Launcher.LauncherProvider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 462
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 464
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .end local v0           #ex:Landroid/database/SQLException;
    :catchall_1
    move-exception v2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method
