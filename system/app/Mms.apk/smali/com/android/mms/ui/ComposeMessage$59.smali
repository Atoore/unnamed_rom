.class Lcom/android/mms/ui/ComposeMessage$59;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessage;->addRawMedia(Landroid/net/Uri;ZZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessage;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessage;)V
    .locals 0
    .parameter

    .prologue
    .line 6675
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$59;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 6677
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$59;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$59;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessage;->access$10600(Lcom/android/mms/ui/ComposeMessage;Lcom/android/mms/model/SlideshowModel;)V

    .line 6678
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$59;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$10700(Lcom/android/mms/ui/ComposeMessage;)V

    .line 6679
    return-void
.end method
