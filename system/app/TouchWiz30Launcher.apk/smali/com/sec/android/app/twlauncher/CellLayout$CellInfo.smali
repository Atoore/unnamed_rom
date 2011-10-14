.class final Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CellInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;
    }
.end annotation


# instance fields
.field cell:Landroid/view/View;

.field cellX:I

.field cellY:I

.field final current:Landroid/graphics/Rect;

.field maxVacantSpanX:I

.field maxVacantSpanXSpanY:I

.field maxVacantSpanY:I

.field maxVacantSpanYSpanX:I

.field screen:I

.field spanX:I

.field spanY:I

.field final vacantCells:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;",
            ">;"
        }
    .end annotation
.end field

.field valid:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 1080
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1155
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    .line 1165
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->current:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method clearVacantCells()V
    .locals 3

    .prologue
    .line 1168
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    .line 1169
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1171
    .local v0, count:I
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1172
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->release()V

    .line 1171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1174
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1175
    return-void
.end method

.method findCellForSpan([III)Z
    .locals 1
    .parameter "cellXY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 1208
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([IIIZ)Z

    move-result v0

    return v0
.end method

.method findCellForSpan([IIIZ)Z
    .locals 8
    .parameter "cellXY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "clear"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1212
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    .line 1213
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1215
    .local v1, count:I
    const/4 v2, 0x0

    .line 1217
    .local v2, found:Z
    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    if-lt v5, p2, :cond_0

    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    if-lt v5, p3, :cond_0

    .line 1218
    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    aput v5, p1, v6

    .line 1219
    iget v5, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    aput v5, p1, v7

    .line 1220
    const/4 v2, 0x1

    .line 1223
    :cond_0
    if-nez v2, :cond_1

    .line 1225
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1226
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;

    .line 1227
    .local v0, cell:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;
    iget v5, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanX:I

    if-ne v5, p2, :cond_4

    iget v5, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanY:I

    if-ne v5, p3, :cond_4

    .line 1228
    iget v5, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->cellX:I

    aput v5, p1, v6

    .line 1229
    iget v5, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->cellY:I

    aput v5, p1, v7

    .line 1230
    const/4 v2, 0x1

    .line 1236
    .end local v0           #cell:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;
    .end local v3           #i:I
    :cond_1
    if-nez v2, :cond_2

    .line 1238
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 1239
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;

    .line 1240
    .restart local v0       #cell:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;
    iget v5, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanX:I

    if-lt v5, p2, :cond_5

    iget v5, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->spanY:I

    if-lt v5, p3, :cond_5

    .line 1241
    iget v5, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->cellX:I

    aput v5, p1, v6

    .line 1242
    iget v5, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;->cellY:I

    aput v5, p1, v7

    .line 1243
    const/4 v2, 0x1

    .line 1249
    .end local v0           #cell:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;
    .end local v3           #i:I
    :cond_2
    if-eqz p4, :cond_3

    .line 1250
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->clearVacantCells()V

    .line 1252
    :cond_3
    return v2

    .line 1225
    .restart local v0       #cell:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo$VacantCell;
    .restart local v3       #i:I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1238
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method findVacantCellsFromOccupied([ZII)V
    .locals 8
    .parameter "occupied"
    .parameter "xCount"
    .parameter "yCount"

    .prologue
    const/high16 v1, -0x8000

    .line 1178
    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    if-gez v0, :cond_1

    .line 1179
    :cond_0
    iput v1, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanXSpanY:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanX:I

    .line 1180
    iput v1, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanYSpanX:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->maxVacantSpanY:I

    .line 1181
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->clearVacantCells()V

    .line 1192
    :goto_0
    return-void

    .line 1185
    :cond_1
    filled-new-array {p2, p3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Z

    .line 1186
    .local v5, unflattened:[[Z
    const/4 v7, 0x0

    .local v7, y:I
    :goto_1
    if-ge v7, p3, :cond_3

    .line 1187
    const/4 v6, 0x0

    .local v6, x:I
    :goto_2
    if-ge v6, p2, :cond_2

    .line 1188
    aget-object v0, v5, v6

    mul-int v1, v7, p2

    add-int/2addr v1, v6

    aget-boolean v1, p1, v1

    aput-boolean v1, v0, v7

    .line 1187
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1186
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1191
    .end local v6           #x:I
    :cond_3
    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v2, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    move-object v0, p0

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/CellLayout;->access$000(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;IIII[[Z)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cell[view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-nez v1, :cond_0

    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method
