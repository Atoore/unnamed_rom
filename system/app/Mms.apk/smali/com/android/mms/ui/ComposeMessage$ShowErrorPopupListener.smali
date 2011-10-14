.class Lcom/android/mms/ui/ComposeMessage$ShowErrorPopupListener;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowErrorPopupListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessage;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ComposeMessage;)V
    .locals 0
    .parameter

    .prologue
    .line 949
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$ShowErrorPopupListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ComposeMessage;Lcom/android/mms/ui/ComposeMessage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 949
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessage$ShowErrorPopupListener;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$ShowErrorPopupListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessage;->access$2302(Lcom/android/mms/ui/ComposeMessage;Z)Z

    .line 952
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 953
    return-void
.end method
