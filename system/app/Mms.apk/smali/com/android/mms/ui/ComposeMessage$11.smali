.class Lcom/android/mms/ui/ComposeMessage$11;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessage;
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
    .line 1126
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$11;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$11;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessage;->isRecipientsEditorVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1150
    const-string v0, "Mms/ComposeMessage"

    const-string v1, "RecipientsWatcher: afterTextChanged called with invisible mRecipientsEditor"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    :goto_0
    return-void

    .line 1157
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$11;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$200(Lcom/android/mms/ui/ComposeMessage;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1128
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$11;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessage;->onUserInteraction()V

    .line 1136
    return-void
.end method
