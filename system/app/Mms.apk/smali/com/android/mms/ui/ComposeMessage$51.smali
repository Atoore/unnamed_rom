.class final Lcom/android/mms/ui/ComposeMessage$51;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessage;->confirmDeleteMessageDialog(Lcom/android/mms/ui/ComposeMessage$DeleteMessageListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$checkbox:Landroid/widget/CheckBox;

.field final synthetic val$listener:Lcom/android/mms/ui/ComposeMessage$DeleteMessageListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessage$DeleteMessageListener;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5416
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$51;->val$listener:Lcom/android/mms/ui/ComposeMessage$DeleteMessageListener;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessage$51;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 5418
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$51;->val$listener:Lcom/android/mms/ui/ComposeMessage$DeleteMessageListener;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessage$51;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessage$DeleteMessageListener;->setDeleteLockedMessage(Z)V

    .line 5419
    return-void
.end method
