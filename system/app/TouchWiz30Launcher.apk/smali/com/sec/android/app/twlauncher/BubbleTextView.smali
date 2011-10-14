.class public Lcom/sec/android/app/twlauncher/BubbleTextView;
.super Landroid/widget/TextView;
.source "BubbleTextView.java"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundSizeChanged:Z

.field private mBadgeCenterOffsetFromCenter:I

.field private mBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private mBadgeTopOffsetFromTop:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mCompoundDrawable:Landroid/graphics/drawable/Drawable;

.field private mCornerRadius:F

.field private final mDrawRect:Landroid/graphics/Rect;

.field private mExternalStorageDrawable:Landroid/graphics/drawable/Drawable;

.field private mExternalStorageOffset:I

.field private mFontSizeDefault:I

.field private mFontSizeSmall:I

.field private mIsDragging:Z

.field private mIsPressed:Z

.field private mPaddingH:F

.field private final mPaddingRect:Landroid/graphics/Rect;

.field private mPaddingV:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPressDrawable:Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

.field private final mRect:Landroid/graphics/RectF;

.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mRect:Landroid/graphics/RectF;

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPaddingRect:Landroid/graphics/Rect;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mDrawRect:Landroid/graphics/Rect;

    .line 103
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->init()V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mRect:Landroid/graphics/RectF;

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPaddingRect:Landroid/graphics/Rect;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mDrawRect:Landroid/graphics/Rect;

    .line 108
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->init()V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mRect:Landroid/graphics/RectF;

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPaddingRect:Landroid/graphics/Rect;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mDrawRect:Landroid/graphics/Rect;

    .line 113
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->init()V

    .line 114
    return-void
.end method

.method private drawBadge(Landroid/graphics/Canvas;)V
    .locals 29
    .parameter "canvas"

    .prologue
    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v21

    .line 268
    .local v21, tag:Ljava/lang/Object;
    if-eqz v21, :cond_0

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move/from16 v24, v0

    if-nez v24, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    move-object/from16 v0, v21

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v14, v0

    .line 271
    .local v14, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-static {}, Lcom/sec/android/app/twlauncher/BuildLocaleChecker;->getBuildLocale()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 272
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getBadgeCount(Lcom/sec/android/app/twlauncher/ApplicationInfo;)I

    move-result v7

    .line 273
    .local v7, bubbleBadgeCount:I
    const/16 v24, 0x3e8

    move v0, v7

    move/from16 v1, v24

    if-lt v0, v1, :cond_2

    .line 274
    const/16 v7, 0x3e7

    .line 275
    :cond_2
    invoke-virtual {v14, v7}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setBadgeCount(I)V

    .line 280
    .end local v7           #bubbleBadgeCount:I
    :goto_1
    invoke-virtual {v14}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getBadgeCount()I

    move-result v24

    if-lez v24, :cond_0

    .line 282
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsPressed:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mColorFilter:Landroid/graphics/ColorFilter;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mColorFilter:Landroid/graphics/ColorFilter;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 289
    :goto_2
    invoke-virtual {v14}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getBadgeCount()I

    move-result v24

    const/16 v25, 0x64

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_7

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFontSizeSmall:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 295
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    .line 296
    .local v15, iwidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 297
    .local v13, iheight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPaddingRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPaddingRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    .line 299
    .local v18, paddingLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPaddingRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    .line 300
    .local v20, paddingTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPaddingRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    .line 301
    .local v17, paddingBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPaddingRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    .line 302
    .local v19, paddingRight:I
    sub-int v24, v15, v18

    sub-int v11, v24, v19

    .line 303
    .local v11, defaultContentsWidth:I
    sub-int v24, v13, v20

    sub-int v10, v24, v17

    .line 305
    .local v10, defaultContentsHeight:I
    invoke-virtual {v14}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getBadgeCount()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 306
    .local v5, badgeText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mDrawRect:Landroid/graphics/Rect;

    move-object v6, v0

    .line 307
    .local v6, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v26

    move-object/from16 v0, v24

    move-object v1, v5

    move/from16 v2, v25

    move/from16 v3, v26

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 309
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 310
    .local v9, contentsWidth:I
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 311
    .local v8, contentsHeight:I
    if-ge v9, v11, :cond_3

    .line 312
    move v9, v11

    .line 314
    :cond_3
    if-ge v8, v10, :cond_4

    .line 315
    move v8, v10

    .line 317
    :cond_4
    add-int v24, v9, v18

    add-int v23, v24, v19

    .line 318
    .local v23, width:I
    add-int v24, v8, v20

    add-int v12, v24, v17

    .line 320
    .local v12, height:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mScrollX:I

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getWidth()I

    move-result v25

    sub-int v25, v25, v23

    div-int/lit8 v25, v25, 0x2

    add-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeCenterOffsetFromCenter:I

    move/from16 v25, v0

    add-int v16, v24, v25

    .line 322
    .local v16, left:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mScrollY:I

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getPaddingTop()I

    move-result v25

    add-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeTopOffsetFromTop:I

    move/from16 v25, v0

    add-int v22, v24, v25

    .line 323
    .local v22, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    add-int v25, v16, v23

    add-int v26, v22, v12

    move-object/from16 v0, v24

    move/from16 v1, v16

    move/from16 v2, v22

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 326
    invoke-virtual {v14}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getBadgeCount()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    div-int/lit8 v25, v23, 0x2

    add-int v25, v25, v16

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-int/lit8 v26, v12, 0x2

    add-int v26, v26, v22

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Paint;->ascent()F

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Paint;->descent()F

    move-result v28

    add-float v27, v27, v28

    const/high16 v28, 0x4000

    div-float v27, v27, v28

    sub-float v26, v26, v27

    const/high16 v27, 0x3f80

    sub-float v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 277
    .end local v5           #badgeText:Ljava/lang/String;
    .end local v6           #bounds:Landroid/graphics/Rect;
    .end local v8           #contentsHeight:I
    .end local v9           #contentsWidth:I
    .end local v10           #defaultContentsHeight:I
    .end local v11           #defaultContentsWidth:I
    .end local v12           #height:I
    .end local v13           #iheight:I
    .end local v15           #iwidth:I
    .end local v16           #left:I
    .end local v17           #paddingBottom:I
    .end local v18           #paddingLeft:I
    .end local v19           #paddingRight:I
    .end local v20           #paddingTop:I
    .end local v22           #top:I
    .end local v23           #width:I
    :cond_5
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getBadgeCount(Lcom/sec/android/app/twlauncher/ApplicationInfo;)I

    move-result v24

    move-object v0, v14

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setBadgeCount(I)V

    goto/16 :goto_1

    .line 286
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/16 :goto_2

    .line 292
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFontSizeDefault:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_3
.end method

.method private getBadgeCount(Lcom/sec/android/app/twlauncher/ApplicationInfo;)I
    .locals 4
    .parameter "info"

    .prologue
    const/4 v3, 0x0

    .line 332
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v3

    .line 339
    :goto_0
    return v1

    .line 334
    :cond_1
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getModel()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->getApplicationInfo(Landroid/content/ComponentName;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v0

    .line 336
    .local v0, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    if-eqz v0, :cond_2

    .line 337
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getBadgeCount()I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v3

    .line 339
    goto :goto_0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 117
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/BubbleTextView;->setFocusable(Z)V

    .line 118
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 119
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/BubbleTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 126
    .local v0, res:Landroid/content/res/Resources;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    .line 128
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 129
    .local v1, scale:F
    const/high16 v2, 0x4100

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mCornerRadius:F

    .line 130
    const/high16 v2, 0x40a0

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPaddingH:F

    .line 132
    const/high16 v2, 0x3f80

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPaddingV:F

    .line 134
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v3, 0x7f00

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 136
    const v2, 0x7f020036

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 137
    const v2, 0x7f0b001a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFontSizeDefault:I

    .line 138
    const v2, 0x7f0b001b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFontSizeSmall:I

    .line 139
    const v2, 0x7f0b0018

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeCenterOffsetFromCenter:I

    .line 140
    const v2, 0x7f0b0019

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBadgeTopOffsetFromTop:I

    .line 144
    const v2, 0x7f0200ae

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mExternalStorageDrawable:Landroid/graphics/drawable/Drawable;

    .line 145
    const v2, 0x7f0b0041

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mExternalStorageOffset:I

    .line 147
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    .line 148
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 149
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mFontSizeDefault:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 150
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 153
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, 0x0

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 226
    .local v0, background:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 227
    iget v4, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mScrollX:I

    .line 228
    .local v4, scrollX:I
    iget v5, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mScrollY:I

    .line 230
    .local v5, scrollY:I
    iget-boolean v7, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBackgroundSizeChanged:Z

    if-eqz v7, :cond_0

    .line 231
    iget v7, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mRight:I

    iget v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBottom:I

    iget v9, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTop:I

    sub-int/2addr v8, v9

    invoke-virtual {v0, v12, v12, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 232
    iput-boolean v12, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBackgroundSizeChanged:Z

    .line 235
    :cond_0
    or-int v7, v4, v5

    if-nez v7, :cond_3

    .line 236
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 244
    .end local v4           #scrollX:I
    .end local v5           #scrollY:I
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 245
    .local v1, layout:Landroid/text/Layout;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mRect:Landroid/graphics/RectF;

    .line 246
    .local v3, rect:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getCompoundPaddingLeft()I

    move-result v2

    .line 247
    .local v2, left:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getExtendedPaddingTop()I

    move-result v6

    .line 249
    .local v6, top:I
    int-to-float v7, v2

    invoke-virtual {v1, v12}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v8

    add-float/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPaddingH:F

    sub-float/2addr v7, v8

    invoke-virtual {v1, v12}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    add-int/2addr v8, v6

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPaddingV:F

    sub-float/2addr v8, v9

    int-to-float v9, v2

    invoke-virtual {v1, v12}, Landroid/text/Layout;->getLineRight(I)F

    move-result v10

    add-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPaddingH:F

    add-float/2addr v9, v10

    iget v10, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mScrollX:I

    iget v11, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mRight:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mLeft:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-virtual {v1, v12}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v10

    add-int/2addr v10, v6

    int-to-float v10, v10

    iget v11, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPaddingV:F

    add-float/2addr v10, v11

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 252
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070003

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 253
    iget v7, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mCornerRadius:F

    iget v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mCornerRadius:F

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 255
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 257
    iget-boolean v7, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsDragging:Z

    if-nez v7, :cond_2

    .line 258
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/BubbleTextView;->drawBadge(Landroid/graphics/Canvas;)V

    .line 264
    :cond_2
    return-void

    .line 238
    .end local v1           #layout:Landroid/text/Layout;
    .end local v2           #left:I
    .end local v3           #rect:Landroid/graphics/RectF;
    .end local v6           #top:I
    .restart local v4       #scrollX:I
    .restart local v5       #scrollY:I
    :cond_3
    int-to-float v7, v4

    int-to-float v8, v5

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 239
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 240
    neg-int v7, v4

    int-to-float v7, v7

    neg-int v8, v5

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 174
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 175
    .local v2, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getDrawableState()[I

    move-result-object v7

    .line 176
    .local v7, state:[I
    const/4 v6, 0x0

    .line 177
    .local v6, pressed:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v8, v7

    if-ge v3, v8, :cond_0

    .line 178
    aget v8, v7, v3

    const v9, 0x10100a7

    if-ne v8, v9, :cond_4

    .line 179
    const/4 v6, 0x1

    .line 184
    :cond_0
    if-nez v6, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 185
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 188
    :cond_1
    if-eqz v6, :cond_5

    .line 189
    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsPressed:Z

    .line 190
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 191
    .local v4, icon:[Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_2

    aget-object v8, v4, v11

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPressDrawable:Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    if-nez v8, :cond_2

    .line 192
    aget-object v8, v4, v11

    iput-object v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mCompoundDrawable:Landroid/graphics/drawable/Drawable;

    .line 193
    aget-object v8, v4, v11

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 194
    .local v5, oldRect:Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 196
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 197
    .local v1, c:Landroid/graphics/Canvas;
    aget-object v8, v4, v11

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-virtual {v8, v13, v13, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 198
    aget-object v8, v4, v11

    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 199
    aget-object v8, v4, v11

    invoke-virtual {v8, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 200
    new-instance v8, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    invoke-direct {v8, v0}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPressDrawable:Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    .line 201
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPressDrawable:Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v8, v9}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 202
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPressDrawable:Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    invoke-virtual {v8, v12}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 205
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #c:Landroid/graphics/Canvas;
    .end local v5           #oldRect:Landroid/graphics/Rect;
    :cond_2
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPressDrawable:Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    if-eqz v8, :cond_3

    .line 206
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPressDrawable:Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    invoke-virtual {p0, v12, v8, v12, v12}, Lcom/sec/android/app/twlauncher/BubbleTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 207
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->invalidate()V

    .line 220
    .end local v4           #icon:[Landroid/graphics/drawable/Drawable;
    :cond_3
    :goto_1
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 221
    return-void

    .line 177
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 210
    :cond_5
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mCompoundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_6

    .line 211
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mCompoundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v12, v8, v12, v12}, Lcom/sec/android/app/twlauncher/BubbleTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 214
    :cond_6
    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsPressed:Z

    if-eqz v8, :cond_3

    .line 215
    iput-boolean v13, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsPressed:Z

    .line 216
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/BubbleTextView;->invalidate()V

    goto :goto_1
.end method

.method public resetPressedDrawable()V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mPressDrawable:Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    .line 170
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 157
    iget v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mLeft:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mRight:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mTop:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBottom:I

    if-eq v0, p4, :cond_1

    .line 158
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBackgroundSizeChanged:Z

    .line 160
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method public setIsDragging(Z)V
    .locals 0
    .parameter "val"

    .prologue
    .line 343
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mIsDragging:Z

    .line 344
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
