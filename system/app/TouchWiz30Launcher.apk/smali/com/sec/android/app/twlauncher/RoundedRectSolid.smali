.class Lcom/sec/android/app/twlauncher/RoundedRectSolid;
.super Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;
.source "RoundedRectSolid.java"


# direct methods
.method public constructor <init>(FF)V
    .locals 25
    .parameter "radius"
    .parameter "border"

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;-><init>()V

    .line 14
    const/4 v10, 0x6

    .line 15
    .local v10, cornerVerts:I
    const/16 v18, 0x31

    .line 16
    .local v18, totalVerts:I
    const/4 v15, 0x3

    .line 18
    .local v15, span:I
    const/16 v20, 0x93

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v19, v0

    .line 20
    .local v19, verts:[F
    const/4 v14, 0x0

    .line 21
    .local v14, o:I
    const/4 v4, 0x0

    .local v4, X:I
    const/4 v5, 0x1

    .local v5, Y:I
    const/4 v6, 0x2

    .line 24
    .local v6, Z:I
    add-int/lit8 v20, v14, 0x0

    const/high16 v21, 0x3f00

    aput v21, v19, v20

    .line 25
    add-int/lit8 v20, v14, 0x1

    const/high16 v21, 0x3f00

    aput v21, v19, v20

    .line 26
    add-int/lit8 v20, v14, 0x2

    const/high16 v21, 0x3f80

    aput v21, v19, v20

    .line 27
    add-int/lit8 v14, v14, 0x3

    .line 30
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    const/16 v20, 0x6

    move v0, v12

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 31
    move v0, v12

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40a0

    div-float v20, v20, v21

    const v21, 0x3fc90fdb

    mul-float v17, v20, v21

    .line 32
    .local v17, theta:F
    add-int/lit8 v20, v14, 0x0

    const/high16 v21, 0x3f80

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    mul-float v21, v21, p1

    add-float v21, v21, p2

    aput v21, v19, v20

    .line 33
    add-int/lit8 v20, v14, 0x1

    const/high16 v21, 0x3f80

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    mul-float v21, v21, p1

    add-float v21, v21, p2

    aput v21, v19, v20

    .line 34
    add-int/lit8 v20, v14, 0x2

    const/high16 v21, 0x3f80

    aput v21, v19, v20

    .line 35
    add-int/lit8 v20, v14, 0x3

    add-int/lit8 v20, v20, 0x0

    add-int/lit8 v21, v14, 0x0

    aget v21, v19, v21

    aput v21, v19, v20

    .line 36
    add-int/lit8 v20, v14, 0x3

    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v21, v14, 0x1

    aget v21, v19, v21

    aput v21, v19, v20

    .line 37
    add-int/lit8 v20, v14, 0x3

    add-int/lit8 v20, v20, 0x2

    const/16 v21, 0x0

    aput v21, v19, v20

    .line 38
    add-int/lit8 v14, v14, 0x6

    .line 30
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 42
    .end local v17           #theta:F
    :cond_0
    const/4 v12, 0x0

    :goto_1
    const/16 v20, 0x6

    move v0, v12

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 43
    move v0, v12

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40a0

    div-float v20, v20, v21

    const v21, 0x3fc90fdb

    mul-float v17, v20, v21

    .line 44
    .restart local v17       #theta:F
    add-int/lit8 v20, v14, 0x0

    const/high16 v21, 0x3f80

    const/high16 v22, 0x3f80

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    mul-float v22, v22, p1

    sub-float v21, v21, v22

    sub-float v21, v21, p2

    aput v21, v19, v20

    .line 45
    add-int/lit8 v20, v14, 0x1

    const/high16 v21, 0x3f80

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    mul-float v21, v21, p1

    add-float v21, v21, p2

    aput v21, v19, v20

    .line 46
    add-int/lit8 v20, v14, 0x2

    const/high16 v21, 0x3f80

    aput v21, v19, v20

    .line 47
    add-int/lit8 v20, v14, 0x3

    add-int/lit8 v20, v20, 0x0

    add-int/lit8 v21, v14, 0x0

    aget v21, v19, v21

    aput v21, v19, v20

    .line 48
    add-int/lit8 v20, v14, 0x3

    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v21, v14, 0x1

    aget v21, v19, v21

    aput v21, v19, v20

    .line 49
    add-int/lit8 v20, v14, 0x3

    add-int/lit8 v20, v20, 0x2

    const/16 v21, 0x0

    aput v21, v19, v20

    .line 50
    add-int/lit8 v14, v14, 0x6

    .line 42
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 54
    .end local v17           #theta:F
    :cond_1
    const/4 v12, 0x0

    :goto_2
    const/16 v20, 0x6

    move v0, v12

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 55
    move v0, v12

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40a0

    div-float v20, v20, v21

    const v21, 0x3fc90fdb

    mul-float v17, v20, v21

    .line 56
    .restart local v17       #theta:F
    add-int/lit8 v20, v14, 0x0

    const/high16 v21, 0x3f80

    const/high16 v22, 0x3f80

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    mul-float v22, v22, p1

    sub-float v21, v21, v22

    sub-float v21, v21, p2

    aput v21, v19, v20

    .line 57
    add-int/lit8 v20, v14, 0x1

    const/high16 v21, 0x3f80

    const/high16 v22, 0x3f80

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    mul-float v22, v22, p1

    sub-float v21, v21, v22

    sub-float v21, v21, p2

    aput v21, v19, v20

    .line 58
    add-int/lit8 v20, v14, 0x2

    const/high16 v21, 0x3f80

    aput v21, v19, v20

    .line 59
    add-int/lit8 v20, v14, 0x3

    add-int/lit8 v20, v20, 0x0

    add-int/lit8 v21, v14, 0x0

    aget v21, v19, v21

    aput v21, v19, v20

    .line 60
    add-int/lit8 v20, v14, 0x3

    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v21, v14, 0x1

    aget v21, v19, v21

    aput v21, v19, v20

    .line 61
    add-int/lit8 v20, v14, 0x3

    add-int/lit8 v20, v20, 0x2

    const/16 v21, 0x0

    aput v21, v19, v20

    .line 62
    add-int/lit8 v14, v14, 0x6

    .line 54
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 66
    .end local v17           #theta:F
    :cond_2
    const/4 v12, 0x0

    :goto_3
    const/16 v20, 0x6

    move v0, v12

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    .line 67
    move v0, v12

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40a0

    div-float v20, v20, v21

    const v21, 0x3fc90fdb

    mul-float v17, v20, v21

    .line 68
    .restart local v17       #theta:F
    add-int/lit8 v20, v14, 0x0

    const/high16 v21, 0x3f80

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    mul-float v21, v21, p1

    add-float v21, v21, p2

    aput v21, v19, v20

    .line 69
    add-int/lit8 v20, v14, 0x1

    const/high16 v21, 0x3f80

    const/high16 v22, 0x3f80

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    mul-float v22, v22, p1

    sub-float v21, v21, v22

    sub-float v21, v21, p2

    aput v21, v19, v20

    .line 70
    add-int/lit8 v20, v14, 0x2

    const/high16 v21, 0x3f80

    aput v21, v19, v20

    .line 71
    add-int/lit8 v20, v14, 0x3

    add-int/lit8 v20, v20, 0x0

    add-int/lit8 v21, v14, 0x0

    aget v21, v19, v21

    aput v21, v19, v20

    .line 72
    add-int/lit8 v20, v14, 0x3

    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v21, v14, 0x1

    aget v21, v19, v21

    aput v21, v19, v20

    .line 73
    add-int/lit8 v20, v14, 0x3

    add-int/lit8 v20, v20, 0x2

    const/16 v21, 0x0

    aput v21, v19, v20

    .line 74
    add-int/lit8 v14, v14, 0x6

    .line 66
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 77
    .end local v17           #theta:F
    :cond_3
    const/16 v20, 0xd8

    move/from16 v0, v20

    new-array v0, v0, [S

    move-object v13, v0

    .line 80
    .local v13, indexes:[S
    const/4 v12, 0x0

    :goto_4
    const/16 v20, 0x18

    move v0, v12

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    .line 81
    mul-int/lit8 v20, v12, 0x3

    add-int/lit8 v20, v20, 0x0

    const/16 v21, 0x0

    aput-short v21, v13, v20

    .line 82
    mul-int/lit8 v20, v12, 0x3

    add-int/lit8 v20, v20, 0x1

    mul-int/lit8 v21, v12, 0x2

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    int-to-short v0, v0

    move/from16 v21, v0

    aput-short v21, v13, v20

    .line 83
    mul-int/lit8 v20, v12, 0x3

    add-int/lit8 v20, v20, 0x2

    add-int/lit8 v21, v12, 0x1

    rem-int/lit8 v21, v21, 0x18

    mul-int/lit8 v21, v21, 0x2

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    int-to-short v0, v0

    move/from16 v21, v0

    aput-short v21, v13, v20

    .line 80
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 87
    :cond_4
    const/16 v16, 0x48

    .line 88
    .local v16, start:I
    const/4 v12, 0x0

    :goto_5
    const/16 v20, 0x18

    move v0, v12

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    .line 89
    mul-int/lit8 v20, v12, 0x2

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    int-to-short v0, v0

    move v7, v0

    .line 90
    .local v7, a:S
    mul-int/lit8 v20, v12, 0x2

    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    int-to-short v0, v0

    move v8, v0

    .line 91
    .local v8, b:S
    add-int/lit8 v20, v12, 0x1

    rem-int/lit8 v20, v20, 0x18

    mul-int/lit8 v20, v20, 0x2

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    int-to-short v0, v0

    move v9, v0

    .line 92
    .local v9, c:S
    add-int/lit8 v20, v12, 0x1

    rem-int/lit8 v20, v20, 0x18

    mul-int/lit8 v20, v20, 0x2

    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    int-to-short v0, v0

    move v11, v0

    .line 93
    .local v11, d:S
    mul-int/lit8 v20, v12, 0x6

    add-int/lit8 v20, v20, 0x48

    add-int/lit8 v20, v20, 0x0

    aput-short v7, v13, v20

    .line 94
    mul-int/lit8 v20, v12, 0x6

    add-int/lit8 v20, v20, 0x48

    add-int/lit8 v20, v20, 0x1

    aput-short v8, v13, v20

    .line 95
    mul-int/lit8 v20, v12, 0x6

    add-int/lit8 v20, v20, 0x48

    add-int/lit8 v20, v20, 0x2

    aput-short v9, v13, v20

    .line 96
    mul-int/lit8 v20, v12, 0x6

    add-int/lit8 v20, v20, 0x48

    add-int/lit8 v20, v20, 0x3

    aput-short v9, v13, v20

    .line 97
    mul-int/lit8 v20, v12, 0x6

    add-int/lit8 v20, v20, 0x48

    add-int/lit8 v20, v20, 0x4

    aput-short v8, v13, v20

    .line 98
    mul-int/lit8 v20, v12, 0x6

    add-int/lit8 v20, v20, 0x48

    add-int/lit8 v20, v20, 0x5

    aput-short v11, v13, v20

    .line 88
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 101
    .end local v7           #a:S
    .end local v8           #b:S
    .end local v9           #c:S
    .end local v11           #d:S
    :cond_5
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object v2, v13

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/RoundedRectSolid;->put([F[SI)V

    .line 102
    return-void
.end method
