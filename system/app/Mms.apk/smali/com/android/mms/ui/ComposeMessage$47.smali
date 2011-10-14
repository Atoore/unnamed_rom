.class Lcom/android/mms/ui/ComposeMessage$47;
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
    .line 4896
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$47;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 4941
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 4898
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 4905
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$47;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessage;->onUserInteraction()V

    .line 4908
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$47;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessage;->access$7700(Lcom/android/mms/ui/ComposeMessage;Ljava/lang/CharSequence;III)V

    .line 4909
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$47;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$200(Lcom/android/mms/ui/ComposeMessage;)V

    .line 4935
    return-void
.end method
