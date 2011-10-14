.class Lcom/android/mms/ui/SlideshowActivity$6;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideshowActivity;->handleEvent(Lorg/w3c/dom/events/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;

.field final synthetic val$event:Lorg/w3c/dom/events/Event;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowActivity;Lorg/w3c/dom/events/Event;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 978
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iput-object p2, p0, Lcom/android/mms/ui/SlideshowActivity$6;->val$event:Lorg/w3c/dom/events/Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 980
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$6;->val$event:Lorg/w3c/dom/events/Event;

    invoke-interface {v1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v0

    .line 981
    .local v0, type:Ljava/lang/String;
    const-string v1, "SimlDocumentEnd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 984
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$300(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;

    move-result-object v1

    sget-object v2, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->STOPPED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    invoke-virtual {v1, v2}, Lcom/android/mms/dom/smil/SmilPlayer;->setPlayerState(Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;)V

    .line 985
    const-string v1, "Mms/SlideshowActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SmilPlayerController.handleEvent : SMIL_DOCUMENT_END_EVENT, mIsPreview = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v3}, Lcom/android/mms/ui/SlideshowActivity;->access$1900(Lcom/android/mms/ui/SlideshowActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$1500(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 988
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$2000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/SlideshowPresenter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 989
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$2000(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/SlideshowPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowPresenter;->resetLocation()V

    .line 997
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$500(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/MmsPlayerController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 998
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$500(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/MmsPlayerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerController;->updateToPlayButton()V

    .line 999
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$500(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/MmsPlayerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerController;->show()V

    .line 1000
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideshowActivity;->access$1900(Lcom/android/mms/ui/SlideshowActivity;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1001
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    .line 1005
    :cond_1
    return-void
.end method
