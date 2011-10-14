.class final Lcom/sec/android/app/twlauncher/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field static final sBgMap:[Lcom/sec/android/app/twlauncher/BgMap;

.field private static final sBounds:Landroid/graphics/Rect;

.field private static sCanvas:Landroid/graphics/Canvas;

.field private static sIconHeight:I

.field private static sIconWidth:I

.field private static final sOldBounds:Landroid/graphics/Rect;

.field private static final sPaint:Landroid/graphics/Paint;

.field static final sRandom3rdIconBg:[I

.field static final sRandomIconBg:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 39
    sput v0, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    .line 41
    sput v0, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sPaint:Landroid/graphics/Paint;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sBounds:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    .line 49
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 52
    sget-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 214
    invoke-static {}, Lcom/sec/android/app/twlauncher/BgMapFactory;->getBgMap()[Lcom/sec/android/app/twlauncher/BgMap;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sBgMap:[Lcom/sec/android/app/twlauncher/BgMap;

    .line 216
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f020035

    aput v2, v0, v1

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sRandomIconBg:[I

    .line 220
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/twlauncher/Utilities;->sRandom3rdIconBg:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x30t 0x0t 0x2t 0x7ft
        0x31t 0x0t 0x2t 0x7ft
        0x32t 0x0t 0x2t 0x7ft
        0x33t 0x0t 0x2t 0x7ft
        0x34t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createBitmapThumbnail(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "bitmap"
    .parameter "context"

    .prologue
    .line 154
    sget-object v10, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v10

    .line 155
    :try_start_0
    sget v11, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_0

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 157
    .local v7, resources:Landroid/content/res/Resources;
    const v11, 0x7f0b000f

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    sput v11, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    sput v11, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    .line 160
    .end local v7           #resources:Landroid/content/res/Resources;
    :cond_0
    sget v9, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    .line 161
    .local v9, width:I
    sget v4, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    .line 163
    .local v4, height:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 164
    .local v1, bitmapWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 166
    .local v0, bitmapHeight:I
    if-lez v9, :cond_7

    if-lez v4, :cond_7

    .line 167
    if-lt v9, v1, :cond_1

    if-ge v4, v0, :cond_5

    .line 168
    :cond_1
    int-to-float v11, v1

    int-to-float v12, v0

    div-float v6, v11, v12

    .line 170
    .local v6, ratio:F
    if-le v1, v0, :cond_3

    .line 171
    int-to-float v11, v9

    div-float/2addr v11, v6

    float-to-int v4, v11

    .line 176
    :cond_2
    :goto_0
    sget v11, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    if-ne v9, v11, :cond_4

    sget v11, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    if-ne v4, v11, :cond_4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v11

    move-object v2, v11

    .line 178
    .local v2, c:Landroid/graphics/Bitmap$Config;
    :goto_1
    sget v11, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    sget v12, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    invoke-static {v11, v12, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 179
    .local v8, thumb:Landroid/graphics/Bitmap;
    sget-object v3, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 180
    .local v3, canvas:Landroid/graphics/Canvas;
    sget-object v5, Lcom/sec/android/app/twlauncher/Utilities;->sPaint:Landroid/graphics/Paint;

    .line 181
    .local v5, paint:Landroid/graphics/Paint;
    invoke-virtual {v3, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 182
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setDither(Z)V

    .line 183
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 184
    sget-object v11, Lcom/sec/android/app/twlauncher/Utilities;->sBounds:Landroid/graphics/Rect;

    sget v12, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    sub-int/2addr v12, v9

    div-int/lit8 v12, v12, 0x2

    sget v13, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    sub-int/2addr v13, v4

    div-int/lit8 v13, v13, 0x2

    invoke-virtual {v11, v12, v13, v9, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 185
    sget-object v11, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 186
    sget-object v11, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    sget-object v12, Lcom/sec/android/app/twlauncher/Utilities;->sBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, p0, v11, v12, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 187
    monitor-exit v10

    move-object v10, v8

    .line 203
    .end local v2           #c:Landroid/graphics/Bitmap$Config;
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v5           #paint:Landroid/graphics/Paint;
    .end local v6           #ratio:F
    .end local v8           #thumb:Landroid/graphics/Bitmap;
    :goto_2
    return-object v10

    .line 172
    .restart local v6       #ratio:F
    :cond_3
    if-le v0, v1, :cond_2

    .line 173
    int-to-float v11, v4

    mul-float/2addr v11, v6

    float-to-int v9, v11

    goto :goto_0

    .line 176
    :cond_4
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object v2, v11

    goto :goto_1

    .line 188
    .end local v6           #ratio:F
    :cond_5
    if-lt v1, v9, :cond_6

    if-ge v0, v4, :cond_7

    .line 189
    :cond_6
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 190
    .restart local v2       #c:Landroid/graphics/Bitmap$Config;
    sget v11, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    sget v12, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    invoke-static {v11, v12, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 191
    .restart local v8       #thumb:Landroid/graphics/Bitmap;
    sget-object v3, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 192
    .restart local v3       #canvas:Landroid/graphics/Canvas;
    sget-object v5, Lcom/sec/android/app/twlauncher/Utilities;->sPaint:Landroid/graphics/Paint;

    .line 193
    .restart local v5       #paint:Landroid/graphics/Paint;
    invoke-virtual {v3, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 194
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setDither(Z)V

    .line 195
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 196
    sget v11, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    sub-int/2addr v11, v1

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    sget v12, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    sub-int/2addr v12, v0

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {v3, p0, v11, v12, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 198
    monitor-exit v10

    move-object v10, v8

    goto :goto_2

    .line 201
    .end local v2           #c:Landroid/graphics/Bitmap$Config;
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v5           #paint:Landroid/graphics/Paint;
    .end local v8           #thumb:Landroid/graphics/Bitmap;
    :cond_7
    monitor-exit v10

    move-object v10, p0

    .line 203
    goto :goto_2

    .line 201
    .end local v0           #bitmapHeight:I
    .end local v1           #bitmapWidth:I
    .end local v4           #height:I
    .end local v9           #width:I
    :catchall_0
    move-exception v11

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11
.end method

.method static createIconThumbnail(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .parameter "icon"
    .parameter "context"

    .prologue
    .line 69
    sget-object v9, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v9

    .line 70
    :try_start_0
    sget v1, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 72
    .local v1, resources:Landroid/content/res/Resources;
    const v2, 0x7f0b000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .end local v1           #resources:Landroid/content/res/Resources;
    float-to-int v1, v1

    sput v1, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    sput v1, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    .line 75
    :cond_0
    sget v6, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    .line 76
    .local v6, width:I
    sget v3, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    .line 78
    .local v3, height:I
    instance-of v1, p0, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v1, :cond_3

    .line 79
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v1, v0

    .line 80
    .local v1, painter:Landroid/graphics/drawable/PaintDrawable;
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 81
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 90
    .end local v1           #painter:Landroid/graphics/drawable/PaintDrawable;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 91
    .local v4, iconWidth:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 93
    .local v2, iconHeight:I
    if-lez v6, :cond_7

    if-lez v3, :cond_7

    .line 94
    if-lt v6, v4, :cond_2

    if-ge v3, v2, :cond_6

    .line 95
    :cond_2
    int-to-float v1, v4

    int-to-float v5, v2

    div-float/2addr v1, v5

    .line 97
    .local v1, ratio:F
    if-le v4, v2, :cond_4

    .line 98
    int-to-float v2, v6

    div-float v1, v2, v1

    float-to-int v1, v1

    .end local v3           #height:I
    .local v1, height:I
    move v2, v1

    .end local v1           #height:I
    .local v2, height:I
    move v4, v6

    .line 103
    .end local v6           #width:I
    .local v4, width:I
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 105
    .local v1, c:Landroid/graphics/Bitmap$Config;
    :goto_2
    sget v3, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    sget v5, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    invoke-static {v3, v5, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 106
    .local v3, thumb:Landroid/graphics/Bitmap;
    sget-object v1, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 107
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 113
    sget-object v5, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 114
    sget v5, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    sub-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    .line 115
    .local v5, x:I
    sget v6, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    sub-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x2

    .line 116
    .local v6, y:I
    add-int v7, v5, v4

    add-int v8, v6, v2

    invoke-virtual {p0, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 117
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 118
    sget-object v1, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    .end local v1           #canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 120
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .end local p1
    invoke-direct {v1, p1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .end local p0
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    move p1, v2

    .end local v2           #height:I
    .local p1, height:I
    move-object p0, v1

    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    .restart local p0
    move v1, v4

    .line 135
    .end local v3           #thumb:Landroid/graphics/Bitmap;
    .end local v4           #width:I
    .end local v5           #x:I
    .end local v6           #y:I
    .local v1, width:I
    :goto_3
    monitor-exit v9

    .line 137
    return-object p0

    .line 82
    .end local v1           #width:I
    .local v3, height:I
    .local v6, width:I
    .local p1, context:Landroid/content/Context;
    :cond_3
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 84
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v0

    .line 85
    .local v2, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 86
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 135
    .end local v2           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v3           #height:I
    .end local v6           #width:I
    .end local p1           #context:Landroid/content/Context;
    :catchall_0
    move-exception p1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 99
    .local v1, ratio:F
    .local v2, iconHeight:I
    .restart local v3       #height:I
    .local v4, iconWidth:I
    .restart local v6       #width:I
    .restart local p1       #context:Landroid/content/Context;
    :cond_4
    if-le v2, v4, :cond_8

    .line 100
    int-to-float v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .end local v6           #width:I
    .local v1, width:I
    move v2, v3

    .end local v3           #height:I
    .local v2, height:I
    move v4, v1

    .end local v1           #width:I
    .local v4, width:I
    goto :goto_1

    .line 103
    :cond_5
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_2

    .line 121
    .local v2, iconHeight:I
    .restart local v3       #height:I
    .local v4, iconWidth:I
    .restart local v6       #width:I
    :cond_6
    if-ge v4, v6, :cond_7

    if-ge v2, v3, :cond_7

    .line 122
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 123
    .local v1, c:Landroid/graphics/Bitmap$Config;
    sget v5, Lcom/sec/android/app/twlauncher/Utilities;->sIconWidth:I

    sget v7, Lcom/sec/android/app/twlauncher/Utilities;->sIconHeight:I

    invoke-static {v5, v7, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 124
    .local v5, thumb:Landroid/graphics/Bitmap;
    sget-object v1, Lcom/sec/android/app/twlauncher/Utilities;->sCanvas:Landroid/graphics/Canvas;

    .line 125
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 126
    sget-object v7, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 127
    sub-int v7, v6, v4

    div-int/lit8 v7, v7, 0x2

    .line 128
    .local v7, x:I
    sub-int v8, v3, v2

    div-int/lit8 v8, v8, 0x2

    .line 129
    .local v8, y:I
    add-int/2addr v4, v7

    add-int/2addr v2, v8

    invoke-virtual {p0, v7, v8, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 130
    .end local v2           #iconHeight:I
    .end local v4           #iconWidth:I
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 131
    sget-object v1, Lcom/sec/android/app/twlauncher/Utilities;->sOldBounds:Landroid/graphics/Rect;

    .end local v1           #canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 132
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .end local p1           #context:Landroid/content/Context;
    invoke-direct {v1, p1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    move p1, v3

    .end local v3           #height:I
    .local p1, height:I
    move-object p0, v1

    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    .restart local p0
    move v1, v6

    .end local v6           #width:I
    .local v1, width:I
    goto :goto_3

    .end local v1           #width:I
    .end local v5           #thumb:Landroid/graphics/Bitmap;
    .end local v7           #x:I
    .end local v8           #y:I
    .restart local v2       #iconHeight:I
    .restart local v3       #height:I
    .restart local v4       #iconWidth:I
    .restart local v6       #width:I
    .local p1, context:Landroid/content/Context;
    :cond_7
    move p1, v3

    .end local v3           #height:I
    .local p1, height:I
    move v1, v6

    .end local v6           #width:I
    .restart local v1       #width:I
    goto :goto_3

    .local v1, ratio:F
    .restart local v3       #height:I
    .restart local v6       #width:I
    .local p1, context:Landroid/content/Context;
    :cond_8
    move v2, v3

    .end local v3           #height:I
    .local v2, height:I
    move v4, v6

    .end local v6           #width:I
    .local v4, width:I
    goto/16 :goto_1
.end method

.method static zOrderTweakMoveChild(Landroid/view/ViewGroup;IIZ)V
    .locals 6
    .parameter "vg"
    .parameter "fromIndex"
    .parameter "toIndex"
    .parameter "requestLayout"

    .prologue
    .line 308
    if-ne p1, p2, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 312
    .local v0, childCount:I
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 321
    .local v3, vf:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    .line 322
    const/4 v1, 0x0

    .local v1, ii:I
    :goto_1
    sub-int v4, v0, p2

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v1, v4, :cond_2

    .line 323
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 324
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 332
    .end local v2           #v:Landroid/view/View;
    :cond_2
    if-eqz p3, :cond_0

    .line 333
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0
.end method
