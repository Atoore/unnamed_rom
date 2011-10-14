.class public Lcom/sec/android/app/twlauncher/MenuItemView;
.super Landroid/widget/LinearLayout;
.source "MenuItemView.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLCanvas$Preloadable;
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# static fields
.field private static final mRoundedRectSolid:Lcom/sec/android/app/twlauncher/RoundedRectSolid;


# instance fields
.field private mBGFocusedSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mBadgeCenterOffsetFromCenter:I

.field private mBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field protected mBadgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mBadgeTopOffset:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mDeleteIconLeftOffsetFromCenter:I

.field private mDeleteIconTopOffset:I

.field private mDrawBadgeCount:Z

.field private mEditLeftOffset:I

.field private mEditTopOffset:I

.field private mExternalStorageDrawable:Landroid/graphics/drawable/Drawable;

.field private mExternalStorageOffset:I

.field private mFocusMargin:I

.field private mFocusedDrawable:Landroid/graphics/drawable/Drawable;

.field private mFontSizeDefault:I

.field private mFontSizeSmall:I

.field protected mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

.field protected mIconView:Landroid/widget/ImageView;

.field private mIgnoreDrawableStateChanges:Z

.field private mIsDragging:Z

.field private mIsFocused:Z

.field private mIsPressed:Z

.field private mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

.field protected mNameSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

.field protected mNameView:Landroid/widget/TextView;

.field private mPaint:Landroid/graphics/Paint;

.field private mPhantomMode:Z

.field private mShowAppIsRunning:Z

.field private mShownBadgeCnt:I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRect2:Landroid/graphics/Rect;

.field private mbDrawDeleteBadge:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 100
    new-instance v0, Lcom/sec/android/app/twlauncher/RoundedRectSolid;

    const v1, 0x3dcccccd

    const v2, 0x3c888889

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/RoundedRectSolid;-><init>(FF)V

    sput-object v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mRoundedRectSolid:Lcom/sec/android/app/twlauncher/RoundedRectSolid;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/MenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsDragging:Z

    .line 38
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIgnoreDrawableStateChanges:Z

    .line 40
    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mShownBadgeCnt:I

    .line 42
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mbDrawDeleteBadge:Z

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mDrawBadgeCount:Z

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTmpRect:Landroid/graphics/Rect;

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTmpRect2:Landroid/graphics/Rect;

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    .line 82
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPhantomMode:Z

    .line 84
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mShowAppIsRunning:Z

    .line 110
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->init()V

    .line 111
    return-void
.end method

.method private drawGLBadge(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/ApplicationInfo;)V
    .locals 28
    .parameter "canvas"
    .parameter "info"

    .prologue
    .line 363
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getBadgeCount()I

    move-result v6

    .line 364
    .local v6, badgeCount:I
    if-lez v6, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mDrawBadgeCount:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 365
    const/16 v23, 0x0

    .line 366
    .local v23, width:I
    const/4 v14, 0x0

    .line 368
    .local v14, height:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mShownBadgeCnt:I

    move/from16 v24, v0

    move v0, v6

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-object/from16 v24, v0

    if-nez v24, :cond_4

    .line 369
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsPressed:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mColorFilter:Landroid/graphics/ColorFilter;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mColorFilter:Landroid/graphics/ColorFilter;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 376
    :goto_0
    const/16 v24, 0x64

    move v0, v6

    move/from16 v1, v24

    if-lt v0, v1, :cond_7

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFontSizeSmall:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 382
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    .line 383
    .local v16, iwidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    .line 384
    .local v15, iheight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    .line 386
    .local v19, paddingLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    .line 387
    .local v21, paddingTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    .line 388
    .local v18, paddingBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    .line 389
    .local v20, paddingRight:I
    sub-int v24, v16, v19

    sub-int v13, v24, v20

    .line 390
    .local v13, defaultContentsWidth:I
    sub-int v24, v15, v21

    sub-int v12, v24, v18

    .line 392
    .local v12, defaultContentsHeight:I
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 393
    .local v7, badgeText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTmpRect2:Landroid/graphics/Rect;

    move-object v8, v0

    .line 394
    .local v8, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v26

    move-object/from16 v0, v24

    move-object v1, v7

    move/from16 v2, v25

    move/from16 v3, v26

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 396
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v11

    .line 397
    .local v11, contentsWidth:I
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 398
    .local v10, contentsHeight:I
    if-ge v11, v13, :cond_1

    .line 399
    move v11, v13

    .line 401
    :cond_1
    if-ge v10, v12, :cond_2

    .line 402
    move v10, v12

    .line 404
    :cond_2
    add-int v24, v11, v19

    add-int v23, v24, v20

    .line 405
    add-int v24, v10, v21

    add-int v14, v24, v18

    .line 407
    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v23

    move v1, v14

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 408
    .local v5, b:Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 410
    .local v9, c:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v23

    move v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 413
    div-int/lit8 v24, v23, 0x2

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-int/lit8 v25, v14, 0x2

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Paint;->ascent()F

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Paint;->descent()F

    move-result v27

    add-float v26, v26, v27

    const/high16 v27, 0x4000

    div-float v26, v26, v27

    sub-float v25, v25, v26

    const/high16 v26, 0x3f80

    sub-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    move-object v0, v9

    move-object v1, v7

    move/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-object/from16 v24, v0

    if-nez v24, :cond_3

    .line 417
    new-instance v24, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct/range {v24 .. v24}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 419
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    .line 422
    .end local v5           #b:Landroid/graphics/Bitmap;
    .end local v7           #badgeText:Ljava/lang/String;
    .end local v8           #bounds:Landroid/graphics/Rect;
    .end local v9           #c:Landroid/graphics/Canvas;
    .end local v10           #contentsHeight:I
    .end local v11           #contentsWidth:I
    .end local v12           #defaultContentsHeight:I
    .end local v13           #defaultContentsWidth:I
    .end local v15           #iheight:I
    .end local v16           #iwidth:I
    .end local v18           #paddingBottom:I
    .end local v19           #paddingLeft:I
    .end local v20           #paddingRight:I
    .end local v21           #paddingTop:I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getWidth()I

    move-result v24

    sub-int v24, v24, v23

    div-int/lit8 v24, v24, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeCenterOffsetFromCenter:I

    move/from16 v25, v0

    add-int v17, v24, v25

    .line 424
    .local v17, left:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getPaddingTop()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeTopOffset:I

    move/from16 v25, v0

    add-int v22, v24, v25

    .line 426
    .local v22, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-object/from16 v24, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V

    .line 428
    .end local v14           #height:I
    .end local v17           #left:I
    .end local v22           #top:I
    .end local v23           #width:I
    :cond_5
    return-void

    .line 373
    .restart local v14       #height:I
    .restart local v23       #width:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/16 :goto_0

    .line 379
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFontSizeDefault:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_1
.end method

.method private drawGLDeleteIcon(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuItemDeleteIconSurface(Lcom/sec/android/app/twlauncher/GLCanvas;)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-result-object v1

    .line 432
    .local v1, s:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
    if-eqz v1, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mDeleteIconLeftOffsetFromCenter:I

    add-int v0, v2, v3

    .line 434
    .local v0, left:I
    int-to-float v2, v0

    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mDeleteIconTopOffset:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V

    .line 436
    .end local v0           #left:I
    :cond_0
    return-void
.end method

.method private drawGLEditCorner(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuItemEditCornerSurface(Lcom/sec/android/app/twlauncher/GLCanvas;)Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    move-result-object v0

    .line 440
    .local v0, s:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;
    if-eqz v0, :cond_0

    .line 441
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mEditLeftOffset:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mEditTopOffset:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V

    .line 442
    :cond_0
    return-void
.end method

.method private drawGLFocusedBackground(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 346
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFocusMargin:I

    .line 347
    .local v3, offset:I
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBGFocusedSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    if-nez v5, :cond_0

    .line 348
    new-instance v5, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v5}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBGFocusedSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 349
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getWidth()I

    move-result v5

    mul-int/lit8 v6, v3, 0x2

    add-int v4, v5, v6

    .line 350
    .local v4, width:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getHeight()I

    move-result v5

    mul-int/lit8 v6, v3, 0x2

    add-int v2, v5, v6

    .line 352
    .local v2, height:I
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v7, v7, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 353
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 354
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 355
    .local v1, c:Landroid/graphics/Canvas;
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 357
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBGFocusedSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v5, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    .line 359
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #c:Landroid/graphics/Canvas;
    .end local v2           #height:I
    .end local v4           #width:I
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBGFocusedSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    neg-int v6, v3

    int-to-float v6, v6

    neg-int v7, v3

    int-to-float v7, v7

    invoke-virtual {p1, v5, v6, v7}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V

    .line 360
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 121
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0b0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFocusMargin:I

    .line 123
    const v1, 0x7f020016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    .line 124
    const v1, 0x7f020036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 125
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v2, 0x7f00

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 126
    const v1, 0x7f0b0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeTopOffset:I

    .line 127
    const v1, 0x7f0b0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeCenterOffsetFromCenter:I

    .line 128
    const v1, 0x7f0b001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mDeleteIconTopOffset:I

    .line 129
    const v1, 0x7f0b001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mDeleteIconLeftOffsetFromCenter:I

    .line 130
    const v1, 0x7f0b0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mEditLeftOffset:I

    .line 131
    const v1, 0x7f0b0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mEditTopOffset:I

    .line 135
    const v1, 0x7f0200ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mExternalStorageDrawable:Landroid/graphics/drawable/Drawable;

    .line 136
    const v1, 0x7f0b0041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mExternalStorageOffset:I

    .line 138
    const v1, 0x7f0b001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFontSizeDefault:I

    .line 139
    const v1, 0x7f0b001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFontSizeSmall:I

    .line 140
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 141
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFontSizeDefault:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 142
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 144
    return-void
.end method


# virtual methods
.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 19
    .parameter "canvas"

    .prologue
    .line 246
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_8

    const/4 v5, 0x1

    move/from16 v18, v5

    .line 248
    .local v18, visible:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object v5, v0

    if-nez v5, :cond_0

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getContext()Landroid/content/Context;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/twlauncher/Launcher;

    .line 250
    .local v14, launcher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-virtual {v14}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/MenuItemView;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    .line 252
    .end local v14           #launcher:Lcom/sec/android/app/twlauncher/Launcher;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    .line 253
    .local v16, parent:Landroid/view/ViewParent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_9

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/AppMenu;

    move v5, v0

    if-nez v5, :cond_1

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move v5, v0

    if-eqz v5, :cond_9

    :cond_1
    const/4 v5, 0x1

    move v11, v5

    .line 255
    .local v11, editMode:Z
    :goto_1
    if-eqz v18, :cond_3

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->isPhantom()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 257
    const v5, 0x3ecccccd

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 258
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsFocused:Z

    move v5, v0

    if-eqz v5, :cond_3

    .line 259
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->drawGLFocusedBackground(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 262
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getTag()Ljava/lang/Object;

    move-result-object v17

    .line 263
    .local v17, tag:Ljava/lang/Object;
    if-eqz v11, :cond_4

    if-eqz v17, :cond_4

    .line 264
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->drawGLEditCorner(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 267
    :cond_4
    if-eqz v18, :cond_7

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameView:Landroid/widget/TextView;

    move-object v15, v0

    .line 269
    .local v15, nv:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    move-object v6, v0

    invoke-virtual {v15}, Landroid/widget/TextView;->getLeft()I

    move-result v5

    int-to-float v7, v5

    invoke-virtual {v15}, Landroid/widget/TextView;->getTop()I

    move-result v5

    int-to-float v8, v5

    invoke-virtual {v15}, Landroid/widget/TextView;->getRight()I

    move-result v5

    int-to-float v9, v5

    invoke-virtual {v15}, Landroid/widget/TextView;->getBottom()I

    move-result v5

    int-to-float v10, v5

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    .line 271
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsPressed:Z

    move v5, v0

    if-eqz v5, :cond_5

    .line 272
    const/high16 v5, 0x3f00

    const/high16 v6, 0x3f00

    const/high16 v7, 0x3f00

    const/high16 v8, 0x3f80

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateColor(FFFF)V

    .line 274
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconView:Landroid/widget/ImageView;

    move-object v13, v0

    .line 275
    .local v13, iv:Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mShowAppIsRunning:Z

    move v5, v0

    if-eqz v5, :cond_6

    .line 276
    sget-object v5, Lcom/sec/android/app/twlauncher/MenuItemView;->mRoundedRectSolid:Lcom/sec/android/app/twlauncher/RoundedRectSolid;

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->setGeometry(Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;)V

    .line 279
    const/4 v5, 0x0

    invoke-virtual {v13}, Landroid/widget/ImageView;->getTop()I

    move-result v6

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 280
    const/high16 v5, 0x41f0

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->rotateX(F)V

    .line 281
    const/4 v5, 0x0

    invoke-virtual {v13}, Landroid/widget/ImageView;->getTop()I

    move-result v6

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int/2addr v6, v7

    neg-int v6, v6

    int-to-float v6, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 284
    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x41a0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->scale(FFF)V

    .line 286
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    move-object v6, v0

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v7, v5

    invoke-virtual {v13}, Landroid/widget/ImageView;->getTop()I

    move-result v5

    int-to-float v8, v5

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v9, v5

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v10, v5

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FFFF)V

    .line 287
    if-eqz v17, :cond_7

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move v5, v0

    if-eqz v5, :cond_7

    .line 288
    move-object/from16 v0, v17

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v12, v0

    .line 289
    .local v12, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    if-nez v11, :cond_a

    .line 290
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->drawGLBadge(Lcom/sec/android/app/twlauncher/GLCanvas;Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .line 295
    .end local v12           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v13           #iv:Landroid/view/View;
    .end local v15           #nv:Landroid/view/View;
    :cond_7
    :goto_2
    const/4 v5, 0x0

    return v5

    .line 247
    .end local v11           #editMode:Z
    .end local v16           #parent:Landroid/view/ViewParent;
    .end local v17           #tag:Ljava/lang/Object;
    .end local v18           #visible:Z
    :cond_8
    const/4 v5, 0x0

    move/from16 v18, v5

    goto/16 :goto_0

    .line 253
    .restart local v16       #parent:Landroid/view/ViewParent;
    .restart local v18       #visible:Z
    :cond_9
    const/4 v5, 0x0

    move v11, v5

    goto/16 :goto_1

    .line 291
    .restart local v11       #editMode:Z
    .restart local v12       #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v13       #iv:Landroid/view/View;
    .restart local v15       #nv:Landroid/view/View;
    .restart local v17       #tag:Ljava/lang/Object;
    :cond_a
    invoke-virtual {v12}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isSystemApp()Z

    move-result v5

    if-nez v5, :cond_7

    .line 292
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->drawGLDeleteIcon(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    goto :goto_2
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9
    .parameter "canvas"
    .parameter "view"
    .parameter "drawingTime"

    .prologue
    .line 474
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconView:Landroid/widget/ImageView;

    if-ne p2, v7, :cond_6

    .line 476
    iget-boolean v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsPressed:Z

    if-eqz v7, :cond_4

    .line 477
    move-object v0, p2

    check-cast v0, Landroid/widget/ImageView;

    move-object v3, v0

    .line 478
    .local v3, iv:Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 479
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 480
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 482
    :cond_0
    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 483
    .local v1, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 484
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 486
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v6

    .line 488
    .local v6, ret:Z
    if-eqz v2, :cond_2

    .line 489
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 490
    :cond_2
    if-eqz v1, :cond_3

    .line 491
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .end local v1           #bg:Landroid/graphics/drawable/Drawable;
    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    .end local v3           #iv:Landroid/widget/ImageView;
    :cond_3
    :goto_0
    move v7, v6

    .line 511
    .end local v6           #ret:Z
    :goto_1
    return v7

    .line 494
    :cond_4
    iget-boolean v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsFocused:Z

    if-eqz v7, :cond_5

    .line 495
    iget v4, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFocusMargin:I

    .line 496
    .local v4, offset:I
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mTmpRect:Landroid/graphics/Rect;

    .line 497
    .local v5, r:Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v7, v4

    iput v7, v5, Landroid/graphics/Rect;->left:I

    .line 498
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v7, v4

    iput v7, v5, Landroid/graphics/Rect;->right:I

    .line 499
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v7, v4

    iput v7, v5, Landroid/graphics/Rect;->top:I

    .line 500
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v7, v4

    iput v7, v5, Landroid/graphics/Rect;->bottom:I

    .line 501
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 502
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 503
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v6

    .line 504
    .restart local v6       #ret:Z
    goto :goto_0

    .line 506
    .end local v4           #offset:I
    .end local v5           #r:Landroid/graphics/Rect;
    .end local v6           #ret:Z
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v6

    .restart local v6       #ret:Z
    goto :goto_0

    .line 511
    .end local v6           #ret:Z
    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v7

    goto :goto_1
.end method

.method protected drawableStateChanged()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 300
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 301
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIgnoreDrawableStateChanges:Z

    if-eqz v5, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getDrawableState()[I

    move-result-object v4

    .line 307
    .local v4, state:[I
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 308
    .local v3, imageView:Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 309
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 310
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 313
    :cond_2
    array-length v0, v4

    .line 314
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 315
    aget v5, v4, v2

    const v6, 0x10100a7

    if-ne v5, v6, :cond_3

    .line 316
    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsPressed:Z

    .line 317
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->invalidate()V

    .line 318
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    goto :goto_0

    .line 320
    :cond_3
    aget v5, v4, v2

    const v6, 0x101009c

    if-ne v5, v6, :cond_4

    .line 321
    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsFocused:Z

    .line 322
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsPressed:Z

    .line 323
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->invalidate()V

    .line 324
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    goto :goto_0

    .line 314
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 329
    :cond_5
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsPressed:Z

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsFocused:Z

    if-eqz v5, :cond_0

    .line 330
    :cond_6
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsPressed:Z

    .line 331
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsFocused:Z

    .line 332
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->invalidate()V

    .line 333
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    goto :goto_0
.end method

.method public forceReload()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 203
    return-void
.end method

.method public freeResources()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 238
    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    .line 239
    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    .line 240
    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBadgeSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 241
    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mBGFocusedSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 242
    return-void
.end method

.method public getIconView()Landroid/view/View;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 3
    .parameter "location"
    .parameter "dirty"

    .prologue
    const/4 v2, 0x1

    .line 553
    aget v0, p1, v2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->invalidate()V

    .line 555
    :cond_0
    aget v0, p1, v2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTop()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    if-eqz v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/GLChildSurface;->invalidate()V

    .line 557
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public isPhantom()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPhantomMode:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 164
    const v0, 0x7f06000d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameView:Landroid/widget/TextView;

    .line 165
    const v0, 0x7f06000b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 166
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 115
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 116
    return-void
.end method

.method public preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Lcom/sec/android/app/twlauncher/GLChildSurface;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconView:Landroid/widget/ImageView;

    sget-object v2, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;->RECYCLE:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLChildSurface;-><init>(Landroid/view/View;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    if-nez v0, :cond_1

    .line 229
    new-instance v0, Lcom/sec/android/app/twlauncher/GLChildSurface;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameView:Landroid/widget/TextView;

    sget-object v2, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;->RECYCLE:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/GLChildSurface;-><init>(Landroid/view/View;Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface$BitmapPolicy;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/GLChildSurface;->preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameSurface:Lcom/sec/android/app/twlauncher/GLChildSurface;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/GLChildSurface;->preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 235
    return-void
.end method

.method public setAppInfo(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 528
    if-nez p1, :cond_0

    .line 529
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 549
    :goto_0
    return-void

    .line 533
    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isFiltered()Z

    move-result v0

    if-nez v0, :cond_1

    .line 534
    iget-object v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/Utilities;->createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 535
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setFiltered(Z)V

    .line 547
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setTag(Ljava/lang/Object;)V

    .line 548
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->updateBadgeCount()I

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 195
    return-void
.end method

.method public setDeleteBadgeOn(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 338
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mbDrawDeleteBadge:Z

    .line 339
    return-void
.end method

.method public setDrawBadgeCountOn(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 342
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mDrawBadgeCount:Z

    .line 343
    return-void
.end method

.method public setIgnoreDrawableStateChanges(Z)V
    .locals 2
    .parameter "aIgnore"

    .prologue
    const/4 v1, 0x0

    .line 151
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIgnoreDrawableStateChanges:Z

    .line 152
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIgnoreDrawableStateChanges:Z

    if-eqz v0, :cond_0

    .line 153
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsPressed:Z

    .line 154
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsFocused:Z

    .line 156
    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    return-void
.end method

.method public setIsDragging(Z)V
    .locals 0
    .parameter "val"

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mIsDragging:Z

    .line 199
    return-void
.end method

.method public setPhantom(Z)V
    .locals 1
    .parameter "aPhantomMode"

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mPhantomMode:Z

    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuItemView;->setVisibility(I)V

    .line 217
    return-void
.end method

.method public setShowAppIsRunning(Z)V
    .locals 0
    .parameter "running"

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mShowAppIsRunning:Z

    .line 221
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 516
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 517
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v2, :cond_0

    .line 518
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v1, v0

    .line 519
    .local v1, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v2, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 520
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    iget-object v2, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->bg:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 522
    iget-object v2, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->bg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 525
    .end local v1           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuItemView;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    return-void
.end method
