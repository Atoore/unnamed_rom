.class Lcom/sec/android/app/twlauncher/AppShortcutZone$3;
.super Ljava/lang/Object;
.source "AppShortcutZone.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/AppShortcutZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V
    .locals 0
    .parameter

    .prologue
    .line 661
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 19
    .parameter "view"

    .prologue
    const/16 v18, 0x1

    const/4 v9, 0x0

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-object v5, v0

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$100(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v5

    if-nez v5, :cond_0

    .line 667
    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    move/from16 v5, v18

    .line 699
    :goto_0
    return v5

    .line 671
    :cond_0
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    move v5, v0

    if-eqz v5, :cond_1

    move-object/from16 v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/MenuItemView;->isPhantom()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v9

    .line 672
    goto :goto_0

    .line 677
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    .line 678
    .local v15, tag:Ljava/lang/Object;
    if-eqz v15, :cond_2

    instance-of v5, v15, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v5, :cond_2

    .line 679
    move-object v0, v15

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v11, v0

    .line 680
    .local v11, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-object v5, v0

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$100(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v13

    .line 681
    .local v13, mode:I
    packed-switch v13, :pswitch_data_0

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-object v5, v0

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$100(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->closeAllApplications()V

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-object v5, v0

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$300(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/DragController;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-object v6, v0

    new-instance v7, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-direct {v7, v11}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v6

    move-object v3, v7

    move/from16 v4, v18

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/DragController;->startDragFromView(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-object v5, v0

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$100(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->reqExtStartDrag(Landroid/view/View;)Z

    .end local v11           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v13           #mode:I
    :cond_2
    :goto_1
    move/from16 v5, v18

    .line 699
    goto :goto_0

    .line 683
    .restart local v11       #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v13       #mode:I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-object v5, v0

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$100(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/DragLayer;->getLastTouchPoint()Landroid/graphics/PointF;

    move-result-object v14

    .line 684
    .local v14, p:Landroid/graphics/PointF;
    iget v5, v14, Landroid/graphics/PointF;->x:F

    float-to-int v5, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v12, v5, v6

    .line 685
    .local v12, left:I
    iget v5, v14, Landroid/graphics/PointF;->y:F

    float-to-int v5, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v16, v5, v6

    .line 686
    .local v16, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->indexOfChild(Landroid/view/View;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$202(Lcom/sec/android/app/twlauncher/AppShortcutZone;I)I

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-object v5, v0

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->access$300(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/DragController;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;->this$0:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-object v7, v0

    new-instance v8, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-direct {v8, v11}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    new-instance v10, Landroid/graphics/PointF;

    int-to-float v6, v12

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    move-object v0, v10

    move v1, v6

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v6, p1

    invoke-interface/range {v5 .. v10}, Lcom/sec/android/app/twlauncher/DragController;->startDragFromPosition(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;ILandroid/graphics/PointF;)V

    goto :goto_1

    .line 681
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
