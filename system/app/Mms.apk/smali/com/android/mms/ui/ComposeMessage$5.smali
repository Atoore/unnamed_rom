.class Lcom/android/mms/ui/ComposeMessage$5;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 639
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$5;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 641
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 675
    :goto_0
    return v0

    .line 646
    :cond_0
    const/16 v0, 0x43

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$5;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$800(Lcom/android/mms/ui/ComposeMessage;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 648
    goto :goto_0

    .line 652
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 653
    packed-switch p2, :pswitch_data_0

    :cond_2
    move v0, v3

    .line 675
    goto :goto_0

    .line 655
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$5;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$800(Lcom/android/mms/ui/ComposeMessage;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    if-nez v0, :cond_2

    .line 656
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$5;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$1000(Lcom/android/mms/ui/ComposeMessage;)V

    move v0, v2

    .line 657
    goto :goto_0

    .line 662
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$5;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$800(Lcom/android/mms/ui/ComposeMessage;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$5;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$800(Lcom/android/mms/ui/ComposeMessage;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    if-ne v0, v1, :cond_2

    move v0, v2

    .line 663
    goto :goto_0

    .line 667
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$5;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$700(Lcom/android/mms/ui/ComposeMessage;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$5;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$700(Lcom/android/mms/ui/ComposeMessage;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 668
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$5;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$700(Lcom/android/mms/ui/ComposeMessage;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    :cond_3
    :goto_1
    move v0, v2

    .line 671
    goto :goto_0

    .line 669
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$5;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$100(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$5;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$100(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 670
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$5;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$100(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    goto :goto_1

    .line 653
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
