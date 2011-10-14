.class Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;
.super Landroid/os/Handler;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DesktopBinder"
.end annotation


# instance fields
.field private mAppAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

.field private final mAppWidgets:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

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

.field private final mSAppWidgets:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mShortcuts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSkippedApplications:Z

.field public mTerminate:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .parameter "launcher"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/twlauncher/Launcher;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, shortcuts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ItemInfo;>;"
    .local p3, appWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;>;"
    .local p4, sappWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;>;"
    const/4 v6, 0x0

    .line 6172
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 6166
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mSkippedApplications:Z

    .line 6168
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mTerminate:Z

    .line 6174
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mLauncher:Ljava/lang/ref/WeakReference;

    .line 6175
    iput-object p2, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mShortcuts:Ljava/util/ArrayList;

    .line 6178
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/Launcher;->access$1400(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v1

    .line 6179
    .local v1, currentScreen:I
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 6180
    .local v4, size:I
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mAppWidgets:Ljava/util/LinkedList;

    .line 6182
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 6183
    .local v5, ssize:I
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mSAppWidgets:Ljava/util/LinkedList;

    .line 6185
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 6186
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 6187
    .local v0, appWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    iget v6, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    if-ne v6, v1, :cond_0

    .line 6188
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mAppWidgets:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 6185
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6190
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mAppWidgets:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    .line 6194
    .end local v0           #appWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v5, :cond_3

    .line 6195
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 6196
    .local v3, sappWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    iget v6, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    if-ne v6, v1, :cond_2

    .line 6197
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mSAppWidgets:Ljava/util/LinkedList;

    invoke-virtual {v6, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 6194
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 6199
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mSAppWidgets:Ljava/util/LinkedList;

    invoke-virtual {v6, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_3

    .line 6204
    .end local v3           #sappWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    :cond_3
    const-string v6, "Launcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "------> binding "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " items "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " widgets "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " samsung app widgets"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6208
    return-void
.end method


# virtual methods
.method public continueBindingItems(I)V
    .locals 3
    .parameter "startPos"

    .prologue
    .line 6222
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------> continue binding items at offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6223
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mShortcuts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6224
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 6260
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/Launcher;

    .line 6261
    .local v0, launcher:Lcom/sec/android/app/twlauncher/Launcher;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mTerminate:Z

    if-eqz v1, :cond_1

    .line 6287
    :cond_0
    :goto_0
    return-void

    .line 6265
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 6267
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mShortcuts:Ljava/util/ArrayList;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, p0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->access$5800(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/ArrayList;II)V

    goto :goto_0

    .line 6271
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mAppAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-static {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$5900(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V

    goto :goto_0

    .line 6275
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mAppWidgets:Ljava/util/LinkedList;

    invoke-static {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$6000(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/LinkedList;)V

    goto :goto_0

    .line 6279
    :pswitch_3
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->isWidgetLoaded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6280
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mSAppWidgets:Ljava/util/LinkedList;

    invoke-static {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->access$6100(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/LinkedList;)V

    goto :goto_0

    .line 6282
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->startBindingSamsungAppWidgets()V

    goto :goto_0

    .line 6265
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public skippedApplications()Z
    .locals 1

    .prologue
    .line 6255
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mTerminate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mSkippedApplications:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startBindingAppWidgets()V
    .locals 1

    .prologue
    .line 6244
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6245
    return-void
.end method

.method public startBindingApplications()Z
    .locals 2

    .prologue
    .line 6232
    const/4 v0, 0x0

    .line 6233
    .local v0, started:Z
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->access$3300()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->getApplicationsAdapter()Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mAppAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 6234
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mAppAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-nez v1, :cond_0

    .line 6235
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mSkippedApplications:Z

    .line 6240
    :goto_0
    return v0

    .line 6237
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 6238
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startBindingItems()V
    .locals 4

    .prologue
    .line 6212
    const-string v1, "Launcher"

    const-string v2, "------> start binding items"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6215
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/Launcher;

    .line 6216
    .local v0, launcher:Lcom/sec/android/app/twlauncher/Launcher;
    if-eqz v0, :cond_0

    .line 6217
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mShortcuts:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->mShortcuts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v0, p0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->access$5800(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;Ljava/util/ArrayList;II)V

    .line 6218
    :cond_0
    return-void
.end method

.method public startBindingSamsungAppWidgets()V
    .locals 1

    .prologue
    .line 6248
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$DesktopBinder;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6249
    return-void
.end method
