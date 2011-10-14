.class Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationsLoader"
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

.field private volatile mRunning:Z

.field private volatile mStopped:Z

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/LauncherModel;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/LauncherModel;Lcom/sec/android/app/twlauncher/Launcher;Z)V
    .locals 3
    .parameter
    .parameter "launcher"
    .parameter "isLaunching"

    .prologue
    .line 802
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 803
    iput-boolean p3, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mIsLaunching:Z

    .line 804
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mLauncher:Ljava/lang/ref/WeakReference;

    .line 805
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mRunning:Z

    .line 806
    invoke-static {}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$700()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mId:I

    .line 808
    const-string v0, "Launcher.LauncherModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ApplicationLoader create -- mLauncher ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 791
    iget v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mId:I

    return v0
.end method


# virtual methods
.method isRunning()Z
    .locals 1

    .prologue
    .line 816
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mRunning:Z

    return v0
.end method

.method public run()V
    .locals 37

    .prologue
    .line 821
    const-string v34, "Launcher.LauncherModel"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "  ----> running applications loader ("

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mId:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ")"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mIsLaunching:Z

    move/from16 v34, v0

    if-eqz v34, :cond_1

    const/16 v34, 0x0

    :goto_0
    invoke-static/range {v34 .. v34}, Landroid/os/Process;->setThreadPriority(I)V

    .line 828
    new-instance v25, Landroid/content/Intent;

    const-string v34, "android.intent.action.MAIN"

    const/16 v35, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 829
    .local v25, mainIntent:Landroid/content/Intent;
    const-string v34, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$800(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    move-result-object v4

    .line 832
    .local v4, appAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mLauncher:Ljava/lang/ref/WeakReference;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/sec/android/app/twlauncher/Launcher;

    .line 833
    .local v24, launcher:Lcom/sec/android/app/twlauncher/Launcher;
    if-eqz v24, :cond_0

    if-nez v4, :cond_2

    .line 834
    :cond_0
    const-string v34, "Launcher.LauncherModel"

    const-string v35, "Launcher/mApplicationsAdapter destroyed before ApplicationsLoader.run"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mRunning:Z

    .line 987
    :goto_1
    return-void

    .line 825
    .end local v4           #appAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    .end local v24           #launcher:Lcom/sec/android/app/twlauncher/Launcher;
    .end local v25           #mainIntent:Landroid/content/Intent;
    :cond_1
    const/16 v34, 0xa

    goto :goto_0

    .line 838
    .restart local v4       #appAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    .restart local v24       #launcher:Lcom/sec/android/app/twlauncher/Launcher;
    .restart local v25       #mainIntent:Landroid/content/Intent;
    :cond_2
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 840
    .local v33, toRemove:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    .line 841
    .local v26, manager:Landroid/content/pm/PackageManager;
    const/16 v34, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 843
    .local v8, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v8, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mStopped:Z

    move/from16 v34, v0

    if-nez v34, :cond_8

    .line 844
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    .line 846
    .local v11, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$900(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/util/HashMap;

    move-result-object v6

    .line 848
    .local v6, appMainInfoCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    const/16 v17, 0x0

    .local v17, i:I
    :goto_2
    move/from16 v0, v17

    move v1, v11

    if-ge v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mStopped:Z

    move/from16 v34, v0

    if-nez v34, :cond_3

    .line 849
    move-object v0, v8

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ResolveInfo;

    .line 850
    .local v21, info:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v26

    move-object v1, v6

    move-object/from16 v2, v21

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1000(Landroid/content/pm/PackageManager;Ljava/util/HashMap;Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v7

    .line 852
    .local v7, application:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {v4, v7}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->add(Ljava/lang/Object;)V

    .line 848
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 857
    .end local v7           #application:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v21           #info:Landroid/content/pm/ResolveInfo;
    :cond_3
    const/16 v34, 0x2000

    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v22

    .line 859
    .local v22, installedAppInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-static {}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1100()Ljava/util/HashSet;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/util/HashSet;->clear()V

    .line 860
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/pm/ApplicationInfo;

    .line 861
    .local v27, p:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v34, v0

    if-eqz v34, :cond_4

    .line 862
    invoke-static {}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1100()Ljava/util/HashSet;

    move-result-object v34

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 865
    .end local v27           #p:Landroid/content/pm/ApplicationInfo;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mStopped:Z

    move/from16 v34, v0

    if-nez v34, :cond_8

    .line 866
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/twlauncher/LauncherModel;->loadAppToDatabase(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v14

    .line 867
    .local v14, cursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1200(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/UserFolderModel;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/sec/android/app/twlauncher/UserFolderModel;->clear()V

    .line 868
    if-eqz v14, :cond_8

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v34

    if-lez v34, :cond_8

    .line 870
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 872
    :cond_6
    const/16 v34, 0x0

    move-object v0, v14

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 873
    .local v19, id:J
    const/16 v34, 0x1

    move-object v0, v14

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 874
    .local v28, pageNum:I
    const/16 v34, 0x2

    move-object v0, v14

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 875
    .local v9, cellNum:I
    const/16 v34, 0x4

    move-object v0, v14

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 876
    .local v32, title:Ljava/lang/String;
    const/16 v34, 0x5

    move-object v0, v14

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 877
    .local v15, defaultSort:I
    const/16 v34, 0x7

    move-object v0, v14

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 878
    .local v29, parentId:J
    const/16 v34, 0x3

    move-object v0, v14

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v34

    if-eqz v34, :cond_9

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1200(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/UserFolderModel;

    move-result-object v34

    const/16 v35, 0x1

    move-object/from16 v0, v34

    move-wide/from16 v1, v19

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/UserFolderModel;->getUserFolderInfo(JZ)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v16

    .line 881
    .local v16, fInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    move-object/from16 v0, v16

    move/from16 v1, v28

    move v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setNormalModeInfo(II)V

    .line 882
    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 883
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->assignNormalToEdit()V

    .line 884
    move-object/from16 v0, v16

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setDefaultSort(I)V

    .line 885
    const/16 v34, 0x6

    move-object v0, v14

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    move-object/from16 v0, v16

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setCreateTime(J)V

    .line 886
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->markAsClean()V

    .line 887
    const-string v34, "DebugPlacement Folder"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Loaded folder "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    .end local v16           #fInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :goto_4
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v34

    if-eqz v34, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mStopped:Z

    move/from16 v34, v0

    if-eqz v34, :cond_6

    .line 966
    :cond_7
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 971
    .end local v6           #appMainInfoCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    .end local v9           #cellNum:I
    .end local v11           #count:I
    .end local v14           #cursor:Landroid/database/Cursor;
    .end local v15           #defaultSort:I
    .end local v17           #i:I
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v19           #id:J
    .end local v22           #installedAppInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v28           #pageNum:I
    .end local v29           #parentId:J
    .end local v32           #title:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mStopped:Z

    move/from16 v34, v0

    if-nez v34, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$800(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    move-result-object v34

    move-object/from16 v0, v34

    move-object v1, v4

    if-ne v0, v1, :cond_11

    .line 972
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_10

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 973
    .local v31, str:Ljava/lang/String;
    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeAppToDatabase(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    .line 889
    .end local v31           #str:Ljava/lang/String;
    .restart local v6       #appMainInfoCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    .restart local v9       #cellNum:I
    .restart local v11       #count:I
    .restart local v14       #cursor:Landroid/database/Cursor;
    .restart local v15       #defaultSort:I
    .restart local v17       #i:I
    .restart local v19       #id:J
    .restart local v22       #installedAppInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v28       #pageNum:I
    .restart local v29       #parentId:J
    .restart local v32       #title:Ljava/lang/String;
    :cond_9
    const/16 v34, 0x3

    move-object v0, v14

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    .line 891
    .local v10, cn:Landroid/content/ComponentName;
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 892
    .restart local v7       #application:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    if-eqz v7, :cond_b

    .line 893
    move-wide/from16 v0, v19

    move-object v2, v7

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 894
    move-object v0, v7

    move/from16 v1, v28

    move v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setNormalModeInfo(II)V

    .line 895
    move-object v0, v7

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setParentId(J)V

    .line 896
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->assignNormalToEdit()V

    .line 897
    invoke-virtual {v7, v15}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setDefaultSort(I)V

    .line 901
    if-nez v32, :cond_a

    .line 902
    move-object/from16 v0, v24

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateAppToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I

    .line 905
    :cond_a
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->markAsClean()V

    .line 907
    const-string v34, "Launcher.LauncherModel"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "ApplicationInfo title="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " page="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " cell="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 914
    :cond_b
    invoke-virtual/range {v26 .. v26}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v23

    .line 916
    .local v23, isSafeMode:Z
    if-nez v23, :cond_f

    move-object v0, v10

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->isStoredExternalStorageUnmounted(Landroid/content/ComponentName;Landroid/content/Context;)Z

    move-result v34

    if-nez v34, :cond_c

    move-object v0, v10

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->isStoredExternalStorageMounted(Landroid/content/ComponentName;Landroid/content/Context;)Z

    move-result v34

    if-eqz v34, :cond_f

    .line 920
    :cond_c
    const-string v34, "Launcher.LauncherModel"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "[loadAllAppsByBatch] isStoredExternalStorage - cn : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", title : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    new-instance v5, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-direct {v5}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>()V

    .line 925
    .local v5, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    move-object v0, v5

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setParentId(J)V

    .line 926
    move-wide/from16 v0, v19

    move-object v2, v5

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 927
    move-object v0, v5

    move/from16 v1, v28

    move v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setNormalModeInfo(II)V

    .line 928
    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->assignNormalToEdit()V

    .line 929
    invoke-virtual {v5, v15}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setDefaultSort(I)V

    .line 930
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object v1, v5

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    .line 931
    const/high16 v34, 0x1020

    move-object v0, v5

    move-object v1, v10

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 933
    const/16 v34, 0x0

    move-object v0, v5

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setSystemApp(Z)V

    .line 934
    if-nez v32, :cond_e

    .line 935
    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v34

    move-object v0, v5

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 939
    :goto_6
    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f0200e8

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v34

    move-object/from16 v0, v34

    move-object v1, v5

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 943
    const-wide/16 v12, 0x0

    .line 944
    .local v12, createTime:J
    sget v34, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v35, 0x9

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_d

    .line 946
    :try_start_0
    move-object v0, v5

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, 0x2000

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v34

    move-object/from16 v0, v34

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide v12, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 953
    :cond_d
    :goto_7
    invoke-virtual {v5, v12, v13}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setCreateTime(J)V

    .line 954
    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->markAsClean()V

    .line 956
    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 937
    .end local v12           #createTime:J
    :cond_e
    move-object v0, v5

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 958
    .end local v5           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_f
    const-string v34, "Launcher.LauncherModel"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "ApplicationsLoader-run() - (toRemove) - cn : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v34

    invoke-interface/range {v33 .. v34}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 975
    .end local v6           #appMainInfoCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    .end local v7           #application:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v9           #cellNum:I
    .end local v10           #cn:Landroid/content/ComponentName;
    .end local v11           #count:I
    .end local v14           #cursor:Landroid/database/Cursor;
    .end local v15           #defaultSort:I
    .end local v17           #i:I
    .end local v19           #id:J
    .end local v22           #installedAppInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v23           #isSafeMode:Z
    .end local v28           #pageNum:I
    .end local v29           #parentId:J
    .end local v32           #title:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    invoke-static/range {v34 .. v35}, Lcom/sec/android/app/twlauncher/LauncherModel;->access$1302(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z

    .line 976
    new-instance v34, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader$1;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader$1;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;Lcom/sec/android/app/twlauncher/Launcher;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 986
    .end local v18           #i$:Ljava/util/Iterator;
    :goto_8
    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mRunning:Z

    goto/16 :goto_1

    .line 984
    :cond_11
    const-string v34, "Launcher.LauncherModel"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "  ----> applications loader stopped ("

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mId:I

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ")"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 949
    .restart local v5       #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v6       #appMainInfoCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    .restart local v7       #application:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v9       #cellNum:I
    .restart local v10       #cn:Landroid/content/ComponentName;
    .restart local v11       #count:I
    .restart local v12       #createTime:J
    .restart local v14       #cursor:Landroid/database/Cursor;
    .restart local v15       #defaultSort:I
    .restart local v17       #i:I
    .restart local v18       #i$:Ljava/util/Iterator;
    .restart local v19       #id:J
    .restart local v22       #installedAppInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v23       #isSafeMode:Z
    .restart local v28       #pageNum:I
    .restart local v29       #parentId:J
    .restart local v32       #title:Ljava/lang/String;
    :catch_0
    move-exception v34

    goto/16 :goto_7
.end method

.method stop()V
    .locals 1

    .prologue
    .line 812
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationsLoader;->mStopped:Z

    .line 813
    return-void
.end method
