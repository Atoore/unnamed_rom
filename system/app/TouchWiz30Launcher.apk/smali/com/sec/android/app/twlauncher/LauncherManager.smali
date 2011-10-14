.class public Lcom/sec/android/app/twlauncher/LauncherManager;
.super Landroid/widget/LinearLayout;
.source "LauncherManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/sec/android/app/twlauncher/DragSource;
.implements Lcom/sec/android/app/twlauncher/DropTarget;
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;
.implements Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/LauncherManager$closeCb;
    }
.end annotation


# instance fields
.field private isDpadCenterLongPress:Z

.field private mAddFolderOffsetX:F

.field private mAddPageOffsetX:F

.field private mDlgResRunnable:Ljava/lang/Runnable;

.field private mEmptyFolderMenu:Landroid/view/MenuItem;

.field private mEmptyPageMenu:Landroid/view/MenuItem;

.field private mFolderOffsetY:F

.field private mItemCountColor:I

.field private mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field private mLauncherManagerBackground:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

.field private mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

.field private mMakeFolderView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

.field private mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

.field private mMakePageView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

.field private mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPreviewIconSize:F

.field private mPreviewIconXGap:F

.field private mPreviewIconYGap:F

.field private mPreviewIconYOffset:F

.field private mRes:Landroid/content/res/Resources;

.field private mShowHelp:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mDlgResRunnable:Ljava/lang/Runnable;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mShowHelp:Z

    .line 53
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncherManagerBackground:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    .line 76
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mEmptyFolderMenu:Landroid/view/MenuItem;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mEmptyPageMenu:Landroid/view/MenuItem;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->isDpadCenterLongPress:Z

    .line 84
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->init()V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mDlgResRunnable:Ljava/lang/Runnable;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mShowHelp:Z

    .line 53
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncherManagerBackground:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    .line 76
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mEmptyFolderMenu:Landroid/view/MenuItem;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mEmptyPageMenu:Landroid/view/MenuItem;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->isDpadCenterLongPress:Z

    .line 89
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->init()V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/LauncherManager;)Lcom/sec/android/app/twlauncher/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    return-object v0
.end method

.method private addMenuItem(Lcom/sec/android/app/twlauncher/UserFolderItemView;Landroid/view/MenuItem;)V
    .locals 4
    .parameter "aItemView"
    .parameter "aMenuItem"

    .prologue
    .line 155
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 159
    .local v2, tag:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 162
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v3, :cond_0

    .line 165
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object v1, v0

    .line 166
    .local v1, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v1, p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private closeAllOpenFolderViews()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 681
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->setVisibility(I)V

    .line 682
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->setVisibility(I)V

    .line 683
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 684
    .local v0, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setOpened(Z)V

    .line 685
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 686
    .restart local v0       #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setOpened(Z)V

    .line 687
    return-void
.end method

.method private ensureAllIsSaved(Ljava/lang/Runnable;)Z
    .locals 5
    .parameter "aDlgResRunnable"

    .prologue
    const/4 v4, 0x0

    .line 242
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 243
    .local v0, folderItems:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 245
    .local v1, pageItems:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mDlgResRunnable:Ljava/lang/Runnable;

    .line 246
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v2

    if-lez v2, :cond_0

    .line 247
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    move v2, v4

    .line 259
    :goto_0
    return v2

    .line 250
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v2

    if-lez v2, :cond_1

    .line 251
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    move v2, v4

    .line 252
    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v2

    if-lez v2, :cond_2

    .line 255
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    move v2, v4

    .line 256
    goto :goto_0

    .line 258
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mDlgResRunnable:Ljava/lang/Runnable;

    .line 259
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getChildViewLocationF(Landroid/view/View;)Landroid/graphics/PointF;
    .locals 5
    .parameter "aView"

    .prologue
    .line 479
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 480
    .local v0, pos:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 481
    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1
.end method

.method private getDesiredY()I
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->getContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mAddFolderOffsetX:F

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mAddPageOffsetX:F

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mFolderOffsetY:F

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPreviewIconSize:F

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPreviewIconXGap:F

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPreviewIconYGap:F

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPreviewIconYOffset:F

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f070015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mItemCountColor:I

    .line 107
    return-void
.end method

.method private openFolderView(Landroid/view/View;)V
    .locals 4
    .parameter "aView"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 458
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    :goto_0
    return-void

    .line 461
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->closeAllOpenFolderViews()V

    .line 463
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    if-ne p1, v1, :cond_1

    .line 464
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->setVisibility(I)V

    .line 465
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 466
    .local v0, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setOpened(Z)V

    .line 467
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncAllViews()V

    .line 469
    .end local v0           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    if-ne p1, v1, :cond_2

    .line 470
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->setVisibility(I)V

    .line 471
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 472
    .restart local v0       #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setOpened(Z)V

    .line 473
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->syncAllViews()V

    .line 475
    .end local v0           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->requestLayout()V

    goto :goto_0
.end method

.method private removeMenuItem(Lcom/sec/android/app/twlauncher/UserFolderItemView;Landroid/view/MenuItem;)V
    .locals 4
    .parameter "aItemView"
    .parameter "aMenuItem"

    .prologue
    .line 140
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 144
    .local v2, tag:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 147
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v3, :cond_0

    .line 150
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object v1, v0

    .line 151
    .local v1, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v1, p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->removeFolderView(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private unPhanItemsInFolderIcon(Lcom/sec/android/app/twlauncher/UserFolderItemView;)V
    .locals 12
    .parameter "aFolderIcon"

    .prologue
    const/4 v11, 0x0

    .line 485
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v7

    .line 486
    .local v7, tag:Ljava/lang/Object;
    if-eqz v7, :cond_1

    instance-of v9, v7, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v9, :cond_1

    .line 487
    move-object v0, v7

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object v6, v0

    .line 488
    .local v6, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherManager;->getChildViewLocationF(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v4

    .line 489
    .local v4, folderPosition:Landroid/graphics/PointF;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getSize()I

    move-result v9

    if-ge v5, v9, :cond_1

    .line 490
    invoke-virtual {v6, v5}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getItemAt(I)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v1

    .line 491
    .local v1, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScreenIndex()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 494
    .local v3, curMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v9, v1, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 495
    .local v8, tempView:Lcom/sec/android/app/twlauncher/MenuItemView;
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v9, v8, v4, v11, v11}, Lcom/sec/android/app/twlauncher/MenuManager;->unPhanToMMWithAnim(Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Ljava/util/ArrayList;Lcom/sec/android/app/twlauncher/UnPhanAnimInfo$UnPhanAnimInfoLstnr;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 496
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v2

    .line 497
    .local v2, asz:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    if-eqz v2, :cond_0

    .line 498
    invoke-virtual {v2, v8, v4, v11, v11}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->unPhanToASZWithAnim(Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Ljava/util/ArrayList;Lcom/sec/android/app/twlauncher/UnPhanAnimInfo$UnPhanAnimInfoLstnr;)Z

    .line 489
    .end local v2           #asz:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 504
    .end local v1           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v3           #curMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    .end local v4           #folderPosition:Landroid/graphics/PointF;
    .end local v5           #i:I
    .end local v6           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .end local v8           #tempView:Lcom/sec/android/app/twlauncher/MenuItemView;
    :cond_1
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 656
    const/4 v0, 0x0

    return v0
.end method

.method public close(I)Z
    .locals 2
    .parameter "aNewMode"

    .prologue
    .line 521
    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherManager$closeCb;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/twlauncher/LauncherManager$closeCb;-><init>(Lcom/sec/android/app/twlauncher/LauncherManager;I)V

    .line 522
    .local v0, r:Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->ensureAllIsSaved(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 523
    const/4 v1, 0x0

    .line 527
    :goto_0
    return v1

    .line 525
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->setVisibility(I)V

    .line 526
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->onDismiss(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;)V

    .line 527
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public dialogRes(IZZ)V
    .locals 5
    .parameter "aId"
    .parameter "aYes"
    .parameter "aAnimate"

    .prologue
    const/4 v4, 0x0

    .line 263
    if-eqz p2, :cond_2

    .line 264
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v1

    .line 265
    .local v1, mMgr:Lcom/sec/android/app/twlauncher/MenuManager;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 266
    .local v0, folderItems:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 268
    .local v2, pageItems:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    if-eqz v1, :cond_0

    .line 269
    packed-switch p1, :pswitch_data_0

    .line 281
    :goto_0
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->save()Z

    .line 287
    .end local v0           #folderItems:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .end local v1           #mMgr:Lcom/sec/android/app/twlauncher/MenuManager;
    .end local v2           #pageItems:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mDlgResRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_1

    .line 288
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mDlgResRunnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 289
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mDlgResRunnable:Ljava/lang/Runnable;

    .line 291
    :cond_1
    return-void

    .line 271
    .restart local v0       #folderItems:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .restart local v1       #mMgr:Lcom/sec/android/app/twlauncher/MenuManager;
    .restart local v2       #pageItems:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :pswitch_0
    invoke-virtual {v1, v4, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->createFolderWithFolderItems(Landroid/view/View;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Landroid/view/View;

    goto :goto_0

    .line 274
    :pswitch_1
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->createPageWithPageFolderItems(Lcom/sec/android/app/twlauncher/UserFolderInfo;I)V

    goto :goto_0

    .line 277
    :pswitch_2
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->createPageWithPageFolderItems(Lcom/sec/android/app/twlauncher/UserFolderInfo;I)V

    .line 278
    invoke-virtual {v1, v4, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->createFolderWithFolderItems(Landroid/view/View;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Landroid/view/View;

    goto :goto_0

    .line 284
    .end local v0           #folderItems:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .end local v1           #mMgr:Lcom/sec/android/app/twlauncher/MenuManager;
    .end local v2           #pageItems:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_2
    invoke-virtual {p0, p3}, Lcom/sec/android/app/twlauncher/LauncherManager;->emptyNewFolder(Z)V

    .line 285
    invoke-virtual {p0, p3}, Lcom/sec/android/app/twlauncher/LauncherManager;->emptyPageFolder(Z)V

    goto :goto_1

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 205
    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 12
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 629
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v8

    .line 630
    .local v8, parent:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
    if-nez v8, :cond_0

    move v0, v11

    .line 651
    :goto_0
    return v0

    .line 633
    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 634
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->getHeight()I

    move-result v6

    .line 635
    .local v6, kTotalHeight:I
    neg-int v0, v6

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 636
    invoke-virtual {p1, p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->addTransRefSelf(Landroid/view/View;)V

    .line 639
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 640
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getModeCylinderFactor()F

    move-result v7

    .line 641
    .local v7, launcherMgrF:F
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getFastScrollFactor()F

    move-result v10

    .line 643
    .local v10, scrollF:F
    const/high16 v0, 0x3f80

    const/high16 v1, 0x3f00

    mul-float/2addr v1, v10

    sub-float/2addr v0, v1

    mul-float/2addr v0, v7

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 644
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncherManagerBackground:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncherManagerBackground:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;->getHeight()I

    move-result v0

    sub-int v0, v6, v0

    int-to-float v3, v0

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->getWidth()I

    move-result v0

    int-to-float v4, v0

    int-to-float v5, v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    .line 647
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 649
    invoke-virtual {v8, p1, p0, v11, v11}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->drawChildrenDeep(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/ViewGroup;II)Z

    move-result v9

    .line 650
    .local v9, res:Z
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    move v0, v9

    .line 651
    goto :goto_0
.end method

.method public emptyNewFolder(Z)V
    .locals 1
    .parameter "animateOn"

    .prologue
    .line 535
    if-eqz p1, :cond_0

    .line 536
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->unPhanItemsInFolderIcon(Lcom/sec/android/app/twlauncher/UserFolderItemView;)V

    .line 538
    :cond_0
    new-instance v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->setMakeFolderInfo(Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    .line 539
    return-void
.end method

.method public emptyPageFolder(Z)V
    .locals 1
    .parameter "animateOn"

    .prologue
    .line 595
    if-eqz p1, :cond_0

    .line 596
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->unPhanItemsInFolderIcon(Lcom/sec/android/app/twlauncher/UserFolderItemView;)V

    .line 598
    :cond_0
    new-instance v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->setMakePageInfo(Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    .line 599
    return-void
.end method

.method public forceClear(Z)V
    .locals 0
    .parameter "animate"

    .prologue
    .line 294
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherManager;->emptyNewFolder(Z)V

    .line 295
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherManager;->emptyPageFolder(Z)V

    .line 296
    return-void
.end method

.method public getAppMap(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 733
    .local p1, aAppMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 734
    new-instance p1, Ljava/util/HashMap;

    .end local p1           #aAppMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 737
    .restart local p1       #aAppMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 738
    .local v0, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getAppMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    .line 739
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 740
    .restart local v0       #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getAppMap(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    .line 741
    return-object p1
.end method

.method public getDropHitRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "outRect"

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 210
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->getHeight()I

    move-result v0

    .line 211
    .local v0, height:I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 212
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 213
    return-void
.end method

.method public getMakeFolderInfo()Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .locals 2

    .prologue
    .line 576
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 577
    .local v0, tag:Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-nez v1, :cond_1

    .line 578
    :cond_0
    const/4 v1, 0x0

    .line 580
    .end local v0           #tag:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v0       #tag:Ljava/lang/Object;
    :cond_1
    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .end local v0           #tag:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getMakePageInfo()Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .locals 2

    .prologue
    .line 584
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 585
    .local v0, tag:Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-nez v1, :cond_1

    .line 586
    :cond_0
    const/4 v1, 0x0

    .line 588
    .end local v0           #tag:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v0       #tag:Ljava/lang/Object;
    :cond_1
    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .end local v0           #tag:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public handleBackKey()Z
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->onDismiss(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;)V

    .line 235
    const/4 v0, 0x1

    .line 237
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDropTarget(Ljava/lang/Object;)Z
    .locals 1
    .parameter "dropTarget"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public help1DlgRes(Z)V
    .locals 3
    .parameter "aDontShow"

    .prologue
    .line 179
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 185
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 183
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "dontshowhelp1"

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 184
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 183
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public invalidate()V
    .locals 0

    .prologue
    .line 217
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 218
    return-void
.end method

.method public isMakeFolderOrPageOpened()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 746
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 747
    .local v0, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 754
    :goto_0
    return v1

    .line 750
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 751
    .restart local v0       #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 752
    goto :goto_0

    .line 754
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "aView"

    .prologue
    .line 440
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherManager;->openCloseFolderPage(Landroid/view/View;)V

    .line 441
    return-void
.end method

.method public onDismiss(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;)V
    .locals 0
    .parameter "aFolderView"

    .prologue
    .line 676
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->closeAllOpenFolderViews()V

    .line 677
    return-void
.end method

.method public onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 661
    return-void
.end method

.method public onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 669
    return-void
.end method

.method public onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 665
    return-void
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 672
    const/4 v0, 0x0

    return v0
.end method

.method public onDropCompleted(Landroid/view/View;FFFFZLjava/lang/Object;)V
    .locals 23
    .parameter "target"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "success"
    .parameter "dragInfo"

    .prologue
    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/MenuManager;->disableRollNavigation()V

    .line 303
    const/4 v5, 0x0

    .line 304
    .local v5, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    move-object/from16 v0, p7

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 305
    check-cast p7, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    .end local p7
    invoke-virtual/range {p7 .. p7}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v7

    .line 306
    .local v7, dragItemInfo:Lcom/sec/android/app/twlauncher/ItemInfo;
    move-object v0, v7

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 307
    move-object v0, v7

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v5, v0

    .line 310
    .end local v7           #dragItemInfo:Lcom/sec/android/app/twlauncher/ItemInfo;
    :cond_0
    if-nez v5, :cond_3

    .line 368
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->setChildState(I)V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->setChildState(I)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->setDragDropEnabled(Z)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->setDragDropEnabled(Z)V

    .line 372
    if-nez p6, :cond_2

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/MenuManager;->onDragEnd()V

    .line 375
    :cond_2
    return-void

    .line 313
    :cond_3
    const/4 v10, 0x0

    .line 314
    .local v10, folderView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;
    const/4 v11, 0x0

    .line 316
    .local v11, itemView:Lcom/sec/android/app/twlauncher/MenuItemView;
    const/16 v16, 0x0

    .line 317
    .local v16, tempView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    move-object v10, v0

    .line 318
    invoke-virtual {v10, v5}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->getViewForAppInfo(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v16

    .line 319
    if-nez v16, :cond_4

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    move-object v10, v0

    .line 321
    invoke-virtual {v10, v5}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->getViewForAppInfo(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v16

    .line 323
    :cond_4
    if-eqz v16, :cond_1

    .line 326
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 329
    move-object/from16 v0, v16

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    move-object v11, v0

    .line 331
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 332
    .local v14, myRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->getDropHitRect(Landroid/graphics/Rect;)V

    .line 333
    move/from16 v0, p2

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, p3

    float-to-int v0, v0

    move/from16 v19, v0

    move-object v0, v14

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    .line 334
    .local v8, droppedInMe:Z
    if-nez v8, :cond_1

    .line 338
    new-instance v12, Landroid/graphics/PointF;

    sub-float v18, p2, p4

    sub-float v19, p3, p5

    move-object v0, v12

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 339
    .local v12, loc:Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScaledRect()Landroid/graphics/RectF;

    move-result-object v13

    .line 340
    .local v13, mmScaledRect:Landroid/graphics/RectF;
    if-eqz v13, :cond_5

    .line 341
    new-instance v18, Landroid/graphics/RectF;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/twlauncher/MenuManager;->getHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-direct/range {v18 .. v22}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v0, v12

    move-object/from16 v1, v18

    move-object v2, v13

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/twlauncher/SamsungUtils;->mapPtToRect(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v12

    .line 344
    :cond_5
    const/16 v17, 0x1

    .line 346
    .local v17, unPhanRes:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object v1, v11

    move-object v2, v12

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->unPhanToMMWithAnim(Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Ljava/util/ArrayList;Lcom/sec/android/app/twlauncher/UnPhanAnimInfo$UnPhanAnimInfoLstnr;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 356
    :goto_1
    if-eqz v17, :cond_1

    .line 357
    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->getTag()Ljava/lang/Object;

    move-result-object v15

    .line 358
    .local v15, tag:Ljava/lang/Object;
    if-eqz v15, :cond_1

    .line 361
    move-object v0, v15

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 364
    move-object v0, v15

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object v9, v0

    .line 365
    .local v9, folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    const/16 v18, 0x0

    move-object v0, v9

    move-object v1, v5

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->remove(Lcom/sec/android/app/twlauncher/ApplicationInfo;Z)Z

    goto/16 :goto_0

    .line 349
    .end local v9           #folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .end local v15           #tag:Ljava/lang/Object;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v6

    .line 350
    .local v6, asz:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    if-nez v6, :cond_7

    .line 351
    const/16 v17, 0x0

    .line 352
    goto :goto_1

    .line 354
    :cond_7
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v0, v6

    move-object v1, v11

    move-object v2, v12

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->unPhanToASZWithAnim(Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Ljava/util/ArrayList;Lcom/sec/android/app/twlauncher/UnPhanAnimInfo$UnPhanAnimInfoLstnr;)Z

    move-result v17

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 112
    const v0, 0x7f06002e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->setActionListener(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;)V

    .line 115
    const v0, 0x7f060030

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->setActionListener(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;)V

    .line 118
    const v0, 0x7f060031

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderItemView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->setDrawBadgeCountOn(Z)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    const v1, 0x7f0200c6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->setHighlightBitmap(I)V

    .line 127
    const v0, 0x7f060032

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->setDrawBadgeCountOn(Z)V

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    const v1, 0x7f0200c9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->setHighlightBitmap(I)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->setFoldersAllowed(Z)V

    .line 133
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJLcom/sec/android/app/twlauncher/LauncherManagerFolderView;)V
    .locals 0
    .parameter
    .parameter "aView"
    .parameter "aPosition"
    .parameter "aId"
    .parameter "aFolderView"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ",
            "Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 691
    .local p1, aAdapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJLcom/sec/android/app/twlauncher/LauncherManagerFolderView;)Z
    .locals 15
    .parameter
    .parameter "aView"
    .parameter "aPosition"
    .parameter "aId"
    .parameter "aFolderView"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ",
            "Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 695
    .local p1, aAdapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    move v2, v0

    if-nez v2, :cond_0

    .line 696
    const/4 v2, 0x0

    .line 719
    :goto_0
    return v2

    .line 698
    :cond_0
    invoke-virtual/range {p6 .. p6}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->getTag()Ljava/lang/Object;

    move-result-object v12

    .line 699
    .local v12, tag:Ljava/lang/Object;
    if-nez v12, :cond_1

    .line 700
    const/4 v2, 0x0

    goto :goto_0

    .line 702
    :cond_1
    instance-of v2, v12, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-nez v2, :cond_2

    .line 703
    const/4 v2, 0x0

    goto :goto_0

    .line 705
    :cond_2
    move-object/from16 v0, p2

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    move-object v14, v0

    .line 706
    .local v14, view:Lcom/sec/android/app/twlauncher/MenuItemView;
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 707
    .local v8, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v11

    .line 708
    .local v11, mm:Lcom/sec/android/app/twlauncher/MenuManager;
    if-nez v11, :cond_3

    .line 709
    const/4 v2, 0x0

    goto :goto_0

    .line 711
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->setDragDropEnabled(Z)V

    .line 712
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->setDragDropEnabled(Z)V

    .line 713
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/DragLayer;->getLastTouchPoint()Landroid/graphics/PointF;

    move-result-object v10

    .line 714
    .local v10, loc:Landroid/graphics/PointF;
    iget v2, v10, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v9, v2, v3

    .line 715
    .local v9, left:I
    iget v2, v10, Landroid/graphics/PointF;->y:F

    float-to-int v2, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v13, v2, v3

    .line 716
    .local v13, top:I
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v2

    new-instance v5, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-direct {v5, v8}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    const/4 v6, 0x0

    new-instance v7, Landroid/graphics/PointF;

    int-to-float v3, v9

    int-to-float v4, v13

    invoke-direct {v7, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v3, p2

    move-object v4, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/twlauncher/DragLayer;->startDragFromPosition(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;ILandroid/graphics/PointF;)V

    .line 718
    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/MenuManager;->enableRollNavigation()V

    .line 719
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 397
    const/16 v3, 0x17

    if-ne p2, v3, :cond_4

    .line 398
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 399
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->isDpadCenterLongPress:Z

    .line 401
    :cond_0
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->isDpadCenterLongPress:Z

    if-eqz v3, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 402
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->isDpadCenterLongPress:Z

    .line 403
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 404
    .local v2, tag:Ljava/lang/Object;
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object v1, v0

    .line 405
    .local v1, folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    if-ne p1, v3, :cond_1

    .line 406
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->onAddDefaultFolder(Landroid/view/View;)V

    :cond_1
    move v3, v4

    .line 417
    .end local v1           #folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .end local v2           #tag:Ljava/lang/Object;
    :goto_0
    return v3

    .line 410
    :cond_2
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->isDpadCenterLongPress:Z

    if-nez v3, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 411
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherManager;->openCloseFolderPage(Landroid/view/View;)V

    move v3, v4

    .line 412
    goto :goto_0

    :cond_3
    move v3, v4

    .line 415
    goto :goto_0

    :cond_4
    move v3, v5

    .line 417
    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    invoke-direct {v2, v0}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;-><init>(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    invoke-virtual {v1, p1, p0, v2, v3}, Lcom/sec/android/app/twlauncher/DragLayer;->startDragFromView(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    .line 435
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->enableRollNavigation()V

    .line 436
    return v3
.end method

.method public onPreDragStart(Landroid/view/View;I)V
    .locals 1
    .parameter "aView"
    .parameter "aDragAction"

    .prologue
    .line 379
    if-nez p2, :cond_0

    .line 380
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 382
    :cond_0
    return-void
.end method

.method public openCloseFolderPage(Landroid/view/View;)V
    .locals 1
    .parameter "aView"

    .prologue
    .line 421
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->onDismiss(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;)V

    .line 429
    :goto_1
    return-void

    .line 425
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    goto :goto_0

    .line 428
    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherManager;->openFolderView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public removeMissingApps(Ljava/util/HashMap;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 723
    .local p1, aAppMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 725
    .local v1, res:Z
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 726
    .local v0, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->removeMissingApps(Ljava/util/HashMap;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 727
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 728
    .restart local v0       #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->removeMissingApps(Ljava/util/HashMap;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 729
    return v1
.end method

.method public restoreSelf()V
    .locals 2

    .prologue
    .line 446
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 447
    .local v0, info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->openFolderView(Landroid/view/View;)V

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 452
    .restart local v0       #info:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->openFolderView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->getDesiredY()I

    move-result v1

    .line 228
    .local v1, y:I
    sub-int v0, p4, p2

    .line 229
    .local v0, height:I
    add-int v2, v1, v0

    invoke-super {p0, p1, v1, p3, v2}, Landroid/widget/LinearLayout;->setFrame(IIII)Z

    move-result v2

    return v2
.end method

.method public setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 3
    .parameter "aLauncher"

    .prologue
    const/4 v2, 0x0

    .line 385
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/Launcher;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/UserFolderItemView;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    const-string v1, "launchermanager"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPrefs:Landroid/content/SharedPreferences;

    .line 390
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/LauncherManager;->emptyNewFolder(Z)V

    .line 391
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/LauncherManager;->emptyPageFolder(Z)V

    .line 392
    new-instance v0, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020005

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;-><init>(Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mLauncherManagerBackground:Lcom/sec/android/app/twlauncher/GLCanvas$ResourceSurface;

    .line 394
    return-void
.end method

.method public setMakeFolderInfo(Lcom/sec/android/app/twlauncher/UserFolderInfo;)V
    .locals 14
    .parameter "aUserFolderInfo"

    .prologue
    .line 542
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setIsNewDropFolder(Z)V

    .line 544
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0200c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 545
    .local v13, d:Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 546
    .local v4, bitmap:Landroid/graphics/Bitmap;
    instance-of v2, v13, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 547
    move-object v0, v13

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v12, v0

    .line 548
    .local v12, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 553
    .end local v12           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    new-instance v1, Lcom/sec/android/app/twlauncher/FolderDrawable;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    iget v5, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mAddFolderOffsetX:F

    iget v6, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mFolderOffsetY:F

    iget v7, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPreviewIconSize:F

    iget v8, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPreviewIconXGap:F

    iget v9, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPreviewIconYGap:F

    iget v10, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPreviewIconYOffset:F

    iget v11, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mItemCountColor:I

    move-object v3, p1

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/app/twlauncher/FolderDrawable;-><init>(Landroid/content/res/Resources;Lcom/sec/android/app/twlauncher/UserFolderInfo;Landroid/graphics/Bitmap;FFFFFFI)V

    .line 558
    .local v1, fd:Lcom/sec/android/app/twlauncher/FolderDrawable;
    iput-object v1, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 559
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080060

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 560
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setOwner(I)V

    .line 561
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->removeAllViews()V

    .line 562
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-virtual {p1, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    .line 563
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    invoke-virtual {p1, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    .line 564
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mEmptyFolderMenu:Landroid/view/MenuItem;

    invoke-virtual {p1, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    .line 570
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->clearRejectDragDropList()V

    .line 571
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;->addToRejectDragDropList(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .line 573
    return-void

    .line 550
    .end local v1           #fd:Lcom/sec/android/app/twlauncher/FolderDrawable;
    :cond_0
    const-string v2, "LauncherManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Folder image is not a BitmapDrawable"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMakePageInfo(Lcom/sec/android/app/twlauncher/UserFolderInfo;)V
    .locals 14
    .parameter "aUserFolderInfo"

    .prologue
    .line 602
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setIsNewDropPage(Z)V

    .line 604
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0200c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 605
    .local v13, d:Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 606
    .local v4, bitmap:Landroid/graphics/Bitmap;
    instance-of v2, v13, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 607
    move-object v0, v13

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v12, v0

    .line 608
    .local v12, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 613
    .end local v12           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    new-instance v1, Lcom/sec/android/app/twlauncher/FolderDrawable;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mRes:Landroid/content/res/Resources;

    iget v5, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mAddPageOffsetX:F

    iget v6, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mFolderOffsetY:F

    iget v7, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPreviewIconSize:F

    iget v8, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPreviewIconXGap:F

    iget v9, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPreviewIconYGap:F

    iget v10, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mPreviewIconYOffset:F

    iget v11, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mItemCountColor:I

    move-object v3, p1

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/app/twlauncher/FolderDrawable;-><init>(Landroid/content/res/Resources;Lcom/sec/android/app/twlauncher/UserFolderInfo;Landroid/graphics/Bitmap;FFFFFFI)V

    .line 618
    .local v1, fd:Lcom/sec/android/app/twlauncher/FolderDrawable;
    iput-object v1, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 619
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08005f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 620
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->setOwner(I)V

    .line 621
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->removeAllViews()V

    .line 622
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageView:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;

    invoke-virtual {p1, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    .line 623
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    invoke-virtual {p1, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    .line 624
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mEmptyPageMenu:Landroid/view/MenuItem;

    invoke-virtual {p1, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    .line 625
    return-void

    .line 610
    .end local v1           #fd:Lcom/sec/android/app/twlauncher/FolderDrawable;
    :cond_0
    const-string v2, "LauncherManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Folder image is not a BitmapDrawable"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMenuItem(Landroid/view/MenuItem;Landroid/view/MenuItem;)V
    .locals 2
    .parameter "aEmptyFolderMenu"
    .parameter "aEmptyPageMenu"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mEmptyFolderMenu:Landroid/view/MenuItem;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->removeMenuItem(Lcom/sec/android/app/twlauncher/UserFolderItemView;Landroid/view/MenuItem;)V

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mEmptyPageMenu:Landroid/view/MenuItem;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->removeMenuItem(Lcom/sec/android/app/twlauncher/UserFolderItemView;Landroid/view/MenuItem;)V

    .line 172
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mEmptyFolderMenu:Landroid/view/MenuItem;

    .line 173
    iput-object p2, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mEmptyPageMenu:Landroid/view/MenuItem;

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakeFolderFolder:Lcom/sec/android/app/twlauncher/UserFolderItemView;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mEmptyFolderMenu:Landroid/view/MenuItem;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->addMenuItem(Lcom/sec/android/app/twlauncher/UserFolderItemView;Landroid/view/MenuItem;)V

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mMakePageFolder:Lcom/sec/android/app/twlauncher/LauncherManagerMakePageFolder;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mEmptyPageMenu:Landroid/view/MenuItem;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/LauncherManager;->addMenuItem(Lcom/sec/android/app/twlauncher/UserFolderItemView;Landroid/view/MenuItem;)V

    .line 176
    return-void
.end method

.method public setShowHelp(Z)V
    .locals 0
    .parameter "aShowHelp"

    .prologue
    .line 531
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/LauncherManager;->mShowHelp:Z

    .line 532
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManager;->setVisibility(I)V

    .line 201
    return-void
.end method
