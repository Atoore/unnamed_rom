.class Lcom/android/mms/ui/ComposeMessage$22;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessage;->onAttachmentChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessage;

.field final synthetic val$sendMultiple:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessage;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2809
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$22;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iput-boolean p2, p0, Lcom/android/mms/ui/ComposeMessage$22;->val$sendMultiple:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2811
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$22;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$3100(Lcom/android/mms/ui/ComposeMessage;)V

    .line 2812
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$22;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$200(Lcom/android/mms/ui/ComposeMessage;)V

    .line 2813
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessage$22;->val$sendMultiple:Z

    if-eqz v0, :cond_0

    .line 2814
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$22;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$100(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$22;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    .line 2819
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$22;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$3200(Lcom/android/mms/ui/ComposeMessage;)V

    .line 2820
    return-void

    .line 2817
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$22;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$100(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$22;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    goto :goto_0
.end method
