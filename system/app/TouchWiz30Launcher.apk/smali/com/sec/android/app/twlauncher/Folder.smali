.class public Lcom/sec/android/app/twlauncher/Folder;
.super Landroid/widget/LinearLayout;
.source "Folder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/sec/android/app/twlauncher/DragSource;


# instance fields
.field protected mCloseButton:Landroid/widget/Button;

.field protected mContent:Landroid/widget/AbsListView;

.field protected mDragItem:Lcom/sec/android/app/twlauncher/ApplicationInfo;

.field protected mDragger:Lcom/sec/android/app/twlauncher/DragController;

.field protected mFolderText:Landroid/widget/TextView;

.field protected mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

.field protected mLauncher:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Folder;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 69
    return-void
.end method


# virtual methods
.method bind(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mCloseButton:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/FolderInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 193
    return-void
.end method

.method close()V
    .locals 3

    .prologue
    .line 179
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sec/android/app/twlauncher/FolderInfo;->opened:Z

    .line 180
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 181
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 183
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 188
    :cond_0
    return-void
.end method

.method getContentAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ListAdapter;

    return-object p0
.end method

.method getInfo()Lcom/sec/android/app/twlauncher/FolderInfo;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    return-object v0
.end method

.method notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/BaseAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 159
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Folder;->close()V

    .line 112
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;FFFFZLjava/lang/Object;)V
    .locals 1
    .parameter "target"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "success"
    .parameter "dragInfo"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->reqExtEndDrag()Z

    .line 141
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 75
    const v0, 0x7f060035

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mContent:Landroid/widget/AbsListView;

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mContent:Landroid/widget/AbsListView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setId(I)V

    .line 87
    const v0, 0x7f060034

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mCloseButton:Landroid/widget/Button;

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mCloseButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mCloseButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 92
    invoke-static {}, Lcom/sec/android/app/twlauncher/BuildLocaleChecker;->getBuildLocale()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 93
    const v0, 0x7f060048

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mFolderText:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mFolderText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mFolderText:Landroid/widget/TextView;

    new-instance v1, Lcom/sec/android/app/twlauncher/Folder$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/Folder$1;-><init>(Lcom/sec/android/app/twlauncher/Folder;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 106
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 107
    .local v0, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->startActivitySafely(Landroid/content/Intent;)V

    .line 108
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    .line 121
    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    const/4 v1, 0x0

    .line 131
    :goto_0
    return v1

    .line 125
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 126
    .local v0, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    new-instance v2, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-direct {v2, v0}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    invoke-interface {v1, p2, p0, v2, v3}, Lcom/sec/android/app/twlauncher/DragController;->startDragFromView(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    .line 128
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Folder;->close()V

    .line 129
    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mDragItem:Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 130
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sec/android/app/twlauncher/Workspace;->reqExtStartDrag(Landroid/view/View;)Z

    move v1, v3

    .line 131
    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Folder;->close()V

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Folder;->mInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->showRenameFolderDialog(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method onOpen()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 176
    return-void
.end method

.method public onPreDragStart(Landroid/view/View;I)V
    .locals 1
    .parameter "view"
    .parameter "dragAction"

    .prologue
    .line 196
    if-nez p2, :cond_0

    .line 197
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 199
    :cond_0
    return-void
.end method

.method setContentAdapter(Landroid/widget/BaseAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Folder;->mContent:Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/Adapter;)V

    .line 151
    return-void
.end method

.method public setDragger(Lcom/sec/android/app/twlauncher/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Folder;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    .line 136
    return-void
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Folder;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 163
    return-void
.end method
