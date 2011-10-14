.class Lcom/android/mms/ui/SlideshowPresenter$3;
.super Ljava/lang/Object;
.source "SlideshowPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideshowPresenter;->onModelChanged(Lcom/android/mms/model/Model;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowPresenter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowPresenter;)V
    .locals 0
    .parameter

    .prologue
    .line 569
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowPresenter$3;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 572
    invoke-static {}, Lcom/android/mms/dom/smil/SmilPlayer;->getPlayer()Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v1

    .line 573
    .local v1, player:Lcom/android/mms/dom/smil/SmilPlayer;
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter$3;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v1}, Lcom/android/mms/dom/smil/SmilPlayer;->getCurrentPosition()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/mms/ui/SlideshowPresenter;->access$100(Lcom/android/mms/ui/SlideshowPresenter;I)I

    move-result v0

    .line 578
    .local v0, currentSlide:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter$3;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget v2, v2, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    if-nez v2, :cond_0

    .line 585
    :goto_0
    return-void

    .line 580
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter$3;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    iget v2, v2, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_1

    .line 581
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter$3;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v2}, Lcom/android/mms/ui/SlideshowPresenter;->goBackward()V

    goto :goto_0

    .line 583
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter$3;->this$0:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v2}, Lcom/android/mms/ui/SlideshowPresenter;->goForward()V

    goto :goto_0
.end method
