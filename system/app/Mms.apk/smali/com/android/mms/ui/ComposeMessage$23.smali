.class Lcom/android/mms/ui/ComposeMessage$23;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessage;->onAttachmentChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessage;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessage;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2829
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$23;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iput p2, p0, Lcom/android/mms/ui/ComposeMessage$23;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2831
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$23;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$3100(Lcom/android/mms/ui/ComposeMessage;)V

    .line 2832
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$23;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$200(Lcom/android/mms/ui/ComposeMessage;)V

    .line 2833
    iget v0, p0, Lcom/android/mms/ui/ComposeMessage$23;->val$type:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/mms/ui/ComposeMessage$23;->val$type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2834
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$23;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$100(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$23;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    .line 2839
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$23;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$3200(Lcom/android/mms/ui/ComposeMessage;)V

    .line 2840
    return-void

    .line 2837
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$23;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$100(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$23;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    goto :goto_0
.end method
