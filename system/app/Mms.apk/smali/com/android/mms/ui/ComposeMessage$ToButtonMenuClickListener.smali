.class final Lcom/android/mms/ui/ComposeMessage$ToButtonMenuClickListener;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ToButtonMenuClickListener"
.end annotation


# instance fields
.field private mId:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessage;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessage;I)V
    .locals 0
    .parameter
    .parameter "id"

    .prologue
    .line 7412
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7413
    iput p2, p0, Lcom/android/mms/ui/ComposeMessage$ToButtonMenuClickListener;->mId:I

    .line 7414
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 7417
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$4100(Lcom/android/mms/ui/ComposeMessage;)Ljava/util/SortedMap;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/ComposeMessage$ToButtonMenuClickListener;->mId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ToButton;

    .line 7418
    .local v0, toButton:Lcom/android/mms/ui/ToButton;
    if-nez v0, :cond_0

    .line 7445
    :goto_0
    return-void

    .line 7421
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 7444
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessage;->access$11302(Lcom/android/mms/ui/ComposeMessage;Z)Z

    goto :goto_0

    .line 7423
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$10900(Lcom/android/mms/ui/ComposeMessage;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ToButton;->delete(Landroid/os/Handler;)V

    goto :goto_1

    .line 7426
    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1, v3, v3}, Lcom/android/mms/ui/ComposeMessage;->access$3800(Lcom/android/mms/ui/ComposeMessage;ZZ)V

    .line 7428
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$900(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/mms/ui/ToButton;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 7429
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$900(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->moveCursorToEnd()V

    .line 7435
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessage$ToButtonMenuClickListener;->mId:I

    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessage;->access$11200(Lcom/android/mms/ui/ComposeMessage;I)V

    goto :goto_1

    .line 7440
    :pswitch_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v0}, Lcom/android/mms/ui/ToButton;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessage;->access$3402(Lcom/android/mms/ui/ComposeMessage;Landroid/content/Intent;)Landroid/content/Intent;

    .line 7441
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessage;->access$3400(Lcom/android/mms/ui/ComposeMessage;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x1d

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/ComposeMessage;->access$3500(Lcom/android/mms/ui/ComposeMessage;Landroid/content/Intent;I)V

    goto :goto_1

    .line 7421
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
