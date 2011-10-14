.class Lcom/android/mms/ui/ComposeMessage$4;
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
    .line 624
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$4;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 627
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 628
    packed-switch p2, :pswitch_data_0

    .line 635
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 630
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$4;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$1000(Lcom/android/mms/ui/ComposeMessage;)V

    .line 632
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 628
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
