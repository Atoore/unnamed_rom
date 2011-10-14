.class Lcom/sec/android/app/twlauncher/MenuManager$unPhanAnimLstnr;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/GLAnim$GLAnimLstnr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "unPhanAnimLstnr"
.end annotation


# instance fields
.field private mItemView:Lcom/sec/android/app/twlauncher/MenuItemView;

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/MenuManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/MenuItemView;)V
    .locals 0
    .parameter
    .parameter "aItemView"

    .prologue
    .line 4202
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager$unPhanAnimLstnr;->this$0:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4203
    iput-object p2, p0, Lcom/sec/android/app/twlauncher/MenuManager$unPhanAnimLstnr;->mItemView:Lcom/sec/android/app/twlauncher/MenuItemView;

    .line 4204
    return-void
.end method


# virtual methods
.method public onAnimEnd(Lcom/sec/android/app/twlauncher/GLAnim;)V
    .locals 2
    .parameter "aAnim"

    .prologue
    .line 4215
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager$unPhanAnimLstnr;->mItemView:Lcom/sec/android/app/twlauncher/MenuItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setPhantom(Z)V

    .line 4216
    return-void
.end method

.method public onAnimStart(Lcom/sec/android/app/twlauncher/GLAnim;)V
    .locals 4
    .parameter "aAnim"

    .prologue
    const/4 v1, 0x0

    .line 4208
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/GLAnim;->getDst()Landroid/graphics/PointF;

    move-result-object v0

    .line 4209
    .local v0, loc:Landroid/graphics/PointF;
    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4210
    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager$unPhanAnimLstnr;->mItemView:Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuItemView;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager$unPhanAnimLstnr;->mItemView:Lcom/sec/android/app/twlauncher/MenuItemView;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuItemView;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/GLAnim;->setDst(Landroid/graphics/PointF;)V

    .line 4212
    :cond_0
    return-void
.end method
