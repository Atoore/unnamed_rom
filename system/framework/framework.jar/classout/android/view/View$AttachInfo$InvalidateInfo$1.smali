.class final Landroid/view/View$AttachInfo$InvalidateInfo$1;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Landroid/util/PoolableManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View$AttachInfo$InvalidateInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/util/PoolableManager",
        "<",
        "Landroid/view/View$AttachInfo$InvalidateInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 9400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic newInstance()Landroid/util/Poolable;
    .registers 2

    .prologue
    .line 9400
    invoke-virtual {p0}, Landroid/view/View$AttachInfo$InvalidateInfo$1;->newInstance()Landroid/view/View$AttachInfo$InvalidateInfo;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Landroid/view/View$AttachInfo$InvalidateInfo;
    .registers 2

    .prologue
    .line 9402
    new-instance v0, Landroid/view/View$AttachInfo$InvalidateInfo;

    invoke-direct {v0}, Landroid/view/View$AttachInfo$InvalidateInfo;-><init>()V

    return-object v0
.end method

.method public bridge synthetic onAcquired(Landroid/util/Poolable;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 9400
    check-cast p1, Landroid/view/View$AttachInfo$InvalidateInfo;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/view/View$AttachInfo$InvalidateInfo$1;->onAcquired(Landroid/view/View$AttachInfo$InvalidateInfo;)V

    return-void
.end method

.method public onAcquired(Landroid/view/View$AttachInfo$InvalidateInfo;)V
    .registers 2
    .parameter "element"

    .prologue
    .line 9406
    return-void
.end method

.method public bridge synthetic onReleased(Landroid/util/Poolable;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 9400
    check-cast p1, Landroid/view/View$AttachInfo$InvalidateInfo;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/view/View$AttachInfo$InvalidateInfo$1;->onReleased(Landroid/view/View$AttachInfo$InvalidateInfo;)V

    return-void
.end method

.method public onReleased(Landroid/view/View$AttachInfo$InvalidateInfo;)V
    .registers 2
    .parameter "element"

    .prologue
    .line 9409
    return-void
.end method
