.class Lcom/android/mms/ui/SlideshowActivity$5;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideshowActivity;->onStart()V
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
    .line 704
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$5;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$5;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$5;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$1300(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideshowActivity;->access$1400(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/model/SlideshowModel;)V

    .line 707
    return-void
.end method
