.class Lcom/android/mms/ui/ComposeMessage$15;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessage;->initRecipientsEditor()V
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
    .line 1662
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$15;->this$0:Lcom/android/mms/ui/ComposeMessage;

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
    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v3, "Mms/ComposeMessage"

    .line 1664
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1666
    sparse-switch p2, :sswitch_data_0

    :cond_0
    move v0, v2

    .line 1708
    :goto_0
    return v0

    .line 1668
    :sswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$15;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$900(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1669
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$15;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$4300(Lcom/android/mms/ui/ComposeMessage;)V

    move v0, v1

    .line 1670
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1672
    goto :goto_0

    .line 1678
    :sswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$15;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$900(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1679
    const-string v0, "Mms/ComposeMessage"

    const-string v0, "RecipientEditor DPAD_UP isPopupShowing=true "

    invoke-static {v3, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 1680
    goto :goto_0

    .line 1684
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$15;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0, v1, v1}, Lcom/android/mms/ui/ComposeMessage;->access$3800(Lcom/android/mms/ui/ComposeMessage;ZZ)V

    .line 1685
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$15;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$4300(Lcom/android/mms/ui/ComposeMessage;)V

    move v0, v1

    .line 1686
    goto :goto_0

    .line 1691
    :sswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$15;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$900(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1692
    const-string v0, "Mms/ComposeMessage"

    const-string v0, "RecipientEditor DPAD_DOWN isPopupShowing=true "

    invoke-static {v3, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 1693
    goto :goto_0

    .line 1697
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$15;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessage;->findAvailableViewToFocus()V

    move v0, v1

    .line 1698
    goto :goto_0

    .line 1702
    :sswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$15;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$900(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getSelectionStart()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1703
    goto :goto_0

    .line 1666
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x43 -> :sswitch_0
    .end sparse-switch
.end method
