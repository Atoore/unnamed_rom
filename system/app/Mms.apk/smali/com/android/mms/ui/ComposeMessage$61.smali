.class Lcom/android/mms/ui/ComposeMessage$61;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessage;->previewSlideshow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessage;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessage;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6771
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$61;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessage$61;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 6773
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$61;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v0

    .line 6774
    .local v0, dataUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$61;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$400(Lcom/android/mms/ui/ComposeMessage;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage$61;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Z)V

    .line 6776
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$61;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 6777
    return-void
.end method
