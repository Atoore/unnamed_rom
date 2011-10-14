.class Lcom/android/mms/ui/ComposeMessage$14;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 1636
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$14;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1638
    if-nez p2, :cond_3

    .line 1639
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$14;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v2

    .line 1640
    .local v0, showErrorDialog:Z
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$14;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1, v2, v0}, Lcom/android/mms/ui/ComposeMessage;->access$3800(Lcom/android/mms/ui/ComposeMessage;ZZ)V

    .line 1642
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$14;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$3900(Lcom/android/mms/ui/ComposeMessage;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1643
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$14;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$4000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/ToButtonLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1644
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$14;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$4000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/ToButtonLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ToButtonLayout;->setVisibility(I)V

    .line 1646
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$14;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$900(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->setRecipientsInEditor()V

    .line 1659
    .end local v0           #showErrorDialog:Z
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v3

    .line 1639
    goto :goto_0

    .line 1650
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$14;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessage;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v1}, Landroid/sec/clipboard/ClipboardExManager;->setThawPaste()V

    .line 1651
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$14;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1, v3}, Lcom/android/mms/ui/ComposeMessage;->access$3902(Lcom/android/mms/ui/ComposeMessage;Z)Z

    .line 1652
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$14;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$900(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 1654
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$14;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$4000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/ToButtonLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$14;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$4100(Lcom/android/mms/ui/ComposeMessage;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1655
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$14;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$4000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/ToButtonLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/ToButtonLayout;->setVisibility(I)V

    .line 1656
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$14;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessage;->access$4200(Lcom/android/mms/ui/ComposeMessage;)V

    goto :goto_1
.end method
