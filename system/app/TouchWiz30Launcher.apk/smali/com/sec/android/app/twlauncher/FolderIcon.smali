.class public Lcom/sec/android/app/twlauncher/FolderIcon;
.super Lcom/sec/android/app/twlauncher/BubbleTextView;
.source "FolderIcon.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DropTarget;


# static fields
.field private static mPreviewIconSize:F

.field private static mPreviewIconXGap:F

.field private static mPreviewIconYGap:F

.field private static mPreviewIconYOffset:F

.field private static mPreviewOffsetX:F

.field private static mPreviewOffsetY:F


# instance fields
.field private mCloseIcon:Landroid/graphics/drawable/Drawable;

.field private mInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;

.field private mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field private mOpenIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/BubbleTextView;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->init()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->init()V

    .line 57
    return-void
.end method

.method static fromXml(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Lcom/sec/android/app/twlauncher/FolderIcon;
    .locals 11
    .parameter "resId"
    .parameter "launcher"
    .parameter "group"
    .parameter "folderInfo"

    .prologue
    .line 78
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .end local p2
    check-cast p2, Lcom/sec/android/app/twlauncher/FolderIcon;

    .line 80
    .local p2, icon:Lcom/sec/android/app/twlauncher/FolderIcon;
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 86
    .local v1, resources:Landroid/content/res/Resources;
    invoke-static {}, Lcom/sec/android/app/twlauncher/BuildLocaleChecker;->getBuildLocale()I

    move-result p0

    .end local p0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    .line 87
    invoke-virtual {p3}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getOwner()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 88
    const p0, 0x7f020017

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 98
    .local p0, d:Landroid/graphics/drawable/Drawable;
    :goto_0
    const/4 v3, 0x0

    .line 99
    .local v3, bitmap:Landroid/graphics/Bitmap;
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_3

    .line 100
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 101
    .local p0, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 106
    .end local p0           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :goto_1
    new-instance v0, Lcom/sec/android/app/twlauncher/FolderDrawable;

    sget v4, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewOffsetX:F

    sget v5, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewOffsetY:F

    sget v6, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewIconSize:F

    sget v7, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewIconXGap:F

    sget v8, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewIconYGap:F

    sget v9, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewIconYOffset:F

    const v10, 0x7f070014

    move-object v2, p3

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/app/twlauncher/FolderDrawable;-><init>(Landroid/content/res/Resources;Lcom/sec/android/app/twlauncher/UserFolderInfo;Landroid/graphics/Bitmap;FFFFFFI)V

    .line 111
    .local v0, fd:Lcom/sec/android/app/twlauncher/FolderDrawable;
    iput-object v0, p2, Lcom/sec/android/app/twlauncher/FolderIcon;->mCloseIcon:Landroid/graphics/drawable/Drawable;

    .line 112
    const p0, 0x7f020055

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, p2, Lcom/sec/android/app/twlauncher/FolderIcon;->mOpenIcon:Landroid/graphics/drawable/Drawable;

    .line 113
    const/4 p0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2, p0, v0, v1, v2}, Lcom/sec/android/app/twlauncher/FolderIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 114
    .end local v1           #resources:Landroid/content/res/Resources;
    invoke-virtual {p3}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p2, p3}, Lcom/sec/android/app/twlauncher/FolderIcon;->setTag(Ljava/lang/Object;)V

    .line 116
    invoke-virtual {p2, p1}, Lcom/sec/android/app/twlauncher/FolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iput-object p3, p2, Lcom/sec/android/app/twlauncher/FolderIcon;->mInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 118
    iput-object p1, p2, Lcom/sec/android/app/twlauncher/FolderIcon;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 119
    iget-object p0, p2, Lcom/sec/android/app/twlauncher/FolderIcon;->mInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    .line 121
    return-object p2

    .line 89
    .end local v0           #fd:Lcom/sec/android/app/twlauncher/FolderDrawable;
    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #resources:Landroid/content/res/Resources;
    :cond_0
    iget p0, p3, Lcom/sec/android/app/twlauncher/ItemInfo;->shortCut:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 90
    const p0, 0x7f020017

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .local p0, d:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 92
    .end local p0           #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    const p0, 0x7f02008c

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .restart local p0       #d:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 96
    .end local p0           #d:Landroid/graphics/drawable/Drawable;
    :cond_2
    const p0, 0x7f02008c

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .restart local p0       #d:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 103
    .restart local v3       #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    const-string v0, "Launcher.FolderIcon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Folder image is not a BitmapDrawable"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static fromXml2(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Lcom/sec/android/app/twlauncher/FolderIcon;
    .locals 11
    .parameter "resId"
    .parameter "launcher"
    .parameter "group"
    .parameter "folderInfo"

    .prologue
    .line 129
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .end local p2
    check-cast p2, Lcom/sec/android/app/twlauncher/FolderIcon;

    .line 131
    .local p2, icon:Lcom/sec/android/app/twlauncher/FolderIcon;
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 134
    .local v1, resources:Landroid/content/res/Resources;
    const p0, 0x7f020017

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .end local p0
    move-result-object p0

    .line 136
    .local p0, d:Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 137
    .local v3, bitmap:Landroid/graphics/Bitmap;
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 138
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 139
    .local p0, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 144
    .end local p0           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    new-instance v0, Lcom/sec/android/app/twlauncher/FolderDrawable;

    sget v4, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewOffsetX:F

    sget v5, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewOffsetY:F

    sget v6, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewIconSize:F

    sget v7, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewIconXGap:F

    sget v8, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewIconYGap:F

    sget v9, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewIconYOffset:F

    const v10, 0x7f070014

    move-object v2, p3

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/app/twlauncher/FolderDrawable;-><init>(Landroid/content/res/Resources;Lcom/sec/android/app/twlauncher/UserFolderInfo;Landroid/graphics/Bitmap;FFFFFFI)V

    .line 149
    .local v0, fd:Lcom/sec/android/app/twlauncher/FolderDrawable;
    iput-object v0, p2, Lcom/sec/android/app/twlauncher/FolderIcon;->mCloseIcon:Landroid/graphics/drawable/Drawable;

    .line 150
    const p0, 0x7f020055

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, p2, Lcom/sec/android/app/twlauncher/FolderIcon;->mOpenIcon:Landroid/graphics/drawable/Drawable;

    .line 151
    const/4 p0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2, p0, v0, v1, v2}, Lcom/sec/android/app/twlauncher/FolderIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 152
    .end local v1           #resources:Landroid/content/res/Resources;
    invoke-virtual {p3}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->setText(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {p2, p3}, Lcom/sec/android/app/twlauncher/FolderIcon;->setTag(Ljava/lang/Object;)V

    .line 154
    invoke-virtual {p2, p1}, Lcom/sec/android/app/twlauncher/FolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iput-object p3, p2, Lcom/sec/android/app/twlauncher/FolderIcon;->mInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 156
    iput-object p1, p2, Lcom/sec/android/app/twlauncher/FolderIcon;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 157
    iget-object p0, p2, Lcom/sec/android/app/twlauncher/FolderIcon;->mInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->addFolderView(Ljava/lang/Object;)Z

    .line 159
    return-object p2

    .line 141
    .end local v0           #fd:Lcom/sec/android/app/twlauncher/FolderDrawable;
    .restart local v1       #resources:Landroid/content/res/Resources;
    .local p0, d:Landroid/graphics/drawable/Drawable;
    :cond_0
    const-string v0, "Launcher.FolderIcon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Folder image is not a BitmapDrawable"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0b004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewOffsetX:F

    .line 67
    const v1, 0x7f0b004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewOffsetY:F

    .line 69
    const v1, 0x7f0b004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewIconSize:F

    .line 70
    const v1, 0x7f0b004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewIconXGap:F

    .line 71
    const v1, 0x7f0b004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewIconYGap:F

    .line 72
    const v1, 0x7f0b004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/sec/android/app/twlauncher/FolderIcon;->mPreviewIconYOffset:F

    .line 73
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v6, 0x1

    .line 167
    check-cast p6, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    .end local p6
    invoke-virtual {p6}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v0

    .line 168
    .local v0, item:Lcom/sec/android/app/twlauncher/ItemInfo;
    iget v1, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    .line 169
    .local v1, itemType:I
    if-eqz v1, :cond_0

    if-ne v1, v6, :cond_1

    :cond_0
    iget-wide v2, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    iget-wide v4, v4, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    move v2, v6

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDropHitRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "outRect"

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/FolderIcon;->getHitRect(Landroid/graphics/Rect;)V

    .line 176
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v0

    iget v0, v0, Lcom/sec/android/app/twlauncher/Scene;->mPageBackgroundPaddingLeft:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 180
    :cond_0
    return-void
.end method

.method onClone()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getContents()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 221
    .local v1, ai:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    iget-wide v2, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->addOrMoveItemInDatabaseForUserFoler(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V

    goto :goto_0

    .line 223
    .end local v1           #ai:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_0
    return-void
.end method

.method public onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 9
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 227
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mOpenIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5, v4, v5, v5}, Lcom/sec/android/app/twlauncher/FolderIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 229
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 230
    .local v2, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 231
    .local v1, parent:Lcom/sec/android/app/twlauncher/CellLayout;
    const/4 v4, 0x2

    new-array v3, v4, [I

    .line 232
    .local v3, result:[I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/FolderIcon;->getTop()I

    move-result v5

    invoke-virtual {v1, v4, v5, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->pointToCellExact(II[I)V

    .line 233
    aget v4, v3, v6

    aget v5, v3, v8

    invoke-virtual {v1, v4, v5, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->cellToPoint(II[I)V

    .line 234
    aget v4, v3, v6

    aget v5, v3, v8

    aget v6, v3, v6

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getCellWidth()I

    move-result v7

    add-int/2addr v6, v7

    aget v7, v3, v8

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getCellHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 236
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentDropLayout()Lcom/sec/android/app/twlauncher/CellLayout;

    move-result-object v0

    .line 237
    .local v0, cellLayout:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getTop()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 239
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/android/app/twlauncher/Workspace;->setDropLocationFeedback(Landroid/graphics/Rect;)V

    .line 240
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

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mCloseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/sec/android/app/twlauncher/FolderIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 249
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
    .line 244
    return-void
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 10
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 188
    const/4 v2, 0x0

    .line 189
    .local v2, item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    move-object/from16 v0, p6

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    move v1, v0

    if-eqz v1, :cond_0

    .line 190
    check-cast p6, Lcom/sec/android/app/twlauncher/LauncherDragInfo;

    .end local p6
    invoke-virtual/range {p6 .. p6}, Lcom/sec/android/app/twlauncher/LauncherDragInfo;->getDraggingItemInfo()Lcom/sec/android/app/twlauncher/ItemInfo;

    move-result-object v2

    .end local v2           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    check-cast v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .restart local v2       #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    move-object v8, v2

    .line 194
    .end local v2           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .local v8, item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :goto_0
    if-nez v8, :cond_1

    move-object v2, v8

    .end local v8           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v2       #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    move v1, v5

    .line 216
    :goto_1
    return v1

    .line 191
    .restart local p6
    :cond_0
    move-object/from16 v0, p6

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move v1, v0

    if-eqz v1, :cond_4

    .line 192
    move-object/from16 v0, p6

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v2, v0

    move-object v8, v2

    .end local v2           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v8       #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    goto :goto_0

    .line 197
    .end local p6
    :cond_1
    iget-wide v3, v8, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v6, -0x1

    cmp-long v1, v3, v6

    if-nez v1, :cond_3

    .line 199
    new-instance v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    invoke-direct {v2, v8}, Lcom/sec/android/app/twlauncher/ApplicationInfo;-><init>(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .line 201
    .end local v8           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v2       #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->add(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Z

    .line 203
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->getOwner()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 211
    :goto_3
    instance-of v1, p1, Lcom/sec/android/app/twlauncher/MenuManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mParent:Landroid/view/ViewParent;

    instance-of v1, v1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-eqz v1, :cond_2

    .line 212
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->reqExtEndDrag()Z

    .line 214
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mCloseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v9, v1, v9, v9}, Lcom/sec/android/app/twlauncher/FolderIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 216
    const/4 v1, 0x1

    goto :goto_1

    .line 205
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/FolderIcon;->mInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;

    iget-wide v3, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    move v6, v5

    move v7, v5

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addOrMoveItemInDatabaseForUserFoler(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V

    goto :goto_3

    .end local v2           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v8       #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_3
    move-object v2, v8

    .end local v8           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v2       #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    goto :goto_2

    .restart local p6
    :cond_4
    move-object v8, v2

    .end local v2           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v8       #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    goto :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
