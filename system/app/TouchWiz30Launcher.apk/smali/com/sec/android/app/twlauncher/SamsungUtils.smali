.class final Lcom/sec/android/app/twlauncher/SamsungUtils;
.super Ljava/lang/Object;
.source "SamsungUtils.java"


# static fields
.field private static final lt1:[F

.field private static final lt2:[F

.field private static final projMatrix:[F

.field private static final rb1:[F

.field private static final rb2:[F

.field private static final traMatrix:[F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x4

    .line 182
    new-array v0, v2, [F

    sput-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->traMatrix:[F

    .line 183
    new-array v0, v2, [F

    sput-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->projMatrix:[F

    .line 184
    new-array v0, v1, [F

    sput-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt1:[F

    .line 185
    new-array v0, v1, [F

    sput-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt2:[F

    .line 186
    new-array v0, v1, [F

    sput-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb1:[F

    .line 187
    new-array v0, v1, [F

    sput-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb2:[F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static acquireDVFSlock(II)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 59
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 64
    .local v0, pm:Landroid/os/IPowerManager;
    :try_start_0
    invoke-interface {v0, p0, p1}, Landroid/os/IPowerManager;->acquireDVFSlock(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static broadcastStkIntent(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 47
    const-string v2, "gsm.sim.screenEvent"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/stk/StkEventDownload;-><init>(I)V

    .line 50
    .local v1, stkEventIdleScreen:Lcom/android/internal/telephony/gsm/stk/StkEventDownload;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.stk.event"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "STK EVENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 53
    const-string v2, "SamsungUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendBroadcast intent!!!!!!!!!!!!!!! = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #stkEventIdleScreen:Lcom/android/internal/telephony/gsm/stk/StkEventDownload;
    :cond_0
    return-void
.end method

.method public static centerChildInParent(Landroid/graphics/RectF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 3
    .parameter "dest"
    .parameter "sizeParent"
    .parameter "sizeChild"

    .prologue
    const/high16 v2, 0x4000

    .line 248
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 249
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 250
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 251
    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 252
    return-void
.end method

.method public static centerChildInParent(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;)V
    .locals 4
    .parameter "dest"
    .parameter "sizeParent"
    .parameter "sizeChild"

    .prologue
    const/high16 v3, 0x4000

    .line 255
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 256
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 257
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 258
    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 259
    return-void
.end method

.method static drawBorder(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;FFF)V
    .locals 6
    .parameter "aCanvas"
    .parameter "aView"
    .parameter "aR"
    .parameter "aG"
    .parameter "aB"

    .prologue
    .line 107
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/SamsungUtils;->drawBorder(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;FFFZ)V

    .line 108
    return-void
.end method

.method static drawBorder(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;FFFZ)V
    .locals 6
    .parameter "aCanvas"
    .parameter "aView"
    .parameter "aR"
    .parameter "aG"
    .parameter "aB"
    .parameter "aTranslate"

    .prologue
    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 94
    if-eqz p5, :cond_0

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 97
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/sec/android/app/twlauncher/GLCanvas;->setColor(FFF)V

    .line 98
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 99
    .local v0, dim:Landroid/graphics/PointF;
    iget v1, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v4, v4, v5, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    .line 100
    iget v1, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v4, v4, v1, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    .line 101
    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v5

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v1, v4, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    .line 102
    iget v1, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v5

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v4, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    .line 103
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 104
    return-void
.end method

.method static mapPtToRect(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/PointF;
    .locals 6
    .parameter "aPt"
    .parameter "aSrcRect"
    .parameter "aDstRect"

    .prologue
    .line 131
    move-object p1, p1

    .line 132
    .local p1, origRect:Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    .end local p1           #origRect:Landroid/graphics/RectF;
    sub-float p1, v2, p1

    invoke-direct {v1, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 133
    .local v1, origSize:Landroid/graphics/PointF;
    new-instance v0, Landroid/graphics/PointF;

    iget p1, v1, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x4000

    div-float/2addr p1, v2

    iget v2, v1, Landroid/graphics/PointF;->y:F

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    invoke-direct {v0, p1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 134
    .local v0, origCenter:Landroid/graphics/PointF;
    new-instance p1, Landroid/graphics/PointF;

    iget v2, p0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    iget p0, p0, Landroid/graphics/PointF;->y:F

    .end local p0
    iget v3, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, v3

    invoke-direct {p1, v2, p0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 136
    .local p1, newPt:Landroid/graphics/PointF;
    move-object p2, p2

    .line 137
    .local p2, tRefRect:Landroid/graphics/RectF;
    new-instance v2, Landroid/graphics/PointF;

    iget p0, p2, Landroid/graphics/RectF;->right:F

    iget v3, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p0, v3

    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    iget v4, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    invoke-direct {v2, p0, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 139
    .local v2, tRefSize:Landroid/graphics/PointF;
    new-instance p0, Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    iget v4, v1, Landroid/graphics/PointF;->y:F

    iget v5, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    invoke-direct {p0, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 141
    .local p0, idealMargin:Landroid/graphics/PointF;
    new-instance v3, Landroid/graphics/PointF;

    iget v4, p0, Landroid/graphics/PointF;->x:F

    iget v5, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget p0, p0, Landroid/graphics/PointF;->y:F

    .end local p0           #idealMargin:Landroid/graphics/PointF;
    iget p2, p2, Landroid/graphics/RectF;->top:F

    .end local p2           #tRefRect:Landroid/graphics/RectF;
    sub-float/2addr p0, p2

    invoke-direct {v3, v4, p0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 143
    .local v3, translation:Landroid/graphics/PointF;
    iget p0, p1, Landroid/graphics/PointF;->x:F

    iget p2, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr p0, p2

    iput p0, p1, Landroid/graphics/PointF;->x:F

    .line 144
    iget p0, p1, Landroid/graphics/PointF;->y:F

    iget p2, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr p0, p2

    iput p0, p1, Landroid/graphics/PointF;->y:F

    .line 146
    const/4 p0, 0x0

    .line 147
    .local p0, scaleRatio:Landroid/graphics/PointF;
    new-instance p0, Landroid/graphics/PointF;

    .end local p0           #scaleRatio:Landroid/graphics/PointF;
    iget p2, v1, Landroid/graphics/PointF;->x:F

    iget v3, v2, Landroid/graphics/PointF;->x:F

    .end local v3           #translation:Landroid/graphics/PointF;
    div-float/2addr p2, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    .end local v1           #origSize:Landroid/graphics/PointF;
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .end local v2           #tRefSize:Landroid/graphics/PointF;
    div-float/2addr v1, v2

    invoke-direct {p0, p2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 148
    .restart local p0       #scaleRatio:Landroid/graphics/PointF;
    new-instance p2, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    .end local p1           #newPt:Landroid/graphics/PointF;
    iget p0, p0, Landroid/graphics/PointF;->y:F

    .end local p0           #scaleRatio:Landroid/graphics/PointF;
    mul-float/2addr p0, p1

    invoke-direct {p2, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 149
    .local p2, scaledPt:Landroid/graphics/PointF;
    new-instance p0, Landroid/graphics/PointF;

    iget p1, p2, Landroid/graphics/PointF;->x:F

    iget v1, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr p1, v1

    iget p2, p2, Landroid/graphics/PointF;->y:F

    .end local p2           #scaledPt:Landroid/graphics/PointF;
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .end local v0           #origCenter:Landroid/graphics/PointF;
    add-float/2addr p2, v0

    invoke-direct {p0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 151
    .local p0, transPt:Landroid/graphics/PointF;
    return-object p0
.end method

.method static mapPtToRect2(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/PointF;
    .locals 5
    .parameter "aPt"
    .parameter "aSrcRect"
    .parameter "aDstRect"

    .prologue
    .line 156
    move-object p1, p1

    .line 157
    .local p1, origRect:Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    .end local p1           #origRect:Landroid/graphics/RectF;
    sub-float p1, v2, p1

    invoke-direct {v1, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 158
    .local v1, origSize:Landroid/graphics/PointF;
    new-instance v0, Landroid/graphics/PointF;

    iget p1, v1, Landroid/graphics/PointF;->x:F

    const/high16 v2, 0x4000

    div-float/2addr p1, v2

    iget v2, v1, Landroid/graphics/PointF;->y:F

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    invoke-direct {v0, p1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 160
    .local v0, origCenter:Landroid/graphics/PointF;
    move-object p1, p2

    .line 161
    .local p1, tRefRect:Landroid/graphics/RectF;
    new-instance v3, Landroid/graphics/PointF;

    iget p2, p1, Landroid/graphics/RectF;->right:F

    .end local p2
    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p2, v2

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    .end local p1           #tRefRect:Landroid/graphics/RectF;
    sub-float p1, v2, p1

    invoke-direct {v3, p2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 162
    .local v3, tRefSize:Landroid/graphics/PointF;
    new-instance v2, Landroid/graphics/PointF;

    iget p1, v3, Landroid/graphics/PointF;->x:F

    const/high16 p2, 0x4000

    div-float/2addr p1, p2

    iget p2, v3, Landroid/graphics/PointF;->y:F

    const/high16 v4, 0x4000

    div-float/2addr p2, v4

    invoke-direct {v2, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 164
    .local v2, tRefCenter:Landroid/graphics/PointF;
    const/4 p1, 0x0

    .line 165
    .local p1, scaleRatio:Landroid/graphics/PointF;
    new-instance p2, Landroid/graphics/PointF;

    iget p1, v3, Landroid/graphics/PointF;->x:F

    .end local p1           #scaleRatio:Landroid/graphics/PointF;
    iget v4, v1, Landroid/graphics/PointF;->x:F

    div-float/2addr p1, v4

    iget v3, v3, Landroid/graphics/PointF;->y:F

    .end local v3           #tRefSize:Landroid/graphics/PointF;
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .end local v1           #origSize:Landroid/graphics/PointF;
    div-float v1, v3, v1

    invoke-direct {p2, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 167
    .local p2, scaleRatio:Landroid/graphics/PointF;
    new-instance p1, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v3

    iget p0, p0, Landroid/graphics/PointF;->y:F

    .end local p0
    iget v0, v0, Landroid/graphics/PointF;->y:F

    .end local v0           #origCenter:Landroid/graphics/PointF;
    sub-float/2addr p0, v0

    invoke-direct {p1, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 168
    .local p1, newPt:Landroid/graphics/PointF;
    new-instance p0, Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    .end local p1           #newPt:Landroid/graphics/PointF;
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .end local p2           #scaleRatio:Landroid/graphics/PointF;
    mul-float/2addr p1, p2

    invoke-direct {p0, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 170
    .local p0, scaledPt:Landroid/graphics/PointF;
    new-instance p1, Landroid/graphics/PointF;

    iget p2, p0, Landroid/graphics/PointF;->x:F

    iget v0, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr p2, v0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    .end local p0           #scaledPt:Landroid/graphics/PointF;
    iget v0, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr p0, v0

    invoke-direct {p1, p2, p0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 172
    .local p1, transPt:Landroid/graphics/PointF;
    return-object p1
.end method

.method static mapRectToCanvas(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 2
    .parameter "aCanvas"
    .parameter "aInRect"

    .prologue
    const/4 v1, 0x0

    .line 177
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 178
    .local v0, outRect:Landroid/graphics/RectF;
    invoke-static {p0, p1, v0}, Lcom/sec/android/app/twlauncher/SamsungUtils;->mapRectToCanvas(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 179
    return-object v0
.end method

.method static mapRectToCanvas(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 8
    .parameter "aCanvas"
    .parameter "aInRect"
    .parameter "outRect"

    .prologue
    .line 192
    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->traMatrix:[F

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->getMatrix([F)V

    .line 193
    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->projMatrix:[F

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->getProjectionMatrix([F)V

    .line 205
    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt1:[F

    const/4 v1, 0x0

    iget v2, p1, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    .line 206
    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt1:[F

    const/4 v1, 0x1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    .line 207
    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt1:[F

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt1:[F

    const/4 v1, 0x3

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    .line 208
    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt2:[F

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/android/app/twlauncher/SamsungUtils;->traMatrix:[F

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt1:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 209
    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt1:[F

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/android/app/twlauncher/SamsungUtils;->projMatrix:[F

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt2:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 214
    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt1:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    sget-object v1, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt1:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    div-float v6, v0, v1

    .line 215
    .local v6, ltX:F
    const/high16 v0, -0x4080

    sget-object v1, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt1:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    sget-object v2, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt1:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    div-float/2addr v1, v2

    mul-float v7, v0, v1

    .line 217
    .local v7, ltY:F
    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb1:[F

    const/4 v1, 0x0

    iget v2, p1, Landroid/graphics/RectF;->right:F

    aput v2, v0, v1

    .line 218
    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb1:[F

    const/4 v1, 0x1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    .end local p1
    aput p1, v0, v1

    .line 219
    sget-object p1, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb1:[F

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput v1, p1, v0

    sget-object p1, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb1:[F

    const/4 v0, 0x3

    const/high16 v1, 0x3f80

    aput v1, p1, v0

    .line 220
    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb2:[F

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/android/app/twlauncher/SamsungUtils;->traMatrix:[F

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb1:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 221
    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb1:[F

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/android/app/twlauncher/SamsungUtils;->projMatrix:[F

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb2:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 223
    sget-object p1, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb1:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb1:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    div-float v1, p1, v0

    .line 224
    .local v1, rbX:F
    const/high16 p1, -0x4080

    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb1:[F

    const/4 v2, 0x1

    aget v0, v0, v2

    sget-object v2, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb1:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    div-float/2addr v0, v2

    mul-float v2, p1, v0

    .line 230
    .local v2, rbY:F
    const/high16 p1, 0x3f80

    add-float/2addr p1, v6

    .end local v6           #ltX:F
    .local p1, ltX:F
    const/high16 v0, 0x3f80

    add-float/2addr v0, v7

    .end local v7           #ltY:F
    .local v0, ltY:F
    const/high16 v3, 0x3f80

    add-float/2addr v1, v3

    const/high16 v3, 0x3f80

    add-float/2addr v2, v3

    .line 235
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    .line 236
    .local v3, scrSizeHalfX:F
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->getHeight()I

    move-result p0

    .end local p0
    int-to-float p0, p0

    const/high16 v4, 0x4000

    div-float v4, p0, v4

    .line 238
    .local v4, scrSizeHalfY:F
    mul-float p0, p1, v3

    .end local p1           #ltX:F
    .local p0, ltX:F
    mul-float p1, v0, v4

    .line 239
    .end local v0           #ltY:F
    .local p1, ltY:F
    mul-float v0, v1, v3

    .end local v1           #rbX:F
    .local v0, rbX:F
    mul-float v1, v2, v4

    .line 241
    .end local v2           #rbY:F
    .local v1, rbY:F
    iput p0, p2, Landroid/graphics/RectF;->left:F

    .line 242
    iput p1, p2, Landroid/graphics/RectF;->top:F

    .line 243
    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 244
    iput v1, p2, Landroid/graphics/RectF;->bottom:F

    .line 245
    return-void
.end method

.method static setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V
    .locals 0
    .parameter "wpm"
    .parameter "visiblity"

    .prologue
    .line 75
    return-void
.end method
