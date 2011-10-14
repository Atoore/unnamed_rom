.class Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;
.super Ljava/lang/Object;
.source "AddWidgetDialog.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/AddWidgetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 555
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 14
    .parameter "aView"

    .prologue
    const/4 v11, 0x0

    const/4 v13, 0x1

    .line 557
    instance-of v10, p1, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;

    if-nez v10, :cond_0

    move v10, v11

    .line 601
    :goto_0
    return v10

    .line 560
    :cond_0
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-static {v10}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/Launcher;->isAppWidgetPreviewVisible()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 561
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-static {v10}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v10

    invoke-virtual {v10, v11}, Lcom/sec/android/app/twlauncher/Launcher;->showWidgetMessage(Z)V

    move v10, v13

    .line 562
    goto :goto_0

    .line 565
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;

    move-object v3, v0

    .line 566
    .local v3, item:Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->getDragView()Landroid/view/View;

    move-result-object v7

    .line 568
    .local v7, view:Landroid/view/View;
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->setPhantom()V

    .line 570
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->isSamsungAppWidget()Z

    move-result v10

    if-nez v10, :cond_3

    .line 571
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->getInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 572
    .local v2, info:Landroid/appwidget/AppWidgetProviderInfo;
    const/4 v4, 0x0

    .line 573
    .local v4, itemInfo:Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;
    iget-object v10, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.sec.android.widgetapp"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 574
    new-instance v4, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;

    .end local v4           #itemInfo:Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-static {v10}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/sec/android/app/twlauncher/Launcher;->getWidgetMultipleSize(Landroid/appwidget/AppWidgetProviderInfo;)Lcom/sec/android/app/twlauncher/MultipleSize;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/MultipleSize;->toLong()J

    move-result-wide v10

    iget-object v12, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-static {v12}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v12

    invoke-virtual {v12, v2}, Lcom/sec/android/app/twlauncher/Launcher;->loadSupportCellSizes(Landroid/appwidget/AppWidgetProviderInfo;)[Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v2, v10, v11, v12}, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;J[Ljava/lang/String;)V

    .line 579
    .restart local v4       #itemInfo:Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;
    :goto_1
    new-instance v1, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-direct {v1, v4}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 580
    .local v1, dragInfo:Lcom/sec/android/app/twlauncher/LauncherDragInfo;
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    iget-object v10, v10, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-interface {v10, v7, v11, v1, v13}, Lcom/sec/android/app/twlauncher/DragController;->startDragFromView(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    .line 582
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-static {v10}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v10

    iget v11, v2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v12, v2, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/twlauncher/Workspace;->updateDragInfo(II)V

    .end local v2           #info:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v4           #itemInfo:Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;
    :goto_2
    move v10, v13

    .line 601
    goto :goto_0

    .line 577
    .end local v1           #dragInfo:Lcom/sec/android/app/twlauncher/LauncherDragInfo;
    .restart local v2       #info:Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v4       #itemInfo:Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;
    :cond_2
    new-instance v4, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;

    .end local v4           #itemInfo:Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;
    invoke-direct {v4, v2}, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    .restart local v4       #itemInfo:Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;
    goto :goto_1

    .line 584
    .end local v2           #info:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v4           #itemInfo:Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;
    :cond_3
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->getSamsungAppWidgetInfo()Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    move-result-object v5

    .line 585
    .local v5, samsungItem:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-static {v10}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/Launcher;->getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v6

    .line 587
    .local v6, samsungManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->allocWidgetId()J

    move-result-wide v8

    .line 589
    .local v8, widgetId:J
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v5, v8, v9}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->makeSamsungWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;J)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-result-object v2

    .line 592
    .local v2, info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    new-instance v1, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-direct {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 593
    .restart local v1       #dragInfo:Lcom/sec/android/app/twlauncher/LauncherDragInfo;
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    iget-object v10, v10, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    const/4 v12, 0x2

    invoke-interface {v10, v7, v11, v1, v12}, Lcom/sec/android/app/twlauncher/DragController;->startDragFromView(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    .line 596
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$2;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-static {v10}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v10

    invoke-virtual {v5, v13}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->getWidth(I)I

    move-result v11

    invoke-virtual {v5, v13}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->getHeight(I)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/twlauncher/Workspace;->updateDragInfo(II)V

    goto :goto_2
.end method
