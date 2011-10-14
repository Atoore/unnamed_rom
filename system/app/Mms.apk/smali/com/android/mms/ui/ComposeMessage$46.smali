.class Lcom/android/mms/ui/ComposeMessage$46;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessage;->handleSendIntent(Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessage;

.field final synthetic val$numberToImport:I

.field final synthetic val$showProgress:Ljava/lang/Runnable;

.field final synthetic val$uris:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessage;ILjava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4591
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$46;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iput p2, p0, Lcom/android/mms/ui/ComposeMessage$46;->val$numberToImport:I

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessage$46;->val$uris:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessage$46;->val$showProgress:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const v14, 0x7f090183

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 4593
    const/4 v1, 0x0

    .line 4594
    .local v1, alreadyShownUnsupported:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v10, p0, Lcom/android/mms/ui/ComposeMessage$46;->val$numberToImport:I

    if-ge v2, v10, :cond_4

    .line 4595
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessage$46;->val$uris:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Parcelable;

    .line 4597
    .local v8, uri:Landroid/os/Parcelable;
    const-string v6, "content://com.android.contacts/contacts/as_vcard/"

    .line 4598
    .local v6, prefixstr:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 4599
    .local v9, uriString:Ljava/lang/String;
    invoke-virtual {v9, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 4601
    .local v3, isContact:Z
    if-eqz v3, :cond_1

    .line 4602
    const-string v5, "text/x-vCard"

    .line 4606
    .local v5, mimeType:Ljava/lang/String;
    :goto_1
    if-eqz v5, :cond_3

    .line 4607
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessage$46;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v10, v5}, Lcom/android/mms/ui/ComposeMessage;->access$7500(Lcom/android/mms/ui/ComposeMessage;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 4608
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessage$46;->this$0:Lcom/android/mms/ui/ComposeMessage;

    check-cast v8, Landroid/net/Uri;

    .end local v8           #uri:Landroid/os/Parcelable;
    invoke-static {v10, v5, v8, v12, v12}, Lcom/android/mms/ui/ComposeMessage;->access$7300(Lcom/android/mms/ui/ComposeMessage;Ljava/lang/String;Landroid/net/Uri;ZZ)V

    .line 4609
    iget v10, p0, Lcom/android/mms/ui/ComposeMessage$46;->val$numberToImport:I

    sub-int/2addr v10, v12

    if-ne v2, v10, :cond_0

    .line 4610
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessage$46;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v10, v12}, Lcom/android/mms/ui/ComposeMessage;->onAttachmentChanged(Z)V

    .line 4612
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessage$46;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessage$46;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 4613
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessage$46;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v10

    invoke-virtual {v10, v13}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 4614
    sget-boolean v10, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v10, :cond_0

    .line 4615
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessage$46;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v10

    invoke-virtual {v10, v13}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 4594
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4604
    .end local v5           #mimeType:Ljava/lang/String;
    .restart local v8       #uri:Landroid/os/Parcelable;
    :cond_1
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessage$46;->this$0:Lcom/android/mms/ui/ComposeMessage;

    move-object v0, v8

    check-cast v0, Landroid/net/Uri;

    move-object v10, v0

    invoke-virtual {v11, v10}, Lcom/android/mms/ui/ComposeMessage;->getMimeTypeFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #mimeType:Ljava/lang/String;
    goto :goto_1

    .line 4620
    :cond_2
    if-nez v1, :cond_0

    .line 4621
    const/4 v1, 0x1

    .line 4622
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessage$46;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 4623
    .local v7, res:Landroid/content/res/Resources;
    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4625
    .local v4, message:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessage$46;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessage;->access$400(Lcom/android/mms/ui/ComposeMessage;)Landroid/app/Activity;

    move-result-object v10

    new-instance v11, Lcom/android/mms/ui/ComposeMessage$46$1;

    invoke-direct {v11, p0, v4}, Lcom/android/mms/ui/ComposeMessage$46$1;-><init>(Lcom/android/mms/ui/ComposeMessage$46;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 4633
    .end local v4           #message:Ljava/lang/String;
    .end local v7           #res:Landroid/content/res/Resources;
    :cond_3
    if-nez v5, :cond_0

    .line 4634
    if-nez v1, :cond_0

    .line 4635
    const/4 v1, 0x1

    .line 4636
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessage$46;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessage;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 4637
    .restart local v7       #res:Landroid/content/res/Resources;
    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4639
    .restart local v4       #message:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessage$46;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessage;->access$400(Lcom/android/mms/ui/ComposeMessage;)Landroid/app/Activity;

    move-result-object v10

    new-instance v11, Lcom/android/mms/ui/ComposeMessage$46$2;

    invoke-direct {v11, p0, v4}, Lcom/android/mms/ui/ComposeMessage$46$2;-><init>(Lcom/android/mms/ui/ComposeMessage$46;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 4649
    .end local v3           #isContact:Z
    .end local v4           #message:Ljava/lang/String;
    .end local v5           #mimeType:Ljava/lang/String;
    .end local v6           #prefixstr:Ljava/lang/String;
    .end local v7           #res:Landroid/content/res/Resources;
    .end local v8           #uri:Landroid/os/Parcelable;
    .end local v9           #uriString:Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessage$46;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessage;->access$7600(Lcom/android/mms/ui/ComposeMessage;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessage$46;->val$showProgress:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4650
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessage$46;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessage;->access$7400(Lcom/android/mms/ui/ComposeMessage;)Landroid/app/ProgressDialog;

    move-result-object v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessage$46;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessage;->access$7400(Lcom/android/mms/ui/ComposeMessage;)Landroid/app/ProgressDialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 4651
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessage$46;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessage;->access$7400(Lcom/android/mms/ui/ComposeMessage;)Landroid/app/ProgressDialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ProgressDialog;->dismiss()V

    .line 4653
    :cond_5
    return-void
.end method
