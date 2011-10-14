.class Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/UserFolderModel$FolderModelCanContinueCB;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DesktopItemsLoader"
.end annotation


# instance fields
.field private final mId:I

.field private final mIsLaunching:Z

.field private final mLauncher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/twlauncher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoadApplications:Z

.field private final mLocaleChanged:Z

.field private volatile mRunning:Z

.field private volatile mStopped:Z

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/LauncherModel;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/LauncherModel;Lcom/sec/android/app/twlauncher/Launcher;ZZZ)V
    .locals 1
    .parameter
    .parameter "launcher"
    .parameter "localeChanged"
    .parameter "loadApplications"
    .parameter "isLaunching"

    .prologue
    .line 1256
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1257
    iput-boolean p4, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mLoadApplications:Z

    .line 1258
    iput-boolean p5, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mIsLaunching:Z

    .line 1259
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mLauncher:Ljava/lang/ref/WeakReference;

    .line 1260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mRunning:Z

    .line 1261
    iput-boolean p3, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mLocaleChanged:Z

    .line 1262
    invoke-static {}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1800()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mId:I

    .line 1263
    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1240
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mLoadApplications:Z

    return v0
.end method


# virtual methods
.method public canContinue()Z
    .locals 1

    .prologue
    .line 1270
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mStopped:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRunning()Z
    .locals 1

    .prologue
    .line 1274
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mRunning:Z

    return v0
.end method

.method public run()V
    .locals 80

    .prologue
    .line 1279
    const-string v5, "Launcher.LauncherModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  ----> running workspace loader ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mId:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    const/4 v5, 0x0

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mLauncher:Ljava/lang/ref/WeakReference;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/app/twlauncher/Launcher;

    .line 1285
    .local v12, launcher:Lcom/sec/android/app/twlauncher/Launcher;
    if-nez v12, :cond_0

    .line 1286
    const-string v5, "Launcher.LauncherModel"

    const-string v6, "Launcher destroyed before DesktopItemsLoader.run"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    :goto_0
    return-void

    .line 1289
    :cond_0
    invoke-virtual {v12}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1290
    .local v4, contentResolver:Landroid/content/ContentResolver;
    invoke-virtual {v12}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v62

    .line 1291
    .local v62, manager:Landroid/content/pm/PackageManager;
    invoke-virtual/range {v62 .. v62}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v55

    .line 1292
    .local v55, isSafeMode:Z
    invoke-static {v12}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v31

    .line 1294
    .local v31, awmanager:Landroid/appwidget/AppWidgetManager;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mLocaleChanged:Z

    move v5, v0

    if-eqz v5, :cond_1

    .line 1295
    move-object v0, v4

    move-object/from16 v1, v62

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1900(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;)V

    .line 1298
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2002(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2102(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2202(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object v5, v0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-static {v5, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2302(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object v5, v0

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2000(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/util/ArrayList;

    move-result-object v40

    .line 1304
    .local v40, desktopItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ItemInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object v5, v0

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2100(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/util/ArrayList;

    move-result-object v39

    .line 1305
    .local v39, desktopAppWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object v5, v0

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2200(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/util/ArrayList;

    move-result-object v41

    .line 1307
    .local v41, desktopSamsungAppWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;>;"
    sget-object v5, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1310
    .local v6, c:Landroid/database/Cursor;
    invoke-virtual {v12}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v70

    .line 1311
    .local v70, screenCount:I
    new-instance v66, Ljava/util/ArrayList;

    invoke-direct/range {v66 .. v66}, Ljava/util/ArrayList;-><init>()V

    .line 1314
    .local v66, removedLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    const-string v5, "_id"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v50

    .line 1315
    .local v50, idIndex:I
    const-string v5, "intent"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v54

    .line 1316
    .local v54, intentIndex:I
    const-string v5, "title"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v75

    .line 1317
    .local v75, titleIndex:I
    const-string v5, "iconType"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1319
    .local v8, iconTypeIndex:I
    const-string v5, "icon"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 1320
    .local v11, iconIndex:I
    const-string v5, "iconPackage"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1322
    .local v9, iconPackageIndex:I
    const-string v5, "iconResource"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 1324
    .local v10, iconResourceIndex:I
    const-string v5, "container"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    .line 1326
    .local v35, containerIndex:I
    const-string v5, "itemType"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v57

    .line 1328
    .local v57, itemTypeIndex:I
    const-string v5, "appWidgetId"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 1330
    .local v29, appWidgetIdIndex:I
    const-string v5, "screen"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v71

    .line 1331
    .local v71, screenIndex:I
    const-string v5, "cellX"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    .line 1332
    .local v32, cellXIndex:I
    const-string v5, "cellY"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    .line 1333
    .local v33, cellYIndex:I
    const-string v5, "spanX"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v73

    .line 1334
    .local v73, spanXIndex:I
    const-string v5, "spanY"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v74

    .line 1335
    .local v74, spanYIndex:I
    const-string v5, "uri"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v78

    .line 1336
    .local v78, uriIndex:I
    const-string v5, "displayMode"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v42

    .line 1340
    .local v42, displayModeIndex:I
    const-string v5, "isShortcut"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v72

    .line 1344
    .local v72, shortCut:I
    const-string v5, "multipleSize"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v61

    .line 1355
    .local v61, longMsIndex:I
    const-string v60, ""

    .line 1356
    .local v60, lastPackage:Ljava/lang/String;
    const-wide/16 v58, 0x0

    .line 1358
    .local v58, lastFirstInstallTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object v5, v0

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2300(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/util/HashMap;

    move-result-object v46

    .line 1360
    .local v46, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sec/android/app/twlauncher/FolderInfo;>;"
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mStopped:Z

    move v5, v0

    if-nez v5, :cond_18

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_18

    .line 1362
    :try_start_1
    move-object v0, v6

    move/from16 v1, v57

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v56

    .line 1364
    .local v56, itemType:I
    move-object v0, v6

    move/from16 v1, v71

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move/from16 v1, v70

    if-lt v0, v1, :cond_2

    .line 1365
    const-string v5, "Launcher.LauncherModel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Removed invalid screen; itemType: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, ", id: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v6

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    move-object v0, v6

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v66

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1679
    .end local v56           #itemType:I
    :catch_0
    move-exception v5

    move-object/from16 v43, v5

    .line 1680
    .local v43, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Exception;->printStackTrace()V

    .line 1681
    const-string v5, "Launcher"

    const-string v7, "Desktop items loading interrupted:"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v43

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1685
    .end local v8           #iconTypeIndex:I
    .end local v9           #iconPackageIndex:I
    .end local v10           #iconResourceIndex:I
    .end local v11           #iconIndex:I
    .end local v29           #appWidgetIdIndex:I
    .end local v32           #cellXIndex:I
    .end local v33           #cellYIndex:I
    .end local v35           #containerIndex:I
    .end local v42           #displayModeIndex:I
    .end local v43           #e:Ljava/lang/Exception;
    .end local v46           #folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sec/android/app/twlauncher/FolderInfo;>;"
    .end local v50           #idIndex:I
    .end local v54           #intentIndex:I
    .end local v57           #itemTypeIndex:I
    .end local v58           #lastFirstInstallTime:J
    .end local v60           #lastPackage:Ljava/lang/String;
    .end local v61           #longMsIndex:I
    .end local v71           #screenIndex:I
    .end local v72           #shortCut:I
    .end local v73           #spanXIndex:I
    .end local v74           #spanYIndex:I
    .end local v75           #titleIndex:I
    .end local v78           #uriIndex:I
    :catchall_0
    move-exception v5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v5

    .line 1370
    .restart local v8       #iconTypeIndex:I
    .restart local v9       #iconPackageIndex:I
    .restart local v10       #iconResourceIndex:I
    .restart local v11       #iconIndex:I
    .restart local v29       #appWidgetIdIndex:I
    .restart local v32       #cellXIndex:I
    .restart local v33       #cellYIndex:I
    .restart local v35       #containerIndex:I
    .restart local v42       #displayModeIndex:I
    .restart local v46       #folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sec/android/app/twlauncher/FolderInfo;>;"
    .restart local v50       #idIndex:I
    .restart local v54       #intentIndex:I
    .restart local v56       #itemType:I
    .restart local v57       #itemTypeIndex:I
    .restart local v58       #lastFirstInstallTime:J
    .restart local v60       #lastPackage:Ljava/lang/String;
    .restart local v61       #longMsIndex:I
    .restart local v71       #screenIndex:I
    .restart local v72       #shortCut:I
    .restart local v73       #spanXIndex:I
    .restart local v74       #spanYIndex:I
    .restart local v75       #titleIndex:I
    .restart local v78       #uriIndex:I
    :cond_2
    sparse-switch v56, :sswitch_data_0

    goto :goto_1

    .line 1373
    :sswitch_0
    :try_start_3
    move-object v0, v6

    move/from16 v1, v54

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v53

    .line 1375
    .local v53, intentDescription:Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_4
    move-object/from16 v0, v53

    move v1, v5

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v52

    .line 1383
    .local v52, intent:Landroid/content/Intent;
    if-nez v56, :cond_3

    .line 1384
    :try_start_5
    move-object/from16 v0, v62

    move-object/from16 v1, v52

    move-object v2, v12

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2400(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v51

    .line 1390
    .local v51, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :goto_2
    if-nez v51, :cond_4

    .line 1392
    const-string v5, "Launcher.LauncherModel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Ignore favorites id: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v6

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, ", intent: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    move-object v0, v6

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v66

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1376
    .end local v51           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v52           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v43

    .line 1377
    .local v43, e:Ljava/net/URISyntaxException;
    const-string v5, "Launcher.LauncherModel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "URI syntax error: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, ", id: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v6

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    move-object v0, v6

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v66

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1386
    .end local v43           #e:Ljava/net/URISyntaxException;
    .restart local v52       #intent:Landroid/content/Intent;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object v5, v0

    move-object v7, v12

    invoke-static/range {v5 .. v11}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2500(Lcom/sec/android/app/twlauncher/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;IIII)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v51

    .restart local v51       #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    goto/16 :goto_2

    .line 1396
    :cond_4
    const/4 v5, 0x0

    move-object/from16 v0, v62

    move-object/from16 v1, v52

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v67

    .line 1398
    .local v67, resolveInfo:Landroid/content/pm/ResolveInfo;
    move-object v0, v6

    move/from16 v1, v75

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v51

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 1399
    invoke-virtual/range {v51 .. v52}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setIntent(Landroid/content/Intent;)V

    .line 1401
    move-object v0, v6

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    move-wide v0, v13

    move-object/from16 v2, v51

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 1402
    move-object v0, v6

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 1403
    .local v34, container:I
    move/from16 v0, v34

    int-to-long v0, v0

    move-wide v13, v0

    move-wide v0, v13

    move-object/from16 v2, v51

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 1404
    move-object v0, v6

    move/from16 v1, v71

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v51

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 1405
    move-object v0, v6

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v51

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 1406
    move-object v0, v6

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v51

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .line 1410
    move-object/from16 v0, v51

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mIsAppStoredInExternalStorageWhileUnmounted:Z

    move v5, v0

    if-nez v5, :cond_6

    if-eqz v67, :cond_6

    .line 1412
    move-object/from16 v0, v67

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v0, v5

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v44, v0

    .line 1413
    .local v44, flag:I
    and-int/lit8 v5, v44, 0x1

    if-nez v5, :cond_5

    move/from16 v0, v44

    and-int/lit16 v0, v0, 0x80

    move v5, v0

    if-eqz v5, :cond_7

    .line 1415
    :cond_5
    const/4 v5, 0x1

    move-object/from16 v0, v51

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setSystemApp(Z)V

    .line 1421
    :goto_3
    const-string v26, "com.android.stk"

    .line 1422
    .local v26, STKPackageName:Ljava/lang/String;
    const/16 v25, 0x0

    .line 1423
    .local v25, STKExistInfo:Z
    const/16 v24, 0x1

    .line 1424
    .local v24, NoSim:I
    const/16 v27, 0x5

    .line 1425
    .local v27, SimExist:I
    const-string v5, "phone"

    invoke-virtual {v12, v5}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v76

    check-cast v76, Landroid/telephony/TelephonyManager;

    .line 1427
    .local v76, tm:Landroid/telephony/TelephonyManager;
    move-object/from16 v0, v67

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.android.stk"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1429
    const-string v5, "gsm.STK_SETUP_MENU"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8

    .line 1450
    .end local v24           #NoSim:I
    .end local v25           #STKExistInfo:Z
    .end local v26           #STKPackageName:Ljava/lang/String;
    .end local v27           #SimExist:I
    .end local v44           #flag:I
    .end local v76           #tm:Landroid/telephony/TelephonyManager;
    :cond_6
    packed-switch v34, :pswitch_data_0

    .line 1482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object v5, v0

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide v13, v0

    move-object v0, v5

    move-object/from16 v1, v46

    move-wide v2, v13

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2600(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v45

    .line 1484
    .local v45, folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    move-object/from16 v0, v45

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->add(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Z

    .line 1488
    .end local v45           #folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :goto_4
    move-object/from16 v0, v51

    move-object v1, v12

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2700(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/Context;)V

    goto/16 :goto_1

    .line 1417
    .restart local v44       #flag:I
    :cond_7
    const/4 v5, 0x0

    move-object/from16 v0, v51

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setSystemApp(Z)V

    goto :goto_3

    .line 1432
    .restart local v24       #NoSim:I
    .restart local v25       #STKExistInfo:Z
    .restart local v26       #STKPackageName:Ljava/lang/String;
    .restart local v27       #SimExist:I
    .restart local v76       #tm:Landroid/telephony/TelephonyManager;
    :cond_8
    invoke-virtual/range {v76 .. v76}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_b

    .line 1433
    const/16 v25, 0x1

    .line 1439
    :cond_9
    :goto_5
    if-eqz v25, :cond_a

    .line 1440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 1441
    move-object v0, v12

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 1443
    :cond_a
    const/16 v25, 0x1

    .line 1444
    goto/16 :goto_1

    .line 1434
    :cond_b
    invoke-virtual/range {v76 .. v76}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    const/4 v7, 0x5

    if-eq v5, v7, :cond_9

    .line 1437
    const/16 v25, 0x1

    goto :goto_5

    .line 1452
    .end local v24           #NoSim:I
    .end local v25           #STKExistInfo:Z
    .end local v26           #STKPackageName:Ljava/lang/String;
    .end local v27           #SimExist:I
    .end local v44           #flag:I
    .end local v76           #tm:Landroid/telephony/TelephonyManager;
    :pswitch_0
    invoke-static/range {v52 .. v52}, Lcom/sec/android/app/twlauncher/LauncherModel;->getPackageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v51

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    .line 1457
    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_c

    .line 1458
    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v60

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1459
    move-object/from16 v0, v51

    move-wide/from16 v1, v58

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setCreateTime(J)V

    .line 1475
    :goto_6
    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v60, v0

    .line 1478
    :cond_c
    move-object/from16 v0, v40

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1461
    :cond_d
    const-wide/16 v37, 0x0

    .line 1462
    .local v37, createTime:J
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const/16 v7, 0x9

    if-lt v5, v7, :cond_e

    .line 1464
    :try_start_6
    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    move-object v5, v0

    const/16 v7, 0x2000

    move-object/from16 v0, v62

    move-object v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    move-object v0, v5

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide/from16 v37, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 1473
    :cond_e
    :goto_7
    :try_start_7
    move-object/from16 v0, v51

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setCreateTime(J)V

    goto :goto_6

    .line 1494
    .end local v34           #container:I
    .end local v37           #createTime:J
    .end local v51           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v52           #intent:Landroid/content/Intent;
    .end local v53           #intentDescription:Ljava/lang/String;
    .end local v67           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :sswitch_1
    move-object v0, v6

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v48

    .line 1495
    .local v48, id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v46

    move-wide/from16 v2, v48

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2600(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v45

    .line 1497
    .restart local v45       #folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    move-object v0, v6

    move/from16 v1, v75

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v45

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 1499
    move-wide/from16 v0, v48

    move-object/from16 v2, v45

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 1500
    move-object v0, v6

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 1501
    .restart local v34       #container:I
    move/from16 v0, v34

    int-to-long v0, v0

    move-wide v13, v0

    move-wide v0, v13

    move-object/from16 v2, v45

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 1502
    move-object v0, v6

    move/from16 v1, v71

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v45

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 1503
    move-object v0, v6

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v45

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 1504
    move-object v0, v6

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v45

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .line 1508
    invoke-static {}, Lcom/sec/android/app/twlauncher/BuildLocaleChecker;->getBuildLocale()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_f

    .line 1509
    move-object v0, v6

    move/from16 v1, v72

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v45

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->shortCut:I

    .line 1511
    :cond_f
    packed-switch v34, :pswitch_data_1

    goto/16 :goto_1

    .line 1513
    :pswitch_1
    move-object/from16 v0, v40

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1520
    .end local v34           #container:I
    .end local v45           #folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .end local v48           #id:J
    :sswitch_2
    move-object v0, v6

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v48

    .line 1522
    .restart local v48       #id:J
    move-object v0, v6

    move/from16 v1, v78

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v77

    .line 1525
    .local v77, uri:Landroid/net/Uri;
    invoke-virtual/range {v77 .. v77}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    move-object/from16 v0, v62

    move-object v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v64

    .line 1528
    .local v64, providerInfo:Landroid/content/pm/ProviderInfo;
    if-nez v64, :cond_10

    if-nez v55, :cond_10

    .line 1529
    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v66

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1532
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v46

    move-wide/from16 v2, v48

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2800(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    move-result-object v17

    .line 1535
    .local v17, liveFolderInfo:Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    move-object v0, v6

    move/from16 v1, v54

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v53

    .line 1536
    .restart local v53       #intentDescription:Ljava/lang/String;
    const/16 v52, 0x0

    .line 1537
    .restart local v52       #intent:Landroid/content/Intent;
    if-eqz v53, :cond_11

    .line 1539
    const/4 v5, 0x0

    :try_start_8
    move-object/from16 v0, v53

    move v1, v5

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v52

    .line 1547
    :cond_11
    :goto_8
    :try_start_9
    move-object v0, v6

    move/from16 v1, v75

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 1548
    move-wide/from16 v0, v48

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 1549
    move-object v0, v6

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 1550
    .restart local v34       #container:I
    move/from16 v0, v34

    int-to-long v0, v0

    move-wide v13, v0

    move-wide v0, v13

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 1551
    move-object v0, v6

    move/from16 v1, v71

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 1552
    move-object v0, v6

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 1553
    move-object v0, v6

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .line 1554
    move-object v0, v6

    move/from16 v1, v78

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->uri:Landroid/net/Uri;

    .line 1555
    move-object/from16 v0, v52

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->baseIntent:Landroid/content/Intent;

    .line 1556
    move-object v0, v6

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->displayMode:I

    move-object v13, v6

    move v14, v8

    move v15, v9

    move/from16 v16, v10

    .line 1558
    invoke-static/range {v12 .. v17}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$2900(Lcom/sec/android/app/twlauncher/Launcher;Landroid/database/Cursor;IIILcom/sec/android/app/twlauncher/LiveFolderInfo;)V

    .line 1561
    packed-switch v34, :pswitch_data_2

    goto/16 :goto_1

    .line 1563
    :pswitch_2
    move-object/from16 v0, v40

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1569
    .end local v17           #liveFolderInfo:Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    .end local v34           #container:I
    .end local v48           #id:J
    .end local v52           #intent:Landroid/content/Intent;
    .end local v53           #intentDescription:Ljava/lang/String;
    .end local v64           #providerInfo:Landroid/content/pm/ProviderInfo;
    .end local v77           #uri:Landroid/net/Uri;
    :sswitch_3
    invoke-static {}, Lcom/sec/android/app/twlauncher/Widget;->makeSearch()Lcom/sec/android/app/twlauncher/Widget;

    move-result-object v79

    .line 1571
    .local v79, widgetInfo:Lcom/sec/android/app/twlauncher/Widget;
    move-object v0, v6

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 1572
    .restart local v34       #container:I
    const/16 v5, -0x64

    move/from16 v0, v34

    move v1, v5

    if-eq v0, v1, :cond_12

    .line 1573
    const-string v5, "Launcher"

    const-string v7, "Widget found where container != CONTAINER_DESKTOP  ignoring!"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1578
    :cond_12
    move-object v0, v6

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    move-wide v0, v13

    move-object/from16 v2, v79

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 1579
    move-object v0, v6

    move/from16 v1, v71

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v79

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 1580
    move/from16 v0, v34

    int-to-long v0, v0

    move-wide v13, v0

    move-wide v0, v13

    move-object/from16 v2, v79

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 1581
    move-object v0, v6

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v79

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 1582
    move-object v0, v6

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v79

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .line 1584
    move-object/from16 v0, v40

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1587
    .end local v34           #container:I
    .end local v79           #widgetInfo:Lcom/sec/android/app/twlauncher/Widget;
    :sswitch_4
    move-object v0, v6

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v48

    .line 1590
    .restart local v48       #id:J
    move-object v0, v6

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 1592
    .local v28, appWidgetId:I
    move-object/from16 v0, v31

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v63

    .line 1595
    .local v63, provider:Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v55, :cond_14

    if-eqz v63, :cond_13

    move-object/from16 v0, v63

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object v5, v0

    if-eqz v5, :cond_13

    move-object/from16 v0, v63

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_14

    .line 1598
    :cond_13
    const-string v5, "Launcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Deleting widget that isn\'t installed anymore: id="

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, " appWidgetId="

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v66

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1604
    :cond_14
    new-instance v30, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;-><init>(I)V

    .line 1605
    .local v30, appWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    move-object v0, v6

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    move-wide v0, v13

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 1606
    move-object v0, v6

    move/from16 v1, v71

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v30

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 1607
    move-object v0, v6

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v30

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 1608
    move-object v0, v6

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v30

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .line 1609
    move-object v0, v6

    move/from16 v1, v73

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v30

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    .line 1610
    move-object v0, v6

    move/from16 v1, v74

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v30

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    .line 1611
    move-object v0, v6

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    move-wide v0, v13

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->longMs:J

    .line 1613
    move-object v0, v6

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 1614
    .restart local v34       #container:I
    const/16 v5, -0x64

    move/from16 v0, v34

    move v1, v5

    if-eq v0, v1, :cond_15

    .line 1615
    const-string v5, "Launcher"

    const-string v7, "Widget found where container != CONTAINER_DESKTOP -- ignoring!"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1619
    :cond_15
    move-object v0, v6

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v13, v5

    move-wide v0, v13

    move-object/from16 v2, v30

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 1621
    move-object/from16 v0, v63

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    .line 1623
    move-object/from16 v0, v39

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1627
    .end local v28           #appWidgetId:I
    .end local v30           #appWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    .end local v34           #container:I
    .end local v48           #id:J
    .end local v63           #provider:Landroid/appwidget/AppWidgetProviderInfo;
    :sswitch_5
    move-object v0, v6

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v48

    .line 1629
    .restart local v48       #id:J
    new-instance v69, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    invoke-direct/range {v69 .. v69}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;-><init>()V

    .line 1630
    .local v69, sappWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    move-wide/from16 v0, v48

    move-object/from16 v2, v69

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 1631
    move-object v0, v6

    move/from16 v1, v71

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v69

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 1632
    move-object v0, v6

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v69

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 1633
    move-object v0, v6

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v69

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .line 1634
    move-object v0, v6

    move/from16 v1, v73

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v69

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    .line 1635
    move-object v0, v6

    move/from16 v1, v74

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v69

    iput v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    .line 1637
    move-object v0, v6

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 1638
    .restart local v34       #container:I
    const/16 v5, -0x64

    move/from16 v0, v34

    move v1, v5

    if-eq v0, v1, :cond_16

    .line 1639
    const-string v5, "Launcher"

    const-string v7, "SamsungWidget found where container != CONTAINER_DESKTOP -- ignoring!"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1643
    :cond_16
    move-object v0, v6

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v13, v5

    move-wide v0, v13

    move-object/from16 v2, v69

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 1645
    move-object v0, v6

    move/from16 v1, v54

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move-result-object v53

    .line 1646
    .restart local v53       #intentDescription:Ljava/lang/String;
    const/16 v52, 0x0

    .line 1648
    .restart local v52       #intent:Landroid/content/Intent;
    const/4 v5, 0x0

    :try_start_a
    move-object/from16 v0, v53

    move v1, v5

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    move-result-object v52

    .line 1652
    :try_start_b
    move-object/from16 v0, v52

    move-object/from16 v1, v69

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    .line 1655
    const/4 v5, 0x0

    move-object/from16 v0, v62

    move-object/from16 v1, v52

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v68

    .line 1656
    .local v68, ri:Landroid/content/pm/ResolveInfo;
    if-nez v68, :cond_17

    .line 1657
    const-string v5, "Launcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Can\'t resolve SamsungWidget\'s activity. Deleting it. id:"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v66

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_1

    .line 1649
    .end local v68           #ri:Landroid/content/pm/ResolveInfo;
    :catch_2
    move-exception v43

    .restart local v43       #e:Ljava/net/URISyntaxException;
    goto/16 :goto_1

    .line 1664
    .end local v43           #e:Ljava/net/URISyntaxException;
    .restart local v68       #ri:Landroid/content/pm/ResolveInfo;
    :cond_17
    :try_start_c
    move-object/from16 v0, v68

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, v62

    move-object v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    .line 1674
    :try_start_d
    move-object/from16 v0, v68

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v69

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    .line 1676
    move-object/from16 v0, v41

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1666
    :catch_3
    move-exception v5

    move-object/from16 v43, v5

    .line 1667
    .local v43, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Launcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SamsungWidget\'s apk has move to sdcard and unmounted. Deleting it. id:"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v66

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_1

    .line 1685
    .end local v34           #container:I
    .end local v43           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v48           #id:J
    .end local v52           #intent:Landroid/content/Intent;
    .end local v53           #intentDescription:Ljava/lang/String;
    .end local v56           #itemType:I
    .end local v68           #ri:Landroid/content/pm/ResolveInfo;
    .end local v69           #sappWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    :cond_18
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1687
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mStopped:Z

    move v5, v0

    if-nez v5, :cond_1d

    .line 1689
    const-string v5, "Launcher.LauncherModel"

    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #c:Landroid/database/Cursor;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  --> done loading workspace: items="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  , widgets="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  , samsung app widgets="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    invoke-virtual/range {v66 .. v66}, Ljava/util/ArrayList;->size()I

    move-result v65

    .line 1695
    .local v65, removedCount:I
    if-lez v65, :cond_1a

    .line 1696
    invoke-virtual {v12}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    .line 1697
    .local v36, cr:Landroid/content/ContentResolver;
    const/16 v47, 0x0

    .local v47, i:I
    :goto_9
    move/from16 v0, v47

    move/from16 v1, v65

    if-ge v0, v1, :cond_19

    .line 1698
    move-object/from16 v0, v66

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/Long;

    .line 1699
    .local v48, id:Ljava/lang/Long;
    invoke-virtual/range {v48 .. v48}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const/4 v5, 0x0

    invoke-static {v13, v14, v5}, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v36

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1697
    add-int/lit8 v47, v47, 0x1

    goto :goto_9

    .line 1701
    .end local v48           #id:Ljava/lang/Long;
    :cond_19
    invoke-virtual/range {v66 .. v66}, Ljava/util/ArrayList;->clear()V

    .line 1707
    .end local v36           #cr:Landroid/content/ContentResolver;
    .end local v47           #i:I
    :cond_1a
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1708
    .local v21, uiDesktopItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ItemInfo;>;"
    new-instance v22, Ljava/util/ArrayList;

    move-object/from16 v0, v22

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1710
    .local v22, uiDesktopWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;>;"
    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v0, v23

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1713
    .local v23, uiDesktopSamsungAppWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mStopped:Z

    move v5, v0

    if-nez v5, :cond_1b

    .line 1714
    const-string v5, "Launcher.LauncherModel"

    const-string v6, "  ----> items cloned, ready to refresh UI"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    new-instance v18, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader$1;

    move-object/from16 v19, p0

    move-object/from16 v20, v12

    invoke-direct/range {v18 .. v23}, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader$1;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;Lcom/sec/android/app/twlauncher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1725
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mLoadApplications:Z

    move v5, v0

    if-eqz v5, :cond_1c

    .line 1727
    const-string v5, "Launcher.LauncherModel"

    const-string v6, "  ----> loading applications from workspace loader"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mIsLaunching:Z

    move v6, v0

    invoke-static {v5, v12, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$3000(Lcom/sec/android/app/twlauncher/LauncherModel;Lcom/sec/android/app/twlauncher/Launcher;Z)V

    .line 1731
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$3102(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z

    .line 1736
    .end local v21           #uiDesktopItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ItemInfo;>;"
    .end local v22           #uiDesktopWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;>;"
    .end local v23           #uiDesktopSamsungAppWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;>;"
    .end local v65           #removedCount:I
    :goto_a
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mRunning:Z

    goto/16 :goto_0

    .line 1734
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_1d
    const-string v5, "Launcher.LauncherModel"

    const-string v6, "  ----> worskpace loader was stopped"

    .end local v6           #c:Landroid/database/Cursor;
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1540
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v17       #liveFolderInfo:Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    .local v48, id:J
    .restart local v52       #intent:Landroid/content/Intent;
    .restart local v53       #intentDescription:Ljava/lang/String;
    .restart local v56       #itemType:I
    .restart local v64       #providerInfo:Landroid/content/pm/ProviderInfo;
    .restart local v77       #uri:Landroid/net/Uri;
    :catch_4
    move-exception v5

    goto/16 :goto_8

    .line 1468
    .end local v17           #liveFolderInfo:Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    .end local v48           #id:J
    .end local v64           #providerInfo:Landroid/content/pm/ProviderInfo;
    .end local v77           #uri:Landroid/net/Uri;
    .restart local v34       #container:I
    .restart local v37       #createTime:J
    .restart local v51       #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v67       #resolveInfo:Landroid/content/pm/ResolveInfo;
    :catch_5
    move-exception v5

    goto/16 :goto_7

    .line 1370
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x3e9 -> :sswitch_3
    .end sparse-switch

    .line 1450
    :pswitch_data_0
    .packed-switch -0x64
        :pswitch_0
    .end packed-switch

    .line 1511
    :pswitch_data_1
    .packed-switch -0x64
        :pswitch_1
    .end packed-switch

    .line 1561
    :pswitch_data_2
    .packed-switch -0x64
        :pswitch_2
    .end packed-switch
.end method

.method stop()V
    .locals 1

    .prologue
    .line 1266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->mStopped:Z

    .line 1267
    return-void
.end method
