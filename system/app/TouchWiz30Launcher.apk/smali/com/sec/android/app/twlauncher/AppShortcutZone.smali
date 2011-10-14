.class public Lcom/sec/android/app/twlauncher/AppShortcutZone;
.super Landroid/widget/LinearLayout;
.source "AppShortcutZone.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DragSource;
.implements Lcom/sec/android/app/twlauncher/DropTarget;
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;,
        Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;,
        Lcom/sec/android/app/twlauncher/AppShortcutZone$unPhanAnimLstnr;
    }
.end annotation


# instance fields
.field private mAppZoneAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field private mApplicationsDrawableEdit:Landroid/graphics/drawable/Drawable;

.field private mApplicationsDrawableMenu:Landroid/graphics/drawable/Drawable;

.field private mApplicationsDrawableNormal:Landroid/graphics/drawable/Drawable;

.field private mApplicationsView:Landroid/view/View;

.field private mChildAnimate:[Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

.field private final mColumnCount:I

.field private mDragCell:I

.field private mDragOverDelayed:Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;

.field private mDragger:Lcom/sec/android/app/twlauncher/DragController;

.field private mDroppedView:Landroid/view/View;

.field private mEnabledChildAnimation:Z

.field private mExecDragOverDelayed:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field mIsKeyDownEvent:Z

.field private mLastShiftView:Landroid/view/View;

.field private mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field private mLauncherManagerScale:F

.field private mLauncherManagerTransX:I

.field private mLauncherManagerTransY:I

.field private mMyContext:Landroid/content/Context;

.field private mMyOnClickListener:Landroid/view/View$OnClickListener;

.field private mMyOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mMyOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOldOrientation:I

.field private mOrientation:I

.field private mScaledRect:Landroid/graphics/RectF;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mUnPhanAnim:Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 102
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    iput v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOrientation:I

    .line 64
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOldOrientation:I

    .line 68
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mScaledRect:Landroid/graphics/RectF;

    .line 70
    iput-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLastShiftView:Landroid/view/View;

    .line 74
    new-instance v1, Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;

    invoke-direct {v1, p0, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;-><init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;Lcom/sec/android/app/twlauncher/AppShortcutZone$1;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragOverDelayed:Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;

    .line 87
    iput-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDroppedView:Landroid/view/View;

    .line 97
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mTmpRect:Landroid/graphics/Rect;

    .line 99
    new-instance v1, Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;

    invoke-direct {v1}, Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mUnPhanAnim:Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;

    .line 635
    new-instance v1, Lcom/sec/android/app/twlauncher/AppShortcutZone$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone$2;-><init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mMyOnClickListener:Landroid/view/View$OnClickListener;

    .line 661
    new-instance v1, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone$3;-><init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mMyOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 708
    new-instance v1, Lcom/sec/android/app/twlauncher/AppShortcutZone$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone$4;-><init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mMyOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 104
    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->AppShortcutZone:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 105
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    .line 106
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    iget v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    if-ge v1, v4, :cond_0

    .line 109
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "AppShortcutZone_iconColumnCount should be at least 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    new-array v1, v1, [Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

    .line 114
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->init(Landroid/content/Context;)V

    .line 115
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/twlauncher/AppShortcutZone;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragCell:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Lcom/sec/android/app/twlauncher/DragController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/twlauncher/AppShortcutZone;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mExecDragOverDelayed:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/twlauncher/AppShortcutZone;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mExecDragOverDelayed:Z

    return p1
.end method

.method private addItem(Landroid/view/View;I)V
    .locals 4
    .parameter "v"
    .parameter "index"

    .prologue
    .line 860
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addView(Landroid/view/View;I)V

    .line 861
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 862
    .local v2, tag:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 863
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v1, v0

    .line 864
    .local v1, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    const/4 v3, -0x1

    invoke-virtual {v1, v3, p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditModeInfo(II)V

    .line 866
    .end local v1           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_0
    return-void
.end method

.method private arrangeItem(I)V
    .locals 7
    .parameter "index"

    .prologue
    .line 1004
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v3

    .line 1005
    .local v3, count:I
    add-int/lit8 v4, p1, 0x1

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 1006
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1007
    .local v2, appView:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 1008
    .local v5, tag:Ljava/lang/Object;
    if-eqz v5, :cond_0

    instance-of v6, v5, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v6, :cond_0

    .line 1009
    move-object v0, v5

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v1, v0

    .line 1010
    .local v1, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    const/4 v6, -0x1

    invoke-virtual {v1, v6, v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditModeInfo(II)V

    .line 1005
    .end local v1           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1013
    .end local v2           #appView:Landroid/view/View;
    .end local v5           #tag:Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private createView(Landroid/view/View;I)Landroid/view/View;
    .locals 3
    .parameter "aView"
    .parameter "aIndex"

    .prologue
    .line 433
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 434
    .local v1, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    if-nez v1, :cond_0

    .line 435
    const/4 v2, 0x0

    .line 441
    :goto_0
    return-object v2

    .line 437
    :cond_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v0

    .line 438
    .local v0, addView:Landroid/view/View;
    invoke-direct {p0, v0, p2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addItem(Landroid/view/View;I)V

    .line 440
    invoke-direct {p0, p2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->arrangeItem(I)V

    move-object v2, v0

    .line 441
    goto :goto_0
.end method

.method private findView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .parameter "aView"

    .prologue
    .line 445
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_0

    move-object v1, p1

    .line 452
    :goto_0
    return-object v1

    .line 448
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 449
    .local v0, tag:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    if-nez v0, :cond_1

    .line 450
    const/4 v1, 0x0

    goto :goto_0

    .line 452
    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method private getIndexOfCell(II)I
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x1

    .line 798
    const/4 v0, -0x1

    .line 799
    .local v0, cell:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v1

    .line 804
    .local v1, count:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getOrientation()I

    move-result v4

    if-nez v4, :cond_3

    .line 805
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sub-int v4, v1, v5

    if-ge v2, v4, :cond_0

    .line 806
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 807
    .local v3, v:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    if-ge p1, v4, :cond_2

    .line 808
    move v0, v2

    .line 826
    .end local v3           #v:Landroid/view/View;
    :cond_0
    :goto_1
    const/4 v4, -0x1

    if-ne v4, v0, :cond_1

    iget v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    if-ge v1, v4, :cond_1

    .line 827
    sub-int v0, v1, v5

    .line 829
    :cond_1
    return v0

    .line 805
    .restart local v3       #v:Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 814
    .end local v2           #i:I
    .end local v3           #v:Landroid/view/View;
    :cond_3
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    sub-int v4, v1, v5

    if-ge v2, v4, :cond_0

    .line 815
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 816
    .restart local v3       #v:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    if-le p2, v4, :cond_4

    .line 817
    move v0, v2

    .line 818
    goto :goto_1

    .line 814
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private getViewForTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 4
    .parameter "tag"

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v1

    .line 404
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 405
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 406
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    move-object v3, v0

    .line 411
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return-object v3

    .line 404
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 411
    .end local v0           #child:Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 119
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mMyContext:Landroid/content/Context;

    .line 120
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mMyContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mInflater:Landroid/view/LayoutInflater;

    .line 122
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 123
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOrientation:I

    .line 125
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setClickable(Z)V

    .line 127
    const v2, 0x7f020079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableNormal:Landroid/graphics/drawable/Drawable;

    .line 128
    const v2, 0x7f020093

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableMenu:Landroid/graphics/drawable/Drawable;

    .line 129
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableMenu:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableEdit:Landroid/graphics/drawable/Drawable;

    .line 130
    const v2, 0x7f0b001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncherManagerTransX:I

    .line 131
    const v2, 0x7f0b001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncherManagerTransY:I

    .line 132
    const/high16 v2, 0x7f0c

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncherManagerScale:F

    .line 135
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->initApplicationsView()V

    .line 137
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAppZoneAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    if-nez v2, :cond_0

    .line 138
    new-instance v2, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const-wide/16 v3, 0xc8

    const/high16 v5, 0x3f80

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(JF)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAppZoneAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 141
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    if-ge v0, v2, :cond_1

    .line 142
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

    new-instance v3, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

    invoke-direct {v3, p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;-><init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V

    aput-object v3, v2, v0

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_1
    return-void
.end method

.method private initApplicationsView()V
    .locals 10

    .prologue
    .line 147
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030003

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 149
    .local v1, itemView:Landroid/view/View;
    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    move-object v6, v0

    .line 150
    .local v6, view:Lcom/sec/android/app/twlauncher/MenuItemView;
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/sec/android/app/twlauncher/MenuItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080015

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/twlauncher/MenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    .line 154
    .local v5, paddingTop:I
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 155
    .local v3, paddingLeft:I
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 156
    .local v2, paddingBottom:I
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 158
    .local v4, paddingRight:I
    const v7, 0x7f020024

    invoke-virtual {v6, v7}, Lcom/sec/android/app/twlauncher/MenuItemView;->setBackgroundResource(I)V

    .line 159
    invoke-virtual {v6, v3, v5, v4, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPadding(IIII)V

    .line 161
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/app/twlauncher/MenuItemView;->setFocusable(Z)V

    .line 162
    new-instance v7, Lcom/sec/android/app/twlauncher/AppShortcutZone$1;

    invoke-direct {v7, p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone$1;-><init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V

    invoke-virtual {v6, v7}, Lcom/sec/android/app/twlauncher/MenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iput-object v6, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsView:Landroid/view/View;

    .line 187
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addView(Landroid/view/View;)V

    .line 188
    return-void
.end method

.method private makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;
    .locals 8
    .parameter "info"

    .prologue
    const/4 v7, -0x1

    .line 603
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 604
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 606
    .local v0, config:Landroid/content/res/Configuration;
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    iget v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOrientation:I

    if-eq v4, v5, :cond_0

    .line 607
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOldOrientation:I

    .line 608
    iget v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOrientation:I

    iput v4, v0, Landroid/content/res/Configuration;->orientation:I

    .line 610
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 611
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v3, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 614
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030003

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 616
    .local v1, itemView:Lcom/sec/android/app/twlauncher/MenuItemView;
    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setAppInfo(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .line 617
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/MenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 618
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/MenuItemView;->setFocusable(Z)V

    .line 619
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mMyOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/MenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mMyOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/MenuItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 622
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mMyOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/MenuItemView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 625
    iget v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOldOrientation:I

    if-eq v4, v7, :cond_1

    .line 626
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 627
    .restart local v2       #metrics:Landroid/util/DisplayMetrics;
    iget v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOldOrientation:I

    iput v4, v0, Landroid/content/res/Configuration;->orientation:I

    .line 628
    invoke-virtual {v3, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 629
    iput v7, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mOldOrientation:I

    .line 632
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    :cond_1
    return-object v1
.end method

.method private swapASZItems(Landroid/view/View;I)V
    .locals 5
    .parameter "v1"
    .parameter "v2Index"

    .prologue
    const/4 v4, 0x1

    .line 837
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v3

    sub-int v0, v3, v4

    .line 838
    .local v0, lastIndex:I
    if-lt p2, v0, :cond_0

    .line 839
    sub-int p2, v0, v4

    .line 841
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 842
    .local v2, v2:Landroid/view/View;
    if-eqz v2, :cond_1

    if-ne v2, p1, :cond_2

    .line 857
    :cond_1
    :goto_0
    return-void

    .line 845
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeItem(Landroid/view/View;)I

    move-result v1

    .line 846
    .local v1, v1Index:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 847
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeItem(Landroid/view/View;)I

    .line 848
    if-ge v1, p2, :cond_3

    .line 849
    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addItem(Landroid/view/View;I)V

    .line 850
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addItem(Landroid/view/View;I)V

    goto :goto_0

    .line 853
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addItem(Landroid/view/View;I)V

    .line 854
    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addItem(Landroid/view/View;I)V

    goto :goto_0
.end method


# virtual methods
.method public acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 2
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1221
    const/4 v0, 0x0

    .line 1223
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public appendApplication(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Z
    .locals 2
    .parameter "info"

    .prologue
    .line 576
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v0

    .line 577
    .local v0, childCount:I
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    if-lt v0, v1, :cond_1

    .line 578
    :cond_0
    const/4 v1, 0x0

    .line 584
    :goto_0
    return v1

    .line 580
    :cond_1
    if-lez v0, :cond_2

    .line 581
    add-int/lit8 v0, v0, -0x1

    .line 583
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addItem(Landroid/view/View;I)V

    .line 584
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public cancelDragOverDelayed(Ljava/lang/String;)V
    .locals 1
    .parameter "who"

    .prologue
    .line 1158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mExecDragOverDelayed:Z

    .line 1159
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragOverDelayed:Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;

    if-eqz v0, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragOverDelayed:Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1162
    :cond_0
    return-void
.end method

.method public changeApplicationsIcon()V
    .locals 5

    .prologue
    const v4, 0x7f08004f

    .line 893
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    .line 894
    .local v0, mm:Lcom/sec/android/app/twlauncher/MenuManager;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsView:Landroid/view/View;

    check-cast v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 895
    .local v1, view:Lcom/sec/android/app/twlauncher/MenuItemView;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v2

    if-nez v2, :cond_0

    .line 896
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 897
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 905
    :goto_0
    return-void

    .line 898
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 899
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableMenu:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 900
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 902
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsDrawableEdit:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 903
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public clearApplications()V
    .locals 1

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeAllViews()V

    .line 572
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mApplicationsView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addView(Landroid/view/View;)V

    .line 573
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 536
    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 20
    .parameter "canvas"

    .prologue
    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 287
    const/4 v4, 0x0

    .line 362
    :goto_0
    return v4

    .line 289
    :cond_0
    const/16 v18, 0x0

    .line 290
    .local v18, result:Z
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setBlendingEnabled(Z)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v17

    .line 294
    .local v17, mm:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/MenuManager;->getModeCylinderFactor()F

    move-result v14

    .line 295
    .local v14, dropTableZoom:F
    float-to-double v4, v14

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 296
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setSubdivide(Z)V

    .line 299
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v11

    .line 300
    .local v11, childCount:I
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mUnPhanAnim:Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;->drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v4

    or-int v18, v18, v4

    .line 304
    const/high16 v9, 0x3f80

    .line 305
    .local v9, animVal:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAppZoneAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAppZoneAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v9

    .line 307
    const/16 v18, 0x1

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAppZoneAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    cmpl-float v4, v9, v4

    if-nez v4, :cond_2

    .line 309
    const/4 v4, 0x4

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setVisibility(I)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getAddWidgetDialog()Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    move-result-object v10

    .line 312
    .local v10, awd:Lcom/sec/android/app/twlauncher/AddWidgetDialog;
    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->isActive()Z

    move-result v4

    if-nez v4, :cond_2

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v12

    .line 314
    .local v12, dZone:Lcom/sec/android/app/twlauncher/DeleteZone;
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Lcom/sec/android/app/twlauncher/DeleteZone;->setVisibility(I)V

    .line 315
    invoke-virtual {v12}, Lcom/sec/android/app/twlauncher/DeleteZone;->getDeleteZoneAnim()Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-result-object v4

    const/high16 v5, 0x3f80

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 320
    .end local v10           #awd:Lcom/sec/android/app/twlauncher/AddWidgetDialog;
    .end local v12           #dZone:Lcom/sec/android/app/twlauncher/DeleteZone;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v9

    sub-float/2addr v4, v5

    float-to-int v13, v4

    .line 322
    .local v13, diff:I
    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 324
    const/4 v4, 0x0

    cmpl-float v4, v14, v4

    if-lez v4, :cond_5

    float-to-double v4, v14

    const-wide/high16 v6, 0x3ff0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_5

    const/4 v4, 0x1

    :goto_1
    or-int v18, v18, v4

    .line 325
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->findGLSurfaceViewGroup(Landroid/view/View;)Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;

    move-result-object v3

    .line 326
    .local v3, glView:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncherManagerScale:F

    move v5, v0

    invoke-static {v4, v5, v14}, Lcom/sec/android/app/twlauncher/GLCanvas;->mix(FFF)F

    move-result v6

    .line 327
    .local v6, scale:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncherManagerTransX:I

    move v4, v0

    int-to-float v4, v4

    mul-float v7, v4, v14

    int-to-float v4, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncherManagerTransY:I

    move v5, v0

    int-to-float v5, v5

    mul-float/2addr v5, v14

    add-float v8, v4, v5

    move-object/from16 v4, p1

    move-object/from16 v5, p0

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->scaleView(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;FFF)V

    .line 329
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->addTransRefSelf(Landroid/view/View;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/LauncherManager;->isMakeFolderOrPageOpened()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 333
    const v4, 0x3ecccccd

    mul-float/2addr v4, v14

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 338
    :cond_3
    const/4 v15, 0x0

    .line 339
    .local v15, fastScrollFactor:F
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 340
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/twlauncher/MenuManager;->getFastScrollFactor()F

    move-result v15

    .line 346
    :goto_2
    const/4 v4, 0x0

    cmpl-float v4, v15, v4

    if-eqz v4, :cond_4

    .line 347
    const v4, 0x3e99999a

    const/high16 v5, 0x3f80

    sub-float/2addr v5, v15

    const v6, 0x3e99999a

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setAlpha(F)V

    .line 349
    .end local v6           #scale:F
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mScaledRect:Landroid/graphics/RectF;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mScaledRect:Landroid/graphics/RectF;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mScaledRect:Landroid/graphics/RectF;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/twlauncher/SamsungUtils;->mapRectToCanvas(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 353
    const/16 v16, 0x0

    .local v16, i:I
    :goto_3
    move/from16 v0, v16

    move v1, v11

    if-ge v0, v1, :cond_7

    .line 354
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 355
    .local v19, view:Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 356
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p1

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 357
    check-cast v19, Lcom/sec/android/app/twlauncher/MenuItemView;

    .end local v19           #view:Landroid/view/View;
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v4

    or-int v18, v18, v4

    .line 358
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 353
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 324
    .end local v3           #glView:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
    .end local v15           #fastScrollFactor:F
    .end local v16           #i:I
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 342
    .restart local v3       #glView:Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;
    .restart local v6       #scale:F
    .restart local v15       #fastScrollFactor:F
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Workspace;->getFastScrollFactor()F

    move-result v15

    goto :goto_2

    .line 360
    .end local v6           #scale:F
    .restart local v16       #i:I
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    move/from16 v4, v18

    .line 362
    goto/16 :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 7
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/16 v6, 0x42

    const/16 v4, 0x11

    const/4 v5, 0x1

    .line 909
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    if-eqz v3, :cond_5

    .line 910
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v1

    .line 911
    .local v1, mm:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 912
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 913
    .local v0, childCount:I
    if-le v0, v5, :cond_5

    .line 914
    if-ne p2, v4, :cond_1

    .line 915
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v3

    if-nez v3, :cond_0

    .line 916
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    :cond_0
    move v3, v5

    .line 949
    .end local v0           #childCount:I
    .end local v1           #mm:Lcom/sec/android/app/twlauncher/MenuManager;
    :goto_0
    return v3

    .line 919
    .restart local v0       #childCount:I
    .restart local v1       #mm:Lcom/sec/android/app/twlauncher/MenuManager;
    :cond_1
    if-ne p2, v6, :cond_5

    .line 920
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v3

    sub-int v4, v0, v5

    if-ne v3, v4, :cond_2

    .line 921
    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    .line 923
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->requestFocus()Z

    :cond_2
    move v3, v5

    .line 927
    goto :goto_0

    .line 930
    .end local v0           #childCount:I
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v3

    if-nez v3, :cond_5

    .line 931
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v2

    .line 933
    .local v2, w:Lcom/sec/android/app/twlauncher/Workspace;
    if-ne p2, v4, :cond_4

    .line 934
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v3

    if-ltz v3, :cond_5

    .line 936
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    move v3, v5

    .line 937
    goto :goto_0

    .line 939
    :cond_4
    if-ne p2, v6, :cond_5

    .line 940
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v3

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v5

    if-gt v3, v4, :cond_5

    .line 942
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreenIndex()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    move v3, v5

    .line 943
    goto :goto_0

    .line 949
    .end local v1           #mm:Lcom/sec/android/app/twlauncher/MenuManager;
    .end local v2           #w:Lcom/sec/android/app/twlauncher/Workspace;
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v3

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .parameter "canvas"
    .parameter "view"
    .parameter "drawingTime"

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public findMenuItemFromTagAndRemove(Ljava/lang/Object;)Lcom/sec/android/app/twlauncher/MenuItemView;
    .locals 4
    .parameter "tag"

    .prologue
    .line 389
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 391
    .local v2, v:Landroid/view/View;
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v3, :cond_0

    .line 392
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    move-object v1, v0

    .line 393
    .local v1, itemView:Lcom/sec/android/app/twlauncher/MenuItemView;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeItem(Landroid/view/View;)I

    move-object v3, v1

    .line 397
    .end local v1           #itemView:Lcom/sec/android/app/twlauncher/MenuItemView;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getAppMap(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 6
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
    .line 415
    .local p1, aAppMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 416
    new-instance p1, Ljava/util/HashMap;

    .end local p1           #aAppMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 421
    .restart local p1       #aAppMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/sec/android/app/twlauncher/ApplicationInfo;Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 422
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 423
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 424
    .local v2, tag:Ljava/lang/Object;
    if-eqz v2, :cond_1

    instance-of v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v3, :cond_1

    .line 425
    const-string v3, "DebugPlacement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "View = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Owner = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    check-cast v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .end local v2           #tag:Ljava/lang/Object;
    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 429
    .end local v0           #child:Landroid/view/View;
    :cond_2
    return-object p1
.end method

.method public getAppZoneAnim()Lcom/sec/android/app/twlauncher/ScalarAnimator;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mAppZoneAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    return-object v0
.end method

.method public getDropHitRect(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "outRect"

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mScaledRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mScaledRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mScaledRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mScaledRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1059
    return-void
.end method

.method public getLastShiftView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLastShiftView:Landroid/view/View;

    return-object v0
.end method

.method public getPhantomItemViews()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/MenuItemView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 456
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v5, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/MenuItemView;>;"
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v2

    .line 461
    .local v2, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 462
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 463
    .local v1, child:Landroid/view/View;
    instance-of v6, v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v6, :cond_0

    .line 464
    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    move-object v4, v0

    .line 465
    .local v4, menuItemView:Lcom/sec/android/app/twlauncher/MenuItemView;
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/MenuItemView;->isPhantom()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 466
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    .end local v4           #menuItemView:Lcom/sec/android/app/twlauncher/MenuItemView;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 470
    .end local v1           #child:Landroid/view/View;
    :cond_1
    return-object v5
.end method

.method public invalidate()V
    .locals 0

    .prologue
    .line 197
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->invalidateViewTree(Landroid/view/View;)V

    .line 198
    return-void
.end method

.method public loadApplications()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 539
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->clearApplications()V

    .line 540
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->loadTopAppToDatabase(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 541
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 568
    :goto_0
    return-void

    .line 547
    :cond_0
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getModel()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->dropTopApplicationCache()V

    .line 550
    const/4 v1, 0x0

    .line 551
    .local v1, index:I
    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v1, v5, :cond_2

    .line 552
    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 553
    .local v4, strCName:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getModel()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->initTopApp(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v2

    .line 555
    .local v2, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    if-eqz v2, :cond_1

    .line 556
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 557
    invoke-virtual {v2, v8}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setPageNum(I)V

    .line 558
    invoke-virtual {v2, v8}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditPageNum(I)V

    .line 559
    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setCellNum(I)V

    .line 560
    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditCellNum(I)V

    .line 561
    const/4 v5, 0x3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setDefaultSort(I)V

    .line 562
    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v3

    .line 563
    .local v3, item:Landroid/view/View;
    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addView(Landroid/view/View;I)V

    .line 564
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 567
    .end local v2           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v3           #item:Landroid/view/View;
    .end local v4           #strCName:Ljava/lang/String;
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
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
    .line 1121
    return-void
.end method

.method public onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1207
    const-string v0, "onDragExitASZ"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->cancelDragOverDelayed(Ljava/lang/String;)V

    .line 1208
    if-ne p1, p0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->getDragAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1211
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->getDraggedView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->findView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 1212
    if-eqz v0, :cond_0

    .line 1213
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeItem(Landroid/view/View;)I

    .line 1216
    :cond_0
    return-void
.end method

.method public onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1166
    const-string v1, "onDragOverASZ"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->cancelDragOverDelayed(Ljava/lang/String;)V

    .line 1167
    if-eq p1, p0, :cond_1

    .line 1181
    :cond_0
    :goto_0
    return-void

    .line 1170
    :cond_1
    move-object v0, p6

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v1

    .line 1171
    instance-of v2, v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-nez v2, :cond_0

    .line 1174
    instance-of v1, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v1, :cond_0

    .line 1177
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragOverDelayed:Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;->setInfo(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 1179
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragOverDelayed:Lcom/sec/android/app/twlauncher/AppShortcutZone$onDragOverDelayed;

    const-wide/16 v2, 0x32

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onDragOverDelayed(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 11
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1186
    new-instance v4, Landroid/graphics/PointF;

    int-to-float v5, p2

    int-to-float v6, p3

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mScaledRect:Landroid/graphics/RectF;

    new-instance v6, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getLeft()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getTop()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getRight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getBottom()I

    move-result v10

    int-to-float v10, v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v4, v5, v6}, Lcom/sec/android/app/twlauncher/SamsungUtils;->mapPtToRect2(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v2

    .line 1188
    .local v2, newPt:Landroid/graphics/PointF;
    iget v4, v2, Landroid/graphics/PointF;->x:F

    float-to-int p2, v4

    .line 1189
    iget v4, v2, Landroid/graphics/PointF;->y:F

    float-to-int p3, v4

    .line 1190
    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getIndexOfCell(II)I

    move-result v1

    .line 1191
    .local v1, index:I
    const/4 v4, -0x1

    if-eq v4, v1, :cond_0

    iget v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragCell:I

    if-ne v4, v1, :cond_1

    .line 1203
    :cond_0
    :goto_0
    return-void

    .line 1194
    :cond_1
    iput v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragCell:I

    .line 1195
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/DragLayer;->getDraggedView()Landroid/view/View;

    move-result-object v0

    .line 1196
    .local v0, dragView:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->findView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 1197
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_2

    .line 1198
    invoke-direct {p0, v3, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->swapASZItems(Landroid/view/View;I)V

    goto :goto_0

    .line 1200
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->createView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 1201
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1062
    const-string v1, "onDropASZ"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->cancelDragOverDelayed(Ljava/lang/String;)V

    .line 1063
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLastShiftView:Landroid/view/View;

    .line 1064
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 1065
    const/4 v1, 0x0

    .line 1112
    :goto_0
    return v1

    .line 1067
    :cond_0
    check-cast p6, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    invoke-virtual {p6}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v1

    .line 1068
    instance-of v2, v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v2, :cond_1

    .line 1069
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08006f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1071
    const/4 v1, 0x0

    goto :goto_0

    .line 1073
    :cond_1
    instance-of v1, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-nez v1, :cond_2

    .line 1074
    const/4 v1, 0x0

    goto :goto_0

    .line 1076
    :cond_2
    new-instance v1, Landroid/graphics/PointF;

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mScaledRect:Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getRight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getBottom()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/twlauncher/SamsungUtils;->mapPtToRect2(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 1078
    iget v2, v1, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    .line 1079
    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    .line 1080
    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getIndexOfCell(II)I

    move-result v1

    .line 1081
    const/4 v2, -0x1

    if-ne v2, v1, :cond_3

    .line 1082
    const/4 v1, 0x0

    goto :goto_0

    .line 1084
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/DragLayer;->getDraggedView()Landroid/view/View;

    move-result-object v2

    .line 1086
    if-ne p1, p0, :cond_6

    .line 1087
    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->findView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 1088
    if-nez v3, :cond_5

    .line 1089
    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->createView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 1093
    :goto_1
    if-eqz v1, :cond_4

    .line 1094
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1095
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDroppedView:Landroid/view/View;

    .line 1097
    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    .line 1091
    :cond_5
    invoke-direct {p0, v3, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->swapASZItems(Landroid/view/View;I)V

    move-object v1, v3

    goto :goto_1

    .line 1100
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    if-ne v3, v4, :cond_8

    .line 1101
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 1102
    instance-of v3, p2, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v3, :cond_7

    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    move-object p1, v0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->isPhantom()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1103
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1106
    :cond_7
    iput-object p2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLastShiftView:Landroid/view/View;

    .line 1107
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeViewAt(I)V

    .line 1109
    :cond_8
    iput-object v2, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDroppedView:Landroid/view/View;

    .line 1110
    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->createView(Landroid/view/View;I)Landroid/view/View;

    .line 1111
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->setSortMethod(I)V

    .line 1112
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public onDropCompleted(Landroid/view/View;FFFFZLjava/lang/Object;)V
    .locals 7
    .parameter "target"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "success"
    .parameter "dragInfo"

    .prologue
    const/4 v6, 0x0

    .line 762
    const-string v5, "onDropCompleted ASZ"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->cancelDragOverDelayed(Ljava/lang/String;)V

    .line 763
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/DragLayer;->getDraggedView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 764
    .local v1, dragView:Lcom/sec/android/app/twlauncher/MenuItemView;
    const/4 v2, -0x1

    .line 765
    .local v2, index:I
    if-eqz p6, :cond_5

    .line 766
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getLauncherManager()Lcom/sec/android/app/twlauncher/LauncherManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/sec/android/app/twlauncher/LauncherManager;->hasDropTarget(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 767
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeItem(Landroid/view/View;)I

    move-result v2

    .line 768
    if-gez v2, :cond_0

    .line 769
    iget v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragCell:I

    if-gez v5, :cond_4

    move v2, v6

    .line 771
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 772
    .local v3, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 773
    .local v0, addView:Lcom/sec/android/app/twlauncher/MenuItemView;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPhantom(Z)V

    .line 774
    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addItem(Landroid/view/View;I)V

    .line 776
    .end local v0           #addView:Lcom/sec/android/app/twlauncher/MenuItemView;
    .end local v3           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_1
    instance-of v5, p1, Lcom/sec/android/app/twlauncher/MenuDrawer;

    if-nez v5, :cond_2

    instance-of v5, p1, Lcom/sec/android/app/twlauncher/UserFolderItemView;

    if-eqz v5, :cond_3

    .line 777
    :cond_2
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeItem(Landroid/view/View;)I

    .line 788
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Workspace;->reqExtEndDrag()Z

    .line 789
    const/4 v5, -0x1

    iput v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragCell:I

    .line 790
    return-void

    .line 769
    :cond_4
    iget v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragCell:I

    move v2, v5

    goto :goto_0

    .line 780
    :cond_5
    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->findView(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    .line 781
    .local v4, v:Landroid/view/View;
    if-nez v4, :cond_7

    .line 782
    iget v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragCell:I

    if-gez v5, :cond_6

    move v2, v6

    .line 783
    :goto_2
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->createView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 782
    :cond_6
    iget v5, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragCell:I

    move v2, v5

    goto :goto_2

    .line 785
    :cond_7
    check-cast v4, Lcom/sec/android/app/twlauncher/MenuItemView;

    .end local v4           #v:Landroid/view/View;
    invoke-virtual {v4, v6}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPhantom(Z)V

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 750
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    const/4 v0, 0x1

    .line 753
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v5

    .line 207
    .local v5, count:I
    const/4 v6, 0x0

    .line 209
    .local v6, gap:I
    if-lez v5, :cond_7

    .line 210
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getOrientation()I

    move-result v8

    .line 211
    .local v8, orientation:I
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mTmpRect:Landroid/graphics/Rect;

    .line 212
    .local v9, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getPaddingLeft()I

    move-result v2

    .line 213
    .local v2, childLeft:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getPaddingTop()I

    move-result v3

    .line 214
    .local v3, childTop:I
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 215
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 216
    .local v4, childWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 218
    .local v1, childHeight:I
    if-nez v8, :cond_3

    .line 219
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getMeasuredWidth()I

    move-result v11

    sub-int/2addr v11, v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    mul-int v12, v4, v5

    sub-int v10, v11, v12

    .line 220
    .local v10, totGap:I
    if-lez v10, :cond_0

    .line 221
    iget v11, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    if-ne v5, v11, :cond_1

    .line 222
    iget v11, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    div-int v6, v10, v11

    .line 228
    :cond_0
    :goto_0
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v5, :cond_7

    .line 229
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

    aget-object v11, v11, v7

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;->stop()V

    .line 230
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 231
    invoke-virtual {v0, v9}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 232
    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEnabledChildAnimation:Z

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDroppedView:Landroid/view/View;

    if-eq v0, v11, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    .line 234
    add-int v11, v2, v4

    add-int v12, v3, v1

    invoke-virtual {v9, v2, v3, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 235
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

    aget-object v11, v11, v7

    invoke-virtual {v11, v0, v9}, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 241
    :goto_2
    add-int v11, v4, v6

    add-int/2addr v2, v11

    .line 228
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 224
    .end local v7           #i:I
    :cond_1
    add-int/lit8 v11, v5, 0x1

    div-int v6, v10, v11

    .line 225
    add-int/2addr v2, v6

    goto :goto_0

    .line 238
    .restart local v7       #i:I
    :cond_2
    add-int v11, v2, v4

    add-int v12, v3, v1

    invoke-virtual {v0, v2, v3, v11, v12}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 245
    .end local v7           #i:I
    .end local v10           #totGap:I
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v11, v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getPaddingBottom()I

    move-result v12

    sub-int/2addr v11, v12

    mul-int v12, v1, v5

    sub-int v10, v11, v12

    .line 246
    .restart local v10       #totGap:I
    if-lez v10, :cond_4

    .line 247
    iget v11, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    if-ne v5, v11, :cond_5

    .line 248
    iget v11, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mColumnCount:I

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    div-int v6, v10, v11

    .line 254
    :cond_4
    :goto_3
    const/4 v11, 0x1

    sub-int v7, v5, v11

    .restart local v7       #i:I
    :goto_4
    if-ltz v7, :cond_7

    .line 255
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

    aget-object v11, v11, v7

    invoke-virtual {v11}, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;->stop()V

    .line 256
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 257
    invoke-virtual {v0, v9}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 258
    iget-boolean v11, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEnabledChildAnimation:Z

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDroppedView:Landroid/view/View;

    if-eq v0, v11, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    .line 260
    add-int v11, v2, v4

    add-int v12, v3, v1

    invoke-virtual {v9, v2, v3, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 261
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mChildAnimate:[Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;

    aget-object v11, v11, v7

    invoke-virtual {v11, v0, v9}, Lcom/sec/android/app/twlauncher/AppShortcutZone$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 266
    :goto_5
    add-int v11, v1, v6

    add-int/2addr v3, v11

    .line 254
    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    .line 250
    .end local v7           #i:I
    :cond_5
    add-int/lit8 v11, v5, 0x1

    div-int v6, v10, v11

    .line 251
    add-int/2addr v3, v6

    goto :goto_3

    .line 263
    .restart local v7       #i:I
    :cond_6
    add-int v11, v2, v4

    add-int v12, v3, v1

    invoke-virtual {v0, v2, v3, v11, v12}, Landroid/view/View;->layout(IIII)V

    goto :goto_5

    .line 270
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childHeight:I
    .end local v2           #childLeft:I
    .end local v3           #childTop:I
    .end local v4           #childWidth:I
    .end local v7           #i:I
    .end local v8           #orientation:I
    .end local v9           #r:Landroid/graphics/Rect;
    .end local v10           #totGap:I
    :cond_7
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDroppedView:Landroid/view/View;

    .line 271
    return-void
.end method

.method public onPreDragStart(Landroid/view/View;I)V
    .locals 1
    .parameter "view"
    .parameter "dragAction"

    .prologue
    .line 275
    if-nez p2, :cond_0

    .line 276
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 278
    :cond_0
    return-void
.end method

.method removeItem(Landroid/view/View;)I
    .locals 5
    .parameter "v"

    .prologue
    .line 869
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v1

    .line 870
    .local v1, count:I
    const/4 v3, -0x1

    .line 871
    .local v3, index:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 872
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 873
    .local v0, child:Landroid/view/View;
    if-ne v0, p1, :cond_2

    .line 874
    move v3, v2

    .line 878
    .end local v0           #child:Landroid/view/View;
    :cond_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 879
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeViewAt(I)V

    .line 881
    :cond_1
    return v3

    .line 871
    .restart local v0       #child:Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public saveToDB()Z
    .locals 7

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v5

    .line 589
    .local v5, topAppCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 590
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 591
    .local v2, appView:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 592
    .local v4, tag:Ljava/lang/Object;
    instance-of v6, v4, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v6, :cond_0

    .line 593
    move-object v0, v4

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v1, v0

    .line 594
    .local v1, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    const/4 v6, -0x1

    invoke-virtual {v1, v6, v3}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setNormalModeInfo(II)V

    .line 595
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->assignNormalToEdit()V

    .line 596
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mMyContext:Landroid/content/Context;

    invoke-static {v6, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateAppToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I

    .line 589
    .end local v1           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 599
    .end local v2           #appView:Landroid/view/View;
    .end local v4           #tag:Ljava/lang/Object;
    :cond_1
    const/4 v6, 0x1

    return v6
.end method

.method public setDragger(Lcom/sec/android/app/twlauncher/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 793
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    .line 794
    return-void
.end method

.method public setEnabledChildAnimation(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 885
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mEnabledChildAnimation:Z

    .line 886
    return-void
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 757
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 758
    return-void
.end method

.method public unPhanToASZWithAnim(Lcom/sec/android/app/twlauncher/MenuItemView;Landroid/graphics/PointF;Ljava/util/ArrayList;Lcom/sec/android/app/twlauncher/UnPhanAnimInfo$UnPhanAnimInfoLstnr;)Z
    .locals 11
    .parameter "aView"
    .parameter "aSrc"
    .parameter
    .parameter "aLstnr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/twlauncher/MenuItemView;",
            "Landroid/graphics/PointF;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/MenuItemView;",
            ">;",
            "Lcom/sec/android/app/twlauncher/UnPhanAnimInfo$UnPhanAnimInfoLstnr;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 476
    .local p3, aPhanList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/MenuItemView;>;"
    const/4 v1, 0x0

    .local v1, itemView:Lcom/sec/android/app/twlauncher/MenuItemView;
    const/4 v10, 0x0

    .line 478
    .local v10, tempItemView:Lcom/sec/android/app/twlauncher/MenuItemView;
    if-nez p3, :cond_0

    .line 479
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getPhantomItemViews()Ljava/util/ArrayList;

    move-result-object p3

    .line 481
    :cond_0
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 482
    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #tempItemView:Lcom/sec/android/app/twlauncher/MenuItemView;
    check-cast v10, Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 483
    .restart local v10       #tempItemView:Lcom/sec/android/app/twlauncher/MenuItemView;
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/MenuItemView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_2

    .line 484
    move-object v1, v10

    .line 488
    :cond_1
    if-nez v1, :cond_3

    .line 489
    const/4 v0, 0x0

    .line 511
    :goto_1
    return v0

    .line 481
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 491
    :cond_3
    new-instance v4, Lcom/sec/android/app/twlauncher/AppShortcutZone$unPhanAnimLstnr;

    invoke-direct {v4, p0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone$unPhanAnimLstnr;-><init>(Lcom/sec/android/app/twlauncher/AppShortcutZone;Lcom/sec/android/app/twlauncher/MenuItemView;)V

    .line 493
    .local v4, animLstnr:Lcom/sec/android/app/twlauncher/AppShortcutZone$unPhanAnimLstnr;
    instance-of v0, v1, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;

    if-eqz v0, :cond_4

    .line 494
    const/16 v7, 0x12c

    .line 495
    .local v7, duration:I
    const/4 v0, 0x2

    new-array v9, v0, [I

    .line 496
    .local v9, pts:[I
    invoke-virtual {p0, v9}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getLocationOnScreen([I)V

    .line 497
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    .line 498
    .local v5, srcPt:Landroid/graphics/PointF;
    iget v0, p2, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    aget v2, v9, v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p2, Landroid/graphics/PointF;->y:F

    const/4 v3, 0x1

    aget v3, v9, v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v5, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 499
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    .line 500
    .local v6, tgtPt:Landroid/graphics/PointF;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v6, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 504
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mUnPhanAnim:Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;

    move-object v2, v1

    move-object v3, p0

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;->addAnim(Landroid/view/View;Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;Landroid/view/View;Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    .line 509
    .end local v5           #srcPt:Landroid/graphics/PointF;
    .end local v6           #tgtPt:Landroid/graphics/PointF;
    .end local v7           #duration:I
    .end local v9           #pts:[I
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/AppShortcutZone;->mUnPhanAnim:Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;

    invoke-virtual {v0, p4}, Lcom/sec/android/app/twlauncher/UnPhanAnimInfo;->setListener(Lcom/sec/android/app/twlauncher/UnPhanAnimInfo$UnPhanAnimInfoLstnr;)V

    .line 510
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->invalidate()V

    .line 511
    const/4 v0, 0x1

    goto :goto_1

    .line 507
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone$unPhanAnimLstnr;->onAnimEnd(Lcom/sec/android/app/twlauncher/GLAnim;)V

    goto :goto_2
.end method
