.class Lcom/android/mms/ui/ComposeMessage$54;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessage;->showSmileyDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessage;

.field final synthetic val$a:Landroid/widget/SimpleAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessage;Landroid/widget/SimpleAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6264
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$54;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessage$54;->val$a:Landroid/widget/SimpleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 6267
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage$54;->val$a:Landroid/widget/SimpleAdapter;

    invoke-virtual {v2, p2}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 6268
    .local v0, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "text"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6271
    .local v1, smiley:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage$54;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessage;->access$100(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6273
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage$54;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage$54;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessage;->access$100(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Lcom/android/mms/ui/ComposeMessage;->access$10000(Lcom/android/mms/ui/ComposeMessage;Landroid/widget/EditText;Ljava/lang/String;Z)V

    .line 6284
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 6285
    return-void

    .line 6274
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage$54;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessage;->access$800(Lcom/android/mms/ui/ComposeMessage;)Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage$54;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessage;->access$800(Lcom/android/mms/ui/ComposeMessage;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6276
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage$54;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage$54;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessage;->access$800(Lcom/android/mms/ui/ComposeMessage;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x28

    invoke-static {v2, v3, v4, v5}, Lcom/android/mms/ui/ComposeMessage;->access$10100(Lcom/android/mms/ui/ComposeMessage;III)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6278
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage$54;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage$54;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessage;->access$800(Lcom/android/mms/ui/ComposeMessage;)Landroid/widget/EditText;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v1, v4}, Lcom/android/mms/ui/ComposeMessage;->access$10000(Lcom/android/mms/ui/ComposeMessage;Landroid/widget/EditText;Ljava/lang/String;Z)V

    goto :goto_0

    .line 6281
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage$54;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessage;->access$100(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
