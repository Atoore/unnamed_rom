.class Lcom/sec/android/app/twlauncher/AddWidgetDialog$1;
.super Ljava/lang/Object;
.source "AddWidgetDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 522
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$1;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "view"

    .prologue
    .line 525
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$1;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->isAppWidgetPreviewVisible()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 526
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$1;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/Launcher;->showWidgetMessage(Z)V

    .line 552
    :goto_0
    return-void

    .line 530
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;

    move-object v3, v0

    .line 531
    .local v3, item:Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->isSamsungAppWidget()Z

    move-result v9

    if-nez v9, :cond_1

    .line 532
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->getInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 533
    .local v1, i:Landroid/appwidget/AppWidgetProviderInfo;
    new-instance v4, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;

    invoke-direct {v4, v1}, Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 534
    .local v4, itemInfo:Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$1;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$1;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-static {v10}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/Workspace;->findAllVacantCellsFromModel()Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Lcom/sec/android/app/twlauncher/Launcher;->addNewDroppedAppWidget(Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 549
    .end local v1           #i:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v4           #itemInfo:Lcom/sec/android/app/twlauncher/AddWidgetItemInfo;
    :goto_1
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$1;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$108(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)I

    goto :goto_0

    .line 537
    :cond_1
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AddWidgetDialogItem;->getSamsungAppWidgetInfo()Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    move-result-object v5

    .line 538
    .local v5, samsungItem:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$1;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v6

    .line 540
    .local v6, samsungManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->allocWidgetId()J

    move-result-wide v7

    .line 542
    .local v7, widgetId:J
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$1;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v5, v7, v8}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->makeSamsungWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;J)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-result-object v2

    .line 545
    .local v2, info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$1;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-static {v9}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/AddWidgetDialog$1;->this$0:Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    invoke-static {v10}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->access$000(Lcom/sec/android/app/twlauncher/AddWidgetDialog;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/Workspace;->findAllVacantCellsFromModel()Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v10

    invoke-virtual {v9, v2, v10}, Lcom/sec/android/app/twlauncher/Launcher;->addNewDroppedSamsungWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    goto :goto_1
.end method
