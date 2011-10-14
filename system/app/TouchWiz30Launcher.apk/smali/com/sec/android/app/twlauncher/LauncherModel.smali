.class public Lcom/sec/android/app/twlauncher/LauncherModel;
.super Ljava/lang/Object;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/LauncherModel$1;,
        Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;,
        Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoCustomComparator;,
        Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoAlphaComparator;,
        Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoDefaultComparator;,
        Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;,
        Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;,
        Lcom/sec/android/app/twlauncher/LauncherModel$PackageModificationIntentReceiver;
    }
.end annotation


# static fields
.field private static mInstalledAppSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAppsLoaderCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sCollator:Ljava/text/Collator;

.field private static final sWorkspaceLoaderCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mAppInfoCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mApplications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

.field private mApplicationsLoaded:Z

.field private mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

.field private mApplicationsLoaderThread:Ljava/lang/Thread;

.field private mDesktopAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDesktopItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDesktopItemsLoaded:Z

.field private mDesktopItemsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;

.field private mDesktopLoaderThread:Ljava/lang/Thread;

.field private mDesktopSamsungAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sec/android/app/twlauncher/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuManagerFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

.field private mPkgModFlag:Z

.field private mPkgModReceiver:Landroid/content/BroadcastReceiver;

.field private final mTopAppInfoCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 74
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/twlauncher/LauncherModel;->sCollator:Ljava/text/Collator;

    .line 118
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mInstalledAppSet:Ljava/util/HashSet;

    .line 787
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/sec/android/app/twlauncher/LauncherModel;->sAppsLoaderCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 789
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/sec/android/app/twlauncher/LauncherModel;->sWorkspaceLoaderCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mFolders:Ljava/util/HashMap;

    .line 88
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mMenuManagerFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    .line 102
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mPkgModReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mPkgModFlag:Z

    .line 106
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mTopAppInfoCache:Ljava/util/HashMap;

    .line 1240
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mPkgModFlag:Z

    return p1
.end method

.method static synthetic access$1000(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 64
    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/LauncherModel;->makeAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mInstalledAppSet:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/UserFolderModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mMenuManagerFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoaded:Z

    return p1
.end method

.method static synthetic access$1400()Ljava/text/Collator;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherModel;->sCollator:Ljava/text/Collator;

    return-object v0
.end method

.method static synthetic access$1500(II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->integerCompare(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(JJ)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/LauncherModel;->longCompare(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherModel;->sWorkspaceLoaderCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateShortcutLabels(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopSamsungAppWidgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopSamsungAppWidgets:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mFolders:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mFolders:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$2400(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->getApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/twlauncher/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;IIII)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 64
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/twlauncher/LauncherModel;->getApplicationInfoShortcut(Landroid/database/Cursor;Landroid/content/Context;IIII)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/LauncherModel;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateApplicationInfoBadgeCount(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/sec/android/app/twlauncher/LauncherModel;Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/twlauncher/LauncherModel;->findOrMakeLiveFolder(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/app/twlauncher/Launcher;Landroid/database/Cursor;IIILcom/sec/android/app/twlauncher/LiveFolderInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 64
    invoke-static/range {p0 .. p5}, Lcom/sec/android/app/twlauncher/LauncherModel;->loadLiveFolderIcon(Lcom/sec/android/app/twlauncher/Launcher;Landroid/database/Cursor;IIILcom/sec/android/app/twlauncher/LiveFolderInfo;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/sec/android/app/twlauncher/LauncherModel;Lcom/sec/android/app/twlauncher/Launcher;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->startApplicationsLoader(Lcom/sec/android/app/twlauncher/Launcher;Z)V

    return-void
.end method

.method static synthetic access$3102(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoaded:Z

    return p1
.end method

.method static synthetic access$700()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherModel;->sAppsLoaderCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static addAppToDatabase(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string v0, "addAppToDatabase() "

    const-string v0, "Launcher.LauncherModel"

    .line 2486
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2487
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2489
    new-instance v7, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2497
    :try_start_0
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$MenuItem;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "component_name=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2508
    if-eqz v1, :cond_4

    .line 2509
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_6

    move v2, v8

    .line 2512
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v1, v2

    .line 2516
    :goto_1
    if-eqz v1, :cond_0

    .line 2517
    const-string v1, "component_name"

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2519
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$MenuItem;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2521
    :cond_0
    return-void

    .line 2503
    :catch_0
    move-exception v1

    .line 2504
    :try_start_1
    const-string v2, "Launcher.LauncherModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAppToDatabase() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2508
    if-eqz v9, :cond_4

    .line 2509
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    move v1, v8

    .line 2512
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2505
    :catch_1
    move-exception v1

    .line 2506
    :try_start_2
    const-string v2, "Launcher.LauncherModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAppToDatabase() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2508
    if-eqz v9, :cond_4

    .line 2509
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    move v1, v8

    .line 2512
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2508
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_2

    .line 2509
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 2512
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    move v1, v10

    goto :goto_3

    :cond_4
    move v1, v10

    goto :goto_1

    :cond_5
    move v1, v10

    goto :goto_2

    :cond_6
    move v2, v10

    goto :goto_0
.end method

.method private addEnabledAndUpdateActivities(Ljava/util/List;Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Lcom/sec/android/app/twlauncher/Launcher;)Z
    .locals 9
    .parameter
    .parameter "adapter"
    .parameter "launcher"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/sec/android/app/twlauncher/ApplicationsAdapter;",
            "Lcom/sec/android/app/twlauncher/Launcher;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 634
    .local p1, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 635
    .local v6, toAdd:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 637
    .local v2, count:I
    const/4 v1, 0x0

    .line 639
    .local v1, changed:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 640
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 641
    .local v5, info:Landroid/content/pm/ResolveInfo;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {p2, v7, v8}, Lcom/sec/android/app/twlauncher/LauncherModel;->findIntent(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v0

    .line 643
    .local v0, applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    if-nez v0, :cond_0

    .line 644
    invoke-virtual {p3}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    invoke-static {v7, v8, v5, p3}, Lcom/sec/android/app/twlauncher/LauncherModel;->makeAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    const/4 v1, 0x1

    .line 639
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 648
    :cond_0
    invoke-virtual {p3}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-direct {p0, v7, v5, v0, p3}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/Context;)V

    .line 650
    const/4 v1, 0x1

    goto :goto_1

    .line 654
    .end local v0           #applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v5           #info:Landroid/content/pm/ResolveInfo;
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 655
    .local v5, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    .line 656
    invoke-virtual {p2, v5}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 659
    .end local v5           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_2
    return v1
.end method

.method static addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const-string v3, "Launcher"

    .line 2361
    iput-wide p2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 2362
    iput p4, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 2363
    iput p5, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 2364
    iput p6, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .line 2366
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2367
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2369
    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 2371
    if-eqz p7, :cond_3

    sget-object v2, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 2374
    if-eqz v0, :cond_0

    .line 2375
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 2378
    :cond_0
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "added a item in workspace (type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2379
    iget v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    if-ne v0, v4, :cond_4

    .line 2381
    :cond_1
    check-cast p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2382
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--> title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    :cond_2
    :goto_1
    return-void

    .line 2371
    :cond_3
    sget-object v2, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    goto :goto_0

    .line 2383
    :cond_4
    iget v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 2384
    check-cast p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 2385
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--> id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2386
    :cond_5
    iget v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 2387
    check-cast p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 2388
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--> intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static addItemToDatabaseUserFolderWithShortcut(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZI)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2401
    iput-wide p2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 2402
    iput p4, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 2403
    iput p5, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 2404
    iput p6, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .line 2406
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2407
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2409
    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 2411
    const-string v2, "isShortcut"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2413
    if-eqz p7, :cond_1

    sget-object v2, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 2416
    if-eqz v0, :cond_0

    .line 2417
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 2419
    :cond_0
    return-void

    .line 2413
    :cond_1
    sget-object v2, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    goto :goto_0
.end method

.method private addOccupiedCells([[ZILcom/sec/android/app/twlauncher/ItemInfo;)V
    .locals 4
    .parameter "occupied"
    .parameter "screen"
    .parameter "item"

    .prologue
    .line 1967
    iget v2, p3, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    if-ne v2, p2, :cond_1

    .line 1968
    iget v0, p3, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .local v0, xx:I
    :goto_0
    iget v2, p3, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v3, p3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_1

    .line 1969
    iget v1, p3, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .local v1, yy:I
    :goto_1
    iget v2, p3, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    iget v3, p3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 1970
    aget-object v2, p1, v0

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 1969
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1968
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1974
    .end local v0           #xx:I
    .end local v1           #yy:I
    :cond_1
    return-void
.end method

.method static addOrMoveItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V
    .locals 8
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 2253
    iget-wide v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2255
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 2260
    :goto_0
    return-void

    .line 2258
    :cond_0
    invoke-static/range {p0 .. p6}, Lcom/sec/android/app/twlauncher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V

    goto :goto_0
.end method

.method static addOrMoveItemInDatabaseForUserFoler(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V
    .locals 8
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 2226
    iget-wide v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2228
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 2233
    :goto_0
    return-void

    .line 2231
    :cond_0
    invoke-static/range {p0 .. p6}, Lcom/sec/android/app/twlauncher/LauncherModel;->moveItemInDatabaseForUserFolder(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V

    goto :goto_0
.end method

.method static deleteItemFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const-string v4, "Launcher"

    .line 2443
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2445
    iget-wide v1, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2447
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removed a item in workspace (type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    iget v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2450
    :cond_0
    check-cast p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2451
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--> title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    :cond_1
    :goto_0
    return-void

    .line 2452
    :cond_2
    iget v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 2453
    check-cast p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 2454
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--> id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2455
    :cond_3
    iget v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 2456
    check-cast p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 2457
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--> intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/UserFolderInfo;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 2465
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2467
    iget-wide v1, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2475
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "container="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2477
    return-void
.end method

.method private static findActivitiesForPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "packageManager"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 609
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 610
    .local v5, mainIntent:Landroid/content/Intent;
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    invoke-virtual {v5, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 614
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 616
    .local v6, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_1

    .line 618
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 619
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 620
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 621
    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 622
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 623
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 628
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v6
.end method

.method private static findIntent(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .locals 6
    .parameter "adapter"
    .parameter "packageName"
    .parameter "name"

    .prologue
    .line 694
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v2

    .line 695
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 696
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 697
    .local v0, applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 698
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 699
    .local v1, component:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    .line 705
    .end local v0           #applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v1           #component:Landroid/content/ComponentName;
    .end local v4           #intent:Landroid/content/Intent;
    :goto_1
    return-object v5

    .line 695
    .restart local v0       #applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v1       #component:Landroid/content/ComponentName;
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 705
    .end local v0           #applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v1           #component:Landroid/content/ComponentName;
    .end local v4           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private static findIntent(Ljava/util/List;Landroid/content/ComponentName;)Z
    .locals 5
    .parameter
    .parameter "component"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 709
    .local p0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 710
    .local v1, className:Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 711
    .local v3, info:Landroid/content/pm/ResolveInfo;
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 712
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 713
    const/4 v4, 0x1

    .line 716
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private findOrMakeLiveFolder(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    .locals 2
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sec/android/app/twlauncher/FolderInfo;",
            ">;J)",
            "Lcom/sec/android/app/twlauncher/LiveFolderInfo;"
        }
    .end annotation

    .prologue
    .line 1822
    .local p1, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sec/android/app/twlauncher/FolderInfo;>;"
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/FolderInfo;

    .line 1823
    .local v0, folderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    if-nez v1, :cond_1

    .line 1825
    :cond_0
    new-instance v0, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    .end local v0           #folderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/LiveFolderInfo;-><init>()V

    .line 1826
    .restart local v0       #folderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1828
    :cond_1
    check-cast v0, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    .end local v0           #folderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    return-object v0
.end method

.method private findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .locals 2
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sec/android/app/twlauncher/FolderInfo;",
            ">;J)",
            "Lcom/sec/android/app/twlauncher/UserFolderInfo;"
        }
    .end annotation

    .prologue
    .line 1807
    .local p1, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sec/android/app/twlauncher/FolderInfo;>;"
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/FolderInfo;

    .line 1808
    .local v0, folderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-nez v1, :cond_1

    .line 1810
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->createUserFolderInfo(I)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v0

    .line 1811
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1813
    :cond_1
    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .end local v0           #folderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    return-object v0
.end method

.method private static getApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/high16 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2041
    invoke-virtual {p0, p1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 2042
    if-nez v0, :cond_3

    .line 2043
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2044
    if-nez v0, :cond_0

    move-object v0, v3

    .line 2092
    :goto_0
    return-object v0

    .line 2049
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v1, v6

    if-eqz v1, :cond_1

    move v1, v5

    .line 2054
    :goto_1
    if-nez v1, :cond_2

    move-object v0, v3

    .line 2055
    goto :goto_0

    :cond_1
    move v1, v4

    .line 2049
    goto :goto_1

    .line 2051
    :catch_0
    move-exception v1

    move v1, v4

    goto :goto_1

    .line 2059
    :cond_2
    new-instance v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-direct {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>()V

    .line 2060
    iput v4, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    .line 2061
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    .line 2062
    iput-boolean v5, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mIsAppStoredInExternalStorage:Z

    .line 2063
    iput-boolean v5, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mIsAppStoredInExternalStorageWhileUnmounted:Z

    .line 2064
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200e8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 2067
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setTitle(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 2068
    goto :goto_0

    .line 2071
    :cond_3
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2072
    new-instance v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-direct {v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>()V

    .line 2073
    invoke-virtual {v1, p0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 2074
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 2075
    :cond_4
    invoke-virtual {v1, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 2077
    :cond_5
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_6

    .line 2078
    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 2080
    :cond_6
    iput v4, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    .line 2082
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v1, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    .line 2086
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2087
    and-int/2addr v0, v6

    if-eqz v0, :cond_7

    .line 2088
    iput-boolean v5, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mIsAppStoredInExternalStorage:Z

    :goto_2
    move-object v0, v2

    .line 2092
    goto/16 :goto_0

    .line 2090
    :cond_7
    iput-boolean v4, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mIsAppStoredInExternalStorage:Z

    goto :goto_2
.end method

.method private getApplicationInfoShortcut(Landroid/database/Cursor;Landroid/content/Context;IIII)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .locals 14
    .parameter "c"
    .parameter "context"
    .parameter "iconTypeIndex"
    .parameter "iconPackageIndex"
    .parameter "iconResourceIndex"
    .parameter "iconIndex"

    .prologue
    .line 2158
    new-instance v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-direct {v7}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>()V

    .line 2159
    .local v7, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    const/4 v12, 0x1

    iput v12, v7, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    .line 2161
    move-object v0, p1

    move/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 2162
    .local v5, iconType:I
    packed-switch v5, :pswitch_data_0

    .line 2193
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 2194
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setIsCustomIcon(Z)V

    .line 2197
    :goto_0
    return-object v7

    .line 2164
    :pswitch_0
    move-object v0, p1

    move/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2165
    .local v9, packageName:Ljava/lang/String;
    move-object v0, p1

    move/from16 v1, p5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2166
    .local v10, resourceName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 2168
    .local v8, packageManager:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v11

    .line 2169
    .local v11, resources:Landroid/content/res/Resources;
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v10, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2170
    .local v6, id:I
    invoke-virtual {v11, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2174
    .end local v6           #id:I
    .end local v11           #resources:Landroid/content/res/Resources;
    :goto_1
    new-instance v12, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v12}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v12, v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 2175
    iget-object v12, v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v9, v12, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 2176
    iget-object v12, v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v10, v12, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 2177
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setIsCustomIcon(Z)V

    goto :goto_0

    .line 2171
    :catch_0
    move-exception v12

    move-object v4, v12

    .line 2172
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 2180
    .end local v4           #e:Ljava/lang/Exception;
    .end local v8           #packageManager:Landroid/content/pm/PackageManager;
    .end local v9           #packageName:Ljava/lang/String;
    .end local v10           #resourceName:Ljava/lang/String;
    :pswitch_1
    move-object v0, p1

    move/from16 v1, p6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 2182
    .local v3, data:[B
    const/4 v12, 0x0

    :try_start_1
    array-length v13, v3

    invoke-static {v3, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2183
    .local v2, bitmap:Landroid/graphics/Bitmap;
    new-instance v12, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    move-object v0, v2

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/Utilities;->createBitmapThumbnail(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v12, v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2189
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    :goto_2
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setFiltered(Z)V

    .line 2190
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setIsCustomIcon(Z)V

    goto :goto_0

    .line 2185
    :catch_1
    move-exception v12

    move-object v4, v12

    .line 2186
    .restart local v4       #e:Ljava/lang/Exception;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 2187
    .restart local v8       #packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v8}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 2162
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getLabel(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 2
    .parameter "manager"
    .parameter "activityInfo"

    .prologue
    .line 1230
    invoke-virtual {p1, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1231
    .local v0, label:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1232
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1233
    if-nez v0, :cond_0

    .line 1234
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1237
    :cond_0
    return-object v0
.end method

.method static getPackageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter "intent"

    .prologue
    .line 2817
    const/4 v0, 0x0

    .line 2818
    .local v0, packageName:Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2819
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2821
    :cond_0
    return-object v0
.end method

.method private static integerCompare(II)I
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 1085
    const/4 v0, 0x0

    .line 1087
    .local v0, ret:I
    if-le p0, p1, :cond_1

    .line 1088
    const/4 v0, 0x1

    .line 1092
    :cond_0
    :goto_0
    return v0

    .line 1089
    :cond_1
    if-ge p0, p1, :cond_0

    .line 1090
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static isStoredExternalStorageMounted(Landroid/content/ComponentName;Landroid/content/Context;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2125
    .line 2126
    if-nez p0, :cond_0

    move v0, v3

    .line 2149
    :goto_0
    return v0

    .line 2129
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2132
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2134
    if-eqz v0, :cond_1

    .line 2135
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2136
    const/high16 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 2137
    const/4 v0, 0x1

    .line 2145
    :goto_1
    const-string v1, "Launcher.LauncherModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isStoredExternalStorageMounted] packageName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bRetVal : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2140
    :catch_0
    move-exception v0

    move v0, v3

    .line 2141
    goto :goto_1

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method public static isStoredExternalStorageUnmounted(Landroid/content/ComponentName;Landroid/content/Context;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2099
    .line 2100
    if-nez p0, :cond_0

    move v0, v3

    .line 2118
    :goto_0
    return v0

    .line 2103
    :cond_0
    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mInstalledAppSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2104
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2107
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v4

    .line 2114
    :goto_1
    const-string v1, "Launcher.LauncherModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isStoredExternalStorageUnmounted] packageName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bRetVal : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v0, v3

    .line 2107
    goto :goto_1

    .line 2108
    :catch_0
    move-exception v0

    move v0, v4

    .line 2109
    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method static loadAppToDatabase(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const-string v0, "loadAppToDatabase() "

    const-string v0, "Launcher.LauncherModel"

    .line 2565
    .line 2566
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2571
    :try_start_0
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$MenuItem;->CONTENT_URI:Landroid/net/Uri;

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "page"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "cell"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "component_name"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "default_sort"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "create_time"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "parent_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "parent_id,page,cell"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2588
    :goto_0
    return-object v0

    .line 2581
    :catch_0
    move-exception v0

    .line 2582
    :try_start_1
    const-string v1, "Launcher.LauncherModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAppToDatabase() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 2587
    goto :goto_0

    .line 2583
    :catch_1
    move-exception v0

    .line 2584
    const-string v1, "Launcher.LauncherModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAppToDatabase() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v6

    .line 2587
    goto :goto_0

    .line 2585
    :catchall_0
    move-exception v0

    throw v0
.end method

.method private static loadLiveFolderIcon(Lcom/sec/android/app/twlauncher/Launcher;Landroid/database/Cursor;IIILcom/sec/android/app/twlauncher/LiveFolderInfo;)V
    .locals 10
    .parameter "launcher"
    .parameter "c"
    .parameter "iconTypeIndex"
    .parameter "iconPackageIndex"
    .parameter "iconResourceIndex"
    .parameter "liveFolderInfo"

    .prologue
    const v9, 0x7f020053

    .line 1743
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1744
    .local v1, iconType:I
    packed-switch v1, :pswitch_data_0

    .line 1762
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p5, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 1765
    :goto_0
    return-void

    .line 1746
    :pswitch_0
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1747
    .local v4, packageName:Ljava/lang/String;
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1748
    .local v5, resourceName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1750
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    .line 1751
    .local v6, resources:Landroid/content/res/Resources;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1752
    .local v2, id:I
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p5, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1757
    .end local v2           #id:I
    .end local v6           #resources:Landroid/content/res/Resources;
    :goto_1
    new-instance v7, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v7}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v7, p5, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 1758
    iget-object v7, p5, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v4, v7, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 1759
    iget-object v7, p5, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v5, v7, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    goto :goto_0

    .line 1753
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 1754
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p5, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 1744
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static loadTopAppToDatabase(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const-string v0, "loadTopAppToDatabase() "

    const-string v0, "cell"

    const-string v0, "Launcher.LauncherModel"

    .line 2539
    .line 2540
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2543
    :try_start_0
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$MenuItem;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "cell"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "component_name"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "default_sort"

    aput-object v4, v2, v3

    const-string v3, "page=-1 and cell <> -1"

    const/4 v4, 0x0

    const-string v5, "cell"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2561
    :goto_0
    return-object v0

    .line 2554
    :catch_0
    move-exception v0

    .line 2555
    :try_start_1
    const-string v1, "Launcher.LauncherModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadTopAppToDatabase() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 2560
    goto :goto_0

    .line 2556
    :catch_1
    move-exception v0

    .line 2557
    const-string v1, "Launcher.LauncherModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadTopAppToDatabase() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v6

    .line 2560
    goto :goto_0

    .line 2558
    :catchall_0
    move-exception v0

    throw v0
.end method

.method private static longCompare(JJ)I
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 1096
    const/4 v0, 0x0

    .line 1098
    .local v0, ret:I
    cmp-long v1, p0, p2

    if-lez v1, :cond_1

    .line 1099
    const/4 v0, 0x1

    .line 1103
    :cond_0
    :goto_0
    return v0

    .line 1100
    :cond_1
    cmp-long v1, p0, p2

    if-gez v1, :cond_0

    .line 1101
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static makeAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .locals 6
    .parameter "manager"
    .parameter
    .parameter "info"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;",
            "Landroid/content/pm/ResolveInfo;",
            "Landroid/content/Context;",
            ")",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;"
        }
    .end annotation

    .prologue
    .line 739
    .local p1, appInfoCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    new-instance v1, Landroid/content/ComponentName;

    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    .local v1, componentName:Landroid/content/ComponentName;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 743
    .local v0, application:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    if-nez v0, :cond_1

    .line 744
    new-instance v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .end local v0           #application:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>()V

    .line 746
    .restart local v0       #application:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-static {p0, p2, v0, p3}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateApplicationInfoTitleAndIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/Context;)V

    .line 748
    const/high16 v4, 0x1020

    invoke-virtual {v0, v1, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 751
    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x81

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setSystemApp(Z)V

    .line 755
    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    .line 756
    const-wide/16 v2, 0x0

    .line 757
    .local v2, createTime:J
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-lt v4, v5, :cond_0

    .line 759
    :try_start_0
    iget-object v4, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x2000

    invoke-virtual {p0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-wide v2, v4, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    :cond_0
    :goto_1
    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setCreateTime(J)V

    .line 766
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    .end local v2           #createTime:J
    :cond_1
    invoke-static {v0, p3}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateApplicationInfoBadgeCount(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/Context;)V

    .line 771
    return-object v0

    .line 751
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 761
    .restart local v2       #createTime:J
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method static moveItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 2267
    iput-wide p2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 2268
    iput p4, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 2269
    iput p5, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 2270
    iput p6, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .line 2272
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2273
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2275
    const-string v2, "container"

    iget-wide v3, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2276
    const-string v2, "cellX"

    iget v3, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2277
    const-string v2, "cellY"

    iget v3, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2278
    const-string v2, "screen"

    iget v3, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2280
    iget-wide v2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2281
    return-void
.end method

.method static moveItemInDatabaseForUserFolder(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V
    .locals 8
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 2238
    move-object v1, p1

    .line 2240
    .local v1, moveItemInfo:Lcom/sec/android/app/twlauncher/ItemInfo;
    invoke-static {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 2242
    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 2243
    return-void
.end method

.method static removeAppToDatabase(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2524
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2526
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$MenuItem;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "component_name=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2529
    return-void
.end method

.method static removeAppToDatabase(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2532
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2534
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$MenuItem;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2536
    return-void
.end method

.method private removeDisabledActivities(Ljava/lang/String;Ljava/util/List;Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)Z
    .locals 11
    .parameter "packageName"
    .parameter
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/sec/android/app/twlauncher/ApplicationsAdapter;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 664
    .local p2, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 665
    .local v9, toRemove:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-virtual {p3}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v4

    .line 667
    .local v4, count:I
    const/4 v2, 0x0

    .line 669
    .local v2, changed:Z
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 670
    invoke-virtual {p3, v5}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 671
    .local v0, applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 672
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 673
    .local v3, component:Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 674
    invoke-static {p2, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->findIntent(Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 675
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    const/4 v2, 0x1

    .line 669
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 681
    .end local v0           #applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v3           #component:Landroid/content/ComponentName;
    .end local v8           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    .line 682
    .local v1, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 683
    .local v7, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    .line 684
    invoke-virtual {p3, v7}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->remove(Ljava/lang/Object;)V

    .line 685
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 688
    .end local v7           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_2
    return v2
.end method

.method static removePackageBackground(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)V
    .locals 5
    .parameter "launcher"
    .parameter "packageInfo"

    .prologue
    .line 435
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 436
    .local v0, applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 437
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 438
    .local v1, component:Landroid/content/ComponentName;
    invoke-static {p0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeAppToDatabase(Landroid/content/Context;Landroid/content/ComponentName;)V

    goto :goto_0

    .line 440
    .end local v0           #applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v1           #component:Landroid/content/ComponentName;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method static shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2288
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2289
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "title"

    aput-object v3, v2, v5

    const-string v3, "intent"

    aput-object v3, v2, v6

    const-string v3, "title=? and intent=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {p2, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2296
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2298
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2300
    return v1

    .line 2298
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private declared-synchronized startApplicationsLoader(Lcom/sec/android/app/twlauncher/Launcher;Z)V
    .locals 2
    .parameter "launcher"
    .parameter "isLaunching"

    .prologue
    .line 259
    monitor-enter p0

    :try_start_0
    const-string v0, "Launcher.LauncherModel"

    const-string v1, "  --> starting applications loader unlocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->startApplicationsLoaderLocked(Lcom/sec/android/app/twlauncher/Launcher;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    monitor-exit p0

    return-void

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startApplicationsLoaderLocked(Lcom/sec/android/app/twlauncher/Launcher;Z)V
    .locals 3
    .parameter "launcher"
    .parameter "isLaunching"

    .prologue
    .line 265
    const-string v0, "Launcher.LauncherModel"

    const-string v1, "  --> starting applications loader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->stopAndWaitForApplicationsLoader()V

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoaded:Z

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplications:Ljava/util/ArrayList;

    .line 272
    new-instance v0, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplications:Ljava/util/ArrayList;

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 275
    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel;Lcom/sec/android/app/twlauncher/Launcher;Z)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    .line 276
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    const-string v2, "Applications Loader"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoaderThread:Ljava/lang/Thread;

    .line 277
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 278
    return-void
.end method

.method private declared-synchronized stopAndWaitForApplicationsLoader()V
    .locals 3

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    const-string v0, "Launcher.LauncherModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  --> wait for applications loader ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    invoke-static {v2}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->access$200(Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoaderThread:Ljava/lang/Thread;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 255
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 251
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private syncLocked(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)Z
    .locals 7
    .parameter "launcher"
    .parameter "packageName"

    .prologue
    const/4 v6, 0x0

    .line 580
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 581
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v3, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->findActivitiesForPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 583
    .local v2, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 584
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 587
    .local v0, adapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    invoke-direct {p0, p2, v2, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeDisabledActivities(Ljava/lang/String;Ljava/util/List;Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)Z

    move-result v4

    .line 590
    .local v4, removed:Z
    invoke-direct {p0, v2, v0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->addEnabledAndUpdateActivities(Ljava/util/List;Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Lcom/sec/android/app/twlauncher/Launcher;)Z

    move-result v1

    .line 592
    .local v1, added:Z
    if-nez v1, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    const/4 v5, 0x1

    .line 595
    .end local v0           #adapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    .end local v1           #added:Z
    .end local v4           #removed:Z
    :goto_0
    return v5

    .restart local v0       #adapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    .restart local v1       #added:Z
    .restart local v4       #removed:Z
    :cond_1
    move v5, v6

    .line 592
    goto :goto_0

    .end local v0           #adapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    .end local v1           #added:Z
    .end local v4           #removed:Z
    :cond_2
    move v5, v6

    .line 595
    goto :goto_0
.end method

.method private unbindAppDrawables(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, applications:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    const/4 v4, 0x0

    .line 1889
    if-eqz p1, :cond_1

    .line 1890
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1891
    .local v1, count:I
    const/4 v2, 0x0

    .end local p0
    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1892
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1893
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->bg:Landroid/graphics/drawable/Drawable;

    .line 1894
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 1895
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1891
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1898
    .end local v0           #bg:Landroid/graphics/drawable/Drawable;
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_1
    return-void
.end method

.method private unbindAppWidgetHostViews(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1904
    .local p1, appWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;>;"
    if-eqz p1, :cond_0

    .line 1905
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1906
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1907
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 1908
    .local v2, launcherInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1906
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1911
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #launcherInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    :cond_0
    return-void
.end method

.method private unbindCachedIconDrawables()V
    .locals 4

    .prologue
    .line 1928
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1929
    .local v0, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v2, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    .line 1931
    .end local v0           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_0
    return-void
.end method

.method private unbindDrawables(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1855
    .local p1, desktopItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ItemInfo;>;"
    if-eqz p1, :cond_0

    .line 1856
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1857
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1858
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 1859
    .local v2, item:Lcom/sec/android/app/twlauncher/ItemInfo;
    iget v3, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    packed-switch v3, :pswitch_data_0

    .line 1857
    .end local v2           #item:Lcom/sec/android/app/twlauncher/ItemInfo;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1862
    .restart local v2       #item:Lcom/sec/android/app/twlauncher/ItemInfo;
    :pswitch_0
    check-cast v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .end local v2           #item:Lcom/sec/android/app/twlauncher/ItemInfo;
    iget-object v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_1

    .line 1867
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_0
    return-void

    .line 1859
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private unbindFolders(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1873
    .local p1, desktopItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ItemInfo;>;"
    if-eqz p1, :cond_1

    .line 1874
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1875
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1876
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 1877
    .local v2, item:Lcom/sec/android/app/twlauncher/ItemInfo;
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v3, :cond_0

    .line 1878
    check-cast v2, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .end local v2           #item:Lcom/sec/android/app/twlauncher/ItemInfo;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->removeAllViews()V

    .line 1875
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1882
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method private unbindSamsungAppWidgetViews(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1914
    .local p1, sappWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;>;"
    if-eqz p1, :cond_0

    .line 1915
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1916
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1917
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 1918
    .local v2, info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    .line 1916
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1921
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    :cond_0
    return-void
.end method

.method private updateAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/Context;)V
    .locals 3
    .parameter "packageManager"
    .parameter "info"
    .parameter "applicationInfo"
    .parameter "context"

    .prologue
    .line 555
    invoke-static {p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateApplicationInfoTitleAndIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/Context;)V

    .line 557
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    .local v0, componentName:Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    return-void
.end method

.method static updateAppToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I
    .locals 13
    .parameter
    .parameter

    .prologue
    const-wide/16 v11, -0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string v0, "Launcher.LauncherModel"

    .line 2617
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isClean()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v10

    .line 2671
    :goto_0
    return v0

    .line 2620
    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2621
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2623
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2624
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 2630
    :try_start_0
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$MenuItem;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "component_name=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2641
    if-eqz v1, :cond_5

    .line 2642
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    .line 2643
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2644
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    .line 2646
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-wide v1, v2

    .line 2655
    :goto_2
    const-string v3, "parent_id"

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditParentId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2656
    const-string v3, "page"

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditPageNum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2657
    const-string v3, "cell"

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditCellNum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2662
    const-string v3, "title"

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2663
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->markAsClean()V

    .line 2664
    cmp-long v3, v1, v11

    if-eqz v3, :cond_3

    .line 2665
    invoke-static {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherSettings$MenuItem;->getContentUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 2636
    :catch_0
    move-exception v1

    .line 2637
    :try_start_1
    const-string v2, "Launcher.LauncherModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAppToDatabase() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2641
    if-eqz v9, :cond_5

    .line 2642
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6

    .line 2643
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2644
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    .line 2646
    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 2638
    :catch_1
    move-exception v1

    .line 2639
    :try_start_2
    const-string v2, "Launcher.LauncherModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAppToDatabase() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2641
    if-eqz v9, :cond_5

    .line 2642
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 2643
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2644
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    .line 2646
    :goto_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 2641
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_2

    .line 2642
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 2643
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2644
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    .line 2646
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 2667
    :cond_3
    const-string v1, "component_name"

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2669
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$MenuItem;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move v0, v10

    .line 2671
    goto/16 :goto_0

    :cond_4
    move-wide v1, v11

    goto :goto_4

    :cond_5
    move-wide v1, v11

    goto/16 :goto_2

    :cond_6
    move-wide v1, v11

    goto :goto_3

    :cond_7
    move-wide v2, v11

    goto/16 :goto_1
.end method

.method private static updateApplicationInfoBadgeCount(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/Context;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x0

    const-string v0, "updateApplicationInfoBadgeCount() "

    const-string v9, "updateApplicationInfoBadgeCount(). ignoring NullPointerException by Cursor.close()"

    const-string v8, "Launcher.LauncherModel"

    .line 2771
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2814
    :cond_0
    :goto_0
    return-void

    .line 2774
    :cond_1
    const/4 v6, 0x0

    .line 2777
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.sec.badge/apps"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "badgecount"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "class"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 2792
    if-eqz v0, :cond_5

    .line 2793
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_7

    .line 2794
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2795
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2798
    :goto_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 2813
    :goto_2
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setBadgeCount(I)V

    goto :goto_0

    .line 2799
    :catch_0
    move-exception v0

    .line 2806
    const-string v0, "Launcher.LauncherModel"

    const-string v0, "updateApplicationInfoBadgeCount(). ignoring NullPointerException by Cursor.close()"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2809
    goto :goto_2

    .line 2787
    :catch_1
    move-exception v0

    .line 2788
    :try_start_2
    const-string v1, "Launcher.LauncherModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateApplicationInfoBadgeCount() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2792
    if-eqz v10, :cond_5

    .line 2793
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 2794
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2795
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2798
    :goto_3
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 2799
    :catch_2
    move-exception v1

    .line 2806
    const-string v1, "Launcher.LauncherModel"

    const-string v1, "updateApplicationInfoBadgeCount(). ignoring NullPointerException by Cursor.close()"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2789
    :catch_3
    move-exception v0

    .line 2790
    :try_start_4
    const-string v1, "Launcher.LauncherModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateApplicationInfoBadgeCount() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2792
    if-eqz v10, :cond_5

    .line 2793
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 2794
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2795
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2798
    :goto_4
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 2799
    :catch_4
    move-exception v1

    .line 2806
    const-string v1, "Launcher.LauncherModel"

    const-string v1, "updateApplicationInfoBadgeCount(). ignoring NullPointerException by Cursor.close()"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2792
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_3

    .line 2793
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 2794
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2795
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 2798
    :cond_2
    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_5

    .line 2809
    :cond_3
    :goto_5
    throw v0

    .line 2799
    :catch_5
    move-exception v1

    .line 2806
    const-string v1, "Launcher.LauncherModel"

    const-string v1, "updateApplicationInfoBadgeCount(). ignoring NullPointerException by Cursor.close()"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_4
    move v0, v7

    goto :goto_4

    :cond_5
    move v0, v7

    goto/16 :goto_2

    :cond_6
    move v0, v7

    goto :goto_3

    :cond_7
    move v1, v7

    goto/16 :goto_1
.end method

.method private static updateApplicationInfoTitleAndIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/Context;)V
    .locals 1
    .parameter "manager"
    .parameter "info"
    .parameter "application"
    .parameter "context"

    .prologue
    .line 777
    invoke-virtual {p1, p0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 778
    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 779
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 782
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 784
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setFiltered(Z)V

    .line 785
    return-void
.end method

.method static updateAppsToDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;Lcom/sec/android/app/twlauncher/UserFolderModel$FolderModelCanContinueCB;)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;",
            "Lcom/sec/android/app/twlauncher/UserFolderModel$FolderModelCanContinueCB;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2680
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2681
    invoke-interface/range {p2 .. p2}, Lcom/sec/android/app/twlauncher/UserFolderModel$FolderModelCanContinueCB;->canContinue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2740
    :cond_1
    return-void

    .line 2683
    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isClean()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2686
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getParentId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 2687
    const-string v0, "DebugDb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Something ugly has happened on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2689
    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getComponentName()Ljava/lang/String;

    move-result-object v9

    .line 2690
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2691
    const/4 v11, 0x0

    .line 2692
    const-wide/16 v12, -0x1

    .line 2695
    :try_start_1
    const-string v1, "menu_item"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "component_name=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 2704
    if-eqz v0, :cond_8

    .line 2705
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_a

    .line 2706
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2707
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    .line 2709
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-wide v0, v1

    .line 2718
    :goto_2
    const-string v2, "parent_id"

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditParentId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2719
    const-string v2, "page"

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditPageNum()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2720
    const-string v2, "cell"

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditCellNum()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2725
    const-string v2, "title"

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2726
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_6

    .line 2727
    const-string v2, "DebugDb"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update app info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getParentId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2728
    const-string v2, "menu_item"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v10, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2730
    iput-wide v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 2736
    :goto_3
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->markAsClean()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 2738
    :catchall_0
    move-exception p0

    throw p0

    .line 2699
    :catch_0
    move-exception v0

    .line 2700
    :try_start_3
    const-string v1, "Launcher.LauncherModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePageNumberToDatabase() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2704
    if-eqz v11, :cond_8

    .line 2705
    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_9

    .line 2706
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2707
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    .line 2709
    :goto_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 2701
    :catch_1
    move-exception v0

    .line 2702
    :try_start_5
    const-string v1, "Launcher.LauncherModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePageNumberToDatabase() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2704
    if-eqz v11, :cond_8

    .line 2705
    :try_start_6
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 2706
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2707
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    .line 2709
    :goto_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 2704
    :catchall_1
    move-exception p0

    if-eqz v11, :cond_5

    .line 2705
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_4

    .line 2706
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2707
    const/4 p1, 0x0

    invoke-interface {v11, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    int-to-long p1, p1

    .line 2709
    :cond_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p0

    .line 2732
    :cond_6
    const-string v0, "component_name"

    invoke-virtual {v10, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2733
    const-string v0, "menu_item"

    const-string v1, ""

    invoke-virtual {p0, v0, v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 2734
    const-string v0, "DebugDb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insert app info "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getParentId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    :cond_7
    move-wide v0, v12

    goto :goto_5

    :cond_8
    move-wide v0, v12

    goto/16 :goto_2

    :cond_9
    move-wide v0, v12

    goto/16 :goto_4

    :cond_a
    move-wide v1, v12

    goto/16 :goto_1
.end method

.method static updateItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V
    .locals 6
    .parameter "context"
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    .line 2428
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2429
    .local v1, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2431
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 2433
    iget-wide v2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2434
    return-void
.end method

.method private static updateShortcutLabels(Landroid/content/ContentResolver;Landroid/content/pm/PackageManager;)V
    .locals 12
    .parameter "resolver"
    .parameter "manager"

    .prologue
    .line 1166
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "title"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "intent"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "itemType"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1171
    .local v1, c:Landroid/database/Cursor;
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1172
    .local v2, idIndex:I
    const-string v0, "intent"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 1173
    .local v3, intentIndex:I
    const-string v0, "itemType"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 1174
    .local v4, itemTypeIndex:I
    const-string v0, "title"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 1179
    .local v6, titleIndex:I
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 1181
    :try_start_1
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1183
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "com.android.settings.SHORTCUT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1190
    :cond_1
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1191
    .local v0, intentUri:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1192
    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 1193
    .local v0, shortcut:Landroid/content/Intent;
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1194
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1195
    .local v0, name:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 1196
    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1197
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1198
    .local v5, title:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->getLabel(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v0

    .line 1200
    .local v0, label:Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .end local v5           #title:Ljava/lang/String;
    if-nez v5, :cond_0

    .line 1201
    :cond_2
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1202
    .local v5, values:Landroid/content/ContentValues;
    const-string v7, "title"

    invoke-virtual {v5, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    .end local v0           #label:Ljava/lang/String;
    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v0, v5, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1215
    .end local v5           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1222
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1227
    return-void

    .line 1222
    :catchall_0
    move-exception p0

    .end local p0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw p0

    .line 1217
    .restart local p0
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized abortLoaders()V
    .locals 2

    .prologue
    const-string v0, "Launcher.LauncherModel"

    .line 122
    monitor-enter p0

    :try_start_0
    const-string v0, "Launcher.LauncherModel"

    const-string v1, "Stopping Loaders"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "Launcher.LauncherModel"

    const-string v1, "  --> stopping applications loader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->stop()V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoaded:Z

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    const-string v0, "Launcher.LauncherModel"

    const-string v1, "  --> stopping workspace loader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->stop()V

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :cond_1
    monitor-exit p0

    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method addDesktopAppWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 2011
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2012
    return-void
.end method

.method addDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 1991
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1992
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1994
    :cond_0
    return-void
.end method

.method addDesktopSamsungAppWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 2025
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2026
    return-void
.end method

.method addFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 1778
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1779
    return-void
.end method

.method declared-synchronized addPackage(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V
    .locals 7
    .parameter "launcher"
    .parameter "packageName"

    .prologue
    .line 365
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    .line 390
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 367
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 368
    const/4 v6, 0x0

    invoke-direct {p0, p1, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->startApplicationsLoaderLocked(Lcom/sec/android/app/twlauncher/Launcher;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 365
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 372
    :cond_2
    if-eqz p2, :cond_0

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 373
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 374
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    invoke-static {v5, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->findActivitiesForPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 376
    .local v4, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 378
    .local v0, adapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    .line 380
    .local v1, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 381
    .local v3, info:Landroid/content/pm/ResolveInfo;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    .line 382
    invoke-static {p1, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->addAppToDatabase(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 383
    invoke-static {v5, v1, v3, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->makeAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 387
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized addPackageBackground(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)V
    .locals 7
    .parameter "launcher"
    .parameter "packageInfo"

    .prologue
    .line 331
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$400(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;

    move-result-object v4

    .line 333
    .local v4, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 334
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 335
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 336
    .local v0, adapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    .line 338
    .local v1, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 339
    .local v3, info:Landroid/content/pm/ResolveInfo;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    .line 340
    invoke-static {p1, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->addAppToDatabase(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 341
    invoke-static {v5, v1, v3, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->makeAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->add(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 331
    .end local v0           #adapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    .end local v1           #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    .end local v4           #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #packageManager:Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 344
    .restart local v4       #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method

.method declared-synchronized addPackageUi(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)V
    .locals 3
    .parameter "launcher"
    .parameter "packageInfo"

    .prologue
    .line 347
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 362
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 349
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 350
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->startApplicationsLoaderLocked(Lcom/sec/android/app/twlauncher/Launcher;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 347
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 354
    :cond_2
    :try_start_2
    invoke-static {p2}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$400(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;

    move-result-object v1

    .line 356
    .local v1, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 357
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 360
    .local v0, adapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized dropApplicationCache()V
    .locals 1

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized dropTopApplicationCache()V
    .locals 1

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mTopAppInfoCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    monitor-exit p0

    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method findAllOccupiedCells([[ZIII)V
    .locals 6
    .parameter "occupied"
    .parameter "countX"
    .parameter "countY"
    .parameter "screen"

    .prologue
    .line 1938
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    .line 1939
    .local v2, desktopItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ItemInfo;>;"
    if-eqz v2, :cond_0

    .line 1940
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1941
    .local v0, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 1942
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/ItemInfo;

    invoke-direct {p0, p1, p4, v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->addOccupiedCells([[ZILcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 1941
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1946
    .end local v0           #count:I
    .end local v4           #i:I
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    .line 1947
    .local v1, desktopAppWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;>;"
    if-eqz v1, :cond_1

    .line 1948
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1949
    .restart local v0       #count:I
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 1950
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/ItemInfo;

    invoke-direct {p0, p1, p4, v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->addOccupiedCells([[ZILcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 1949
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1954
    .end local v0           #count:I
    .end local v4           #i:I
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopSamsungAppWidgets:Ljava/util/ArrayList;

    .line 1955
    .local v3, desktopSamsungAppWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;>;"
    if-eqz v3, :cond_2

    .line 1956
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1957
    .restart local v0       #count:I
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_2
    if-ge v4, v0, :cond_2

    .line 1958
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/ItemInfo;

    invoke-direct {p0, p1, p4, v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->addOccupiedCells([[ZILcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 1957
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1961
    .end local v0           #count:I
    .end local v4           #i:I
    :cond_2
    return-void
.end method

.method findFolderById(J)Lcom/sec/android/app/twlauncher/FolderInfo;
    .locals 2
    .parameter "id"

    .prologue
    .line 1774
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mFolders:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/twlauncher/FolderInfo;

    return-object p0
.end method

.method public getApplicationInfo(Landroid/content/ComponentName;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .locals 1
    .parameter "componentName"

    .prologue
    .line 2766
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    .line 2767
    .local v0, appInfoCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    return-object p0
.end method

.method getApplicationInfoIcon(Landroid/content/pm/PackageManager;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "manager"
    .parameter "info"

    .prologue
    .line 720
    invoke-virtual {p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 721
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_0

    .line 722
    const/4 v3, 0x0

    .line 733
    :goto_0
    return-object v3

    .line 725
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    .local v1, componentName:Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 729
    .local v0, application:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    if-nez v0, :cond_1

    .line 730
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, p1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 733
    :cond_1
    iget-object v3, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method getApplicationsAdapter()Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    .locals 1

    .prologue
    .line 1980
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getFolderById(Landroid/content/Context;J)Lcom/sec/android/app/twlauncher/FolderInfo;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x0

    .line 2304
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2305
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=? and (itemType=? or itemType=?)"

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2316
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2317
    const-string v1, "itemType"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 2319
    const-string v3, "title"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 2320
    const-string v4, "container"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 2322
    const-string v5, "screen"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 2323
    const-string v6, "cellX"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 2324
    const-string v7, "cellY"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 2327
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move-object v1, v2

    .line 2336
    :goto_0
    if-eqz v1, :cond_0

    .line 2337
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/FolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 2338
    iput-wide p2, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 2339
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 2340
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 2341
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 2342
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2348
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 2351
    :goto_1
    return-object v0

    .line 2329
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mFolders:Ljava/util/HashMap;

    invoke-direct {p0, v1, p2, p3}, Lcom/sec/android/app/twlauncher/LauncherModel;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v1

    goto :goto_0

    .line 2332
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mFolders:Ljava/util/HashMap;

    invoke-direct {p0, v1, p2, p3}, Lcom/sec/android/app/twlauncher/LauncherModel;->findOrMakeLiveFolder(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 2348
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v2

    .line 2351
    goto :goto_1

    .line 2348
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 2327
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMenuManagerFolderList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/FolderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1794
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1795
    .local v0, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/FolderInfo;>;"
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mMenuManagerFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    if-eqz v1, :cond_0

    .line 1796
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mMenuManagerFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v3, v3, v2}, Lcom/sec/android/app/twlauncher/UserFolderModel;->assignTo(Ljava/util/ArrayList;ZZZ)V

    .line 1798
    :cond_0
    return-object v0
.end method

.method public getMenuManagerUserFolderModel()Lcom/sec/android/app/twlauncher/UserFolderModel;
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mMenuManagerFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    return-object v0
.end method

.method getPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;
    .locals 9
    .parameter "packageManager"
    .parameter "packageName"

    .prologue
    .line 298
    new-instance v6, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;

    invoke-direct {v6, p0}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel;)V

    .line 299
    .local v6, packageInfo:Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;
    invoke-static {v6, p2}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$302(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 301
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-object v6

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 307
    .local v0, adapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    invoke-static {p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->findActivitiesForPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$402(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;Ljava/util/List;)Ljava/util/List;

    .line 309
    invoke-static {v6}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$400(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    .line 310
    .local v3, count:I
    const/4 v2, 0x0

    .line 312
    .local v2, changed:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v3, :cond_3

    .line 313
    invoke-static {v6}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$400(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 315
    .local v5, info:Landroid/content/pm/ResolveInfo;
    monitor-enter p0

    .line 316
    :try_start_0
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v0, v7, v8}, Lcom/sec/android/app/twlauncher/LauncherModel;->findIntent(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v1

    .line 318
    .local v1, applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    if-eqz v1, :cond_2

    .line 320
    const/4 v2, 0x1

    .line 322
    :cond_2
    invoke-static {v6}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 318
    .end local v1           #applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 325
    .end local v5           #info:Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-static {v6, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$602(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;Z)Z

    goto :goto_0
.end method

.method public getPkgModFlag()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mPkgModFlag:Z

    return v0
.end method

.method public getWorkspaceFolderList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/FolderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1786
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1787
    .local v2, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/FolderInfo;>;"
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1788
    .local v0, i:Ljava/lang/Long;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1790
    .end local v0           #i:Ljava/lang/Long;
    :cond_0
    return-object v2
.end method

.method initTopApp(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .locals 10
    .parameter "context"
    .parameter "componentName"

    .prologue
    const/4 v9, 0x0

    .line 2743
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v6, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2744
    .local v6, mainIntent:Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2745
    invoke-virtual {v6, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2747
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 2748
    .local v7, manager:Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 2750
    .local v2, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    .line 2751
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 2753
    .local v3, count:I
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mTopAppInfoCache:Ljava/util/HashMap;

    .line 2755
    .local v0, appSubInfoCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    const/4 v4, 0x0

    .local v4, i:I
    if-ge v4, v3, :cond_0

    .line 2756
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 2757
    .local v5, info:Landroid/content/pm/ResolveInfo;
    invoke-static {v7, v0, v5, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->makeAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v1

    .local v1, application:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    move-object v8, v1

    .line 2762
    .end local v0           #appSubInfoCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    .end local v1           #application:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v3           #count:I
    .end local v4           #i:I
    .end local v5           #info:Landroid/content/pm/ResolveInfo;
    :goto_0
    return-object v8

    :cond_0
    move-object v8, v9

    goto :goto_0
.end method

.method isApplicationsLoaded()Z
    .locals 1

    .prologue
    .line 1112
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoaded:Z

    return v0
.end method

.method isDesktopLoaded()Z
    .locals 1

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopSamsungAppWidgets:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoaded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized loadApplications(ZLcom/sec/android/app/twlauncher/Launcher;Z)Z
    .locals 3
    .parameter "isLaunching"
    .parameter "launcher"
    .parameter "localeChanged"

    .prologue
    const/4 v2, 0x0

    const-string v0, "Launcher.LauncherModel"

    .line 162
    monitor-enter p0

    :try_start_0
    const-string v0, "Launcher.LauncherModel"

    const-string v1, "load applications"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoaded:Z

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    .line 165
    new-instance v0, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplications:Ljava/util/ArrayList;

    invoke-direct {v0, p2, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 167
    const-string v0, "Launcher.LauncherModel"

    const-string v1, "  --> applications loaded, return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .line 184
    :goto_0
    monitor-exit p0

    return v0

    .line 171
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->stopAndWaitForApplicationsLoader()V

    .line 173
    if-eqz p3, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->dropApplicationCache()V

    .line 177
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoaded:Z

    .line 179
    if-nez p1, :cond_2

    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->startApplicationsLoaderLocked(Lcom/sec/android/app/twlauncher/Launcher;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    .line 181
    goto :goto_0

    .line 184
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method loadUserItems(ZLcom/sec/android/app/twlauncher/Launcher;ZZ)V
    .locals 6
    .parameter "isLaunching"
    .parameter "launcher"
    .parameter "localeChanged"
    .parameter "loadApplications"

    .prologue
    const-string v3, "Launcher.LauncherModel"

    .line 1122
    const-string v0, "Launcher.LauncherModel"

    const-string v0, "loading user items"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->isDesktopLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1126
    const-string v0, "Launcher.LauncherModel"

    const-string v0, "  --> items loaded, return"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    if-eqz p4, :cond_0

    .line 1128
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->startApplicationsLoader(Lcom/sec/android/app/twlauncher/Launcher;Z)V

    .line 1130
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->onDesktopItemsLoaded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1163
    :goto_0
    return-void

    .line 1135
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1137
    const-string v0, "Launcher.LauncherModel"

    const-string v0, "  --> stopping workspace loader"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->stop()V

    .line 1143
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopLoaderThread:Ljava/lang/Thread;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1153
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;

    invoke-static {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;->access$1700(Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;)Z

    move-result p4

    .line 1157
    :cond_2
    const-string v0, "Launcher.LauncherModel"

    const-string v0, "  --> starting workspace loader"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoaded:Z

    .line 1159
    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel;Lcom/sec/android/app/twlauncher/Launcher;ZZZ)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;

    .line 1161
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItemsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$DesktopItemsLoader;

    const-string v2, "Desktop Items Loader"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopLoaderThread:Ljava/lang/Thread;

    .line 1162
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopLoaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1144
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public registerPkgChangeListener(Landroid/app/Application;)V
    .locals 3
    .parameter "app"

    .prologue
    .line 217
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/twlauncher/LauncherModel;->sCollator:Ljava/text/Collator;

    .line 222
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mPkgModReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 237
    :goto_0
    return-void

    .line 225
    :cond_0
    new-instance v1, Lcom/sec/android/app/twlauncher/LauncherModel$PackageModificationIntentReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageModificationIntentReceiver;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel;Lcom/sec/android/app/twlauncher/LauncherModel$1;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mPkgModReceiver:Landroid/content/BroadcastReceiver;

    .line 226
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mPkgModReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 233
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 234
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mPkgModReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method removeDesktopAppWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 2018
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2019
    return-void
.end method

.method removeDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 2004
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2005
    return-void
.end method

.method removeDesktopSamsungAppWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 2032
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2033
    return-void
.end method

.method declared-synchronized removePackage(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V
    .locals 11
    .parameter "launcher"
    .parameter "packageName"

    .prologue
    .line 443
    monitor-enter p0

    :try_start_0
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_1

    .line 479
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 445
    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 446
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->dropApplicationCache()V

    .line 447
    const/4 v10, 0x0

    invoke-direct {p0, p1, v10}, Lcom/sec/android/app/twlauncher/LauncherModel;->startApplicationsLoaderLocked(Lcom/sec/android/app/twlauncher/Launcher;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 443
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 451
    :cond_2
    if-eqz p2, :cond_0

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 452
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 454
    .local v0, adapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .local v9, toRemove:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v4

    .line 457
    .local v4, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v4, :cond_4

    .line 458
    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 459
    .local v1, applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 460
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 461
    .local v3, component:Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 462
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    invoke-static {p1, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeAppToDatabase(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 457
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 467
    .end local v1           #applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v3           #component:Landroid/content/ComponentName;
    .end local v8           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    .line 468
    .local v2, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 469
    .local v7, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    .line 470
    invoke-virtual {v0, v7}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->remove(Ljava/lang/Object;)V

    .line 471
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 474
    .end local v7           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_5
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 476
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized removePackageUi(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;
    .locals 12
    .parameter "launcher"
    .parameter "packageName"

    .prologue
    const/4 v11, 0x0

    .line 393
    monitor-enter p0

    :try_start_0
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_0

    move-object v10, v11

    .line 431
    :goto_0
    monitor-exit p0

    return-object v10

    .line 395
    :cond_0
    :try_start_1
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 396
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->dropApplicationCache()V

    .line 397
    const/4 v10, 0x0

    invoke-direct {p0, p1, v10}, Lcom/sec/android/app/twlauncher/LauncherModel;->startApplicationsLoaderLocked(Lcom/sec/android/app/twlauncher/Launcher;Z)V

    move-object v10, v11

    .line 398
    goto :goto_0

    .line 401
    :cond_1
    new-instance v9, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;

    invoke-direct {v9, p0}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel;)V

    .line 402
    .local v9, packageInfo:Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;
    invoke-static {v9, p2}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$302(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 404
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    .line 405
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 407
    .local v0, adapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v4

    .line 409
    .local v4, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v4, :cond_3

    .line 410
    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 411
    .local v1, applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 412
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 413
    .local v3, component:Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 414
    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 418
    .end local v1           #applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v3           #component:Landroid/content/ComponentName;
    .end local v8           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAppInfoCache:Ljava/util/HashMap;

    .line 419
    .local v2, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 420
    .local v7, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    .line 421
    invoke-virtual {v0, v7}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->remove(Ljava/lang/Object;)V

    .line 422
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 393
    .end local v0           #adapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    .end local v2           #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    .end local v4           #count:I
    .end local v5           #i:I
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v9           #packageInfo:Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 425
    .restart local v0       #adapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    .restart local v2       #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    .restart local v4       #count:I
    .restart local v5       #i:I
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v9       #packageInfo:Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;
    :cond_4
    :try_start_2
    invoke-static {v9}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 427
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0           #adapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    .end local v2           #cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    .end local v4           #count:I
    .end local v5           #i:I
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_5
    move-object v10, v9

    .line 431
    goto/16 :goto_0
.end method

.method removeUserFolder(Lcom/sec/android/app/twlauncher/UserFolderInfo;)V
    .locals 3
    .parameter "userFolderInfo"

    .prologue
    .line 2220
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2221
    return-void
.end method

.method removeUserFolderItem(Lcom/sec/android/app/twlauncher/UserFolderInfo;Lcom/sec/android/app/twlauncher/ItemInfo;)V
    .locals 1
    .parameter "folder"
    .parameter "info"

    .prologue
    .line 2206
    instance-of v0, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v0, :cond_0

    .line 2207
    check-cast p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .end local p2
    invoke-virtual {p1, p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->remove(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Z

    .line 2211
    :goto_0
    return-void

    .line 2209
    .restart local p2
    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getContents()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setMenuManagerUserFolderModel(Lcom/sec/android/app/twlauncher/UserFolderModel;)V
    .locals 0
    .parameter "aModel"

    .prologue
    .line 599
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mMenuManagerFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    .line 600
    return-void
.end method

.method public setPkgModFlag(Z)V
    .locals 0
    .parameter "aFlag"

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mPkgModFlag:Z

    .line 210
    return-void
.end method

.method declared-synchronized syncPackage(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V
    .locals 2
    .parameter "launcher"
    .parameter "packageName"

    .prologue
    .line 563
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 577
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 565
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 566
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->startApplicationsLoaderLocked(Lcom/sec/android/app/twlauncher/Launcher;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 563
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 570
    :cond_2
    if-eqz p2, :cond_0

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 571
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->syncLocked(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 572
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 574
    .local v0, adapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method unbind()V
    .locals 1

    .prologue
    .line 1837
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mMenuManagerFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    if-eqz v0, :cond_0

    .line 1838
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mMenuManagerFolderModel:Lcom/sec/android/app/twlauncher/UserFolderModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderModel;->removeAllViews()V

    .line 1840
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->stopAndWaitForApplicationsLoader()V

    .line 1841
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 1842
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplications:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->unbindAppDrawables(Ljava/util/ArrayList;)V

    .line 1843
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->unbindDrawables(Ljava/util/ArrayList;)V

    .line 1844
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopItems:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->unbindFolders(Ljava/util/ArrayList;)V

    .line 1845
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopAppWidgets:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->unbindAppWidgetHostViews(Ljava/util/ArrayList;)V

    .line 1846
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDesktopSamsungAppWidgets:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->unbindSamsungAppWidgetViews(Ljava/util/ArrayList;)V

    .line 1847
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->unbindCachedIconDrawables()V

    .line 1848
    return-void
.end method

.method declared-synchronized updatePackage(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)V
    .locals 10
    .parameter "launcher"
    .parameter "packageName"

    .prologue
    .line 516
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_1

    .line 550
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 518
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 519
    const/4 v8, 0x0

    invoke-direct {p0, p1, v8}, Lcom/sec/android/app/twlauncher/LauncherModel;->startApplicationsLoaderLocked(Lcom/sec/android/app/twlauncher/Launcher;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 516
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 523
    :cond_2
    if-eqz p2, :cond_0

    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 524
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 525
    .local v7, packageManager:Landroid/content/pm/PackageManager;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 527
    .local v0, adapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    invoke-static {v7, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->findActivitiesForPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 528
    .local v6, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 530
    .local v3, count:I
    const/4 v2, 0x0

    .line 532
    .local v2, changed:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 533
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 534
    .local v5, info:Landroid/content/pm/ResolveInfo;
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v0, v8, v9}, Lcom/sec/android/app/twlauncher/LauncherModel;->findIntent(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v1

    .line 536
    .local v1, applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    if-eqz v1, :cond_3

    .line 537
    invoke-direct {p0, v7, v5, v1, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/Context;)V

    .line 538
    const/4 v2, 0x1

    .line 532
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 542
    .end local v1           #applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v5           #info:Landroid/content/pm/ResolveInfo;
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->syncLocked(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 543
    const/4 v2, 0x1

    .line 545
    :cond_5
    if-eqz v2, :cond_0

    .line 547
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized updatePackageBackground(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)V
    .locals 6
    .parameter "launcher"
    .parameter "packageInfo"

    .prologue
    .line 482
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 484
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    invoke-static {p2}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$400(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 486
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 487
    invoke-static {p2}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$400(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 488
    .local v3, info:Landroid/content/pm/ResolveInfo;
    invoke-static {p2}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$500(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 489
    .local v0, applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 490
    invoke-direct {p0, v4, v3, v0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateAndCacheApplicationInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 493
    .end local v0           #applicationInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    :cond_1
    monitor-exit p0

    return-void

    .line 482
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v4           #packageManager:Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method declared-synchronized updatePackageUi(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)V
    .locals 3
    .parameter "launcher"
    .parameter "packageInfo"

    .prologue
    .line 496
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 513
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 498
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsLoader:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 499
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->startApplicationsLoaderLocked(Lcom/sec/android/app/twlauncher/Launcher;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 496
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 503
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApplicationsAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 505
    .local v0, adapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    invoke-static {p2}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$600(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Z

    move-result v1

    .line 506
    .local v1, changed:Z
    invoke-static {p2}, Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;->access$300(Lcom/sec/android/app/twlauncher/LauncherModel$PackageInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->syncLocked(Lcom/sec/android/app/twlauncher/Launcher;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 507
    const/4 v1, 0x1

    .line 509
    :cond_3
    if-eqz v1, :cond_0

    .line 511
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
