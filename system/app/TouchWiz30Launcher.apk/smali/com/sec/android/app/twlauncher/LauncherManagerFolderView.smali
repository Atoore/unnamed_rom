.class public Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;
.super Landroid/widget/FrameLayout;
.source "LauncherManagerFolderView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;,
        Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$LauncherManagerFolderViewAdapter;
    }
.end annotation


# instance fields
.field protected mContent:Landroid/widget/GridView;

.field private mListener:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;

.field private mRegions:Lcom/sec/android/app/twlauncher/RegionInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    new-instance v0, Lcom/sec/android/app/twlauncher/RegionInfo;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/RegionInfo;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mRegions:Lcom/sec/android/app/twlauncher/RegionInfo;

    .line 64
    return-void
.end method

.method private touchEventHandler(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "aEv"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 110
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mListener:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;

    if-nez v3, :cond_0

    move v3, v5

    .line 129
    :goto_0
    return v3

    .line 113
    :cond_0
    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 114
    .local v2, pt:Landroid/graphics/PointF;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mRegions:Lcom/sec/android/app/twlauncher/RegionInfo;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/twlauncher/RegionInfo;->getF(Landroid/graphics/PointF;)I

    move-result v1

    .line 115
    .local v1, index:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    move v3, v5

    .line 116
    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 119
    .local v0, action:I
    if-nez v0, :cond_2

    move v3, v6

    .line 120
    goto :goto_0

    .line 122
    :cond_2
    if-ne v6, v0, :cond_3

    .line 123
    packed-switch v1, :pswitch_data_0

    :cond_3
    move v3, v5

    .line 129
    goto :goto_0

    .line 125
    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mListener:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;

    invoke-interface {v3, p0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;->onDismiss(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;)V

    move v3, v6

    .line 126
    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 97
    return-void
.end method

.method public getAppAdapter()Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    .locals 2

    .prologue
    .line 133
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mContent:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 134
    .local v0, adapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v1, :cond_0

    .line 135
    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .end local v0           #adapter:Landroid/widget/ListAdapter;
    move-object v1, v0

    .line 137
    :goto_0
    return-object v1

    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getViewForAppInfo(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;
    .locals 5
    .parameter "aInfo"

    .prologue
    .line 160
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mContent:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 161
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mContent:Landroid/widget/GridView;

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 162
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 163
    .local v1, tag:Ljava/lang/Object;
    if-ne v1, p1, :cond_0

    move-object v3, v2

    .line 167
    .end local v1           #tag:Ljava/lang/Object;
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v3

    .line 160
    .restart local v1       #tag:Ljava/lang/Object;
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 167
    .end local v1           #tag:Ljava/lang/Object;
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public invalidate()V
    .locals 0

    .prologue
    .line 172
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 173
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 79
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 81
    const v0, 0x7f06002f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mContent:Landroid/widget/GridView;

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mContent:Landroid/widget/GridView;

    new-instance v1, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$LauncherManagerFolderViewAdapter;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$LauncherManagerFolderViewAdapter;-><init>(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mContent:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mContent:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 85
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "aEv"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->touchEventHandler(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "aView"
    .parameter "aPosition"
    .parameter "aId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, aAdapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mListener:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;

    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mListener:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-object v6, p0

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJLcom/sec/android/app/twlauncher/LauncherManagerFolderView;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .parameter
    .parameter "aView"
    .parameter "aPosition"
    .parameter "aId"
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
    .local p1, aAdapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x0

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mListener:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;

    if-nez v0, :cond_0

    move v0, v1

    .line 156
    :goto_0
    return v0

    .line 153
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 154
    goto :goto_0

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mListener:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-object v6, p0

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJLcom/sec/android/app/twlauncher/LauncherManagerFolderView;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "aChanged"
    .parameter "aLeft"
    .parameter "aTop"
    .parameter "aRight"
    .parameter "aBottom"

    .prologue
    const/high16 v3, 0x42c8

    .line 68
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 70
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mRegions:Lcom/sec/android/app/twlauncher/RegionInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/RegionInfo;->clear()V

    .line 71
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 72
    .local v1, closeBtnSize:Landroid/graphics/PointF;
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->getRight()I

    move-result v2

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->getRight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->getTop()I

    move-result v5

    int-to-float v5, v5

    iget v6, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v6

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 74
    .local v0, closeBtn:Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mRegions:Lcom/sec/android/app/twlauncher/RegionInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/app/twlauncher/RegionInfo;->addF(ILandroid/graphics/RectF;)Z

    .line 75
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "aEv"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->touchEventHandler(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setActionListener(Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;)V
    .locals 0
    .parameter "aListener"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mListener:Lcom/sec/android/app/twlauncher/LauncherManagerFolderView$ActionListener;

    .line 93
    return-void
.end method

.method public setChildState(I)V
    .locals 4
    .parameter "aVisibility"

    .prologue
    .line 176
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mContent:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 177
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherManagerFolderView;->mContent:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 178
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 180
    .end local v1           #v:Landroid/view/View;
    :cond_0
    return-void
.end method
