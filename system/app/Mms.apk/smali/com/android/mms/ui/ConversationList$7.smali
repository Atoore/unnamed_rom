.class Lcom/android/mms/ui/ConversationList$7;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList;->runOneTimeStorageLimitCheckForLegacyMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$7;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$7;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$600(Lcom/android/mms/ui/ConversationList;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/util/Recycler;->checkForThreadsOverLimit(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$7;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$800(Lcom/android/mms/ui/ConversationList;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ConversationList$7$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationList$7$1;-><init>(Lcom/android/mms/ui/ConversationList$7;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 435
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$7;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$600(Lcom/android/mms/ui/ConversationList;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ConversationList$7$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationList$7$3;-><init>(Lcom/android/mms/ui/ConversationList$7;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 440
    return-void

    .line 421
    :cond_0
    const-string v0, "Mms/ConversationList"

    const-string v1, "checkForThreadsOverLimit silently turning on recycler"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$7;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$600(Lcom/android/mms/ui/ConversationList;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ConversationList$7$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationList$7$2;-><init>(Lcom/android/mms/ui/ConversationList$7;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
