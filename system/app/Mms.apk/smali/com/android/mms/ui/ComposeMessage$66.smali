.class Lcom/android/mms/ui/ComposeMessage$66;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessage;->MakeToButtons(Ljava/lang/String;Z)I
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
    .line 7088
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$66;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "arg0"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 7090
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 7091
    sparse-switch p2, :sswitch_data_0

    .line 7107
    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 7093
    :sswitch_0
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/ToButton;

    move-object v1, v0

    .line 7094
    .local v1, toButton:Lcom/android/mms/ui/ToButton;
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage$66;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessage;->access$10900(Lcom/android/mms/ui/ComposeMessage;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ToButton;->delete(Landroid/os/Handler;)V

    move v2, v3

    .line 7095
    goto :goto_0

    .line 7098
    .end local v1           #toButton:Lcom/android/mms/ui/ToButton;
    :sswitch_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage$66;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessage;->access$11000(Lcom/android/mms/ui/ComposeMessage;)V

    move v2, v3

    .line 7099
    goto :goto_0

    .line 7102
    :sswitch_2
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage$66;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessage;->access$11100(Lcom/android/mms/ui/ComposeMessage;)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x14

    if-ne p2, v2, :cond_1

    .line 7103
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage$66;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessage;->access$900(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    :cond_1
    move v2, v3

    .line 7104
    goto :goto_0

    .line 7091
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x43 -> :sswitch_0
    .end sparse-switch
.end method
