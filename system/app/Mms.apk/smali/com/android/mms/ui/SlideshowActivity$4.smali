.class Lcom/android/mms/ui/SlideshowActivity$4;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 590
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$4;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$4;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$4;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideshowActivity;->access$1200(Lcom/android/mms/ui/SlideshowActivity;Z)V

    .line 594
    :cond_0
    return-void
.end method
