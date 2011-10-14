.class Lcom/android/mms/ui/ComposeMessage$6;
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
    .line 679
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$6;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "Mms/ComposeMessage"

    .line 681
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 705
    :goto_0
    return v3

    .line 685
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableEndterKey()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 687
    const/16 v3, 0x42

    if-ne p2, v3, :cond_1

    .line 688
    const-string v3, "Mms/ComposeMessage"

    const-string v3, "Enter Key is Disable Function in Messaging"

    invoke-static {v6, v3}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v5

    .line 689
    goto :goto_0

    .line 694
    :cond_1
    const/16 v3, 0x15

    if-ne p2, v3, :cond_2

    .line 696
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    move-object v1, v0

    .line 697
    .local v1, edit:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    if-nez v3, :cond_2

    .line 698
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessage$6;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessage;->access$1000(Lcom/android/mms/ui/ComposeMessage;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v5

    .line 699
    goto :goto_0

    .line 701
    .end local v1           #edit:Landroid/widget/EditText;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 702
    .local v2, ex:Ljava/lang/ClassCastException;
    const-string v3, "Mms/ComposeMessage"

    const-string v3, "key event not from EditText"

    invoke-static {v6, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2           #ex:Ljava/lang/ClassCastException;
    :cond_2
    move v3, v4

    .line 705
    goto :goto_0
.end method
