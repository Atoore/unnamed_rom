.class Lcom/android/mms/ui/ComposeMessage$ShowErrorPopupDismissListener;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowErrorPopupDismissListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessage;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ComposeMessage;)V
    .locals 0
    .parameter

    .prologue
    .line 964
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$ShowErrorPopupDismissListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ComposeMessage;Lcom/android/mms/ui/ComposeMessage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 964
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessage$ShowErrorPopupDismissListener;-><init>(Lcom/android/mms/ui/ComposeMessage;)V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 968
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$ShowErrorPopupDismissListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessage;->access$2302(Lcom/android/mms/ui/ComposeMessage;Z)Z

    .line 969
    return-void
.end method
