.class Lcom/android/mms/ui/ComposeMessage$8;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessage;->confirmSendMessageIfNeeded()V
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
    .line 1067
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$8;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$8;->this$0:Lcom/android/mms/ui/ComposeMessage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessage;->access$2802(Lcom/android/mms/ui/ComposeMessage;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1070
    return-void
.end method
