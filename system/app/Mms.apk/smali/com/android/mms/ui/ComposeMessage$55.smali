.class Lcom/android/mms/ui/ComposeMessage$55;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessage;->onUpdate(Lcom/android/mms/data/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessage;

.field final synthetic val$updated:Lcom/android/mms/data/Contact;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessage;Lcom/android/mms/data/Contact;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6311
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$55;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessage$55;->val$updated:Lcom/android/mms/data/Contact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 6313
    const-string v1, "Mms:app"

    invoke-static {v1, v4}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6314
    const-string v1, "Mms/ComposeMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CMA] onUpdate contact updated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage$55;->val$updated:Lcom/android/mms/data/Contact;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6316
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$55;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$9500(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 6317
    .local v0, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 6318
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage$55;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v0, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    invoke-static {v2, v1}, Lcom/android/mms/ui/ComposeMessage;->access$10200(Lcom/android/mms/ui/ComposeMessage;Lcom/android/mms/data/Contact;)V

    .line 6327
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$55;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$10300(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MessageContactHeader;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$55;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$10300(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MessageContactHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageContactHeader;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 6328
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$55;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$10300(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MessageContactHeader;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage$55;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessage;->access$1200(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageContactHeader;->bindContactHeader(Lcom/android/mms/data/ContactList;)Z

    .line 6332
    :cond_1
    :goto_1
    return-void

    .line 6320
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$55;->this$0:Lcom/android/mms/ui/ComposeMessage;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessage;->access$10200(Lcom/android/mms/ui/ComposeMessage;Lcom/android/mms/data/Contact;)V

    goto :goto_0

    .line 6329
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$55;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessage;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6330
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$55;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$4200(Lcom/android/mms/ui/ComposeMessage;)V

    goto :goto_1
.end method
