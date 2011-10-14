.class public Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public cellHSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellVSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field dropped:Z

.field public isDragging:Z

.field regenerateId:Z

.field x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIII)V
    .locals 1
    .parameter "cellX"
    .parameter "cellY"
    .parameter "cellHSpan"
    .parameter "cellVSpan"

    .prologue
    const/4 v0, -0x1

    .line 1055
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1056
    iput p1, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    .line 1057
    iput p2, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    .line 1058
    iput p3, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    .line 1059
    iput p4, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    .line 1060
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    .line 1043
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1044
    iput v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    .line 1045
    iput v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    .line 1046
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "source"

    .prologue
    const/4 v0, 0x1

    .line 1049
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1050
    iput v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    .line 1051
    iput v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    .line 1052
    return-void
.end method


# virtual methods
.method public setup(IIIIII)V
    .locals 7
    .parameter "cellWidth"
    .parameter "cellHeight"
    .parameter "widthGap"
    .parameter "heightGap"
    .parameter "hStartPadding"
    .parameter "vStartPadding"

    .prologue
    const/4 v6, 0x1

    .line 1065
    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellHSpan:I

    .line 1066
    .local v0, myCellHSpan:I
    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellVSpan:I

    .line 1067
    .local v1, myCellVSpan:I
    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellX:I

    .line 1068
    .local v2, myCellX:I
    iget v3, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->cellY:I

    .line 1070
    .local v3, myCellY:I
    mul-int v4, v0, p1

    sub-int v5, v0, v6

    mul-int/2addr v5, p3

    add-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->width:I

    .line 1072
    mul-int v4, v1, p2

    sub-int v5, v1, v6

    mul-int/2addr v5, p4

    add-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->height:I

    .line 1075
    add-int v4, p1, p3

    mul-int/2addr v4, v2

    add-int/2addr v4, p5

    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->x:I

    .line 1076
    add-int v4, p2, p4

    mul-int/2addr v4, v3

    add-int/2addr v4, p6

    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/sec/android/app/twlauncher/CellLayout$LayoutParams;->y:I

    .line 1077
    return-void
.end method
