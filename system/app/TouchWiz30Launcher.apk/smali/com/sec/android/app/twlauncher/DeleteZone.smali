.class public Lcom/sec/android/app/twlauncher/DeleteZone;
.super Landroid/widget/LinearLayout;
.source "DeleteZone.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DragController$DragListener;
.implements Lcom/sec/android/app/twlauncher/DropTarget;
.implements Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup$DispatchDrawGL;


# instance fields
.field private mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

.field private final mApplyIconHoverColorFilter:Z

.field private mBgSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mDelColor:I

.field private mDeleteZoneAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

.field private mDragEnter:Z

.field private mDragEnterForced:Z

.field private mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

.field private final mDrawDeleteZoneBg:Z

.field private mIconHoverColorFilter:Landroid/graphics/ColorFilter;

.field private mIsUninstall:Z

.field private mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field private final mLocation:[I

.field private mMode:I

.field private mPendingUninstallPackageName:Ljava/lang/String;

.field private mRemoveBg:Landroid/graphics/drawable/Drawable;

.field private mRemoveBgDrag:Landroid/graphics/drawable/Drawable;

.field private mRemoveIcon:Landroid/widget/TextView;

.field private mRemoveSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mRemoveUninstallBg:Landroid/graphics/drawable/Drawable;

.field private mRemoveUninstallBgDragR:Landroid/graphics/drawable/Drawable;

.field private mRemoveUninstallBgDragU:Landroid/graphics/drawable/Drawable;

.field private mRemoveView:Landroid/widget/FrameLayout;

.field private final mSupportAppUninstall:Z

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTrashMode:Z

.field private mTrashPaintInfo:Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;

.field private mUninstColor:I

.field private mUninstallIcon:Landroid/widget/TextView;

.field private mUninstallSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

.field private mUninstallView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 119
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-array v1, v5, [I

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLocation:[I

    .line 71
    iput v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mMode:I

    .line 81
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v2, -0x6001

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mIconHoverColorFilter:Landroid/graphics/ColorFilter;

    .line 94
    new-instance v1, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-direct {v1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mBgSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 102
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTmpRect:Landroid/graphics/Rect;

    .line 116
    new-instance v1, Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;

    invoke-direct {v1}, Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTrashPaintInfo:Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;

    .line 121
    sget-object v1, Lcom/sec/android/app/twlauncher/R$styleable;->DeleteZone:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 122
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mApplyIconHoverColorFilter:Z

    .line 124
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mSupportAppUninstall:Z

    .line 125
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDrawDeleteZoneBg:Z

    .line 126
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDelColor:I

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstColor:I

    .line 130
    iget v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDelColor:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->setTrashPaint(I)V

    .line 131
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->init()V

    .line 132
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 136
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f020047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveBg:Landroid/graphics/drawable/Drawable;

    .line 137
    const v1, 0x7f020048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveBgDrag:Landroid/graphics/drawable/Drawable;

    .line 138
    const v1, 0x7f02004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveUninstallBg:Landroid/graphics/drawable/Drawable;

    .line 139
    const v1, 0x7f02004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveUninstallBgDragR:Landroid/graphics/drawable/Drawable;

    .line 140
    const v1, 0x7f02004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveUninstallBgDragU:Landroid/graphics/drawable/Drawable;

    .line 141
    new-instance v1, Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const-wide/16 v2, 0xc8

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;-><init>(JF)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDeleteZoneAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    .line 142
    return-void
.end method

.method private processItemDrop(Lcom/sec/android/app/twlauncher/DragSource;Lcom/sec/android/app/twlauncher/ItemInfo;Z)V
    .locals 12
    .parameter "source"
    .parameter "item"
    .parameter "uninstall"

    .prologue
    .line 335
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getModel()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v5

    .line 336
    .local v5, model:Lcom/sec/android/app/twlauncher/LauncherModel;
    iget-wide v8, p2, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v10, -0x64

    cmp-long v8, v8, v10

    if-nez v8, :cond_5

    .line 337
    instance-of v8, p2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v8, :cond_3

    .line 338
    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-object v8, v0

    invoke-virtual {v5, v8}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeDesktopSamsungAppWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 351
    :cond_0
    :goto_0
    instance-of v8, p2, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v8, :cond_6

    .line 352
    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object v7, v0

    .line 353
    .local v7, userFolderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v8, v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    .line 354
    invoke-virtual {v5, v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeUserFolder(Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    .line 367
    .end local v7           #userFolderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v8, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 369
    if-eqz p3, :cond_2

    .line 370
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mPendingUninstallPackageName:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 371
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mPendingUninstallPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/sec/android/app/twlauncher/Launcher;->uninstallPackage(Ljava/lang/String;)Z

    .line 374
    :cond_2
    return-void

    .line 339
    :cond_3
    instance-of v8, p2, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    if-eqz v8, :cond_4

    .line 340
    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v8, v0

    invoke-virtual {v5, v8}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeDesktopAppWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V

    goto :goto_0

    .line 342
    :cond_4
    invoke-virtual {v5, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeDesktopItem(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    goto :goto_0

    .line 345
    :cond_5
    instance-of v8, p1, Lcom/sec/android/app/twlauncher/UserFolder;

    if-eqz v8, :cond_0

    .line 346
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolder;

    move-object v6, v0

    .line 347
    .local v6, userFolder:Lcom/sec/android/app/twlauncher/UserFolder;
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/UserFolder;->getInfo()Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 348
    .restart local v7       #userFolderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    invoke-virtual {v5, v7, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeUserFolderItem(Lcom/sec/android/app/twlauncher/UserFolderInfo;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    goto :goto_0

    .line 355
    .end local v6           #userFolder:Lcom/sec/android/app/twlauncher/UserFolder;
    .end local v7           #userFolderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    :cond_6
    instance-of v8, p2, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    if-eqz v8, :cond_7

    .line 356
    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v3, v0

    .line 357
    .local v3, launcherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getAppWidgetHost()Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    move-result-object v1

    .line 358
    .local v1, appWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;
    if-eqz v1, :cond_1

    .line 359
    iget v8, v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v1, v8}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_1

    .line 361
    .end local v1           #appWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;
    .end local v3           #launcherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    :cond_7
    instance-of v8, p2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v8, :cond_1

    .line 362
    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-object v2, v0

    .line 363
    .local v2, info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v8}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->getInstance(Landroid/app/ActivityGroup;)Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v4

    .line 365
    .local v4, manager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4, v8, v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->destroyWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    goto :goto_1
.end method

.method private setBgSurface()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 224
    const/4 v1, 0x0

    .line 226
    .local v1, background:Landroid/graphics/drawable/Drawable;
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mSupportAppUninstall:Z

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 227
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragEnter:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragEnterForced:Z

    if-eqz v5, :cond_3

    .line 228
    :cond_0
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mIsUninstall:Z

    if-eqz v5, :cond_2

    .line 229
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveUninstallBgDragU:Landroid/graphics/drawable/Drawable;

    .line 243
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getWidth()I

    move-result v4

    .line 244
    .local v4, width:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getHeight()I

    move-result v3

    .line 245
    .local v3, height:I
    if-lez v4, :cond_1

    if-lez v3, :cond_1

    .line 246
    invoke-virtual {v1, v7, v7, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 247
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 248
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 249
    .local v2, c:Landroid/graphics/Canvas;
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 250
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mBgSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v5, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    .line 252
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #c:Landroid/graphics/Canvas;
    :cond_1
    return-void

    .line 231
    .end local v3           #height:I
    .end local v4           #width:I
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveUninstallBgDragR:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 234
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveUninstallBg:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 237
    :cond_4
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragEnter:Z

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragEnterForced:Z

    if-eqz v5, :cond_6

    .line 238
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveBgDrag:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 240
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveBg:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private setIconViewColorFilter(Landroid/widget/TextView;Landroid/graphics/ColorFilter;)V
    .locals 5
    .parameter "iconView"
    .parameter "cf"

    .prologue
    const/4 v2, 0x1

    .line 377
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 378
    .local v0, ds:[Landroid/graphics/drawable/Drawable;
    aget-object v1, v0, v2

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 379
    const/4 v1, 0x0

    aget-object v1, v0, v1

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    const/4 v4, 0x3

    aget-object v4, v0, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 380
    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    .line 381
    return-void
.end method

.method private setMode(Lcom/sec/android/app/twlauncher/ItemInfo;)V
    .locals 17
    .parameter "info"

    .prologue
    .line 545
    const/4 v13, 0x0

    move v0, v13

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragEnterForced:Z

    .line 546
    const/4 v13, 0x0

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DeleteZone;->mMode:I

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveView:Landroid/widget/FrameLayout;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstallView:Landroid/widget/FrameLayout;

    move-object v13, v0

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 549
    const/4 v13, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/DeleteZone;->mPendingUninstallPackageName:Ljava/lang/String;

    .line 551
    if-nez p1, :cond_1

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    move-wide v13, v0

    const-wide/16 v15, -0x1

    cmp-long v13, v13, v15

    if-eqz v13, :cond_0

    .line 555
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/DeleteZone;->mSupportAppUninstall:Z

    move v13, v0

    if-eqz v13, :cond_0

    .line 558
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move v13, v0

    if-eqz v13, :cond_2

    .line 559
    move-object/from16 v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v4, v0

    .line 560
    .local v4, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isSystemApp()Z

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 562
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 563
    .local v2, action:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v7

    .line 564
    .local v7, categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    if-eqz v7, :cond_0

    .line 565
    const-string v13, "android.intent.action.MAIN"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "android.intent.category.LAUNCHER"

    invoke-interface {v7, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 567
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/DeleteZone;->mPendingUninstallPackageName:Ljava/lang/String;

    .line 569
    const/4 v13, 0x1

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DeleteZone;->mMode:I

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstallView:Landroid/widget/FrameLayout;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 574
    .end local v2           #action:Ljava/lang/String;
    .end local v4           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v7           #categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move v13, v0

    if-eqz v13, :cond_4

    .line 575
    move-object/from16 v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v12, v0

    .line 576
    .local v12, wAppInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    .line 577
    .local v5, awm:Landroid/appwidget/AppWidgetManager;
    const/4 v3, 0x0

    .line 578
    .local v3, ap:Landroid/content/pm/ApplicationInfo;
    iget v13, v12, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v5, v13}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v6

    .line 580
    .local v6, awpi:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v6, :cond_3

    .line 581
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    iget-object v14, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 589
    :cond_3
    :goto_1
    if-eqz v3, :cond_0

    .line 590
    iget v9, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 591
    .local v9, flag:I
    and-int/lit8 v13, v9, 0x1

    if-nez v13, :cond_0

    and-int/lit16 v13, v9, 0x80

    if-nez v13, :cond_0

    .line 592
    iget-object v13, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/DeleteZone;->mPendingUninstallPackageName:Ljava/lang/String;

    .line 593
    const/4 v13, 0x1

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DeleteZone;->mMode:I

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstallView:Landroid/widget/FrameLayout;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 584
    .end local v9           #flag:I
    :catch_0
    move-exception v13

    move-object v8, v13

    .line 586
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "DeleteZone"

    const-string v14, "Failed to get application info"

    invoke-static {v13, v14, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 597
    .end local v3           #ap:Landroid/content/pm/ApplicationInfo;
    .end local v5           #awm:Landroid/appwidget/AppWidgetManager;
    .end local v6           #awpi:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v12           #wAppInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    :cond_4
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move v13, v0

    if-eqz v13, :cond_0

    .line 598
    move-object/from16 v0, p1

    check-cast v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-object v11, v0

    .line 599
    .local v11, sAppInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    iget-object v13, v11, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    if-eqz v13, :cond_0

    .line 600
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    iget-object v14, v11, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 602
    .local v10, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v10, :cond_0

    .line 603
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 604
    .restart local v9       #flag:I
    and-int/lit8 v13, v9, 0x1

    if-nez v13, :cond_0

    and-int/lit16 v13, v9, 0x80

    if-nez v13, :cond_0

    .line 605
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/DeleteZone;->mPendingUninstallPackageName:Ljava/lang/String;

    .line 606
    const/4 v13, 0x1

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/DeleteZone;->mMode:I

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstallView:Landroid/widget/FrameLayout;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private setTrashPaint(I)V
    .locals 3
    .parameter "aColor"

    .prologue
    .line 615
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTrashPaintInfo:Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 617
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTrashPaintInfo:Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;

    sget-object v1, Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;->TRASH:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    iput-object v1, v0, Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;->mPaintRegion:Lcom/sec/android/app/twlauncher/DragLayer$PaintRegion;

    .line 618
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
    .line 294
    const/4 v0, 0x1

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 164
    return-void
.end method

.method public dispatchDrawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 1
    .parameter "canvas"

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/DeleteZone;->drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z

    move-result v0

    return v0
.end method

.method protected drawGL(Lcom/sec/android/app/twlauncher/GLCanvas;)Z
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    .line 171
    const/4 v3, 0x0

    .line 172
    .local v3, result:Z
    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDrawDeleteZoneBg:Z

    if-eqz v4, :cond_2

    .line 174
    const/high16 v0, 0x3f80

    .line 175
    .local v0, animVal:F
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDeleteZoneAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 176
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDeleteZoneAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->get()F

    move-result v0

    .line 177
    const/4 v3, 0x1

    .line 178
    cmpl-float v4, v0, v6

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDeleteZoneAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->isAnimating()Z

    move-result v4

    if-nez v4, :cond_0

    .line 179
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/DeleteZone;->setVisibility(I)V

    .line 184
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getAddWidgetDialog()Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    move-result-object v1

    .line 185
    .local v1, awd:Lcom/sec/android/app/twlauncher/AddWidgetDialog;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->isActive()Z

    move-result v4

    if-nez v4, :cond_0

    .line 186
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setVisibility(I)V

    .line 187
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getAppZoneAnim()Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-result-object v4

    const/high16 v5, 0x3f80

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 194
    .end local v1           #awd:Lcom/sec/android/app/twlauncher/AddWidgetDialog;
    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 196
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 198
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    sub-float/2addr v4, v5

    float-to-int v2, v4

    .line 199
    .local v2, diff:I
    int-to-float v4, v2

    invoke-virtual {p1, v4, v6}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 207
    :goto_0
    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->accumulateAlpha(F)V

    .line 208
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mBgSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {p1, v4, v6, v6}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;FF)V

    .line 210
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/DeleteZone;->preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 211
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    .line 212
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v4, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->draw(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    .line 217
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 220
    .end local v0           #animVal:F
    .end local v2           #diff:I
    :cond_2
    return v3

    .line 202
    .restart local v0       #animVal:F
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    sub-float/2addr v4, v5

    float-to-int v2, v4

    .line 203
    .restart local v2       #diff:I
    int-to-float v4, v2

    invoke-virtual {p1, v6, v4}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    goto :goto_0

    .line 214
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstallView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 215
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstallSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v4, p1}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->draw(Lcom/sec/android/app/twlauncher/GLCanvas;)V

    goto :goto_1
.end method

.method public getDeleteAreaRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "outDelAreaRect"

    .prologue
    .line 519
    if-nez p1, :cond_0

    .line 522
    :goto_0
    return-void

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->getHitRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getDeleteZoneAnim()Lcom/sec/android/app/twlauncher/ScalarAnimator;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDeleteZoneAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    return-object v0
.end method

.method public getDragAnimationXOffset(Landroid/view/View;)I
    .locals 1
    .parameter "v"

    .prologue
    .line 537
    const/4 v0, 0x0

    return v0
.end method

.method public getDropHitRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "outRect"

    .prologue
    .line 331
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/DeleteZone;->getHitRect(Landroid/graphics/Rect;)V

    .line 332
    return-void
.end method

.method public invalidate()V
    .locals 0

    .prologue
    .line 622
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/GLSurfaceViewGroup;->requestFrame(Landroid/view/View;)V

    .line 623
    return-void
.end method

.method public onDragEnd()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f80

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 482
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragEnter:Z

    .line 484
    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTrashMode:Z

    if-eqz v4, :cond_2

    .line 485
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTrashMode:Z

    .line 486
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTrashPaintInfo:Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/DragLayer;->removeDragRegion(Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;)Z

    .line 488
    const/4 v3, 0x0

    .line 489
    .local v3, awdIsActive:Z
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getAddWidgetDialog()Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    move-result-object v2

    .line 490
    .local v2, awd:Lcom/sec/android/app/twlauncher/AddWidgetDialog;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->isSuspended()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 491
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->activate()V

    .line 492
    const/4 v3, 0x1

    .line 501
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 502
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDeleteZoneAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    invoke-virtual {v4, v7}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 513
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->setBgSurface()V

    .line 514
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->invalidate()V

    .line 516
    .end local v2           #awd:Lcom/sec/android/app/twlauncher/AddWidgetDialog;
    .end local v3           #awdIsActive:Z
    :cond_2
    return-void

    .line 504
    .restart local v2       #awd:Lcom/sec/android/app/twlauncher/AddWidgetDialog;
    .restart local v3       #awdIsActive:Z
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v0

    .line 505
    .local v0, asz:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getAppZoneAnim()Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-result-object v1

    .line 506
    .local v1, aszAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    .line 507
    if-eqz v3, :cond_4

    move v4, v7

    :goto_1
    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    goto :goto_0

    :cond_4
    move v4, v8

    goto :goto_1

    .line 508
    :cond_5
    if-nez v3, :cond_1

    .line 509
    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setVisibility(I)V

    .line 510
    invoke-virtual {v1, v8}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    goto :goto_0
.end method

.method public onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 4
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v3, 0x1

    .line 386
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DragLayer;->cancelPendingScroll()Z

    .line 387
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragEnter:Z

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveIcon:Landroid/widget/TextView;

    .line 389
    .local v0, icon:Landroid/widget/TextView;
    iget v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mMode:I

    if-ne v1, v3, :cond_0

    .line 390
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstallView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 391
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mIsUninstall:Z

    .line 393
    iget v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstColor:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->setTrashPaint(I)V

    .line 394
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstallIcon:Landroid/widget/TextView;

    .line 397
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mApplyIconHoverColorFilter:Z

    if-eqz v1, :cond_1

    .line 398
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mIconHoverColorFilter:Landroid/graphics/ColorFilter;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->setIconViewColorFilter(Landroid/widget/TextView;Landroid/graphics/ColorFilter;)V

    .line 400
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->setBgSurface()V

    .line 401
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->invalidate()V

    .line 402
    return-void
.end method

.method public onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 2
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v1, 0x0

    .line 424
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragEnter:Z

    .line 425
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mIsUninstall:Z

    .line 426
    iget v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDelColor:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->setTrashPaint(I)V

    .line 427
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveIcon:Landroid/widget/TextView;

    .line 428
    .local v0, icon:Landroid/widget/TextView;
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mApplyIconHoverColorFilter:Z

    if-eqz v1, :cond_0

    .line 429
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->setIconViewColorFilter(Landroid/widget/TextView;Landroid/graphics/ColorFilter;)V

    .line 431
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->setBgSurface()V

    .line 432
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->invalidate()V

    .line 433
    return-void
.end method

.method public onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 3
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v2, 0x1

    .line 406
    iget v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mMode:I

    if-ne v0, v2, :cond_0

    .line 408
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstallView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 409
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mIsUninstall:Z

    .line 411
    iget v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstColor:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/DeleteZone;->setTrashPaint(I)V

    .line 416
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->setBgSurface()V

    .line 417
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->invalidate()V

    .line 419
    :cond_0
    return-void

    .line 413
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mIsUninstall:Z

    .line 414
    iget v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDelColor:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/DeleteZone;->setTrashPaint(I)V

    goto :goto_0
.end method

.method public onDragStart(Landroid/view/View;FFLcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V
    .locals 10
    .parameter "v"
    .parameter "x"
    .parameter "y"
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    .line 436
    check-cast p5, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    .end local p5
    invoke-virtual {p5}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v2

    .line 437
    .local v2, item:Lcom/sec/android/app/twlauncher/ItemInfo;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getAddWidgetDialog()Lcom/sec/android/app/twlauncher/AddWidgetDialog;

    move-result-object v1

    .line 438
    .local v1, awd:Lcom/sec/android/app/twlauncher/AddWidgetDialog;
    if-eqz v2, :cond_1

    if-eq v1, p4, :cond_1

    .line 442
    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/DeleteZone;->setMode(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 443
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTrashMode:Z

    .line 444
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLocation:[I

    .line 445
    .local v3, location:[I
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/DeleteZone;->getLocationOnScreen([I)V

    .line 446
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTrashPaintInfo:Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;

    iget-object v4, v4, Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;->mRegion:Landroid/graphics/RectF;

    const/4 v5, 0x0

    aget v5, v3, v5

    int-to-float v5, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    const/4 v7, 0x0

    aget v7, v3, v7

    iget v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRight:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLeft:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/4 v8, 0x1

    aget v8, v3, v8

    iget v9, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mBottom:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTop:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 448
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTrashPaintInfo:Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/DragLayer;->addDragRegion(Lcom/sec/android/app/twlauncher/DragController$DragRegionPaintInfo;)Z

    .line 455
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v0

    .line 456
    .local v0, asz:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 457
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getAppZoneAnim()Lcom/sec/android/app/twlauncher/ScalarAnimator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    .line 464
    :goto_0
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->isActive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 465
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AddWidgetDialog;->suspend()V

    .line 467
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->setBgSurface()V

    .line 468
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->invalidate()V

    .line 470
    .end local v0           #asz:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    .end local v3           #location:[I
    :cond_1
    return-void

    .line 459
    .restart local v0       #asz:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    .restart local v3       #location:[I
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_3

    .line 460
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/DeleteZone;->setVisibility(I)V

    .line 461
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDeleteZoneAnim:Lcom/sec/android/app/twlauncher/ScalarAnimator;

    const/high16 v5, 0x3f80

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/ScalarAnimator;->to(F)V

    goto :goto_0
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 8
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v7, 0x1

    .line 303
    invoke-virtual/range {p0 .. p6}, Lcom/sec/android/app/twlauncher/DeleteZone;->onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 304
    instance-of v3, p6, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    if-nez v3, :cond_0

    .line 305
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "DragController.startDrag()\'s dragInfo argument should have been LauncherDragInfo instance"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 309
    :cond_0
    move-object v0, p6

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    move-object v2, v0

    .line 310
    .local v2, ldi:Lcom/sec/android/app/twlauncher/LauncherDragInfo;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v1

    .line 312
    .local v1, item:Lcom/sec/android/app/twlauncher/ItemInfo;
    iget-wide v3, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    move v3, v7

    .line 327
    :goto_0
    return v3

    .line 315
    :cond_1
    iget v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mMode:I

    if-ne v3, v7, :cond_2

    .line 316
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstallView:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 317
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 318
    invoke-virtual {v2, v7}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->setDelayRemovingFromSourceWhenDrop(Z)V

    .line 320
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mPendingUninstallPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/Launcher;->showDeleteApplication(Ljava/lang/String;)V

    move v3, v7

    .line 322
    goto :goto_0

    .line 326
    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v3}, Lcom/sec/android/app/twlauncher/DeleteZone;->processItemDrop(Lcom/sec/android/app/twlauncher/DragSource;Lcom/sec/android/app/twlauncher/ItemInfo;Z)V

    move v3, v7

    .line 327
    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 155
    const v0, 0x7f060023

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/DeleteZone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveView:Landroid/widget/FrameLayout;

    .line 156
    const v0, 0x7f060024

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/DeleteZone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveIcon:Landroid/widget/TextView;

    .line 157
    const v0, 0x7f060025

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/DeleteZone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstallView:Landroid/widget/FrameLayout;

    .line 158
    const v0, 0x7f060026

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/DeleteZone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstallIcon:Landroid/widget/TextView;

    .line 159
    return-void
.end method

.method public preload(Lcom/sec/android/app/twlauncher/GLCanvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    .line 256
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 258
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->buildDrawingCache()V

    .line 259
    new-instance v3, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 261
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->destroyDrawingCache()V

    .line 262
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {p1, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->preloadSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V

    .line 264
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveBg:Landroid/graphics/drawable/Drawable;

    .line 265
    .local v1, bg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getHeight()I

    move-result v4

    invoke-virtual {v1, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 266
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 267
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 268
    .local v2, c:Landroid/graphics/Canvas;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 269
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mBgSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    .line 270
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mBgSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {p1, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->preloadSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V

    .line 273
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #bg:Landroid/graphics/drawable/Drawable;
    .end local v2           #c:Landroid/graphics/Canvas;
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstallSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstallView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 275
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstallView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->buildDrawingCache()V

    .line 276
    new-instance v3, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstallView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstallSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    .line 278
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstallView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->destroyDrawingCache()V

    .line 279
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mUninstallSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {p1, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->preloadSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V

    .line 281
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveUninstallBg:Landroid/graphics/drawable/Drawable;

    .line 282
    .restart local v1       #bg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getHeight()I

    move-result v4

    invoke-virtual {v1, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 283
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 284
    .restart local v0       #b:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 285
    .restart local v2       #c:Landroid/graphics/Canvas;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveUninstallBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 286
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mBgSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;->postUpload(Landroid/graphics/Bitmap;)V

    .line 287
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mBgSurface:Lcom/sec/android/app/twlauncher/GLCanvas$RetainedSurface;

    invoke-virtual {p1, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->preloadSurface(Lcom/sec/android/app/twlauncher/GLCanvas$Surface;)V

    .line 290
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #bg:Landroid/graphics/drawable/Drawable;
    .end local v2           #c:Landroid/graphics/Canvas;
    :cond_1
    return-void
.end method

.method resetMode()V
    .locals 1

    .prologue
    .line 541
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/DeleteZone;->setMode(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 542
    return-void
.end method

.method setDragController(Lcom/sec/android/app/twlauncher/DragLayer;)V
    .locals 0
    .parameter "dragLayer"

    .prologue
    .line 529
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    .line 530
    return-void
.end method

.method setDragEnterForced(Z)V
    .locals 2
    .parameter "dragOver"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragEnterForced:Z

    .line 146
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mApplyIconHoverColorFilter:Z

    if-eqz v0, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->setBgSurface()V

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mRemoveIcon:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mDragEnterForced:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mIconHoverColorFilter:Landroid/graphics/ColorFilter;

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->setIconViewColorFilter(Landroid/widget/TextView;Landroid/graphics/ColorFilter;)V

    .line 150
    :cond_0
    return-void

    .line 148
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method setHandle(Lcom/sec/android/app/twlauncher/AppShortcutZone;)V
    .locals 0
    .parameter "asz"

    .prologue
    .line 533
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    .line 534
    return-void
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 525
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/DeleteZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 526
    return-void
.end method
