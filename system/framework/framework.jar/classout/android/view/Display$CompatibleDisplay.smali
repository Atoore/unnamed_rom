.class Landroid/view/Display$CompatibleDisplay;
.super Landroid/view/Display;
.source "Display.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Display;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompatibleDisplay"
.end annotation


# instance fields
.field private final mMetrics:Landroid/util/DisplayMetrics;


# direct methods
.method private constructor <init>(ILandroid/util/DisplayMetrics;)V
    .registers 3
    .parameter "displayId"
    .parameter "metrics"

    .prologue
    .line 170
    invoke-direct {p0, p1}, Landroid/view/Display;-><init>(I)V

    .line 171
    iput-object p2, p0, Landroid/view/Display$CompatibleDisplay;->mMetrics:Landroid/util/DisplayMetrics;

    .line 172
    return-void
.end method

.method synthetic constructor <init>(ILandroid/util/DisplayMetrics;Landroid/view/Display$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 166
    invoke-direct {p0, p1, p2}, Landroid/view/Display$CompatibleDisplay;-><init>(ILandroid/util/DisplayMetrics;)V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Landroid/view/Display$CompatibleDisplay;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Landroid/view/Display$CompatibleDisplay;->mMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method
