.class Lcom/android/mms/ui/ComposeMessage$65;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 7067
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$65;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v3, 0x0

    .line 7069
    if-eqz p2, :cond_1

    .line 7070
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage$65;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v2, v3}, Lcom/android/mms/ui/ComposeMessage;->access$3902(Lcom/android/mms/ui/ComposeMessage;Z)Z

    .line 7085
    :cond_0
    :goto_0
    return-void

    .line 7071
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage$65;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessage;->access$3900(Lcom/android/mms/ui/ComposeMessage;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7074
    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 7075
    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 7077
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/ToButton;

    move-object v1, v0

    .line 7078
    .local v1, toButton:Lcom/android/mms/ui/ToButton;
    invoke-virtual {v1}, Lcom/android/mms/ui/ToButton;->isDelete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7079
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage$65;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessage;->access$4000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/ToButtonLayout;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 7080
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage$65;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessage;->access$4000(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/ToButtonLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ToButtonLayout;->setVisibility(I)V

    .line 7082
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessage$65;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessage;->access$900(Lcom/android/mms/ui/ComposeMessage;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientsEditor;->setRecipientsInEditor()V

    goto :goto_0
.end method
